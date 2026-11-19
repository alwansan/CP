#!/usr/bin/env python3
"""Exact eight-class relocation for a disposable minified standalone lab only."""
import argparse,collections,json,pathlib,re,sys
P=pathlib.Path(__file__).resolve().parents[1]
sys.path.insert(0,str(P/"native-compose-audit"))
from native_dependency_audit import original_classes,lab_classes,lab_resources,write_tsv
PREFIX="com/alwansan/cinemana/uiisolated/parcel/"
REL={
"android/support/v4/app/RemoteActionCompatParcelizer":"legacy/app/RemoteActionCompatParcelizer",
"android/support/v4/graphics/drawable/IconCompatParcelizer":"legacy/drawable/IconCompatParcelizer",
"androidx/core/app/RemoteActionCompat":"core/app/RemoteActionCompat",
"androidx/core/app/RemoteActionCompatParcelizer":"core/app/RemoteActionCompatParcelizer",
"androidx/core/graphics/drawable/IconCompat":"core/drawable/IconCompat",
"androidx/core/graphics/drawable/IconCompatParcelizer":"core/drawable/IconCompatParcelizer",
"androidx/versionedparcelable/CustomVersionedParcelable":"versioned/CustomVersionedParcelable",
"androidx/versionedparcelable/ParcelImpl":"versioned/ParcelImpl"}
NAMES={k:PREFIX+v for k,v in REL.items()}
DESC={"L"+k+";":"L"+v+";" for k,v in NAMES.items()}
DOT={k.replace("/","."):v.replace("/",".") for k,v in NAMES.items()}
DRE=re.compile("|".join(re.escape(k) for k in DESC))
STR={**NAMES,**DOT,**DESC}
# Only exact strings and class descriptors are supported. Any other old-name
# occurrence is an unresolved diagnostic, never silently rewritten.
TOKEN=re.compile(r'"(?:\\.|[^"\\])*"|#[^\n]*')
CLASS=re.compile(r"^\.class\s+(?:\S+\s+)*(L[^;\s]+;)\s*$")
def require(ok,msg):
    if not ok:raise ValueError(msg)
def rewrite_line(line,signature=False):
    refs=[];residual=[]
    def descriptors(s):
        def sub(m):
            refs.append(("descriptor",m[0],DESC[m[0]]));return DESC[m[0]]
        return DRE.sub(sub,s)
    def str_token(m):
        x=m[0]
        if x.startswith("#"):return x
        old=x[1:-1]
        if old in STR:
            refs.append(("exact_string",old,STR[old]))
            return '"'+STR[old]+'"'
        if signature:
            for k,v in NAMES.items():
                p="L"+k
                new=re.sub(re.escape(p)+r"(?=[;<])","L"+v,old)
                if new!=old:
                    refs.append(("signature_string",p,"L"+v));old=new
            return '"'+old+'"'
        if any(k in old for k in NAMES) or any(k in old for k in DOT):
            residual.append(old)
        return x
    pieces=[];pos=0
    for m in TOKEN.finditer(line):
        pieces.append(descriptors(line[pos:m.start()]))
        pieces.append(str_token(m));pos=m.end()
    pieces.append(descriptors(line[pos:]))
    return "".join(pieces),refs,residual
def walk(root):
    out={}
    for d in sorted(root.iterdir()):
        if not d.is_dir() or not re.fullmatch(r"smali(?:_classes\d+)?",d.name):continue
        for p in sorted(d.rglob("*.smali")):
            contents=p.read_text(encoding="utf-8")
            classes=[m[1] for line in contents.splitlines() if (m:=CLASS.fullmatch(line.strip()))]
            require(len(classes)==1,"invalid class declaration "+str(p))
            desc=classes[0]
            require(desc not in out,"duplicate descriptor "+desc)
            out[desc]=(p,contents,d)
    require(out,"empty decoded lab")
    return out
def relocate(root,report,verify=False):
    classes=walk(root)
    if not verify:
        require(set(DESC)<=set(classes),"missing targeted definitions")
        require(not set(DESC.values())&set(classes),"destination collision")
    else:
        require(not set(DESC)&set(classes),"old class definitions remain")
        require(set(DESC.values())<=set(classes),"relocated definitions absent")
    changes=[];edits=[];unresolved=[]
    for owner,(path,body,d) in classes.items():
        signature=False;lines=[]
        for i,line in enumerate(body.splitlines(keepends=True),1):
            if line.strip()==".annotation system Ldalvik/annotation/Signature;":signature=True
            new,refs,residual=rewrite_line(line,signature)
            if line.strip()==".end annotation":signature=False
            edits.extend((owner,str(i),*item) for item in refs)
            unresolved.extend((owner,str(i),value) for value in residual)
            lines.append(new)
        new="".join(lines)
        if new!=body:
            dest=d/(DESC.get(owner,owner)[1:-1]+".smali") if owner in DESC else path
            require(dest==path or not dest.exists(),"destination path collision")
            changes.append((path,dest,new))
    report.mkdir(parents=True,exist_ok=True)
    write_tsv(report/("verify-residual.tsv" if verify else "unresolved.tsv"),["owner","line","string"],unresolved)
    require(not unresolved,"unmapped non-exact reflective/name strings; inspect report")
    if verify:
        require(not edits and not changes,"old references remain after assembly")
        expected=set(json.loads((report/"expected-classes.json").read_text()))
        require(set(classes)==expected,"class set differs")
        print("CP_PARCEL_RELOCATION_ROUNDTRIP_PASS "+json.dumps({"classes":len(classes),"old_definitions":0,"old_reference_sites":0}))
        return
    expected={DESC.get(k,k) for k in classes}
    require(len(expected)==len(classes),"unexpected class collapse")
    for old,dest,new in changes:
        dest.parent.mkdir(parents=True,exist_ok=True)
        dest.write_text(new,encoding="utf-8")
        if old!=dest:old.unlink()
    (report/"expected-classes.json").write_text(json.dumps(sorted(expected)))
    write_tsv(report/"changes.tsv",["owner","line","kind","old","new"],edits)
    for model in ("androidx/core/app/RemoteActionCompat","androidx/core/graphics/drawable/IconCompat"):
        require(NAMES[model]+"Parcelizer"==NAMES[model+"Parcelizer"],"reflective model/parcelizer convention broken")
    print("CP_PARCEL_RELOCATION_REWRITE_PASS "+json.dumps({"definitions":len(DESC),"reference_sites":len(edits),"files_changed":len(changes),"scope":"standalone minified only, not parcel protocol proof"}))
def main():
    p=argparse.ArgumentParser()
    p.add_argument("--decoded",type=pathlib.Path,required=True)
    p.add_argument("--out",type=pathlib.Path,required=True)
    p.add_argument("--verify-only",action="store_true")
    a=p.parse_args();relocate(a.decoded,a.out,a.verify_only)
if __name__=="__main__":main()
