#!/usr/bin/env python3
"""PATCH328: bounded single-worker callback wait + read-only queue telemetry."""
from pathlib import Path
import re
root = Path(__file__).resolve().parents[1] / "Cinemana_PATCH252_Project" / "app"
def read(path):
    return (root / path).read_text()
def method(src, signature):
    matches = [m for m in re.findall(r"(?ms)^\.method [^\n]*\n.*?^\.end method", src)
               if signature in m.split("\n", 1)[0]]
    assert len(matches) == 1, (signature, len(matches))
    return matches[0]
exp = read("smali_classes3/com/shabakaty/cinemana/features/MkvExporter.smali")
repair = read("smali_classes6/com/shabakaty/cinemana/ca1/DownloadRepair129.smali")
watch = method(exp, "waitForCompletedVideoAndExport(")
assert "const-wide/32 v13, 0x3a98" in watch, "15 second bounded readiness timeout required"
assert "const-wide/32 v13, 0x1d4c0" not in watch, "120s head-of-line timeout must not return"
assert "TIMEOUT: callback source not ready within 15s; preserving MP4 for guarded recovery audit" in watch
assert watch.index("const-wide/32 v13, 0x3a98") < watch.index("cmp-long v11, v11, v13")
assert "waitAndExport(" in watch and "Thread;->sleep(J)V" in watch
assert "->delete()Z" not in watch
assert "MkvReconciler" not in watch, "no unrestricted fallback scanning in worker"
init = method(exp, "<clinit>()V")
assert "LinkedBlockingDeque" in init and "ThreadPoolExecutor" in init
assert "const/4 v1, 0x1" in init and "const/4 v2, 0x1" in init
assert "FFMPEG_SLOTS" in init
telemetry = method(exp, "queueTelemetry()Ljava/lang/String;")
assert "ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;" in telemetry
assert "BlockingQueue;->size()I" in telemetry
assert "ThreadPoolExecutor;->getActiveCount()I" in telemetry
assert "queue_depth=" in telemetry and "active_workers=" in telemetry
for dangerous in ("->delete()Z", "->execute(Ljava/lang/Runnable;)", "->shutdown()V", "->addFirst(", "MkvReconciler;->reconcileDiskVideo("):
    assert dangerous not in telemetry, dangerous
priority = method(repair, "prioritizeInterruptedParts(Landroid/content/Context;)V")
assert priority.index('const-string v9, " cap=16; no_parts_deleted"') < priority.index("MkvExporter;->queueTelemetry()")
assert priority.index("MkvExporter;->queueTelemetry()") < priority.index('const-string v9, "download_repair_actions.log"')
assert priority.count("MkvExporter;->queueTelemetry()") == 1
assert "->delete()Z" not in priority and "->renameTo(" not in priority
assert "MkvRepairAgeComparator" in priority
assert "const/16 v7, 0x10" in priority
assert "reconcileDiskVideo(" in priority and "promoteQueuedSource(" in priority
print("PASS PATCH328: 15s max callback wait, serialized MKV, safe guarded retries, sampled queue health, no source cleanup")

# Single native FFmpeg can itself hang even with a fast callback worker:
# watch only stage-byte progress and terminate a stalled child process.
locked = method(exp, "exportLocked(Landroid/content/Context;Ljava/io/File;Ljava/util/List;Ljava/io/File;Ljava/lang/Object;)V")
guardcall = "MkvProcessGuard328;->watch(Ljava/lang/Process;Ljava/io/File;)V"
assert locked.count(guardcall) == 1
assert locked.index("Lease115;->stage(Ljava/io/File;)Ljava/io/File;") < locked.index(guardcall)
assert locked.index("MkvCancel262;->register(Ljava/lang/Process;)V") < locked.index(guardcall) < locked.index("Process;->getInputStream()Ljava/io/InputStream;")
assert "invoke-static {v8, v14}, Lcom/shabakaty/cinemana/local/MkvProcessGuard328;->watch(" in locked
java = (root.parent.parent / "patches/local-account/src/com/shabakaty/cinemana/local/MkvProcessGuard328.java").read_text()
assert "private static final long STALL_MS = 120000L" in java
assert "private static final long POLL_MS = 5000L" in java
assert "SystemClock.elapsedRealtime()" in java
assert "size != previous" in java
assert "process.destroy();" in java and "process.destroyForcibly();" in java
assert "Thread.MIN_PRIORITY" in java and "thread.setDaemon(true)" in java
assert "PATCH328_FFMPEG_STALL" in java
for forbidden in (".delete(", ".renameTo(", "FileOutputStream", "FileInputStream", "MkvManifestStore", "RecoveryCapsule", "Runtime.getRuntime()"):
    assert forbidden not in java, forbidden
print("PASS PATCH328: FFmpeg watchdog watches same leased stage and never deletes user media")
