# نموذج التحميل Native — HTML Phase CP-DL

**Status:** candidate pure Java model, not an APK feature. This is isolated source under patches/html-bridge, not in the APKTool build or real DAO. No queue, worker or file writes. 

## Verified inputs from smali
- pw0.z holds xc4 transport status: PENDING/STARTED/PROGRESS/RETRY/ERROR/PAUSED/COMPLETED/WARN/UNKNOWN.
- ey0.f -> ey0$f -> uz0.a -> kz0.b lists downloader rows; ey0$k reads uz0.e(taskId), constructs composer via ey0.m/q and updates uz0.i; ey0$l subscribes using uz0.e.
- DownloadStore263.combined invokes readCombinedById, and CinemanaDownloadItem provides id, downloadTaskId, collectionID, title, qualityName, sizeMB and path. App and downloader must be reconciled by exact identity. Path/URL/token remain native only.
- BatchDownload$Screen.enqueue handles existing, missing model/effective variant, errors, duplicate set, Delete94.reenqueue, NativeBatchScope and laterRefresh; no direct JS call.

## Read-only contracts
DownloadModel.project(Evidence) uses *native verified facts*, never JS-supplied evidence. Delete intent/journal wins; unresolved identity, recovery, conflicting transfer and file evidence -> RECONCILING; active exporter -> CONVERTING; READY_MKV only from verified final primary MKV with no conflicts; verified/committed MP4 -> WAITING_MKV. COMPLETED transport alone is not playable. Pause intent separately tracked; confirmed pause requires transport PAUSED.
DownloadModel.plan receives opaque requested IDs and trusted Native facts already resolved to the effective variant. Validates order, duplicate IDs, existing/delete-pending/model/variant; returns immutable per-input result and sizes. Unknown estimate = -1, sum overflow fails closed. 1024 max selection and ASCII opaque ID mapping are proposed limits, not assertions about old data. The adapter must map existing IDs and requested qualities without implicit fallback, recheck evidence just before admission, and never equate ELIGIBLE with a queue receipt.

## Test gates
Plain Java 8 target/JDK17 CI compiles isolated class and synthetic 452-item planner, verifies conflicting evidence combinations, no false READY, per-item outcomes, size unknown/overflow and cap. No network/media/file/DB touched. Next actual adapter must use native callbacks and consistent read snapshot, not scan entire DB repeatedly; account/UI and signature remain unchanged. Resume UI caller unproven; no live action endpoint. No build of APK until actual transport/security/ART gates.


## نتيجة جلسة 24 — verified CI
Runtime source unchanged; laboratory code commit e51912305b0de0e00f5cb67c0df117491e163857. Java native model run 44424763514 SUCCESS (CP_NATIVE_DOWNLOAD_MODEL_PASS assertions=8366 syntheticEpisodes=452). Integrated shell run 44424763298 SUCCESS (CP_BRIDGE_PROTOCOL_PASS assertions=47; CP_SHELL_BROWSER_PASS assertions=40; preview artifact 14483751253). CL main unchanged at 4b0bc931567f9dcdc197576bc2a9f5f5e0d4f8c0. All current tests are isolated JVM/Node/Chromium, no APK, real DB or device. Next: bounded actual app/downloader DAO read adapter, real verified evidence sources, extract typed native admission, complete resume caller tracing; do not claim durable ACK/Android parity yet.
