#!/usr/bin/env python3
"""PATCH303 passive-diagnostics integration: fail if required hooks are missing."""
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
assert ui.count('private static final String BUILD = "PATCH303";')==1
for marker in ("attach_base_enter","app_create_enter","app_super_completed","local_init_returned","repair_startup_begin","app_create_finished"):
    assert ("PATCH303 "+marker) in startup, marker
assert "registerActivityLifecycleCallbacks" in ui
assert "FrameMetrics" in ui and "probeMainThread" in ui
assert "newSingleThreadScheduledExecutor" in ui
assert '"downloads_visible".equals(event)' in ui
assert 'LOG_LIMIT_BYTES = 1536 * 1024' in ui
print("PATCH303 passive instrumentation hooks validated")
