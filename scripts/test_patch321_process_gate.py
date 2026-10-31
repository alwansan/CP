#!/usr/bin/env python3
"""PATCH321: only main process may start MP4/MKV disk audit on Application.onCreate."""
from pathlib import Path
import re
root=Path(__file__).resolve().parents[1]/"Cinemana_PATCH252_Project/app"

def method(path,head):
    s=(root/path).read_text()
    found=[m for m in re.findall(r"(?ms)^\.method [^\n]*\n.*?^\.end method",s) if head in m.split("\n",1)[0]]
    assert len(found)==1,(path,head,len(found))
    return found[0]

app=method("smali/com/shabakaty/cinemana/CinemanaApplication.smali","onCreate()V")
assert "Restart108;->bootstrap(Ljava/lang/Object;)V" in app
assert "DownloadRepair129;->startup(Landroid/content/Context;)V" in app
startup=method("smali_classes6/com/shabakaty/cinemana/ca1/DownloadRepair129.smali","startup(Landroid/content/Context;)V")
assert "Restart108;->main(Ljava/lang/Object;)Z" in startup
assert "if-eqz v0, :startup_done" in startup
assert startup.index("Restart108;->main")<startup.index("MkvRepairStartup;-><init>")
assert "MKV_STARTUP_PROCESS_CHECK_FAILED" in startup
# PATCH322 / Android 15 ART regression: move-exception must be entered only via .catch.
# A successful Thread.start MUST skip the exception handler, otherwise ART VerifyError
# rejects DownloadRepair129.startup() even if baksmali and DEX compilation pass.
assert "invoke-virtual {v1}, Ljava/lang/Thread;->start()V" in startup
normal_return_jump = startup.index("goto :startup_done", startup.index("->start()V"))
handler = startup.index("\n    :startup_gate_failed\n")
exception = startup.index("move-exception v0", handler)
done = startup.index(":startup_done", exception)
assert startup.index("->start()V") < normal_return_jump < handler < exception < done
assert ".catch Ljava/lang/Throwable;" in startup
restart=method("smali_classes6/com/shabakaty/cinemana/ca1/Restart108.smali"," main(Ljava/lang/Object;)Z")
assert "getProcessName" in restart
assert "getPackageName" in restart
assert "isDownloaderProcess" in restart
manifest=(root/"AndroidManifest.xml").read_text()
assert 'android:process=":filedownloader"' in manifest
print("PASS PATCH321: app process exclusively starts independent recovery watcher/FFmpeg queue; separate downloader process remains unchanged")
