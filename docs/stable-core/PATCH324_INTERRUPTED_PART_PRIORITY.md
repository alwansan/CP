# PATCH324 — Interrupted MKV .part priority recovery (31 October 2026)

## New verified CL pressure evidence
- Source CL commit `711f0fa52603d14426733aca485de121a100f5a4` (22:02 Baghdad), after prior PATCH323 CI success, contains **an interrupted E42 staging artifact**, unchanged from 21:04:30, approximately 7.5 MiB; intact E42 MP4 ~39 MiB and persisted `RecoveryCapsule` with `sourceComplete=true`, exact size 40,928,667 bytes, and one saved Arabic subtitle validated in its original pre-interruption log.
- E42 `.mkv.log` has subtitle policy 1 expected/1 completed and FFmpeg command, **no successful completion/DB promotion**. `.mkv_export.log` records a single E42 `MKV_FFMPEG_SLOT_ACQUIRED` and no E42 release; after subsequent app process starts, it records repeated `QUEUE_ENQUEUED key=item:5702` but no `QUEUE_START key=item:5702` in the inspected window.
- Latest CL ledger 88 active entries: **44 MKV_QUEUED, 42 WAITING_PLAN_OR_SUBTITLES, 2 MKV_QUEUE_REJECTED** (one file contains 89 lines including header). E42 is `MKV_QUEUED`; this is acceptance, **not proof the worker ran**. Latest log shows newer E49 FFmpeg acquired at 22:02. Other native callbacks and a large single-worker FIFO backlog explain why old E42 has not immediately rerun. Exact reason original FFmpeg stopped (force-stop/process death/crash) is not determined from the sparse per-file log.
- LogFox files remain the earlier four PATCH321 `DownloadRepair129.startup` Android 15 VerifyError reports (9)–(12); no newer LogFox crash supplied in this CL revision. This cannot validate PATCH323 runtime.
- Latest samples still show severe frame stalls (e.g. 744ms Home PATCH321, 994ms Home and 949ms details on PATCH320), and heavy CPU/GC under stress. Version string in diagnostic files remains PATCH321 even in post-build snapshots, so distinguish actual releases by device confirmation; do not claim a particular new patch based solely on logger's static label.

## Confirmed implementation behavior
`Lease115.stage` creates a unique `.mkv.cnm115-UUID.part` attempt and normally removes prior same-target stale staging only after obtaining the cross-process file lease for **a new** attempt. No FFmpeg byte-offset resume is provided. A lingering .part alone is not a final output nor evidence that a worker is currently active.

## Functional correction
- `DownloadRepair129.prioritizeInterruptedParts(context)` runs at the **beginning of the cold startup background repair** and at the manual Repair Downloads action. It scans only the `Cinemana/work` root, sorted by staging timestamp, recognizes exactly the application-created filename suffix `.mkv.cnm115-<36-char UUID>.part`, checks the corresponding **same-folder** MP4 exists, and offers at most 16 candidate sources to **the existing** `MkvReconciler.reconcileDiskVideo`.
- The existing native task pause/active/deleted guard, exact identity, subtitle manifest and Room mapping gates, one `MkvExporter` worker/FFmpeg permit, and job-key dedupe remain unchanged. No new code deletes, renames, reads the content of, or treats `.part` as finished media; no forced conversion from file existence alone.
- This is a prioritized cold-restart entry point, **not** a fix for a currently live stuck FFmpeg process or a guarantee that queued sources immediately execute. Oldest-first general MP4 scan and delayed retry remain unchanged.
- Added `PATCH324_INTERRUPTED_PART_AUDIT candidates=N accepted_or_owned=M cap=16; no_parts_deleted` to `download_repair_actions.log` on the existing background worker, with no sensitive URLs.
- Protected test `scripts/test_patch324_interrupted_part_recovery.py` verifies both startup/manual ordering, guarded reconciler, bounded scan, staged-name filtering and no direct deletion/mux. Original suite, Smali/DEX verification, signing and direct Release upload remain mandatory.

## Honest completion state / next evidence
CI and Android runtime are unverified until GitHub Actions completes and Poco F5 Pro installs the new APK. Verify no new Android 15 VerifyError; on cold restart E42 should have a fresh `PATCH324_INTERRUPTED_PART_AUDIT` and enqueue/worker markers, one final validated MKV, intact MP4 until DB promotion. If still rejected, inspect Queue110 paused/active and exact Room/manifest states, not bypass them. Compare E49 and other old `.part` similarly; avoid using old manually deleted stress evidence.

## Verified CI final result
- **SUCCESS** [Actions #41](https://github.com/alwansan/CP/actions/runs/41232930490), commit `ea3d0899072bbdea0b842b68f2e5f5688a770ec4`: protected tests (including `scripts/test_patch324_interrupted_part_recovery.py`), Java helpers, Smali/DEX build, APK signing, verification and Release upload passed.
- Signed direct APK: https://github.com/alwansan/CP/releases/download/stable-core-PATCH324-41/Cinemana_Stable_Core_PATCH324_signed.apk (56,343,580 bytes). **Not tested on Android 15 in newly uploaded CL yet.** Need phone E42 and restart logs.
