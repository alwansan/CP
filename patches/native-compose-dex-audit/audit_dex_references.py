#!/usr/bin/env python3
"""Read-only lab DEX reference inventory. Numeric matches are candidates only."""
import argparse
import collections
import json
import pathlib
import re
import sys
sys.path.insert(0,str(pathlib.Path(__file__).resolve().parents[1]/"native-compose-audit"))
from native_dependency_audit import original_resources,lab_resources,write_tsv,CLASS
from resource_namespace_plan import allocate

LITERAL=re.compile(r"(?<![\w])0x[0-9a-fA-F]{8}(?![\w])")
QUOTED=re.compile(r'"(?:\\.|[^"\\])*"')
FIELD=re.compile(r"^\.field\s+(?:\S+\s+)*?([^:\s]+):I\s*=\s*(0x[0-9a-fA-F]{8})\s*$")
RCLASS=re.compile(r"^L[^;]+/R\$([\w]+);$")
RFIELD=re.compile(r"(L[^;\s]+/R\$([\w]+);)->([^:\s]+):(\[?I)(?![\w])")
CALL=re.compile(r"(L[^;\s]+;)->([^\s(]+)\(")
RESIDUAL=tuple("L"+x+";" for x in (
    "android/support/v4/app/RemoteActionCompatParcelizer",
    "android/support/v4/graphics/drawable/IconCompatParcelizer",
    "androidx/core/app/RemoteActionCompat",
    "androidx/core/app/RemoteActionCompatParcelizer",
    "androidx/core/graphics/drawable/IconCompat",
    "androidx/core/graphics/drawable/IconCompatParcelizer",
    "androidx/versionedparcelable/CustomVersionedParcelable",
    "androidx/versionedparcelable/ParcelImpl",
))

def lexical(line):
    # Strip quotes and comments from instruction candidates, retain string
    # literals separately for reflective references. '#' inside a quote is data.
    code=[]; strings=[]; i=0
    while i<len(line):
        if line[i]=="#":
            break
        if line[i]=='"':
            m=QUOTED.match(line,i)
            if not m:
                raise ValueError("unterminated smali string")
            strings.append(m.group()[1:-1])
            code.append(" "*len(m.group()))
            i=m.end()
        else:
            code.append(line[i]);i+=1
    return "".join(code).strip(),strings

def analyze(root,rows):
    byid={b:(a,c,d) for a,b,c,d in rows}
    byfield=collections.defaultdict(list)
    for a,b,c,d in rows:
        typ,name=a.split("/",1)
        byfield[(typ,name.replace(".","_"))].append((a,b,c,d))
    result={k:[] for k in ("numeric","rfields","raccess","resourcecalls","residual","strings")}
    files=0
    for folder in sorted(root.iterdir()):
        if not folder.is_dir() or not re.fullmatch(r"smali(?:_classes\d+)?",folder.name):
            continue
        for path in sorted(folder.rglob("*.smali")):
            files+=1
            rel=str(path.relative_to(root));desc="";method="";array_width=None
            for n,line in enumerate(path.read_text(encoding="utf-8").splitlines(),1):
                code,strings=lexical(line)
                if code.startswith(".class "):
                    m=CLASS.match(code)
                    if not m:raise ValueError("bad class "+rel)
                    desc=m.group(1)
                if code.startswith(".method "):method=code.split()[-1]
                if code==".end method":method=""
                if code.startswith(".array-data "):array_width=int(code.split()[1],0)
                if code==".end array-data":array_width=None
                rc=RCLASS.fullmatch(desc)
                f=FIELD.fullmatch(code)
                exact=None
                if rc and f:
                    typ=rc.group(1);name=f.group(1);rid=int(f.group(2),16)
                    options=byfield.get((typ,name),[])
                    if typ=="styleable":
                        status="STYLEABLE_INDEX_OR_OTHER_INT_NOT_RESOURCE"
                    elif len(options)==1 and options[0][1]==rid:
                        exact=options[0]
                        status="EXACT_NAMED_R_FIELD"
                    elif options:
                        status="R_FIELD_VALUE_OR_NAME_MISMATCH"
                    else:status="R_FIELD_NOT_IN_TABLE"
                    result["rfields"].append((rel,str(n),desc,name,hex(rid),status,exact[0] if exact else "",hex(exact[3]) if exact else ""))
                for m in LITERAL.finditer(code):
                    val=int(m.group(),16)
                    if val not in byid:continue
                    old,new,newid=byid[val]
                    if exact and val==exact[1]:
                        kind="EXACT_NAMED_R_FIELD"
                    elif array_width is not None:
                        kind=("R_STYLEABLE_ARRAY_CANDIDATE" if rc and rc.group(1)=="styleable" else "ARRAY_PAYLOAD_CANDIDATE")
                    elif code.startswith("const"):kind="CONST_CANDIDATE"
                    elif code.startswith(".field"):kind="FIELD_CANDIDATE"
                    else:kind="OTHER_LITERAL_CANDIDATE"
                    result["numeric"].append((rel,str(n),desc,method,kind,hex(val),old,new,hex(newid)))
                for m in RFIELD.finditer(code):
                    owner,typ,name,value_type=m.groups()
                    options=byfield.get((typ,name),[])
                    status="STYLEABLE_ABI" if typ=="styleable" else ("UNIQUE_TABLE_NAME" if len(options)==1 else "UNRESOLVED_TABLE_NAME")
                    result["raccess"].append((rel,str(n),desc,method,owner,name,value_type,status,options[0][0] if len(options)==1 else ""))
                for m in CALL.finditer(code):
                    owner,name=m.groups()
                    if owner in ("Landroid/content/res/Resources;","Landroid/content/res/TypedArray;","Landroid/content/res/Resources$Theme;") or name in ("getIdentifier","obtainStyledAttributes"):
                        result["resourcecalls"].append((rel,str(n),desc,method,owner,name))
                for target in RESIDUAL:
                    if target in code and target!=desc:
                        result["residual"].append((rel,str(n),desc,method,target,"CODE_DESCRIPTOR"))
                    fqcn=target[1:-1].replace("/",".")
                    for s in strings:
                        if s in (target,fqcn,target[1:-1]):
                            result["residual"].append((rel,str(n),desc,method,target,"EXACT_STRING"))
                for s in strings:
                    # Keep only exact table names; don't leak unrelated strings.
                    for a,_,_,_ in rows:
                        if s==a or s==a.split("/",1)[1]:
                            result["strings"].append((rel,str(n),desc,method,a,"EXACT_NAME_STRING_CANDIDATE"))
            if not desc:raise ValueError("missing descriptor "+rel)
    if not files:raise ValueError("no disassembled classes")
    return files,result

HEADERS={
"numeric":("file","line","class","method","kind","old_id","old_name","new_name","new_id"),
"rfields":("file","line","class","field","value","status","resource_name","new_id"),
"raccess":("file","line","class","method","owner","field","type","status","resource_name"),
"resourcecalls":("file","line","class","method","owner","name"),
"residual":("file","line","class","method","target","kind"),
"strings":("file","line","class","method","resource_name","kind")}

def main():
    p=argparse.ArgumentParser()
    p.add_argument("--original",type=pathlib.Path,required=True)
    p.add_argument("--apk",type=pathlib.Path,required=True)
    p.add_argument("--decoded",type=pathlib.Path,required=True)
    p.add_argument("--aapt2",required=True)
    p.add_argument("--out",type=pathlib.Path,required=True)
    a=p.parse_args()
    rows=allocate(original_resources(a.original),lab_resources(a.apk,a.aapt2))
    files,results=analyze(a.decoded,rows)
    a.out.mkdir(parents=True,exist_ok=True)
    for key,items in results.items():write_tsv(a.out/(key+".tsv"),HEADERS[key],items)
    kinds=collections.Counter(row[4] for row in results["numeric"])
    exact=kinds["EXACT_NAMED_R_FIELD"]
    summary={"scope":"static standalone lab DEX candidate inventory; no rewrite or relocation proof",
             "smali_files":files,"resource_map":len(rows),"numeric_sites":len(results["numeric"]),
             "numeric_kinds":dict(kinds),"named_field_sites":exact,
             "other_numeric_candidates":len(results["numeric"])-exact,
             "rfield_refs":len(results["raccess"]),"resource_api_calls":len(results["resourcecalls"]),
             "residual_descriptor_or_string_refs":len(results["residual"]),"name_string_candidates":len(results["strings"]),
             "merge_authorized":False}
    (a.out/"summary.json").write_text(json.dumps(summary,indent=2)+"\n")
    print("CP_NATIVE_DEX_REFERENCE_AUDIT_PASS "+json.dumps(summary,separators=(",",":")))
if __name__=="__main__":main()
