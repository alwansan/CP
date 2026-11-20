#!/usr/bin/env python3
"""Add exactly one private owner service and private UI diagnostic provider."""
import argparse,copy,json,pathlib,sys,xml.etree.ElementTree as ET,zipfile
P=pathlib.Path(__file__).resolve().parents[1]
sys.path[:0]=[str(P/"native-compose-dormant"),str(P/"native-compose-audit"),str(P/"native-compose-resource-coexistence"),str(P.parent/"scripts")]
from combine_dormant import inventory,dex_order,SIG,require
from native_dependency_audit import lab_classes
from resource_coexistence import dump
from verify_apk_dex import dex_classes
A="{http://schemas.android.com/apk/res/android}"
ET.register_namespace("android",A[1:-1])
SERVICE="cp.realowner.RealOwnerService"
PROBE="cp.realowner.UiIpcProbeProvider"
def manifest(path):
    t=ET.parse(path);root=t.getroot();app=root.find("application")
    require(root.get("package")=="com.cinemana.pro" and app.get(A+"appComponentFactory")=="cp.nativegate.NativeGateFactory","wrong active manifest")
    require(not app.get(A+"process") or app.get(A+"process")=="com.cinemana.pro","wrong main process")
    require(not any(e.get(A+"name","").startswith("cp.realowner.") for e in root.iter()),"IPC components already exist")
    old=ET.tostring(root)
    ET.SubElement(app,"service",{A+"name":SERVICE,A+"exported":"false",A+"process":"com.cinemana.pro"})
    ET.SubElement(app,"provider",{A+"name":PROBE,A+"authorities":"com.cinemana.pro.cp-real-owner-ipc-probe",A+"exported":"false",A+"process":":nativeui",A+"multiprocess":"false"})
    restored=copy.deepcopy(root);ra=restored.find("application")
    for e in list(ra):
        if e.get(A+"name") in (SERVICE,PROBE):ra.remove(e)
    require(ET.tostring(restored)==old,"unexpected manifest change")
    t.write(path,encoding="utf-8",xml_declaration=True)
def assemble(a):
    require(dump(a.aapt2,a.base)==dump(a.aapt2,a.manifestapk),"resources changed")
    common,_=lab_classes(a.base,None)
    d=a.dex.read_bytes();new=dex_classes(d,set())
    require({"Lcp/realowner/RealOwnerService;","Lcp/realowner/UiIpcProbeProvider;","Lcom/shabakaty/cinemana/htmlbridge/model/ExistingOwnerPageSource;"}<=new,"required class missing")
    stems=("DownloadModel","BoundedDownloadRead","OwnerPageRead","ExistingDaoSource","ExistingOwnerPageSource","OwnerPageSession","OwnerProcessReads")
    require(all(n.startswith("Lcp/realowner/") or any(n=="Lcom/shabakaty/cinemana/htmlbridge/model/"+s+";" or n.startswith("Lcom/shabakaty/cinemana/htmlbridge/model/"+s+"$") for s in stems) for n in new),"unexpected class")
    require(not set(common)&new,"IPC class collision")
    with zipfile.ZipFile(a.base) as src,zipfile.ZipFile(a.manifestapk) as man,zipfile.ZipFile(a.output,"w") as out:
        names=inventory(src);k=dex_order(names)
        for n in sorted(names):
            if SIG.fullmatch(n):continue
            out.writestr(src.getinfo(n),man.read(n) if n=="AndroidManifest.xml" else src.read(n))
        out.writestr(f"classes{k+1}.dex",d)
    with zipfile.ZipFile(a.base) as src,zipfile.ZipFile(a.output) as out:
        require(all(src.read(n)==out.read(n) for n in inventory(src) if n!="AndroidManifest.xml" and not SIG.fullmatch(n)),"active payload changed")
        require(dex_order(inventory(out))==k+1,"bad DEX order")
    actual,_=lab_classes(a.output,None)
    require(set(actual)==set(common)|new and all(len(v)==1 for v in actual.values()),"invalid DEX union")
    summary={"scope":"diagnostic real owner IPC, no renderer binding","classes":len(actual),"new_classes":len(new),"dex":k+1,"resources_equal":True,"old_payload_preserved_except_manifest":True,"new_private_components":2}
    a.report.mkdir(parents=True,exist_ok=True);(a.report/"ipc-static.json").write_text(json.dumps(summary,indent=2))
    print("CP_REAL_OWNER_IPC_STATIC_PASS "+json.dumps(summary))
if __name__=="__main__":
    p=argparse.ArgumentParser();p.add_argument("mode",choices=["manifest","assemble"])
    for n in ("manifest","base","manifestapk","dex","output","report"):p.add_argument("--"+n,type=pathlib.Path)
    p.add_argument("--aapt2");a=p.parse_args();manifest(a.manifest) if a.mode=="manifest" else assemble(a)
