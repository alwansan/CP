#!/usr/bin/env python3
"""PATCH321: restart-safe first pass, delayed sidecar second pass and manual parity."""
from pathlib import Path
import re

root=Path(__file__).resolve().parents[1]/"Cinemana_PATCH252_Project/app"

def read(path): return (root/path).read_text()
def method(source, signature):
    ms=re.findall(r"(?ms)^\.method [^\n]*\n.*?^\.end method",source)
    ms=[m for m in ms if signature in m.split("\n",1)[0]]
    assert len(ms)==1, (signature,len(ms))
    return ms[0]

startup=read("smali_classes3/com/shabakaty/cinemana/features/MkvRepairStartup.smali")
run=method(startup,"run()V")
first=run.index(":try_start_immediate")
first_end=run.index(":try_end_immediate")
delay=run.index("\n    :try_start_delay\n")
second=run.index(":try_start_second_pass")
assert first<first_end<delay<second
assert "DownloadRepair129;->execute(Landroid/content/Context;)Ljava/lang/String;" in run[first:first_end]
# PATCH323: process-restart receipts/queued native tasks must not wait for
# the delayed eight-second DB/subtitle retry. Preserve execute-first startup.
immediate_body = run[first:first_end]
assert immediate_body.index("DownloadRepair129;->execute(") < immediate_body.index("RecoveryCapsule;->recoverPending(")
assert immediate_body.index("RecoveryCapsule;->recoverPending(") < immediate_body.index("Queue110;->scan()V")
assert immediate_body.index("Queue110;->scan()V") < immediate_body.index("MkvReconciler;->requestAudit()V")
assert "if-lez v1, :patch323_immediate_sidecars_done" in immediate_body
assert immediate_body.index("Queue110;->scan()V") < immediate_body.index("\n    :patch323_immediate_sidecars_done\n")
assert "goto :try_start_delay" in run[first_end:delay]
assert run.index(":startup_immediate_failed") < delay
assert run.index("move-exception v1",run.index(":startup_immediate_failed")) < delay
assert "const-wide/16 v0, 0x1f40" in run[delay:second]  # delayed DB/sidecar retry
assert "STARTUP_IMMEDIATE_SCAN_FAILED" in run and "STARTUP_DELAYED_RECOVERY_FAILED" in run
second_body=run[second:run.index(":try_end_second_pass")]
assert "DownloadRepair129;->execute(" in second_body
assert "RecoveryCapsule;->recoverPending(" in second_body
assert "Queue110;->scan()V" in second_body
assert "MkvReconciler;->requestAudit()V" in second_body

button=read("smali_classes6/com/shabakaty/cinemana/ca1/DownloadRepair129$Worker.smali")
manual=method(button,"run()V")
assert manual.index("RecoveryCapsule;->recoverPending(")<manual.index("DownloadRepair129;->execute(")
assert manual.index("Queue110;->scan()V")<manual.index("DownloadRepair129;->execute(")
assert "if-lez v3, :patch321_manual_sidecars_done" in manual
assert "REPAIR_WORKER_FAILED" in manual
assert "RUNNING:Ljava/util/concurrent/atomic/AtomicBoolean;" in manual

recon=read("smali_classes3/com/shabakaty/cinemana/features/MkvReconciler.smali")
init=method(recon,"start(Landroid/content/Context;)V")
assert "MkvStateStore;->resetStale" in init
assert "MkvReconciler;->watchRoot" in init
assert "MkvReconciler;->requestAudit" in init
scan=method(recon,"scanExistingRoot(Ljava/io/File;)V")
assert "MkvRepairAgeComparator" in scan
assert "const/16 v9, 0x8" in scan
assert "MkvReconciler;->reconcileDiskVideo" in scan
assert "if-eqz v6, :ordered_next" in scan

failure=method(recon,"auditFailure(Ljava/lang/Throwable;)V")
assert 'const-string v2, "download_repair_unresolved.log"' in failure
assert "MKV_AUDIT_FAILURE_CLASS=" in failure
assert "Ljava/lang/Class;->getName()" in failure
assert "->getMessage()" not in failure
audit=read("smali_classes3/com/shabakaty/cinemana/features/MkvReconciler$Audit.smali")
audit_run=method(audit,"run()V")
assert audit_run.index("MkvReconciler;->auditFailure")<audit_run.rindex("MkvReconciler;->auditFinished")
assert "MkvReconciler;->reconcileAll()V" in audit_run

exp=read("smali_classes3/com/shabakaty/cinemana/features/MkvExporter.smali")
assert "onRecoveredVideo(" in exp and "ACTIVE_JOB_KEYS" in exp and "JOB_EXECUTOR" in exp
assert "Queue110;->mayRepairCompleted" in exp
assert 'const/4 v1, 0x1' in method(exp,"<clinit>()V")
assert "FFMPEG_SLOTS" in exp
assert "SHARED_DOWNLOADS_DAO318" in exp
print("PASS PATCH321/323: immediate startup / delayed retry, manual sidecar parity, oldest-first 8 candidate scan, dedupe, sanitized audit errors and one mux worker")
