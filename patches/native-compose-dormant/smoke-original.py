#!/usr/bin/env python3
"""Fresh emulator installation, original launcher only. No account or download commands."""
import os,pathlib,re,subprocess,time
P="com.cinemana.pro"
OUT=pathlib.Path(os.environ["RUNNER_TEMP"])/"cp-dormant"
def adb(*args,timeout=30,check=True):
    return subprocess.run(["adb",*args],text=True,capture_output=True,timeout=timeout,check=check).stdout
adb("install","-r",str(OUT/"signed.apk"),timeout=180)
adb("logcat","-c")
launch=adb("shell","cmd","package","resolve-activity","--brief",P).strip().splitlines()[-1]
assert launch.startswith(P+"/"),launch
try:
    result=adb("shell","am","start","-W","-n",launch,timeout=120)
    print(result,flush=True)
    assert "Status: ok" in result,result
    deadline=time.monotonic()+60
    while time.monotonic()<deadline:
        state=adb("shell","dumpsys","activity","activities")
        resumed=[line for line in state.splitlines() if ("topResumedActivity" in line or "mResumedActivity" in line) and P+"/" in line]
        pid=adb("shell","pidof",P,check=False).strip()
        if resumed and pid.isdigit():
            time.sleep(5)
            latest=adb("shell","dumpsys","activity","activities")
            pid2=adb("shell","pidof",P,check=False).strip()
            if pid2==pid and any(("topResumedActivity" in line or "mResumedActivity" in line) and P+"/" in line for line in latest.splitlines()):
                log=adb("logcat","-d","-b","crash",timeout=30)
                assert not re.search(r"Process:\s*"+re.escape(P)+r"(?:[:,\s])",log),log[-3000:]
                print("CP_DORMANT_ORIGINAL_LAUNCH_PASS pid="+pid+" launcher="+launch,flush=True)
                break
        time.sleep(2)
    else:raise AssertionError("No sustained original foreground activity")
finally:
    (OUT/"report"/"original-activity.txt").write_text(adb("shell","dumpsys","activity","activities",check=False))
    # Only crash buffer on clean emulator, no user account information.
    (OUT/"report"/"original-crash.txt").write_text(adb("logcat","-d","-b","crash",check=False))
