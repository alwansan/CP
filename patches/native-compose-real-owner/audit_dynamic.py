#!/usr/bin/env python3
"""Report actual method contexts and dynamic API call sites. No blanket reflection clearance."""
import argparse,csv,collections,json,pathlib,re,sys
sys.path.insert(0,str(pathlib.Path(__file__).resolve().parents[1]/"native-compose-dex-audit"))
from audit_dex_references import lexical,CALL
P=re.compile(r"^(.*) -> (.*):$")
def csvread(path):
    with path.open(newline="") as f:return list(csv.DictReader(f,delimiter="\t"))
def kind(owner,name):
    if owner in ("Landroid/content/res/Resources;","Landroid/content/res/Resources$Theme;") or name=="getIdentifier":
        if name in ("getIdentifier","getResourceName","getResourceTypeName","getResourceEntryName","getResourcePackageName"):return "resource_name"
    if owner=="Ljava/lang/Class;" and name in ("forName","getMethod","getDeclaredMethod","getField","getDeclaredField","getConstructor","getDeclaredConstructor","getDeclaredMethods","getMethods","getFields","getDeclaredFields","newInstance","getName","getCanonicalName"):return "reflection_class"
    if owner.startswith("Ljava/lang/reflect/") or owner.startswith("Ljava/lang/invoke/"):return "reflection_member"
    if owner=="Ljava/util/ServiceLoader;" or (owner.endswith("ClassLoader;") and name=="loadClass"):return "dynamic_class"
    return None
def main():
    p=argparse.ArgumentParser()
    for key in ("decoded","audit","mapping","out"):p.add_argument("--"+key,required=True,type=pathlib.Path)
    a=p.parse_args();a.out.mkdir(parents=True,exist_ok=True)
    candidates=csvread(a.audit/"strings.tsv")
    mapping={}
    for line in a.mapping.read_text().splitlines():
        if line and not line[0].isspace():
            m=P.fullmatch(line)
            if m:mapping[m[2]]=m[1]
    methods={};calls=[];literals=[];files=0
    for folder in sorted(a.decoded.glob("smali*")):
        if not folder.is_dir():continue
        for f in sorted(folder.rglob("*.smali")):
            files+=1;rel=str(f.relative_to(a.decoded));desc=None;start=None;current=None
            lines=f.read_text().splitlines()
            for n,line in enumerate(lines,1):
                code,strings=lexical(line)
                if code.startswith(".class "):desc=code.split()[-1]
                if code.startswith(".method "):start=n;current=code.split()[-1]
                if code==".end method":
                    methods[(rel,current,start)]=(desc,n)
                    start=None;current=None
                if not current:continue
                for m in CALL.finditer(code):
                    owner,name=m.groups();k=kind(owner,name)
                    if k:calls.append({"file":rel,"line":n,"class":desc,"method":current,"owner":owner,"name":name,"kind":k})
                for literal in strings:
                    if literal in ("getIdentifier","getResourceName","getResourceEntryName","getResourceTypeName","getResourcePackageName"):
                        literals.append({"file":rel,"line":n,"class":desc,"method":current,"literal":literal})
    contexts=[]
    for c in candidates:
        rel=c["file"];n=int(c["line"])
        matches=[(k,v) for k,v in methods.items() if k[0]==rel and k[1]==c["method"] and k[2]<=n<=v[1]]
        assert len(matches)==1,("candidate context ambiguous",c)
        (file,method,begin),(desc,end)=matches[0]
        assert desc==c["class"]
        lines=(a.decoded/file).read_text().splitlines()
        actual=lexical(lines[n-1])[1]
        assert c["resource_name"] in actual or c["resource_name"].split("/",1)[1] in actual, c
        contexts.append(dict(c,original_class=mapping.get(desc[1:-1].replace("/",".")),start=begin,end=end,
            method_body="\n".join(lines[begin-1:end]),dynamic_calls=[x for x in calls if x["file"]==file and x["method"]==method and begin<=x["line"]<=end]))
    assert files>0 and len(contexts)==len(candidates)
    (a.out/"exact-name-contexts.json").write_text(json.dumps(contexts,indent=2,ensure_ascii=False))
    (a.out/"dynamic-api-sites.json").write_text(json.dumps(calls,indent=2))
    (a.out/"reflective-resource-name-literals.json").write_text(json.dumps(literals,indent=2))
    summary={"scope":"static exact method contexts; no computed-name dataflow or reflection safety proof","files":files,"exact_name_candidates":len(contexts),"candidate_original_classes":[x["original_class"] for x in contexts],"call_counts":dict(collections.Counter(x["kind"] for x in calls)),"direct_getIdentifier":sum(x["name"]=="getIdentifier" for x in calls),"reflective_resource_name_literals":len(literals),"merge_authorized":False}
    (a.out/"summary.json").write_text(json.dumps(summary,indent=2))
    print("CP_DYNAMIC_NAME_INVENTORY_PASS "+json.dumps(summary))
if __name__=="__main__":main()
