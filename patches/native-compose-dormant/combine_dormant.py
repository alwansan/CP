#!/usr/bin/env python3
"""First dormant same-package candidate. Preserve original manifest and DEX bytes."""
import argparse,hashlib,json,pathlib,re,sys,zipfile
P=pathlib.Path(__file__).resolve().parents[1]
sys.path[:0]=[str(P/"native-compose-audit"),str(P/"native-compose-resource-coexistence"),str(P.parent/"scripts")]
from native_dependency_audit import lab_classes
from resource_coexistence import dump,compare
from verify_apk_dex import dex_classes,require_batch_types
DEX=re.compile(r"classes(?:[2-9]|[1-9][0-9]+)?\.dex$")
SIG=re.compile(r"META-INF/(?:MANIFEST\.MF|[^/]+\.(?:SF|RSA|DSA|EC))$",re.I)
def require(ok,msg):
    if not ok:raise ValueError(msg)
def sha(b):return hashlib.sha256(b).hexdigest()
def inventory(z):
    names=[i.filename for i in z.infolist() if not i.is_dir()]
    require(len(names)==len(set(names)),"duplicate ZIP entry")
    require(all(not n.startswith("/") and ".." not in n.split("/") and "\\" not in n for n in names),"unsafe ZIP entry")
    return set(names)
def resource(n):return n=="resources.arsc" or n.startswith("res/")
def dex_order(names):
    nums=sorted(1 if n=="classes.dex" else int(n[7:-4]) for n in names if DEX.fullmatch(n))
    require(nums==list(range(1,len(nums)+1)) and nums,"DEX sequence is not contiguous")
    return len(nums)
def combine(a):
    original=dump(a.aapt2,a.original); merged=dump(a.aapt2,a.resources)
    issues=compare(original,merged,"original")
    require(not issues,"full original APK differs from rebuilt resource candidate: "+repr(issues[:10]))
    new=set(merged)-set(original)
    require(new and all(k.split("/",1)[1].startswith("cpui_") for k in new),"unexpected added resources")
    require(len({v["id"] for v in merged.values()})==len(merged),"resource ID collisions")
    oc,_=lab_classes(a.original,None); nc,_=lab_classes(a.lab,None)
    require(not set(oc)&set(nc),"class collision")
    require(all(len(v)==1 for v in list(oc.values())+list(nc.values())),"duplicate class definitions")
    preserved={}; extra=[]; skipped=[]
    with zipfile.ZipFile(a.original) as o,zipfile.ZipFile(a.resources) as r,zipfile.ZipFile(a.lab) as l,zipfile.ZipFile(a.output,"w") as z:
        on,rn,ln=map(inventory,(o,r,l))
        k=dex_order(on); n=dex_order(ln)
        require(n==1,"expected one isolated minified DEX")
        require("AndroidManifest.xml" in on and "resources.arsc" in rn,"missing essentials")
        # Keep every original file payload, except resource table and signature.
        # Original resource files must be exact bytes in the new table's archive.
        for name in sorted(on):
            if SIG.fullmatch(name) or name=="resources.arsc":continue
            data=o.read(name)
            if resource(name):
                require(name in rn and r.read(name)==data,"original compiled resource bytes differ: "+name)
            z.writestr(o.getinfo(name),data)
            preserved[name]=sha(data)
        for name in sorted(rn):
            if resource(name) and (name not in on or name=="resources.arsc"):
                z.writestr(r.getinfo(name),r.read(name));extra.append(name)
        target=f"classes{k+1}.dex"
        require(target not in on,"DEX path occupied")
        data=l.read("classes.dex")
        require(data[:8]==b"dex\n037\0","unexpected isolated DEX format")
        z.writestr(target,data,compress_type=zipfile.ZIP_DEFLATED)
        # Dormant stage: do NOT import lab manifest, asset, service or metadata
        # files. They may contain standalone package/initialization semantics.
        # Inventory non-resource entries for the later activation gate.
        skipped=sorted(x for x in ln if not resource(x) and not DEX.fullmatch(x) and not SIG.fullmatch(x) and x!="AndroidManifest.xml")
    with zipfile.ZipFile(a.output) as z,zipfile.ZipFile(a.original) as o,zipfile.ZipFile(a.lab) as l:
        names=inventory(z)
        require(dex_order(names)==k+1,"unexpected new DEX sequence")
        for name,h in preserved.items():
            require(name in names and sha(z.read(name))==h,"original entry changed "+name)
        require(z.read(target)==l.read("classes.dex"),"isolated DEX payload changed")
        require(z.read("AndroidManifest.xml")==o.read("AndroidManifest.xml"),"manifest changed")
        actual=set();batch=set()
        for name in sorted(names):
            if DEX.fullmatch(name):
                cs=dex_classes(z.read(name),batch)
                require(not actual&cs,"duplicate class in final APK");actual.update(cs)
        require(actual==set(oc)|set(nc),"union class set differs")
        require_batch_types(batch,actual)
    require(dump(a.aapt2,a.output)==merged,"final table differs")
    summary={"scope":"dormant same-package candidate; no new components or activation","original_classes":len(oc),"isolated_classes":len(nc),"total_classes":len(actual),"original_dex":k,"total_dex":k+1,"original_entries_preserved":len(preserved),"resource_entries":len(merged),"new_resources":len(new),"original_manifest_byte_identical":True,"original_dex_byte_identical":True,"isolated_dex_byte_identical":True,"added_resource_files":len(extra)-1,"lab_nonresource_entries_not_imported":len(skipped),"activation":False}
    a.report.mkdir(parents=True,exist_ok=True)
    (a.report/"dormant-summary.json").write_text(json.dumps(summary,indent=2))
    (a.report/"deferred-lab-entries.json").write_text(json.dumps(skipped,indent=2))
    print("CP_DORMANT_SAME_PACKAGE_STATIC_PASS "+json.dumps(summary))
def main():
    p=argparse.ArgumentParser()
    for key in ("original","resources","lab","output","report"):p.add_argument("--"+key,type=pathlib.Path,required=True)
    p.add_argument("--aapt2",required=True)
    combine(p.parse_args())
if __name__=="__main__":main()
