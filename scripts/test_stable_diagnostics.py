#!/usr/bin/env python3
"""PATCH305 passive-diagnostics integration: fail if required hooks are missing."""
from pathlib import Path
import re
root=Path(__file__).resolve().parents[1]
app=root/"Cinemana_PATCH252_Project/app/smali/com/shabakaty"
home=(app/"cinemana/ui/home_activity/HomeActivity.smali").read_text()
downloads=(app/"downloader/pz0.smali").read_text()
startup=(app/"cinemana/CinemanaApplication.smali").read_text()
ui=(root/"patches/local-account/src/com/shabakaty/cinemana/local/UiPerfDiag.java").read_text()
def method(source,name):
    m=re.search(r"(?ms)^\.method [^\n]*"+re.escape(name)+r"\n.*?^\.end method",source)
    assert m, "missing "+name
    return m.group()
assert "UiPerfDiag;->install(Landroid/app/Activity;)V" in method(home,"onStart()V")
assert 'const-string v0, "downloads_visible"' in method(downloads,"onResume()V")
assert 'const-string v0, "downloads_hidden"' in method(downloads,"onPause()V")
assert "UiPerfDiag;->mark(Ljava/lang/String;)V" in downloads
assert ui.count('private static final String BUILD = "PATCH305";')==1
for marker in ("attach_base_enter","app_create_enter","app_super_completed","local_init_returned","repair_startup_begin","app_create_finished"):
    assert ("PATCH305 "+marker) in startup, marker
assert "registerActivityLifecycleCallbacks" in ui
assert "FrameMetrics" in ui and "probeMainThread" in ui
assert "newSingleThreadScheduledExecutor" in ui
assert '"downloads_visible".equals(event)' in ui
assert 'LOG_LIMIT_BYTES = 1536 * 1024' in ui
print("PATCH305 passive instrumentation hooks validated")

# The dex distribution is only a byte-for-byte move of four existing RTSP classes.
import subprocess
base="82d7f67037f67659115d41782d3a9b5bf4e0bd02"
for name in ("c", "d", "f", "h"):
    original="Cinemana_PATCH252_Project/app/smali/com/google/android/exoplayer2/source/rtsp/"+name+".smali"
    moved="Cinemana_PATCH252_Project/app/smali_classes10/com/google/android/exoplayer2/source/rtsp/"+name+".smali"
    assert not (root/original).exists(), original
    assert (root/moved).read_bytes()==subprocess.check_output(["git","show",base+":"+original]),moved
print("PASS: four RTSP classes moved to classes10 with identical bytes")

# PATCH305: every major fragment emits an explicit screen identity.
for cls,method_name,marker in (
    ("vt1","onResume()V","home_visible"),
    ("d15","onResume()V","detail_visible"),
    ("yy3","onResume()V","search_visible"),
    ("jg3","onResume()V","profile_visible"),
    ("bx","onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V","categories_view_created"),
    ("cm1","onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V","franchises_view_created"),
    ("vt1","onDestroyView()V","home_destroy_view"),
    ("d15","onDestroyView()V","detail_destroy_view"),
):
    source=(app/"downloader"/(cls+".smali")).read_text()
    body=method(source,method_name)
    assert ('const-string v0, "'+marker+'"') in body,(cls,marker)
    assert "UiPerfDiag;->mark(Ljava/lang/String;)V" in body,(cls,marker)
print("PASS: Home, details, search, profile, categories, franchises, downloads markers")

# PATCH305: asynchronous file diagnostics from main thread, unchanged task state.
trace=(root/"Cinemana_PATCH252_Project/app/smali_classes3/com/shabakaty/cinemana/features/DownloadTrace.smali").read_text()
main_log=method(trace,"log(Landroid/content/Context;Ljava/lang/String;)V")
assert main_log.index("DownloadTrace301;->schedule")<main_log.index("new-instance p0, Ljava/io/File;")
assert "Looper;->getMainLooper" in main_log and "Looper;->myLooper" in main_log
worker=(root/"Cinemana_PATCH252_Project/app/smali_classes3/com/shabakaty/cinemana/features/DownloadTrace301.smali").read_text()
task=(root/"Cinemana_PATCH252_Project/app/smali_classes3/com/shabakaty/cinemana/features/DownloadTrace301$Log.smali").read_text()
assert 'const/16 v3, 0x100' in worker
assert "AtomicInteger;->incrementAndGet()" in worker
assert 'invoke-static {v0, v1}, Lcom/shabakaty/cinemana/features/DownloadTrace;->log' in task
assert "DownloadTrace301;->finished()V" in task
print("PASS PATCH305: main-thread file logging safely scheduled, 256-message cap, worker decrements")
