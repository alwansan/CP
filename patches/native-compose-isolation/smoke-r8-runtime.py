#!/usr/bin/env python3
"""Black-box API35 smoke of minified lab only; no original app or test APK."""
import os
import pathlib
import re
import subprocess
import time
import xml.etree.ElementTree as ET

PKG="com.alwansan.cinemana.composelab"
OUT=pathlib.Path(os.environ["RUNNER_TEMP"])/"cp-isolation-probe"
APK=pathlib.Path("patches/compose-lab/app/build/outputs/apk/release/app-release.apk")
def adb(*args,timeout=30,check=True):
    p=subprocess.run(["adb",*args],capture_output=True,text=True,timeout=timeout,check=check)
    return p.stdout
def wait_for(label,click=False):
    end=time.monotonic()+65
    last=""
    while time.monotonic()<end:
        try:
            adb("shell","uiautomator","dump","/sdcard/cp-r8-window.xml",timeout=15)
            last=adb("shell","cat","/sdcard/cp-r8-window.xml")
            root=ET.fromstring(last)
            for node in root.iter("node"):
                if node.get("package")!=PKG:
                    continue
                if label not in (node.get("text"),node.get("content-desc")):
                    continue
                if click:
                    parents={c:p for p in root.iter() for c in p}
                    target=node
                    while target.get("clickable")!="true" and target in parents:
                        target=parents[target]
                    if target.get("clickable")!="true" or target.get("enabled")!="true":
                        continue
                    numbers=list(map(int,re.findall(r"\d+",target.get("bounds",""))))
                    if len(numbers)!=4 or numbers[2]<=numbers[0] or numbers[3]<=numbers[1]:
                        continue
                    x,y=(numbers[0]+numbers[2])//2,(numbers[1]+numbers[3])//2
                    print("CP_R8_TAP",label,"bounds=",numbers,"xy=",x,y,flush=True)
                    (OUT/("tap-"+str(x)+"-"+str(y)+".xml")).write_text(last)
                    adb("shell","input","tap",str(x),str(y))
                (OUT/"last-window.xml").write_text(last)
                print("CP_R8_UI_OBSERVED",label,flush=True)
                return
        except (subprocess.SubprocessError,ET.ParseError):
            pass
        time.sleep(1)
    (OUT/"last-window.xml").write_text(last)
    raise AssertionError("Expected visible lab UI: "+label)
def pid(name):
    result=adb("shell","pidof",name,check=False).strip().split()
    assert len(result)==1 and result[0].isdigit(),(name,result)
    return int(result[0])
try:
    adb("install","-r",str(APK),timeout=120)
    adb("logcat","-c")
    launch=adb("shell","cmd","package","resolve-activity","--brief",PKG).strip().splitlines()[-1]
    assert launch.startswith(PKG+"/"),launch
    print(adb("shell","am","start","-W","-n",launch))
    (OUT/"initial-window-insets.txt").write_text(adb("shell","dumpsys","window","displays",check=False))
    wait_for("CINEMANA")
    wait_for("الحساب",click=True)
    wait_for("UI مستقل",click=True)
    wait_for("CP_NATIVE_UI_READY")
    wait_for("صفحة 1 · 24 عنصر")
    main=pid(PKG);ui=pid(PKG+":nativeui");owner=pid(PKG+":owner")
    assert len({main,ui,owner})==3
    print(f"CP_NATIVE_R8_RUNTIME_PASS mainPid={main} uiPid={ui} ownerPid={owner} rows=24",flush=True)
finally:
    (OUT/"runtime-logcat.txt").write_text(adb("logcat","-d","-t","8000",check=False,timeout=60))
    (OUT/"final-window-insets.txt").write_text(adb("shell","dumpsys","window","displays",check=False))
    (OUT/"runtime-activity.txt").write_text(adb("shell","dumpsys","activity","activities",check=False))
