#!/usr/bin/env python3
"""Check the activated package's unchanged default launcher before instrumentation."""
import os,pathlib,re,subprocess,time
P="com.cinemana.pro"
OUT=pathlib.Path(os.environ["RUNNER_TEMP"])/"cp-nativeui-gate"/"report"
def adb(*args,timeout=30):
    return subprocess.run(["adb",*args],text=True,capture_output=True,check=True,timeout=timeout).stdout
adb("shell","am","force-stop",P)
adb("logcat","-c")
launcher=adb("shell","cmd","package","resolve-activity","--brief",P).strip().splitlines()[-1]
assert launcher==P+"/com.shabakaty.cinemana.ui.splash.SplashActivity",launcher
try:
    result=adb("shell","am","start","-W","-n",launcher,timeout=120)
    assert "Status: ok" in result,result
    deadline=time.monotonic()+60
    def resumed():
        return any(("topResumedActivity" in x or "mResumedActivity" in x)
                   and P+"/com.shabakaty.cinemana." in x for x in adb("shell","dumpsys","activity","activities").splitlines())
    while time.monotonic()<deadline:
        pid=adb("shell","pidof",P).strip() if resumed() else ""
        if pid.isdigit():
            time.sleep(5)
            if resumed() and adb("shell","pidof",P).strip()==pid:
                crash=adb("logcat","-d","-b","crash")
                assert not re.search(r"Process:\s*"+re.escape(P)+r"(?:[:,\s])",crash),crash[-3000:]
                print("CP_ACTIVE_LEGACY_LAUNCH_PASS pid="+pid,flush=True)
                break
        time.sleep(1)
    else:raise AssertionError("activated legacy launcher did not remain foreground")
finally:
    (OUT/"active-legacy-activity.txt").write_text(adb("shell","dumpsys","activity","activities"))
    (OUT/"active-legacy-crash.txt").write_text(adb("logcat","-d","-b","crash"))
