#!/usr/bin/env python3
"""Prove and remap generated styleable arrays only, in pinned scratch lab.
Small straight-line evaluator deliberately rejects unsupported instructions.
"""
import argparse
import csv
import json
import pathlib
import re
import sys
sys.path.insert(0,str(pathlib.Path(__file__).resolve().parents[1]/"native-compose-audit"))
sys.path.insert(0,str(pathlib.Path(__file__).resolve().parents[1]/"native-compose-dex-audit"))
from native_dependency_audit import original_resources,lab_resources
from resource_namespace_plan import allocate
from audit_dex_references import lexical

CLASSES={"Landroidx/core/R$styleable;","Landroidx/autofill/R$styleable;"}
CONST=re.compile(r"const(?:/4|/16|/high16)? (v\d+), (-?(?:0x[0-9a-fA-F]+|\d+))$")
ARRAY_FIELD=re.compile(r"\.field (?:\S+ )+([^:\s]+):\[I(?: = null)?$")
INDEX_FIELD=re.compile(r"\.field (?:\S+ )+([^:\s]+):I = (-?(?:0x[0-9a-fA-F]+|\d+))$")
NUM=re.compile(r"-?(?:0x[0-9a-fA-F]+|\d+)$")
def require(condition,msg):
    if not condition:raise ValueError(msg)
def read_styleable(path,desc):
    lines=path.read_text(encoding="utf-8").splitlines()
    code=[lexical(line)[0] for line in lines]
    require(any(s.startswith(".class ") and s.split()[-1]==desc for s in code),"descriptor differs")
    arrays=set();indexes={};payloads={};body=[]
    in_method=False;label=None;payload=None;seen=False;ended=False;ctor=False;ctor_seen=False;ctor_body=[]
    for n,s in enumerate(code,1):
        if not s:continue
        a=ARRAY_FIELD.fullmatch(s);idx=INDEX_FIELD.fullmatch(s)
        if a:
            require(a[1] not in arrays,"duplicate array field");arrays.add(a[1])
        if idx:
            require(idx[1] not in indexes,"duplicate index")
            indexes[idx[1]]=int(idx[2],0)
        if s.startswith(".method "):
            require(not in_method and not ctor,"nested method "+s)
            signature=s.split()[-1]
            if signature=="<init>()V":
                require(not ctor_seen,"duplicate constructor")
                ctor=True;ctor_seen=True;ctor_body=[];continue
            require(not seen and signature=="<clinit>()V","unexpected method "+s)
            in_method=True;seen=True;continue
        if ctor:
            if s==".end method":
                require(ctor_body==["invoke-direct {p0}, Ljava/lang/Object;-><init>()V","return-void"],"nontrivial constructor "+repr(ctor_body))
                ctor=False;continue
            if s.startswith((".locals ",".registers ",".line ")):continue
            ctor_body.append(s);continue
        if not in_method:continue
        if s==".end method":
            require(payload is None,"unterminated payload");in_method=False;continue
        if payload is not None:
            if s==".end array-data":payload=None;continue
            require(NUM.fullmatch(s),"invalid 4-byte array value: "+s)
            payloads[payload].append((int(s,0),n));continue
        if s.startswith(":"):
            require(ended,"branch label in executable code")
            label=s;continue
        if s==".array-data 4":
            require(ended and label and label not in payloads,"invalid payload")
            payload=label;payloads[label]=[];label=None;continue
        if s.startswith((".locals ",".registers ",".line ")):continue
        # Baksmali may emit an alignment nop after the unconditional return,
        # before a 4-byte payload. It is unreachable in this branch-free method.
        if ended and s=="nop":continue
        require(not ended,"instruction after return: "+s)
        body.append((n,s))
        if s=="return-void":ended=True
    require(seen and ended and not in_method and not ctor and arrays, f"invalid clinit {desc}: seen={seen} ended={ended} in_method={in_method} ctor={ctor} arrays={len(arrays)}; declarations={[s for s in code if s.startswith('.field ') and ': [I' in s.replace(':[',': [')][:10]}")
    # Each integer travels with its original producer line. The only uses are
    # array length or ordered array elements; reject all unknown instructions.
    registers={};pending=None;output={};size_sources=set();used_payloads=set()
    for n,s in body:
        m=CONST.fullmatch(s)
        if m:
            require(pending is None,"missing move-result");registers[m[1]]=(int(m[2],0),n);continue
        m=re.fullmatch(r"filled-new-array(?:/range)? \{(.*?)\}, \[I",s)
        if m:
            require(pending is None,"pending array")
            if " .. " in m[1]:
                lo,hi=m[1].split(" .. ");regs=["v"+str(i) for i in range(int(lo[1:]),int(hi[1:])+1)]
            else:regs=m[1].split(", ")
            pending=[registers[v] for v in regs]
            require(all(isinstance(v,tuple) for v in pending),"non-integer array element");continue
        m=re.fullmatch(r"move-result-object (v\d+)",s)
        if m:
            require(pending is not None,"missing filled array")
            registers[m[1]]=pending;pending=None;continue
        m=re.fullmatch(r"new-array (v\d+), (v\d+), \[I",s)
        if m:
            size,source=registers[m[2]]
            require(0<=size<=256,"invalid array length")
            size_sources.add(source);registers[m[1]]=[None]*size;continue
        m=re.fullmatch(r"fill-array-data (v\d+), (:\w+)",s)
        if m:
            data=payloads[m[2]];arr=registers[m[1]]
            require(isinstance(arr,list) and len(arr)==len(data) and all(x is None for x in arr),"array length mismatch")
            registers[m[1]]=list(data);used_payloads.add(m[2]);continue
        m=re.fullmatch(r"sput-object (v\d+), (L[^;]+;)->([^:]+):\[I",s)
        if m:
            require(m[2]==desc and m[3] in arrays and m[3] not in output,"unexpected array write")
            arr=registers[m[1]]
            require(isinstance(arr,list) and all(isinstance(v,tuple) for v in arr),"uninitialized array")
            output[m[3]]=list(arr);continue
        if s=="return-void":continue
        raise ValueError("unsupported clinit instruction "+s)
    require(set(output)==arrays and set(payloads)==used_payloads and pending is None,"incomplete arrays")
    for name,idx in indexes.items():
        matches=[a for a in arrays if name.startswith(a+"_")]
        require(matches,"index lacks array "+name)
        owner=max(matches,key=len)
        require(0<=idx<len(output[owner]),"index outside array "+name)
    return lines,output,indexes,size_sources
def transform(root,rows,report,verify=False):
    attrs={b:d for a,b,c,d in rows if a.startswith("attr/")}
    candidates=list(csv.DictReader((report/"unresolved.tsv").open(),delimiter="\t"))
    require(candidates and all(x["class"] in CLASSES and x["method"]=="<clinit>()V" and x["old_name"].startswith("attr/") and x["kind"] in ("CONST_CANDIDATE","R_STYLEABLE_ARRAY_CANDIDATE") for x in candidates),"scope changed")
    expected_file=report/"styleable-expected.json"
    expected=json.loads(expected_file.read_text()) if verify else {}
    complete={}
    for desc in sorted(CLASSES):
        rels={x["file"] for x in candidates if x["class"]==desc}
        require(len(rels)==1,"ambiguous class file")
        path=root/next(iter(rels))
        lines,arrays,indexes,size_sources=read_styleable(path,desc)
        observed={a:[v for v,_ in values] for a,values in arrays.items()}
        if verify:
            require(expected[desc]=={"arrays":observed,"indexes":indexes},"roundtrip array or index order differs "+desc)
            complete[desc]=expected[desc];continue
        # Source provenance: every candidate line must feed an actual array element
        # and no candidate producer may be used as an array length.
        edits={int(x["line"]):(int(x["old_id"],16),int(x["new_id"],16)) for x in candidates if x["class"]==desc}
        proven={}
        result={}
        for name,values in arrays.items():
            output=[]
            for old,source in values:
                if old>>24==0x7f:
                    require(old in attrs and source in edits and edits[source]==(old,attrs[old]),"unmapped/non-proven attribute")
                    require(source not in size_sources,"attribute also used as length")
                    proven[source]=edits[source];output.append(attrs[old])
                else:
                    require(old>>24==1,"unexpected non-framework attr "+hex(old))
                    output.append(old)
            require(output==sorted(output) and len(output)==len(set(output)),"remap changes sorted attribute order")
            result[name]=output
        require(proven==edits,"attribute producer coverage incomplete")
        complete[desc]={"arrays":result,"indexes":indexes}
        for n,(old,new) in edits.items():
            raw=lines[n-1];s,_=lexical(raw);m=CONST.fullmatch(s)
            if m:
                require(int(m[2],0)==old,"const differs")
                # Full const required for nonzero low16; always legal for v0..v255.
                require(int(m[1][1:])<=255,"const register width")
                lines[n-1]="    const "+m[1]+", "+f"0x{new:08x}"
            else:
                require(NUM.fullmatch(s) and int(s,0)==old,"payload differs")
                lines[n-1]="        "+f"0x{new:08x}"
        path.write_text("\n".join(lines)+"\n",encoding="utf-8")
        _,actual,actual_indexes,_=read_styleable(path,desc)
        require({a:[v for v,_ in values] for a,values in actual.items()}==result and actual_indexes==indexes,"post rewrite differs")
    if not verify:expected_file.write_text(json.dumps(complete,indent=2,sort_keys=True)+"\n")
    print(("CP_STYLEABLE_ROUNDTRIP_PASS" if verify else "CP_STYLEABLE_REWRITE_PASS")+" "+json.dumps({"classes":len(complete),"arrays":sum(len(x["arrays"]) for x in complete.values()),"index_fields":sum(len(x["indexes"]) for x in complete.values()),"sites":len(candidates),"scope":"pinned lab; generated arrays/index order, no runtime proof"}))
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
    transform(a.decoded,rows,a.out,a.verify_only)
if __name__=="__main__":main()
