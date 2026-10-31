#!/usr/bin/env python3
"""PATCH312 stress regression: safe native callback bridge and bounded MP4 audits."""
from pathlib import Path
import re
root = Path(__file__).resolve().parents[1]
features = root/"Cinemana_PATCH252_Project/app/smali_classes3/com/shabakaty/cinemana/features"
bridge = (root/"patches/local-account/src/com/shabakaty/cinemana/local/MkvCompletion312.java").read_text()
trace = (features/"DownloadTrace.smali").read_text()
reconciler = (features/"MkvReconciler.smali").read_text()
capsule = (root/"Cinemana_PATCH252_Project/app/smali_classes6/com/shabakaty/cinemana/ca1/RecoveryCapsule.smali").read_text()
def method(source, signature):
    match = re.search(r"(?ms)^\.method [^\n]*" + re.escape(signature) + r"\n.*?^\.end method", source)
    assert match, signature
    return match.group()
callback = method(trace, "task(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V")
assert 'const-string v0, "DOWNLOAD_COMPLETED"' in callback
assert callback.index("if-nez p3, :patch312_no_video_completion") < callback.index("MkvCompletion312;->completed")
assert 'MkvCompletion312;->completed(Landroid/content/Context;Ljava/lang/Object;)V' in callback
assert 'ExpiredLink269;->failed' in callback
assert "new ArrayBlockingQueue<Runnable>(128)" in bridge
assert "completed(Context context, Object nativeTask)" in bridge
assert 'getCanonicalFile().getParentFile().equals(root.getCanonicalFile())' in bridge
assert 'lower.endsWith(".mp4")' in bridge
assert 'lower.endsWith(".tmp.mp4")' in bridge
assert "file.length() <= 1024L" in bridge
assert 'capsule.getMethod("completeDownload", Object.class, int.class)' in bridge
assert 'reconciler.getMethod("requestAudit")' in bridge
assert '"DOWNLOAD_COMPLETE"' in capsule
assert 'FFmpeg' not in bridge and '.delete(' not in bridge
sweep = method(reconciler, "scanExistingRoot(Ljava/io/File;)V")
assert 'AUDIT_CURSOR:I' in reconciler
assert 'const/16 v9, 0x8' in sweep
assert 'if-ge v8, v9, :ordered_store_cursor' in sweep
assert 'if-ge v7, v2, :ordered_store_cursor' in sweep
assert 'sput v1, Lcom/shabakaty/cinemana/features/MkvReconciler;->AUDIT_CURSOR:I' in sweep
assert 'reconcileDiskVideo(Landroid/content/Context;Ljava/io/File;)Z' in sweep
assert "MkvRepairAgeComparator" in sweep
assert 'const-string v6, ".mp4"' in sweep
assert 'const-string v6, ".tmp.mp4"' in sweep
assert 'delete()Z' not in sweep and "renameTo" not in sweep
assert '"WAITING_PLAN_OR_SUBTITLES"' in reconciler
assert 'Queue110;->mayRepairCompleted(Ljava/lang/Object;)Z' in (features/"MkvExporter.smali").read_text()
files = [f"episode-{i:03}.mp4" for i in range(66)] + ["episode-070.mp4.temp", "episode-071.mp4.temp"]
cursor, seen = 0, set()
for _ in range(10):
    visited = inspected = 0
    while visited < len(files) and inspected < 8:
        name = files[cursor]
        cursor = (cursor + 1) % len(files)
        visited += 1
        if not name.endswith(".mp4") or name.endswith(".tmp.mp4"):
            continue
        seen.add(name)
        inspected += 1
    assert inspected <= 8
assert len(seen) == 66 and not any(x.endswith(".temp") for x in seen)
print("PASS PATCH312: native completion receipts; guarded fair 8-video MKV audit")
