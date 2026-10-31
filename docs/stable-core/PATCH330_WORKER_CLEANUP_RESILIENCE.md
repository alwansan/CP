# PATCH330 — MKV callback cleanup liveness

**Checkpoint, 1 November 2026 (Iraq time)**

## What is verified
- [PATCH329 signed build and direct Release #67](https://github.com/alwansan/CP/actions/runs/41248313749) succeeded, all 11 DEX validated, 17,674 packaged classes, both APK Signature v2/v3 verified, regression tests PATCH326–329 all passed. Direct [PATCH329 APK](https://github.com/alwansan/CP/releases/download/stable-core-PATCH329-67/Cinemana_Stable_Core_PATCH329_signed.apk) SHA-256 `da0c991507700da463f88776582bce65f58612185b2a76e1dd211cc7e914bf29`.
- Latest CL = `942537feceeb7d6f3360439ecc6f3fc5feb0ef26`. 114 MP4, 2 temp, 64 final MKV, **E42** and **E49** still have older staged `.mkv.cnm115-UUID.part`; 93 queued ledger statuses, 52 waiting plans, 4 rejected, 1 missing source. These logs were collected before PATCH328/329. They do not prove fixes are present/running on the device yet.
- Complete `CL/log/.mkv_export.log` recovered via GitHub `fetch_blob` SHA `000ebdd59e9b490438d7468721e9f7658e939a9e`, unlike empty `fetch_file` output on >5MB. 574 cumulative `QUEUE_ENQUEUED`, 29 `QUEUE_START`, 103 `MKV_FFMPEG_SLOT_ACQUIRED`, 76 `RELEASED`, across multiple app sessions and historic restarts. E42 and E49 both reached FFmpeg launch with exact subtitle plan; individual logs did not show exit/completion.
- Historical `CL/logfox` errors: 2026-10-30 main/download startup ANRs, later VerifyError in HomeActivity/hx2 and DownloadRepair129 (PATCH321), and FileDownloader null messenger crash. These files predate known fix checkpoints. **Do not claim those are present in newest APK without fresh logfox.**

## PATCH330 source-confirmed issue
`MkvExporter$2.run()`, the *normal onVideoCompleted callback Runnable* (distinct from `runRecovered`):
1. At worker start called `MkvStateStore.setBusy(PROCESSING)` under a general catchall. A best-effort UI state failure would stop remux before `waitForCompletedVideoAndExport`, despite complete MP4 and valid subtitle/Room plan.
2. On normal completion it removed `ACTIVE_JOB_KEYS`, then ran `setBusy(IDLE)` and `MkvRepairLedger.sweep` before `MkvCancel262.clearCurrent()`. If a status/ledger write threw, the cancellation slot remained uncleared.
3. On exception it removed `ACTIVE_JOB_KEYS`, but `setBusy(FAILED)` or ledger sweep could fail and replace the original FFmpeg/error throwable, also skipping `MkvCancel262.clearCurrent()`.
4. PATCH330 wraps only these three **optional UI/status/ledger** sections in their own bounded `catch Throwable` blocks. The original work, one worker, native single permit, cancellation `check`, source/Room/manifest gates, output lease, and actual error propagation stay untouched. Each catch uses a forward `goto` over a `move-exception v5` handler to respect ART verification. Worker always reaches `clearCurrent` on the existing normal/error paths; the failure path still `throw v0` containing the original exception.
5. Tags: `PATCH330_PROCESSING_STATE_WRITE_FAILED_CONTINUING`, `PATCH330_NORMAL_CLEANUP_WRITE_FAILED_CONTINUING`, `PATCH330_FAILED_CLEANUP_WRITE_FAILED_PRESERVING_ORIGINAL`.
6. Test `scripts/test_patch330_mkv_worker_cleanup.py` checks handlers, one normal + failure cleanup, original exception preservation, four existing `clearCurrent` paths, zero source deletes, no queue concurrency change. Workflow allowlist includes exact `MkvExporter\$2.smali` (escaped `$` in shell case), test and direct signed `PATCH330` release name. CI/Android runtime **must** be verified before recommending new APK.

## Still-open issues
- Confirm **PATCH330** GitHub Actions run succeeded; fetch through GitHub connector `mcp__GitHub__fetch` using `https://api.github.com/repos/alwansan/CP/actions/runs?branch=feature%2Fstable-core-ui-performance&per_page=6`, then `fetch_workflow_run_jobs` and `fetch_workflow_job_logs` for current run, then direct Release asset/checksum.
- Test on Poco F5 Pro **without clearing app data**. New CL `tree.txt`, `log/.mkv_export.log` (fetch_blob when >5MB), E42/E49 individual logs, `log/download_repair_actions.log`, ledger, `logfox` must demonstrate valid `queue_depth/active_workers`, original process exit, orphan stage removal under new valid lease, final MKV and Room promotion.
- Some ledger rejects are valid due paused/active/deleted download or mismatched MP4. Never bypass `Queue110.mayRepairCompleted`, `Inputs114`, exact subtitle plans or one-worker/one-permit safety.
- Excessive CPU/thread pressure and UI frames still need fresh post-PATCH330 profiling; source load diagnostics in old CL show around 30–36 CPU seconds per 15 wall seconds and 240+ main-process threads. Avoid conflating historic log spikes with current sampled DAO logs.
- Do not merge/write outside `feature/stable-core-ui-performance`. User original MP4, temp, SRT, final MKV and recovery JSON untouched; only PATCH326's proven lease-owned orphan stage cleanup is authorized.

