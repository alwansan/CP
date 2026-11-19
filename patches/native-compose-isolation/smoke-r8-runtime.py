#!/usr/bin/env python3
"""Black-box API35 smoke of minified lab only; no original app or test APK."""
import os
import sys
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
def launcher_anr_close_target(root, focus):
    # Only the emulator's exact known Pixel Launcher ANR. Never dismiss an app ANR.
    if not re.search(r"mCurrentFocus=Window\{[^\n}]*Application Not Responding: com\.google\.android\.apps\.nexuslauncher\}", focus):
        return None
    if not re.search(r"mFocusedApp=ActivityRecord\{[^\n}]* "+re.escape(PKG)+r"/", focus):
        return None
    nodes=list(root.iter("node"))
    titles=[n for n in nodes if n.get("package")=="android" and n.get("resource-id")=="android:id/alertTitle" and n.get("text")=="Pixel Launcher isn't responding"]
    buttons=[n for n in nodes if n.get("package")=="android" and n.get("resource-id")=="android:id/aerr_close" and n.get("class")=="android.widget.Button" and n.get("text")=="Close app" and n.get("clickable")=="true" and n.get("enabled")=="true"]
    if len(titles)!=1 or len(buttons)!=1:
        return None
    m=re.fullmatch(r"\[(\d+),(\d+)\]\[(\d+),(\d+)\]", buttons[0].get("bounds",""))
    if m is None:
        return None
    x1,y1,x2,y2=map(int,m.groups())
    if x2<=x1 or y2<=y1:
        return None
    return ((x1+x2)//2,(y1+y2)//2)

def test_launcher_anr():
    root=ET.fromstring("""<hierarchy><node package="android" resource-id="android:id/alertTitle" text="Pixel Launcher isn't responding"/><node package="android" resource-id="android:id/aerr_close" class="android.widget.Button" text="Close app" clickable="true" enabled="true" bounds="[70,1170][1010,1296]"/></hierarchy>""")
    focus="mCurrentFocus=Window{abc u0 Application Not Responding: com.google.android.apps.nexuslauncher}\nmFocusedApp=ActivityRecord{abc u0 "+PKG+"/.ComposeLabActivity t8}"
    assert launcher_anr_close_target(root,focus)==(540,1233)
    assert launcher_anr_close_target(root,focus.replace("com.google.android.apps.nexuslauncher",PKG)) is None
    assert launcher_anr_close_target(root,focus.replace(PKG+"/","other.app/")) is None
    for idx,attr,value in [(0,"text","Cinemana isn't responding"),(0,"package",PKG),(1,"resource-id","android:id/aerr_wait"),(1,"enabled","false"),(1,"bounds","[10,10][0,0]"),(1,"package",PKG)]:
        node=list(root.iter("node"))[idx]; old=node.get(attr);node.set(attr,value)
        assert launcher_anr_close_target(root,focus) is None,(attr,value)
        node.set(attr,old)
    print("CP_LAUNCHER_ANR_GUARD_UNIT_PASS assertions=9",flush=True)

launcher_recoveries=0

def wait_for(label,click=False):
    global launcher_recoveries
    end=time.monotonic()+65
    last=""
    while time.monotonic()<end:
        try:
            adb("shell","uiautomator","dump","/sdcard/cp-r8-window.xml",timeout=15)
            last=adb("shell","cat","/sdcard/cp-r8-window.xml")
            root=ET.fromstring(last)
            if os.environ.get("CP_RECOVER_PIXEL_LAUNCHER_ANR")=="1" and launcher_recoveries<2 and any(n.get("text")=="Pixel Launcher isn't responding" for n in root.iter("node")):
                focus=adb("shell","dumpsys","window","displays",check=False)
                target=launcher_anr_close_target(root,focus)
                if target is not None:
                    launcher_recoveries+=1
                    (OUT/f"launcher-anr-{launcher_recoveries}.xml").write_text(last)
                    (OUT/f"launcher-anr-{launcher_recoveries}.txt").write_text(focus)
                    print("CP_EMULATOR_PIXEL_LAUNCHER_ANR_RECOVERY",launcher_recoveries,flush=True)
                    adb("shell","input","tap",str(target[0]),str(target[1]))
                    time.sleep(2)
                    continue
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
if sys.argv[1:]==["--test-launcher-anr"]:
    test_launcher_anr()
    sys.exit(0)
stream=None
logfile=None
try:
    adb("install","-r",str(APK),timeout=120)
    adb("logcat","-c")
    logfile=(OUT/"runtime-live-logcat.txt").open("w")
    stream=subprocess.Popen(["adb","logcat","-v","threadtime","-s","AndroidRuntime:E","ActivityTaskManager:I","ActivityManager:I","CPNativeUi:I","CPComposeOwner:I"],stdout=logfile,stderr=subprocess.STDOUT)
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
    if stream is not None:
        stream.terminate()
        try:stream.wait(timeout=10)
        except subprocess.TimeoutExpired:stream.kill();stream.wait(timeout=10)
    if logfile is not None:logfile.close()
    (OUT/"runtime-logcat.txt").write_text(adb("logcat","-d","-t","8000",check=False,timeout=60))
    (OUT/"final-window-insets.txt").write_text(adb("shell","dumpsys","window","displays",check=False))
    (OUT/"runtime-activity.txt").write_text(adb("shell","dumpsys","activity","activities",check=False))
