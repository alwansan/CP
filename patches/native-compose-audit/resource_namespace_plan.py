#!/usr/bin/env python3
"""Deterministic candidate resource namespace/ID allocation. No original writes."""
import argparse
import collections
import json
import pathlib
import re
from native_dependency_audit import original_resources, lab_resources, write_tsv

def allocate(old, lab, prefix="cpui_"):
    if not re.fullmatch(r"[a-z][a-z0-9_]*_",prefix):
        raise ValueError("invalid prefix")
    if not old or not lab:
        raise ValueError("empty map")
    type_ids={}
    used_types={}
    assigned=set()
    max_entry=collections.defaultdict(lambda:-1)
    for name, rid in sorted(old.items()):
        typ,entry=name.split("/",1)
        pkg,tid,num=rid>>24,(rid>>16)&255,rid&65535
        if pkg!=127 or not tid or rid in assigned:
            raise ValueError("unsupported or duplicate original resource ID")
        if typ in type_ids and type_ids[typ]!=tid or tid in used_types and used_types[tid]!=typ:
            raise ValueError("inconsistent original type allocation")
        type_ids[typ]=tid
        used_types[tid]=typ
        max_entry[typ]=max(max_entry[typ],num)
        assigned.add(rid)
    lab_ids=set()
    names=set(old)
    rows=[]
    for name,rid in sorted(lab.items()):
        typ,entry=name.split("/",1)
        if rid>>24!=127 or not ((rid>>16)&255) or rid in lab_ids:
            raise ValueError("unsupported or duplicate lab ID")
        lab_ids.add(rid)
        new_name=typ+"/"+prefix+entry.replace(".","_")
        if new_name in names:
            raise ValueError("generated name collision: "+new_name)
        if typ not in type_ids:
            tid=next((i for i in range(1,256) if i not in used_types),None)
            if tid is None:
                raise ValueError("resource type ID space exhausted")
            type_ids[typ]=tid
            used_types[tid]=typ
        max_entry[typ]+=1
        if max_entry[typ]>65535:
            raise ValueError("resource entry ID space exhausted for "+typ)
        new_id=0x7f000000|(type_ids[typ]<<16)|max_entry[typ]
        if new_id in assigned:
            raise ValueError("allocated ID collision")
        rows.append((name,rid,new_name,new_id))
        assigned.add(new_id);names.add(new_name)
    return rows

def stable_lines(resources, package):
    return "".join(f"{package}:{name} = 0x{rid:08x}\n" for name,rid in sorted(resources.items()))

def main():
    p=argparse.ArgumentParser()
    p.add_argument("--original",type=pathlib.Path,required=True)
    p.add_argument("--apk",type=pathlib.Path,required=True)
    p.add_argument("--aapt2",required=True)
    p.add_argument("--out",type=pathlib.Path,required=True)
    a=p.parse_args()
    old=original_resources(a.original)
    lab=lab_resources(a.apk,a.aapt2)
    rows=allocate(old,lab)
    assert rows==allocate(dict(reversed(list(old.items()))),dict(reversed(list(lab.items()))))
    allocated={name:rid for _,_,name,rid in rows}
    combined=dict(old)
    combined.update(allocated)
    assert len(combined)==len(old)+len(lab)
    assert len(set(combined.values()))==len(combined)
    assert all(combined[k]==v for k,v in old.items())
    a.out.mkdir(parents=True,exist_ok=True)
    write_tsv(a.out/"candidate-resource-map.tsv",["lab_name","lab_id","candidate_name","candidate_id"],[(a,f"0x{b:08x}",c,f"0x{d:08x}") for a,b,c,d in rows])
    (a.out/"candidate-stable-ids.txt").write_text(stable_lines(combined,"com.cinemana.pro"),encoding="utf-8")
    summary={"scope":"allocation only; no actual resource values, XML references, styleable arrays or DEX rewrite","original_preserved":len(old),"lab_allocated":len(rows),"combined_entries":len(combined),"name_collisions":0,"numeric_collisions":0,"deterministic":True}
    (a.out/"resource-plan-summary.json").write_text(json.dumps(summary,indent=2)+"\n")
    print("CP_RESOURCE_ALLOCATION_PASS "+json.dumps(summary,separators=(",",":")))
if __name__=="__main__":
    main()
