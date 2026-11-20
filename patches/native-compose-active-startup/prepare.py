#!/usr/bin/env python3
"""Modify scratch manifest exactly, and add isolated startup-only DEX."""
import argparse,copy,json,pathlib,re,sys,xml.etree.ElementTree as ET,zipfile
P=pathlib.Path(__file__).resolve().parents[1]
sys.path[:0]=[str(P/"native-compose-dormant"),str(P/"native-compose-audit"),str(P/"native-compose-resource-coexistence"),str(P.parent/"scripts")]
from combine_dormant import inventory,dex_order,DEX,SIG,sha,require
from native_dependency_audit import lab_classes
from resource_coexistence import dump
from verify_apk_dex import dex_classes,require_batch_types
A="{http://schemas.android.com/apk/res/android}"
ET.register_namespace("android",A[1:-1])
FACT="cp.nativegate.NativeGateFactory"
OLD="androidx.core.app.CoreComponentFactory"
ACT="cp.nativegate.NativeGateActivity"
PROV="cp.nativegate.NativeGateProvider"
def prepare(path):
    t=ET.parse(path);root=t.getroot();app=root.find("application")
    require(root.get("package")=="com.cinemana.pro" and app is not None,"unexpected package")
    require(app.get(A+"appComponentFactory")==OLD,"unexpected original factory")
    require(app.get(A+"name")=="com.shabakaty.cinemana.CinemanaApplication","unexpected original Application")
    require(not any(e.get(A+"process") in (":nativeui","com.cinemana.pro:nativeui") for e in root.iter()),"process already exists")
    require(not any(e.get(A+"name","").startswith("cp.nativegate.") for e in root.iter()),"component already exists")
    before=ET.tostring(root)
    app.set(A+"appComponentFactory",FACT)
    ET.SubElement(app,"provider",{A+"name":PROV,A+"authorities":"com.cinemana.pro.cp-nativeui-gate",A+"process":":nativeui",A+"exported":"false",A+"multiprocess":"false"})
    ET.SubElement(app,"activity",{A+"name":ACT,A+"process":":nativeui",A+"exported":"false",A+"theme":"@android:style/Theme.Material.NoActionBar"})
    restored=copy.deepcopy(root);ra=restored.find("application")
    ra.set(A+"appComponentFactory",OLD)
    for e in list(ra):
        if e.get(A+"name") in (ACT,PROV):ra.remove(e)
    require(ET.tostring(restored)==before,"unapproved manifest changes")
    t.write(path,encoding="utf-8",xml_declaration=True)
def assemble(a):
    require(dump(a.aapt2,a.dormant)==dump(a.aapt2,a.manifestapk),"resource table changed")
    common,_=lab_classes(a.dormant,None)
    d=a.dex.read_bytes();batch=set();new=dex_classes(d,batch)
    require(new=={"Lcp/nativegate/"+x+";" for x in ("NativeGateFactory","NativeGateApplication","NativeGateProvider","NativeGateActivity")},"unexpected gate classes")
    require(not set(common)&new,"gate DEX overlap")
    with zipfile.ZipFile(a.dormant) as src,zipfile.ZipFile(a.manifestapk) as man,zipfile.ZipFile(a.output,"w") as out:
        names=inventory(src);k=dex_order(names)
        for n in sorted(names):
            if SIG.fullmatch(n):continue
            data=man.read(n) if n=="AndroidManifest.xml" else src.read(n)
            out.writestr(src.getinfo(n),data)
        out.writestr(f"classes{k+1}.dex",d)
    with zipfile.ZipFile(a.dormant) as src,zipfile.ZipFile(a.output) as out:
        require(all(src.read(n)==out.read(n) for n in inventory(src) if n!="AndroidManifest.xml" and not SIG.fullmatch(n)),"dormant payload changed")
        require(dex_order(inventory(out))==k+1,"gate dex sequence")
    actual,_=lab_classes(a.output,None)
    require(set(actual)==set(common)|new and all(len(v)==1 for v in actual.values()),"gate class union invalid")
    summary={"scope":"startup only; no Compose renderer activation or original engine binding","classes":len(actual),"added_gate_classes":len(new),"dex":k+1,"original_payload_preserved_except_manifest":True,"resources_equal":True,"private_components":2}
    a.report.mkdir(parents=True,exist_ok=True);(a.report/"active-startup-summary.json").write_text(json.dumps(summary,indent=2))
    print("CP_NATIVEUI_FACTORY_STATIC_PASS "+json.dumps(summary))
if __name__=="__main__":
    p=argparse.ArgumentParser();p.add_argument("mode",choices=["prepare","assemble"])
    for n in ("manifest","dormant","manifestapk","dex","output","report"):p.add_argument("--"+n,type=pathlib.Path)
    p.add_argument("--aapt2");a=p.parse_args();prepare(a.manifest) if a.mode=="prepare" else assemble(a)
