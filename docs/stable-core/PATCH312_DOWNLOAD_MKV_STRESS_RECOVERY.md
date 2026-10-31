# PATCH312 — stress-test download and MKV recovery (first corrective pass)

## Evidence, from uploaded user data

Inspected `alwansan/CL/log/tree.txt`, `downloads.log`, `.mkv_export.log`, `diagnostics.log`, `data/mkv_repair_pending.properties`, and representative `data/cnm_recovery/*.json`, uploaded Oct 31 2026 after stressing downloads.

- The tree shows **66 completed-looking MP4 files** in `Cinemana/work`, **2 still in `.mp4.temp`**, and only **3 MKV exports** in the target season. The MKVs E01, E03, E04 completed with database promotion proofs: FFmpeg can work, but most videos are never enqueued.
- In the relevant stress period (Unix timestamp >=1793458060000), `downloads.log` contains **74 native MP4 completion events**, but the exporter does not log corresponding `onVideoCompleted` calls for the bulk downloads. Only 3 FFmpeg slots were acquired. The native downloader and exporter completion chains have become decoupled under burst load.
- `cnm_recovery` sidecars for many already-completed MP4s still say `phase=DOWNLOAD_QUEUED` / `sourceComplete=false`; `RecoveryCapsule.completeDownload` has not consistently been called on the real native terminal event. `MkvReconciler` waits for a matched app item and exact subtitle plan. The persistent ledger shows, for example, E02 `WAIT_ITEM_MAPPING` and others `WAITING_PLAN_OR_SUBTITLES`. No false conversion is allowed.
- The 5-second audit loop previously attempted all 66 MP4s in a single sequential pass, performing repeated expensive app DB/DAO resolution per MP4. Large `Restart108` recovery scans took ~48–70 seconds. Tens of thousands of queue state/log events and **7,000+ DB promotion diagnostic calls** were observed. This is not proof that all overhead comes from this method, but the unbounded audit is an obvious contributor and starvation risk.
- Existing native backup download replay, MKV database promotion, embedded subtitles, notification and release/cleanup safety must remain unchanged.

## Scope: only two functional improvements

1. `DownloadTrace.task(...)` forwards **only** `DOWNLOAD_COMPLETED` callbacks without an error to `MkvCompletion312.completed`, before normal logging. The helper is one low-priority bounded queue (max 128 jobs), handles only actual named .mp4 videos directly under `Cinemana/work` (never a `.temp` / `.tmp.mp4` / subtitle file), and only if the completed file currently exists and is larger than 1 KiB. It calls the existing `RecoveryCapsule.completeDownload(nativeTask, id)` to replace the stale queued journal with a durable completion receipt and requests the existing guarded MKV audit. It never invokes FFmpeg or deletes/replaces an MP4, and never logs signed download URLs. Native completion is the proof; existence alone does not mark source complete.
2. `MkvReconciler.scanExistingRoot` retains oldest-first ordering but processes **at most eight actual MP4 candidate files per 5-second audit**, rotating a static cursor through all root entries. Every surviving candidate uses the unchanged `reconcileDiskVideo` DB/plan checks and strict exporter. This reduces single audit blocking and avoids repeated full scans of a rapidly growing download directory. `.temp` files are not conversion candidates.

The user asked for a complete MKV/watchdog repair. This is **the first corrective pass**, not proof all older files will convert automatically: older items can still fail verified item identity, native completion metadata, or subtitle plan checks. Never guess subtitle counts or convert an actively downloading MP4. Follow-up logs should distinguish these residual gates.

## Test protocol

1. Install signed PATCH312 over PATCH311 without clearing app data or `Cinemana/work`. Allow 1–3 minutes for the first bounded audit and startup restoration; do not manually delete or rename any MP4.
2. In `CL/log/tree.txt`, track the original 66 MP4s and the 3 original MKVs. Verify that completed files are gradually converted **one-by-one** and that `.mp4.temp` files never convert prematurely.
3. Start a **small** batch of 2–5 new downloads first, then, if stable, another large batch. Ensure `data/cnm_recovery/<token>.json` transitions to `DOWNLOAD_COMPLETE` on actual native completed videos. Upload `CL/log/downloads.log`, `.mkv_export.log`, new `tree.txt`, `data/mkv_repair_pending.properties`, sidecar entries, and relevant LogFox traces.
4. Identify remaining `WAIT_ITEM_MAPPING` and `WAITING_PLAN_OR_SUBTITLES` by token. Correlate with native completed state, exact byte receipts and persisted subtitles. Do **not** mark source complete or bypass a subtitle/DB gate on file size alone.
5. Retain the PATCH311 fix for Android 15 `VerifyError` and all saved details->player back navigation.

CI static/dex signature checks confirm build structure; only device logs prove functional MKV recovery and performance. No user files are mutated by repository changes alone.
