#!/usr/bin/env python3
"""PATCH330: MKV callback worker must always release cancellation slot."""
from pathlib import Path
import re
root = Path(__file__).resolve().parents[1] / "Cinemana_PATCH252_Project/app"
worker = (root / "smali_classes3/com/shabakaty/cinemana/features/MkvExporter$2.smali").read_text()
methods = [m for m in re.findall(r"(?ms)^\.method [^\n]*\n.*?^\.end method",worker)
           if m.split("\n",1)[0].endswith(" run()V")]
assert len(methods) == 1, len(methods)
m = methods[0]
assert ".locals 13" in m
assert "QUEUE_START key=" in m
assert "QUEUE_FINISH key=" in m
assert "MkvExporter;->access$500()Ljava/util/Set;" in m
assert m.count("MkvCancel262;->clearCurrent()V") >= 4
assert m.count("MkvStateStore;->setBusy(") == 3

# Mandatory normal flow bypasses the move-exception handler. Its original
# Runnable execution must continue on even if UI state PROCESSING throws.
assert ".catch Ljava/lang/Throwable; {:try_start_p330_processing .. :try_end_p330_processing} :p330_processing_failed" in m
assert "goto :p330_processing_done\n\n    :p330_processing_failed\n    move-exception v5" in m
assert "PATCH330_PROCESSING_STATE_WRITE_FAILED_CONTINUING" in m
assert m.index("MkvStateStore;->setBusy(") < m.index(":p330_processing_done")
assert m.index(":p330_processing_done") < m.index("QUEUE_ATTEMPT=")

# On both success and failure, optional Room/ledger writes must not hide
# the native mux result or prevent MkvCancel262.clearCurrent().
ok=m[m.index(":cond_3\n"):m.index(":catchall_1\n")]
assert ".catch Ljava/lang/Throwable; {:try_start_p330_ok_cleanup .. :try_end_p330_ok_cleanup} :p330_ok_cleanup_failed" in ok
assert "goto :p330_ok_clear_current\n\n    :p330_ok_cleanup_failed\n    move-exception v5" in ok
assert "PATCH330_NORMAL_CLEANUP_WRITE_FAILED_CONTINUING" in ok
assert ok.index(":p330_ok_clear_current") < ok.index("MkvCancel262;->clearCurrent()V")
assert ok.index("MkvCancel262;->clearCurrent()V") < ok.index("return-void",ok.index(":p330_ok_clear_current"))
fail=m[m.index(":catchall_2\n"):m.index(":catchall_3\n")]
assert "move-exception v0" in fail
assert ".catch Ljava/lang/Throwable; {:try_start_p330_failed_cleanup .. :try_end_p330_failed_cleanup} :p330_failed_cleanup_failed" in fail
assert "goto :p330_failed_clear_current\n\n    :p330_failed_cleanup_failed\n    move-exception v5" in fail
assert "PATCH330_FAILED_CLEANUP_WRITE_FAILED_PRESERVING_ORIGINAL" in fail
assert fail.index(":p330_failed_clear_current") < fail.index("MkvCancel262;->clearCurrent()V") < fail.index("throw v0")
assert fail.index("move-exception v0") < fail.index("throw v0")
assert m.count("MkvRepairLedger;->sweep(")==2

for forbidden in ("->delete()Z","->renameTo(", "ThreadPoolExecutor;->setCorePoolSize"):
    assert forbidden not in m
print("PASS PATCH330: failed MKV UI/ledger writes cannot interrupt worker start, lose fatal Throwable or skip clearCurrent")
