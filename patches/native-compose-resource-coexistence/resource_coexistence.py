#!/usr/bin/env python3
"""Scratch resource-only coexistence probe; never modify the recovered project."""
import argparse,hashlib,json,pathlib,re,shutil,subprocess,sys,xml.etree.ElementTree as ET
from collections import Counter
sys.path.insert(0,str(pathlib.Path(__file__).resolve().parents[1]/"native-compose-audit"))
from native_dependency_audit import original_resources,lab_resources
HEADER=re.compile(r"^(\s*)resource\s+(0x[0-9a-fA-F]+)\s+(?:[^\s:]+:)?([\w-]+/[\w.]+)(?=\s|$)(.*)$")
CONFIG=re.compile(r"^\s*\(([^)]*)\)\s*(.*)$")
def require(ok,msg):
    if not ok:raise ValueError(msg)
def digest(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def snapshot(root):
    out={}
    for path in sorted(root.rglob("*")):
        require(not path.is_symlink(),"symlink not supported "+str(path))
        if path.is_file():out[str(path.relative_to(root))]=digest(path)
    return out
def blocks(text):
    result={}; key=None; indent=0
    for line in text.splitlines():
        if not line.strip():continue
        m=HEADER.fullmatch(line)
        if m:
            key=m[3];indent=len(m[1])
            require(key not in result,"duplicate dump resource "+key)
            result[key]={"id":int(m[2],16),"header":m[4].strip(),"body":[]}
            continue
        if key is not None:
            current=len(line)-len(line.lstrip())
            if current<=indent:
                key=None
            else:
                # Preserve value spelling and order; strip only indentation at the margins.
                result[key]["body"].append(line.strip())
    require(result,"empty resource dump")
    return result
def configs(block):
    return Counter(m[1] for line in block["body"] if (m:=CONFIG.fullmatch(line)))
def compare(before,after,side,headers=True):
    errors=[]
    for key,b in sorted(before.items()):
        a=after.get(key)
        if a is None:errors.append([side,key,"missing"]);continue
        if a["id"]!=b["id"]:errors.append([side,key,"id"])
        if headers and a["header"]!=b["header"]:errors.append([side,key,"flags"])
        if configs(a)!=configs(b):errors.append([side,key,"configuration"])
        if a["body"]!=b["body"]:errors.append([side,key,"value_block"])
    return errors
def prepare(a):
    original=a.original
    old=original_resources(original)
    new=json.loads(a.newmap.read_text())
    require(new and not set(old)&set(new),"name collision")
    require(not set(old.values())&set(new.values()),"ID collision")
    require(len(set(new.values()))==len(new),"duplicate new ID")
    require(all(k.split("/",1)[1].startswith("cpui_") for k in new),"unexpected imported name")
    before=snapshot(original/"res")
    a.out.mkdir(parents=True,exist_ok=True)
    for root in [a.baseline,a.candidate]:
        require(not root.exists(),"scratch path exists")
        root.mkdir()
        for n in ("AndroidManifest.xml","apktool.yml"):
            shutil.copyfile(original/n,root/n)
        shutil.copytree(original/"res",root/"res")
    dest=a.candidate/"res"
    for path in sorted(a.labres.rglob("*")):
        require(not path.is_symlink(),"unexpected lab symlink")
        if not path.is_file():continue
        rel=path.relative_to(a.labres)
        require(len(rel.parts)==2,"unexpected lab path")
        folder=rel.parts[0]
        if folder.startswith("values"):
            require(path.suffix==".xml" and path.name!="public.xml","unexpected values file")
            rel=pathlib.Path(folder)/("cpui_import_"+path.name)
        else:
            require(path.name.startswith("cpui_"),"unprefixed lab file")
        target=dest/rel
        require(not target.exists(),"scratch file collision "+str(rel))
        target.parent.mkdir(parents=True,exist_ok=True)
        shutil.copyfile(path,target)
    p=dest/"values/public.xml";t=ET.parse(p)
    for key,rid in sorted(new.items()):
        typ,name=key.split("/",1)
        ET.SubElement(t.getroot(),"public",{"type":typ,"name":name,"id":f"0x{rid:08x}"})
    t.write(p,encoding="utf-8",xml_declaration=True)
    require(original_resources(a.candidate)=={**old,**new},"scratch public map differs")
    candidate=snapshot(dest)
    changed=[k for k,v in before.items() if candidate.get(k)!=v]
    require(changed==["values/public.xml"],"original resource content changed: "+repr(changed[:10]))
    require(snapshot(original/"res")==before,"original source modified")
    for n in ("AndroidManifest.xml","apktool.yml"):
        require(digest(original/n)==digest(a.baseline/n)==digest(a.candidate/n),"original manifest/config changed")
    summary={"original_public":len(old),"new_public":len(new),"original_files":len(before),"new_files":len(set(candidate)-set(before)),"original_existing_files_changed_in_scratch":changed,"production_modified":False}
    (a.out/"source-summary.json").write_text(json.dumps(summary,indent=2))
    print("CP_SCRATCH_RESOURCE_SOURCE_PASS "+json.dumps(summary))
def dump(aapt2,p):
    return blocks(subprocess.run([aapt2,"dump","resources",str(p)],check=True,capture_output=True,text=True).stdout)
def verify(a):
    old=original_resources(a.original); new=json.loads(a.newmap.read_text())
    base=dump(a.aapt2,a.baselineapk); merged=dump(a.aapt2,a.candidateapk); lab=dump(a.aapt2,a.labapk)
    # Original public.xml must describe the actual binary baseline; no silent subset.
    errors=[]
    for label,actual,expected in [("baseline",base,old),("lab",lab,new),("merged",merged,{**old,**new})]:
        ids={k:v["id"] for k,v in actual.items()}
        if ids!=expected:
            errors.extend([label,k,"table_identity"] for k in sorted(set(ids)|set(expected)) if ids.get(k)!=expected.get(k))
    errors.extend(compare(base,merged,"original"))
    # New entries become public in combined table, so header public flag can differ.
    # Still require exact ordered displayed values and configurations.
    errors.extend(compare(lab,merged,"lab",headers=False))
    summary={"scope":"resource-only binary dump comparison; no dex, no APK installation, no semantic equivalence beyond dump","original_entries":len(base),"lab_entries":len(lab),"merged_entries":len(merged),"original_config_values":sum(sum(configs(v).values()) for v in base.values()),"lab_config_values":sum(sum(configs(v).values()) for v in lab.values()),"differences":len(errors),"production_modified":False}
    (a.out/"binary-summary.json").write_text(json.dumps(summary,indent=2))
    # Report only keys and reasons, never copy original string contents.
    (a.out/"differences.json").write_text(json.dumps(errors,indent=2))
    require(not errors,"resource parity differences: "+repr(errors[:20]))
    require(summary["original_config_values"]>0 and summary["lab_config_values"]>0,"no recognized configuration values")
    print("CP_SCRATCH_RESOURCE_BINARY_PARITY_PASS "+json.dumps(summary))
def main():
    p=argparse.ArgumentParser();p.add_argument("mode",choices=["prepare","verify"])
    for key in ["original","labres","newmap","baseline","candidate","out","baselineapk","candidateapk","labapk"]:
        p.add_argument("--"+key,type=pathlib.Path)
    p.add_argument("--aapt2")
    a=p.parse_args();(prepare if a.mode=="prepare" else verify)(a)
if __name__=="__main__":main()
