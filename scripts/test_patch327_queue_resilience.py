#!/usr/bin/env python3
"""PATCH327: recoverable busy-state persistence errors cannot strand mux work.

ART verifier guard: each normal path jumps over its move-exception handler.
All existing native/Room/subtitle checks, one-worker queue and lease remain.
"""
from pathlib import Path
import re
root = Path(__file__).resolve().parents[1] / "Cinemana_PATCH252_Project" / "app"
exp = (root / "smali_classes3/com/shabakaty/cinemana/features/MkvExporter.smali").read_text()
def method(signature):
    methods = [m for m in re.findall(r"(?ms)^\.method [^\n]*\n.*?^\.end method", exp)
               if signature in m.split("\n", 1)[0]]
    assert len(methods) == 1, (signature, len(methods))
    return methods[0]
normal = method("onVideoCompleted(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)V")
recovered = method("runRecovered(Landroid/content/Context;Ljava/lang/Object;Ljava/io/File;Ljava/lang/String;)V")
assert "QUEUE_STATE_WRITE_FAILED_CONTINUING" in normal
assert normal.index(":try_start_p327_busy") < normal.index("MkvStateStore;->setBusy(") < normal.index(":try_end_p327_busy")
assert normal.index(":try_end_p327_busy") < normal.index("goto :p327_enqueue") < normal.index(":p327_busy_failed\n    move-exception p0") < normal.index("\n    :p327_enqueue\n")
assert normal.index(":p327_enqueue\n") < normal.index("JOB_EXECUTOR:") < normal.index("ExecutorService;->execute(")
assert normal.index("ACTIVE_JOB_KEYS:") < normal.index("QUEUE_ENQUEUED key=") < normal.index(":try_start_p327_busy")
assert "RECOVERED_IDLE_UPDATE_FAILED_CONTINUING" in recovered
assert recovered.index("\n    :run_recovered_finish\n") < recovered.index(":try_start_p327_idle") < recovered.index(":try_end_p327_idle")
assert recovered.index(":try_end_p327_idle") < recovered.index("goto :p327_release_key") < recovered.index(":p327_idle_failed\n    move-exception v0") < recovered.index("\n    :p327_release_key\n")
assert recovered.index(":p327_release_key\n") < recovered.index("ACTIVE_JOB_KEYS:")
assert "QUEUE_START recovered key=" in recovered
assert recovered.index("QUEUE_START recovered key=") < recovered.index("MkvCancel262;->check(")
assert "->delete()Z" not in normal and "->delete()Z" not in recovered
assert "FFMPEG_SLOTS" not in normal and "FFMPEG_SLOTS" not in recovered
assert normal.count("ExecutorService;->execute(") == 1
print("PASS PATCH327: dedupe lifecycle continues after busy-state write error, ART handler flow guarded, one normal submit, source preserved")
