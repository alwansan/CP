from pathlib import Path
from xml.etree import ElementTree as ET
root=Path(__file__).resolve().parents[1]/"Cinemana_PATCH252_Project/app"
def read(p): return (root/p).read_text()
m=read("smali_classes3/com/shabakaty/cinemana/features/MkvExporter.smali")
assert "declared-synchronized getDownloadsDao" in m and "DL_SHARED_DAO" in m
assert m.index("sget-object v0, Lcom/shabakaty/cinemana/features/MkvExporter;->DL_SHARED_DAO") < m.index("    .line 1164")
r=read("smali_classes6/com/shabakaty/cinemana/ca1/DownloadRepair129.smali")
assert "goto :startup_done\n    :dl_gate_error\n    move-exception" in r
assert "Restart108;->main(Ljava/lang/Object;)Z" in r
pub={n.attrib["name"]:n.attrib["id"] for n in ET.parse(root/"res/values/public.xml").getroot() if n.attrib.get("type")=="id"}
for f,names in [("Download94",["downloads_recycler","collections_recycler","home_bottom_nav"]),("Native98",["download_button"])]:
 s=read("smali_classes6/com/shabakaty/cinemana/ca1/"+f+".smali")
 for n in names: assert n in s and pub[n] in s
 assert "findViewById(I)" in s
s=read("smali/com/shabakaty/downloader/mc4.smali")
assert "DownloadTrace;->progress" in s and "mc4$e;" in s
q=read("smali_classes6/com/shabakaty/cinemana/ca1/Queue110.smali")
assert "declared-synchronized bind()" in q and "SystemClock;->elapsedRealtime()J" in q
print("CP-DL A1 source guards: PASS")

f="smali_classes3/com/shabakaty/cinemana/features/"
m=read(f+"MkvExporter.smali")
assert "const-wide/32 v13, 0x3a98" in m and "CPDL_A2 source not ready" in m
assert "->safeSetBusy(" in m and "->safeSetBusy(" in read(f+"MkvExporter$2.smali")
l=read(f+"MkvRepairLedger.smali")
assert ":dl_ledger_changed" in l and "if-nez v3, :record_done" in l and "if-eqz v1, :clear_done" in l
rec=read(f+"MkvReconciler.smali")
assert "AUDIT_CURSOR:I" in rec and "if-ge v8, v9, :dl_store_cursor" in rec
assert "->reconcileDiskVideo(" in rec and ".cnm-recovery.tmp.mp4" in rec
u=read(f+"MkvUiRefresh.smali")
assert "DL_PENDING:Z" in u and "postDelayed(Ljava/lang/Runnable;J)" in u
assert "->clearPending()V" in read(f+"MkvUiRefresh$1.smali")
assert "->notifyDataSetChanged()V" in read(f+"MkvUiRefresh$1.smali")
print("CP-DL A2 bounded audit, unchanged ledger, UI refresh, worker cleanup guards: PASS")

q=read("smali_classes6/com/shabakaty/cinemana/ca1/Queue110.smali")
assert "SUBTITLE_TRANSFER_RECEIPT_ACK" in q and "->isSubtitleTask(" in q
assert "->remove(Ljava/lang/Object;Ljava/lang/Object;)Z" in q
assert "->takeReplayBudget()Z" in q and "DL_REPLAY_BUDGET:I" in q
assert q.index("completion receipt identity/length mismatch")>q.index("SUBTITLE_TRANSFER_RECEIPT_ACK")
d=read("smali_classes6/com/shabakaty/cinemana/ca1/Dependencies112.smali")
assert "const/16 v11, 0x8" in d and "const-wide/16 v11, 0x7530" in d
p=read("smali_classes6/com/shabakaty/cinemana/ca1/BatchDownload$Screen.smali")
assert "volatile busy:Z" in p and ":dl_skip_preview" in p and "const-wide/16 v2, 0x1f4" in p
print("CP-DL A3 source guards PASS")

# B1a: scoped UI failure isolation, not a durable queue proof.
assert "->hasReadySelected()Z" in p and "->refreshFailedButton()V" in p
assert "->failedSelected()Ljava/util/List;" in p and ":dl_error_kept" in p
assert "BatchDownload$Screen$FailedClick;" in p
click=read("smali_classes6/com/shabakaty/cinemana/ca1/BatchDownload$Screen$FailedClick.smali")
assert "->quality(" in click and "->submitted:Z" in click and "->existing:Z" in click
begin=p.split(".method begin()V",1)[1].split(".end method",1)[0]
assert "->error:Ljava/lang/String;\n    if-nez v6, :cond_2" in begin
refresh=p.split(".method refresh()V",1)[1].split(".end method",1)[0]
assert "if-nez v10, :cond_17" not in refresh
assert "if-nez v9, :cond_17" in refresh
print("CP-DL B1a failure isolation source guards PASS")

# B1a hotfix: source references must match exact class names (including $$).
import re
family = root / "smali_classes6/com/shabakaty/cinemana/ca1"
pattern = re.compile(r"Lcom/shabakaty/cinemana/ca1/BatchDownload[^;\s]*;")
sources = {x.name: x.read_text() for x in family.glob("BatchDownload*.smali")}
defs = {re.search(r"^\.class\s+.*?(L[^\s]+;)", t, re.M)[1] for t in sources.values()}
def check_batch_refs(t):
    missing = set(pattern.findall(t)) - defs
    if missing:
        raise ValueError("undefined batch classes: " + ", ".join(sorted(missing)))
for name, source in sources.items():
    check_batch_refs(source)
screen = sources["BatchDownload$Screen.smali"]
assert "BatchDownload$Screen$$ExternalSyntheticLambda15;" in screen
assert "BatchDownload$Screen$ExternalSyntheticLambda15;" not in screen
# Reproduce the exact missing-dollar regression and prove this gate rejects it.
broken = screen.replace("BatchDownload$Screen$$ExternalSyntheticLambda15;", "BatchDownload$Screen$ExternalSyntheticLambda15;", 1)
try:
    check_batch_refs(broken)
except ValueError as error:
    assert "BatchDownload$Screen$ExternalSyntheticLambda15;" in str(error)
else:
    raise AssertionError("regression fixture unexpectedly passed")
print("CP-DL B1a hotfix: all BatchDownload class references resolve; negative regression rejected")

# B1b-1 performance regression guards. Exact DB naming and no arbitrary DB probe on retry.
java=(root.parents[1]/"patches/local-account/src/com/shabakaty/cinemana/local/ExpiredLink269.java").read_text()
row=java.split("static Row row(",1)[1].split("static String status(",1)[0]
assert "downloadsDatabaseName(c.getPackageName())" in row and "databaseList()" not in row
assert "OPEN_READONLY" in row and "if(!file.isFile())return null" in row
storage=read("smali_classes6/com/shabakaty/cinemana/ca1/StorageMaintenance152.smali")
soon=storage.split(".method public static declared-synchronized scanSoon()V",1)[1].split(".end method",1)[0]
assert "->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)" in soon
assert "->scan()V" not in soon and "Ljava/lang/Thread;->start" not in soon
assert "DL_PENDING:Z" in soon and "allowCoreThreadTimeOut(Z)" in storage
worker=read("smali_classes6/com/shabakaty/cinemana/ca1/StorageMaintenance152$1.smali")
assert worker.index("->dlClearPending()V") < worker.index("->scan()V") and "Thread;->sleep" not in worker
native=read("smali_classes6/com/shabakaty/cinemana/ca1/NativeBatchScope.smali")
assert "getApplicationContext()" in native and "invoke-direct {p0, p1, v0}" in native
assert "->s:Landroidx/fragment/app/Fragment;" not in native
dv=read("smali/com/shabakaty/downloader/dv0.smali")
for stage in ("VIDEO_COROUTINE_ENTER","VIDEO_METADATA_COLLECTION_READY","VIDEO_PERMISSION_MISSING","VIDEO_NATIVE_DISPATCH","VIDEO_NATIVE_DISPATCH_RETURN","VIDEO_EXISTING_ROW"):
    assert stage in dv
print("CP-DL B1b-1 storage, DB and detached batch scope source guards PASS")

# B1b2: single mux slot while two preparation workers remain; bounded async telemetry.
mkv=read("smali_classes3/com/shabakaty/cinemana/features/MkvExporter.smali")
assert "MAX_CONCURRENT_FFMPEG:I = 0x1" in mkv
clinit=mkv.split(".method static constructor <clinit>()V",1)[1].split(".end method",1)[0]
assert "const/4 v1, 0x2\n\n    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool" in clinit
assert "const/4 v1, 0x1\n\n    const/4 v2, 0x1\n\n    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V" in clinit
trace=read("smali_classes3/com/shabakaty/cinemana/features/DownloadTrace.smali")
sink=trace.split(".method public static log(Landroid/content/Context;Ljava/lang/String;)V",1)[1].split(".end method",1)[0]
assert "TraceWriterDL;->offer(Ljava/lang/String;)V" in sink and "monitor-enter" not in sink and "FileOutputStream" not in sink
writer=(root.parents[1]/"patches/local-account/src/com/shabakaty/cinemana/local/TraceWriterDL.java").read_text()
assert "CAP=4096" in writer and "Q.offer(" in writer and "Q.drainTo(" in writer and "allowCoreThreadTimeOut(true)" in writer
assert "THREAD="+"" in writer and "diagnostic_queue_full" in writer
ey=read("smali/com/shabakaty/downloader/ey0.smali")
assert "invoke-direct {p0, p1, p2, v4}, Lcom/shabakaty/downloader/ey0;->dlStart" in ey
assert "if-nez p3, :dl_already_admitted" in ey
assert "invoke-direct {p0, p1, p2, v0}, Lcom/shabakaty/downloader/ey0;->dlStart" in ey
print("CP-DL B1b2 source gates PASS")
