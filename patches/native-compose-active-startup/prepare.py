#!/usr/bin/env python3
"""Modify scratch manifest exactly, and add isolated startup-only DEX."""
import argparse,copy,json,pathlib,re,struct,sys,xml.etree.ElementTree as ET,zipfile
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
RENDER="com.alwansan.cinemana.composelab.NativeUiProbeActivity"
def prepare(path,renderer=False):
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
    if renderer:
        require(not any(e.get(A+"name")==RENDER for e in root.iter()),"renderer already exists")
        ET.SubElement(app,"activity",{A+"name":RENDER,A+"process":":nativeui",A+"exported":"false",A+"configChanges":"orientation|screenSize|keyboardHidden",A+"theme":"@android:style/Theme.Material.NoActionBar"})
    restored=copy.deepcopy(root);ra=restored.find("application")
    ra.set(A+"appComponentFactory",OLD)
    for e in list(ra):
        if e.get(A+"name") in ((ACT,PROV,RENDER) if renderer else (ACT,PROV)):ra.remove(e)
    require(ET.tostring(restored)==before,"unapproved manifest changes")
    t.write(path,encoding="utf-8",xml_declaration=True)
def renderer_payloads(source,lab,classes):
    # Import exactly the four JNI library ABI files and isolated ServiceLoader
    # entries. Never overwrite an original entry, Kotlin metadata or profiles.
    expected={"arm64-v8a":(2,183),"armeabi-v7a":(1,40),"x86":(1,3),"x86_64":(2,62)}
    names=inventory(lab);existing=inventory(source)
    libs={f"lib/{abi}/libandroidx.graphics.path.so" for abi in expected}
    require(libs<=names,"missing renderer JNI libraries")
    services={x for x in names if x.startswith("META-INF/services/com.alwansan.cinemana.uiisolated.")}
    require(len(services)==2,"unexpected isolated service count")
    selected=sorted(libs|services)
    require(not existing&set(selected),"renderer payload collision")
    for path in selected:
        data=lab.read(path)
        if path in libs:
            kind,machine=expected[path.split("/")[1]]
            require(len(data)>20 and data[:4]==b"\x7fELF" and data[4]==kind and data[5]==1 and struct.unpack_from("<H",data,18)[0]==machine,"JNI ABI mismatch "+path)
        else:
            def desc(name):return "L"+name.replace(".","/")+";"
            interface=path.split("/")[-1]
            providers=[x.split("#",1)[0].strip() for x in data.decode("utf-8").splitlines()]
            providers=[x for x in providers if x]
            require(desc(interface) in classes and providers and all(desc(x) in classes for x in providers),"missing service class "+path)
    return selected
def assemble(a):
    require(dump(a.aapt2,a.dormant)==dump(a.aapt2,a.manifestapk),"resource table changed")
    common,_=lab_classes(a.dormant,None)
    d=a.dex.read_bytes();batch=set();new=dex_classes(d,batch)
    require(new=={"Lcp/nativegate/"+x+";" for x in ("NativeGateFactory","NativeGateApplication","NativeGateProvider","NativeGateActivity")},"unexpected gate classes")
    require(not set(common)&new,"gate DEX overlap")
    selected=[]
    with zipfile.ZipFile(a.dormant) as src,zipfile.ZipFile(a.manifestapk) as man,zipfile.ZipFile(a.output,"w") as out:
        names=inventory(src);k=dex_order(names)
        for n in sorted(names):
            if SIG.fullmatch(n):continue
            data=man.read(n) if n=="AndroidManifest.xml" else src.read(n)
            out.writestr(src.getinfo(n),data)
        out.writestr(f"classes{k+1}.dex",d)
        if a.renderer:
            require("L"+RENDER.replace(".","/")+";" in common,"renderer class missing")
            with zipfile.ZipFile(a.lab) as lab:
                selected=renderer_payloads(src,lab,common)
                for n in selected:out.writestr(lab.getinfo(n),lab.read(n))
    with zipfile.ZipFile(a.dormant) as src,zipfile.ZipFile(a.output) as out:
        require(all(src.read(n)==out.read(n) for n in inventory(src) if n!="AndroidManifest.xml" and not SIG.fullmatch(n)),"dormant payload changed")
        require(dex_order(inventory(out))==k+1,"gate dex sequence")
    if a.renderer:
        with zipfile.ZipFile(a.output) as out,zipfile.ZipFile(a.lab) as lab:
            require(all(out.read(n)==lab.read(n) for n in selected),"renderer payload changed")
    actual,_=lab_classes(a.output,None)
    require(set(actual)==set(common)|new and all(len(v)==1 for v in actual.values()),"gate class union invalid")
    summary={"scope":"startup only; no Compose renderer activation or original engine binding","classes":len(actual),"added_gate_classes":len(new),"dex":k+1,"original_payload_preserved_except_manifest":True,"resources_equal":True,"private_components":2}
    if a.renderer:summary.update({"scope":"private Compose renderer test; no engine binding","private_components":3,"renderer_payloads":selected})
    a.report.mkdir(parents=True,exist_ok=True);(a.report/"active-startup-summary.json").write_text(json.dumps(summary,indent=2))
    print("CP_NATIVEUI_FACTORY_STATIC_PASS "+json.dumps(summary))
if __name__=="__main__":
    p=argparse.ArgumentParser();p.add_argument("mode",choices=["prepare","assemble"])
    for n in ("manifest","dormant","manifestapk","dex","output","report","lab"):p.add_argument("--"+n,type=pathlib.Path)
    p.add_argument("--aapt2");p.add_argument("--renderer",action="store_true");a=p.parse_args();prepare(a.manifest,a.renderer) if a.mode=="prepare" else assemble(a)
