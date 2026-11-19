#!/usr/bin/env python3
"""Allocate original-safe numeric IDs before optimizing the standalone lab."""
import argparse,json,pathlib,sys
P=pathlib.Path(__file__).resolve().parents[1]
sys.path.insert(0,str(P/"native-compose-audit"))
from native_dependency_audit import original_resources,lab_resources,write_tsv
from resource_namespace_plan import allocate,stable_lines
PKG="com.alwansan.cinemana.composelab"
def main():
    p=argparse.ArgumentParser()
    p.add_argument("mode",choices=["plan","verify"])
    p.add_argument("--original",type=pathlib.Path,required=True)
    p.add_argument("--apk",type=pathlib.Path,required=True)
    p.add_argument("--aapt2",required=True)
    p.add_argument("--out",type=pathlib.Path,required=True)
    a=p.parse_args()
    old=original_resources(a.original);lab=lab_resources(a.apk,a.aapt2)
    a.out.mkdir(parents=True,exist_ok=True)
    if a.mode=="plan":
        rows=allocate(old,lab)
        plan={name:new_id for name,_,_,new_id in rows}
        assert len(plan)==len(lab) and not set(plan.values())&set(old.values())
        (a.out/"stable-input.ids").write_text(stable_lines(plan,PKG))
        (a.out/"expected-input-map.json").write_text(json.dumps(plan,sort_keys=True,indent=2))
        write_tsv(a.out/"allocation.tsv",["name","old_id","final_name","new_id"],[(n,hex(i),k,hex(v)) for n,i,k,v in rows])
        print("CP_MINIFIED_SOURCE_IDS_PLAN",len(plan))
    else:
        plan=json.loads((a.out/"expected-input-map.json").read_text())
        assert lab==plan,{"missing":sorted(set(plan)-set(lab)),"extra":sorted(set(lab)-set(plan)),"wrong":{k:[hex(v),hex(lab[k])] for k,v in plan.items() if k in lab and lab[k]!=v}}
        assert not set(lab.values())&set(old.values())
        assert all(src_id==dest_id for _,src_id,_,dest_id in allocate(old,lab)), "rename would change numeric IDs"
        print("CP_MINIFIED_SOURCE_IDS_VERIFY_PASS "+json.dumps({"resources":len(lab),"numeric_overlap":0,"resource_name_rename_still_required":True}))
if __name__=="__main__":main()
