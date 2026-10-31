#!/usr/bin/env python3
"""PATCH324: startup/manual prioritized retry for orphan FFmpeg .part with intact MP4."""
from pathlib import Path
import re
root=Path(__file__).resolve().parents[1]/"Cinemana_PATCH252_Project/app"
def method(path,sig):
    s=(root/path).read_text()
    found=[m for m in re.findall(r"(?ms)^\.method [^\n]*\n.*?^\.end method",s) if sig in m.split("\n",1)[0]]
    assert len(found)==1,(sig,len(found))
    return found[0]
repair=method("smali_classes6/com/shabakaty/cinemana/ca1/DownloadRepair129.smali","prioritizeInterruptedParts(Landroid/content/Context;)V")
assert 'const-string v11, ".mkv.cnm115-"' in repair
assert 'const-string v11, ".part"' in repair
assert 'const/16 v12, 0x35' in repair
assert "MkvRepairAgeComparator" in repair
assert "reconcileDiskVideo(Landroid/content/Context;Ljava/io/File;)Z" in repair
assert "if-ge v5, v7" in repair and "const/16 v7, 0x10" in repair
assert "PATCH324_INTERRUPTED_PART_AUDIT candidates=" in repair
for danger in ["->delete()Z","->renameTo(","->copyFile(","->exportLocked(","FFMPEG_SLOTS","setBusy("]:
    assert danger not in repair, danger
startup=method("smali_classes3/com/shabakaty/cinemana/features/MkvRepairStartup.smali","run()V")
assert startup.index("prioritizeInterruptedParts(")<startup.index("DownloadRepair129;->execute(")
assert "RecoveryCapsule;->recoverPending(" in startup
assert "PATCH321_BOOT_DELAYED_RETRY" in startup
worker=method("smali_classes6/com/shabakaty/cinemana/ca1/DownloadRepair129$Worker.smali","run()V")
assert worker.index("prioritizeInterruptedParts(")<worker.index("RecoveryCapsule;->recoverPending(")
assert "Queue110;->scan()V" in worker
exp=(root/"smali_classes3/com/shabakaty/cinemana/features/MkvExporter.smali").read_text()
lease=(root/"smali_classes6/com/shabakaty/cinemana/ca1/Lease115.smali").read_text()
assert "FFMPEG_SLOTS" in exp and "ACTIVE_JOB_KEYS" in exp
assert 'const-string v1, ".cnm115-"' in lease
assert "getCanonicalFile" in lease and "FileLock;->isValid()Z" in lease
print("PASS PATCH324: interrupted .part discovery is oldest-first, bounded, strictly guarded, non-destructive and before general startup/manual queue replay")

# PATCH326: lock-scoped, fail-closed abandoned stage recycling. Never delete at
# detection; the old source/capsule/subtitle eligibility checks run first.
stage=method("smali_classes6/com/shabakaty/cinemana/ca1/Lease115.smali","stage(Lcom/shabakaty/cinemana/ca1/Lease115$Lease;Ljava/io/File;)Ljava/io/File;")
assert stage.index("FileLock;->isValid()Z") < stage.index("Ljava/util/UUID;->fromString(") < stage.index("->delete()Z")
assert "getCanonicalFile()Ljava/io/File;" in stage
assert "getAbsoluteFile()Ljava/io/File;" in stage
assert stage.index("->delete()Z") < stage.index("move-result v6") < stage.index("if-nez v6, :p326_removed") < stage.index("STAGE_REBUILD_STARTED")
assert "STAGE_ORPHAN_REMOVED part=" in stage
assert "STAGE_CLEANUP_SKIPPED delete_failed_under_lease" in stage
assert "new-instance v6, Ljava/io/IOException;" in stage
assert "STAGE_REBUILD_STARTED part=" in stage
assert stage.count("->delete()Z")==1
assert "->delete()Z" not in startup and "->delete()Z" not in worker
assert startup.count("prioritizeInterruptedParts(")==2
assert worker.count("prioritizeInterruptedParts(")==2
assert startup.rfind("prioritizeInterruptedParts(")>startup.rfind("Queue110;->scan()V")
assert worker.rfind("prioritizeInterruptedParts(")>worker.rfind("DownloadRepair129;->execute(")
print("PASS PATCH326: only valid leased exact-UUID old stages removed, fail-closed on deletion failure, post-replay queue re-promotion")
