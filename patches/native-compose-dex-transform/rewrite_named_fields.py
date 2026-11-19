#!/usr/bin/env python3
"""Scratch-only named R field conversion. No arbitrary integer rewrite, no installable APK."""
import argparse
import json
import pathlib
import re
import sys
import collections
sys.path.insert(0,str(pathlib.Path(__file__).resolve().parents[1]/"native-compose-audit"))
sys.path.insert(0,str(pathlib.Path(__file__).resolve().parents[1]/"native-compose-dex-audit"))
from native_dependency_audit import original_resources,lab_resources,write_tsv
from resource_namespace_plan import allocate
from audit_dex_references import analyze,lexical,FIELD,CLASS,RCLASS

def named_fields(root,rows,expected_new=False):
    byname={}
    for old,oldid,new,newid in rows:
        typ,name=old.split("/",1)
        key=(typ,name.replace(".","_"))
        if key in byname:raise ValueError("ambiguous R ABI name "+str(key))
        byname[key]=(old,oldid,new,newid)
    out={}
    for folder in sorted(root.iterdir()):
        if not folder.is_dir() or not re.fullmatch(r"smali(?:_classes\d+)?",folder.name):continue
        for path in sorted(folder.rglob("R$*.smali")):
            desc=None
            lines=path.read_text(encoding="utf-8").splitlines()
            for n,line in enumerate(lines,1):
                s,_=lexical(line)
                if s.startswith(".class "):
                    c=CLASS.fullmatch(s)
                    if c is None:raise ValueError("invalid class "+str(path))
                    desc=c.group(1)
                f=FIELD.fullmatch(s)
                if not desc or not f:continue
                rc=RCLASS.fullmatch(desc)
                if not rc or rc.group(1)=="styleable":continue
                key=(rc.group(1),f.group(1))
                if key not in byname:raise ValueError("unmapped named field "+str((desc,key)))
                row=byname[key];v=int(f.group(2),16)
                if v!=row[3 if expected_new else 1]:
                    raise ValueError("wrong R field value "+str((desc,key,hex(v),row)))
                ident=(desc,f.group(1))
                if ident in out:raise ValueError("duplicate R field "+str(ident))
                out[ident]=(path,n,row)
    if not out:raise ValueError("no matched R fields")
    return out

def rewrite(root,rows):
    fields=named_fields(root,rows)
    files,inventory=analyze(root,rows)
    exact=[x for x in inventory["numeric"] if x[4]=="EXACT_NAMED_R_FIELD"]
    if len(fields)!=len(exact):raise ValueError("cross-inventory named field count differs")
    if any(x[5]!="EXACT_NAMED_R_FIELD" for x in inventory["rfields"]):
        raise ValueError("unresolved R field declaration")
    edits=collections.defaultdict(dict)
    for key,(path,n,row) in fields.items():edits[path][n]=row
    for path,changes in edits.items():
        lines=path.read_text(encoding="utf-8").splitlines(keepends=True)
        for n,row in changes.items():
            old,oldid,new,newid=row
            previous=lines[n-1]
            code,_=lexical(previous)
            f=FIELD.fullmatch(code)
            if not f or int(f.group(2),16)!=oldid:raise ValueError("field changed before write")
            # Exact matched field literal once; do not alter field name or ABI.
            pos=previous.index(f.group(2))
            lines[n-1]=previous[:pos]+f"0x{newid:08x}"+previous[pos+len(f.group(2)):]
        path.write_text("".join(lines),encoding="utf-8")
    checked=named_fields(root,rows,expected_new=True)
    if set(checked)!=set(fields):raise ValueError("named R identity set changed")
    unresolved=[x for x in inventory["numeric"] if x[4]!="EXACT_NAMED_R_FIELD"]
    return fields,unresolved

def main():
    p=argparse.ArgumentParser()
    p.add_argument("--original",type=pathlib.Path,required=True)
    p.add_argument("--apk",type=pathlib.Path,required=True)
    p.add_argument("--decoded",type=pathlib.Path,required=True)
    p.add_argument("--aapt2",required=True)
    p.add_argument("--out",type=pathlib.Path,required=True)
    p.add_argument("--verify-only",action="store_true")
    a=p.parse_args()
    rows=allocate(original_resources(a.original),lab_resources(a.apk,a.aapt2))
    a.out.mkdir(parents=True,exist_ok=True)
    if a.verify_only:
        found=named_fields(a.decoded,rows,expected_new=True)
        expected=json.loads((a.out/"named-identities.json").read_text())
        if sorted([list(k) for k in found])!=expected:
            raise ValueError("assembled DEX named field identity set differs")
        print("CP_DEX_NAMED_FIELD_ROUNDTRIP_PASS "+json.dumps({"fields":len(found),"scope":"scratch DEX only; remaining resource references not rewritten; DO NOT INSTALL"}))
        return
    fields,unresolved=rewrite(a.decoded,rows)
    (a.out/"named-identities.json").write_text(json.dumps(sorted([list(k) for k in fields]),indent=2)+"\n")
    write_tsv(a.out/"named-rewrite.tsv",["class","field","old_name","old_id","new_name","new_id"],[(k[0],k[1],v[2][0],hex(v[2][1]),v[2][2],hex(v[2][3])) for k,v in sorted(fields.items())])
    write_tsv(a.out/"unresolved.tsv",["file","line","class","method","kind","old_id","old_name","new_name","new_id"],unresolved)
    contexts=[]
    for x in unresolved:
        path=a.decoded/x[0];n=int(x[1]);lines=path.read_text(encoding="utf-8").splitlines()
        contexts.append("\n--- "+x[0]+":"+x[1]+" ---\n"+"\n".join(f"{i+1}: {lines[i]}" for i in range(max(0,n-8),min(len(lines),n+7))))
    (a.out/"styleable-contexts.txt").write_text("\n".join(contexts))
    print("CP_DEX_NAMED_FIELD_REWRITE_PASS "+json.dumps({"fields":len(fields),"unresolved":len(unresolved),"scope":"scratch only, not merge ready"}))
if __name__=="__main__":main()
