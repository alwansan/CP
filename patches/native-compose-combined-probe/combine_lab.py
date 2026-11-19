#!/usr/bin/env python3
"""Relink and combine standalone lab DEX and resources, never the original APK."""
import argparse,json,pathlib,re,sys,zipfile,xml.etree.ElementTree as ET,subprocess,hashlib
P=pathlib.Path(__file__).resolve().parents[1]
sys.path.insert(0,str(P/"native-compose-audit"))
sys.path.insert(0,str(P/"native-compose-resource-transform"))
from native_dependency_audit import original_resources,lab_resources,lab_classes
from resource_namespace_plan import allocate,stable_lines
from transform_resources import Transform,ANDROID
PKG="com.alwansan.cinemana.composelab"
A="{"+ANDROID+"}"
DEX=re.compile(r"classes(?:[2-9]|[1-9][0-9]+)?\.dex$")
SIG=re.compile(r"META-INF/(?:MANIFEST\.MF|[^/]+\.(?:SF|RSA|DSA|EC))$",re.I)
def command(*args):
    return subprocess.run([str(a) for a in args],check=True,capture_output=True,text=True).stdout
def require(ok,message):
    if not ok:raise ValueError(message)
def prepare(a):
    old=original_resources(a.original);lab=lab_resources(a.apk,a.aapt2)
    rows=allocate(old,lab)
    t=Transform(rows,PKG)
    t.run(a.decoded/"res",a.out/"res")
    t.rename_xml(a.decoded/"AndroidManifest.xml",a.out/"AndroidManifest.xml",False)
    # Version values may be carried in apktool.yml rather than decoded XML.
    # The exact pinned APK manifest is separately verified by badging.
    p=a.out/"AndroidManifest.xml";root=ET.parse(p).getroot()
    require(root.tag=="manifest" and root.get("package")==PKG,"unexpected manifest package")
    before=command(a.aapt2,"dump","badging",a.apk)
    first=next(x for x in before.splitlines() if x.startswith("package: "))
    m=re.search(r"name='([^']+)' versionCode='([^']+)' versionName='([^']*)'",first)
    require(m and m[1]==PKG,"badging version missing")
    root.set(A+"versionCode",m[2]);root.set(A+"versionName",m[3])
    ET.ElementTree(root).write(p,encoding="utf-8",xml_declaration=True)
    (a.out/"stable.ids").write_text(stable_lines(t.new_ids,PKG))
    (a.out/"expected-resource-map.json").write_text(json.dumps(t.new_ids,sort_keys=True,indent=2))
    (a.out/"original-badging.txt").write_text(before)
    print("CP_COMBINED_MANIFEST_PREPARED",len(t.new_ids),t.ref_count)
def resource_entry(name):
    return name in ("AndroidManifest.xml","resources.arsc") or name.startswith("res/")
def combine(a):
    expected=json.loads((a.out/"expected-resource-map.json").read_text())
    actual=lab_resources(a.linked,a.aapt2)
    require(actual==expected,"relinked binary resource map differs")
    orig_classes,_=lab_classes(a.apk,a.dexdump)
    dex_classes,_=lab_classes(a.dex_apk,a.dexdump)
    require(set(orig_classes)==set(dex_classes),"standalone class set changed")
    def entries(z):return [x for x in z.infolist() if not x.is_dir()]
    used=set()
    with zipfile.ZipFile(a.apk) as src,zipfile.ZipFile(a.dex_apk) as dex,zipfile.ZipFile(a.linked) as res,zipfile.ZipFile(a.combined,"w") as out:
        def add(z,x):
            require(x.filename not in used,"duplicate zip path "+x.filename)
            require(not x.filename.startswith("/") and ".." not in x.filename.split("/"),"unsafe zip path")
            used.add(x.filename);out.writestr(x,z.read(x))
        for x in entries(src):
            n=x.filename
            if resource_entry(n) or DEX.fullmatch(n) or SIG.fullmatch(n):continue
            add(src,x)
        for x in entries(res):
            if resource_entry(x.filename):add(res,x)
        for x in entries(dex):
            if DEX.fullmatch(x.filename):add(dex,x)
        require("AndroidManifest.xml" in used and "resources.arsc" in used and "classes.dex" in used,"missing APK essentials")
    require(lab_resources(a.combined,a.aapt2)==expected,"combined table mismatch")
    require(set(lab_classes(a.combined,a.dexdump)[0])==set(orig_classes),"combined class set mismatch")
    original_permissions=command(a.aapt2,"dump","permissions",a.apk)
    new_permissions=command(a.aapt2,"dump","permissions",a.combined)
    require(original_permissions==new_permissions,"manifest permissions changed")
    old_badging=(a.out/"original-badging.txt").read_text()
    new_badging=command(a.aapt2,"dump","badging",a.combined)
    def identity(s):
        return [line for line in s.splitlines() if line.startswith(("package: ","sdkVersion:","targetSdkVersion:","launchable-activity:"))]
    # Launcher label may itself be an allocated resource; exact resolved label must remain the same.
    require(identity(old_badging)==identity(new_badging),"package/SDK/launcher badging changed")
    (a.out/"combined-badging.txt").write_text(new_badging)
    (a.out/"combined-permissions.txt").write_text(new_permissions)
    print("CP_COMBINED_STANDALONE_STATIC_PASS "+json.dumps({"resources":len(expected),"classes":len(orig_classes),"package":PKG,"permissions_unchanged":True,"original_app_merged":False}))
def main():
    p=argparse.ArgumentParser()
    p.add_argument("mode",choices=["prepare","combine"])
    for name in ("original","apk","decoded","out","linked","dex-apk","combined"):
        p.add_argument("--"+name,type=pathlib.Path)
    p.add_argument("--aapt2",required=True);p.add_argument("--dexdump")
    a=p.parse_args()
    (prepare if a.mode=="prepare" else combine)(a)
if __name__=="__main__":main()
