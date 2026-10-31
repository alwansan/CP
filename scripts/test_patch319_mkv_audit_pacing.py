#!/usr/bin/env python3
"""PATCH319: bounded faster MKV audits, no-op ledger writes, single mux worker."""
from pathlib import Path
import re

root=Path(__file__).resolve().parents[1]/"Cinemana_PATCH252_Project/app"
rec=(root/"smali_classes3/com/shabakaty/cinemana/features/MkvReconciler.smali").read_text()
ledger=(root/"smali_classes3/com/shabakaty/cinemana/features/MkvRepairLedger.smali").read_text()
export=(root/"smali_classes3/com/shabakaty/cinemana/features/MkvExporter.smali").read_text()

def method(src,name):
    all_methods=re.findall(r"(?ms)^\.method [^\n]*\n.*?^\.end method",src)
    match=[m for m in all_methods if name in m.split("\n",1)[0]]
    assert len(match)==1, (name,len(match))
    return match[0]

audit=method(rec,"auditFinished()V")
assert "const-wide/16 v0, 0x5dc" in audit
assert "const-wide/16 v0, 0x1388" not in audit
assert "hasWork()Z" in audit
assert "scheduleAudit(J)V" in audit
scan=method(rec,"scanExistingRoot(")
assert "const/16 v9, 0x8" in scan
assert "MkvRepairAgeComparator" in scan
assert "reconcileDiskVideo(" in scan
assert "MkvRepairLedger;->record" in rec
request=method(rec,"requestAudit()V")
assert "const-wide/16 v0, 0xfa" in request
record=method(ledger,"record(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V")
assert "declared-synchronized" in record.split("\n",1)[0]
assert "move-object p0, v1" in record
assert "substring(I)Ljava/lang/String;" in record
assert 'const-string v2, "|"' in record
assert "Ljava/lang/String;->equals(Ljava/lang/Object;)Z" in record
assert record.index(":patch319_record_changed")<record.index("MkvRepairLedger;->save(")
assert "invoke-virtual {v0, p1, v1}, Ljava/util/Properties;->setProperty" in record
assert "    return-void\n\n    :patch319_record_changed" in record
clear=method(ledger,"clear(Landroid/content/Context;Ljava/lang/String;)V")
assert "remove(Ljava/lang/Object;)Ljava/lang/Object;" in clear
assert "if-eqz v1, :clear_done" in clear
assert clear.index("if-eqz v1, :clear_done")<clear.index("MkvRepairLedger;->save(")
init=method(export,"<clinit>()V")
assert "const/4 v1, 0x1" in init and "const/4 v2, 0x1" in init
assert "ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V" in init
assert "LinkedBlockingDeque" in init
assert "FFMPEG_SLOTS" in init
run=method(export,"runRecovered(")
assert "PATCH319_EXPORT_JOB_START" in run
assert "PATCH319_EXPORT_JOB_RETURN" in run
assert "waitAndExport" in run
assert "MkvRepairLedger;->completeIfFinal" in run
assert "MkvReconciler;->requestAudit" in run
assert "SHARED_DOWNLOADS_DAO318" in export
assert "-c:v" in export and "-c:a" in export and '"copy"' in export
print("PASS PATCH319: 1.5s bounded age-ordered audit; duplicate ledger no-op; MKV single worker/copy+database checks retained")
