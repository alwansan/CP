#!/usr/bin/env python3
"""PATCH316 guard: serialize MKV muxing without relaxing recovery checks."""
from pathlib import Path
import re

root = Path(__file__).resolve().parents[1] / "Cinemana_PATCH252_Project/app"
export = (root / "smali_classes3/com/shabakaty/cinemana/features/MkvExporter.smali").read_text()
reconciler = (root / "smali_classes3/com/shabakaty/cinemana/features/MkvReconciler.smali").read_text()

def method(source, needle):
    parts = re.findall(r"(?ms)^\.method [^\n]*\n.*?^\.end method", source)
    selected = [part for part in parts if needle in part.split("\n", 1)[0]]
    assert len(selected) == 1, (needle, len(selected))
    return selected[0]

init = method(export, "<clinit>()V")
assert "ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V" in init
assert "LinkedBlockingDeque" in init
assert "Ljava/util/concurrent/Semaphore;-><init>(IZ)V" in init
assert "const/4 v1, 0x1" in init and "const/4 v2, 0x1" in init
assert "const/4 v1, 0x3" not in init
assert "JOB_EXECUTOR" in init and "FFMPEG_SLOTS" in init
recovered = method(export, "onRecoveredVideo(")
assert "Queue110;->mayRepairCompleted" in recovered
assert "ACTIVE_JOB_KEYS" in recovered and "JOB_EXECUTOR" in recovered
assert "MkvStateStore;->setBusy" in recovered
scan = method(reconciler, "reconcileToken(")
assert scan.index(":token_scan_failed_write") < scan.index("MKV_ITEM_SCAN_EXCEPTION_CLASS") < scan.index("ITEM_SCAN_FAILED")
for name, marker in (
    ("reconcileDiskOne(", "MKV_DISK_ONE_EXCEPTION_CLASS"),
    ("filesystemInputsReadyForDisk(", "MKV_DISK_INPUTS_EXCEPTION_CLASS"),
    ("findItemForDiskSource(", "MKV_DISK_ITEM_LOOKUP_EXCEPTION_CLASS"),
    ("findDatabaseItemForToken(", "MKV_TOKEN_DAO_LOOKUP_EXCEPTION_CLASS"),
):
    fragment = method(reconciler, name)
    assert marker in fragment
    assert "DownloadRepair129;->log(" in fragment
    assert "Ljava/lang/Class;->getName()" in fragment
    assert "->getMessage()" not in fragment
assert "filesystemInputsReadyForDisk(" in reconciler
assert "onRecoveredVideo(" in reconciler
print("PASS PATCH316: single mux worker/FFmpeg permit and sanitized repair-exception classes")
