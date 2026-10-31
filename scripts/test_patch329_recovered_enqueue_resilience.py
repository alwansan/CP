#!/usr/bin/env python3
"""PATCH329: recovering a verified MP4 cannot be blocked by UI busy-state write."""
from pathlib import Path
import re

root = Path(__file__).resolve().parents[1] / "Cinemana_PATCH252_Project/app"
exp = (root / "smali_classes3/com/shabakaty/cinemana/features/MkvExporter.smali").read_text()
matches = [
    m for m in re.findall(r"(?ms)^\.method [^\n]*\n.*?^\.end method", exp)
    if "onRecoveredVideo(" in m.split("\n", 1)[0]
]
assert len(matches) == 1, len(matches)
m = matches[0]
assert ".locals 10" in m
assert "Queue110;->mayRepairCompleted(Ljava/lang/Object;)Z" in m
assert "MkvExporter;->buildJobKey(" in m
assert "ACTIVE_JOB_KEYS:" in m
assert "monitor-enter v8" in m and "monitor-exit v8" in m

# Do not swallow the real executor failure: only the optional state write.
assert m.count("ExecutorService;->execute(Ljava/lang/Runnable;)V") == 1
assert m.count("MkvStateStore;->setBusy(") == 2
queued = m.index('const-string v6, "QUEUED"')
start = m.index(":try_start_p329_state\n")
setbusy = m.index("MkvStateStore;->setBusy(", queued)
end = m.index(":try_end_p329_state\n")
handler = m.index(":p329_state_failed\n")
enqueue = m.index(":p329_enqueue\n")
submit = m.index("ExecutorService;->execute(Ljava/lang/Runnable;)V")
assert queued < start < setbusy < end < handler < enqueue < submit
assert ".catch Ljava/lang/Throwable; {:try_start_p329_state .. :try_end_p329_state} :p329_state_failed" in m
assert "goto :p329_enqueue\n\n    :p329_state_failed\n    move-exception v5" in m
assert "PATCH329_RECOVERED_QUEUE_STATE_WRITE_FAILED_CONTINUING" in m

# Catchall still owns rollback of dedupe key after real enqueue errors.
assert ".catchall {:try_start_recover_enqueue .. :try_end_recover_enqueue} :recover_enqueue_failed" in m
rollback = m.index(":recover_enqueue_failed\n")
remove = m.index("Ljava/util/Set;->remove(Ljava/lang/Object;)Z", rollback)
unlock = m.index("monitor-exit v8", rollback)
failed_setbusy = m.index("MkvStateStore;->setBusy(", rollback)
failed_catch = m.index(":p329_rollback_state_failed\n")
original_log = m.index('const-string v1, "RECOVERED_ENQUEUE_FAILED"', rollback)
assert rollback < remove < unlock < failed_setbusy < failed_catch < original_log
assert ".catch Ljava/lang/Throwable; {:try_start_p329_rollback_state .. :try_end_p329_rollback_state} :p329_rollback_state_failed" in m
assert "goto :p329_log_original\n\n    :p329_rollback_state_failed\n    move-exception v1" in m
assert "PATCH329_RECOVERED_ROLLBACK_STATE_WRITE_FAILED" in m
assert "DownloadRepair129;->recordThrowable" in m
assert "->delete()Z" not in m and "->renameTo(" not in m
print("PASS PATCH329: recovered source accepted under verified guards; busy-write failure cannot suppress executor or original rejection log")
