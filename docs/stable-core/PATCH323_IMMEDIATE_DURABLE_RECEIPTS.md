# PATCH323 — Immediate durable receipt recovery on cold start

## Verified source baseline (31 October 2026)
- CP working branch HEAD at start: `918e30d63dd04eca70b24d9d2dcbddba56a1d5a4` (PATCH322 docs checkpoint); only `feature/stable-core-ui-performance` is writable.
- CL main HEAD: `1342ac414dca89d0b96526f8b336bf63ab022c9a`, still **four PATCH321 Android 15 startup VerifyError** reports (9)–(12), **not PATCH322 runtime**.
- PATCH322 protected CI `41231465688` succeeded and published the direct signed APK; real device startup is **not yet verified**. This patch does not assert the verifier issue is resolved on Android 15.
- Most recent pre-crash pressure tree: 65 .mp4, 3 .mp4.temp, 31 final .mkv; ledger 3 MKV_QUEUED and 5 WAITING_PLAN_OR_SUBTITLES. No candidate becomes ready merely by being an MP4 file.

## Code-grounded issue
`MkvRepairStartup.run()` from PATCH321 invokes guarded `DownloadRepair129.execute()` immediately on a background thread but runs `RecoveryCapsule.recoverPending()` / conditional `Queue110.scan()` only in its delayed 8-second second pass. A completed native download whose sidecar needs the receipt-resume path can therefore wait unnecessarily for the first durable queue reconstruction.

## Narrow correction
In the existing immediate try region, **after** `DownloadRepair129.execute()`, invoke the established `RecoveryCapsule.recoverPending(context)`, conditionally call `Queue110.scan()` only if recovered sidecars > 0, and request the already-coalesced `MkvReconciler` audit. Keep the 8-second second pass for DB/subtitle-not-yet-ready cases and preserve the exception handler's unconditional branch to the delay step. This changes no MP4 completeness, source-length, subtitle, DB promotion, paused/deleted state, or native identity check; no files are deleted and no second FFmpeg worker is introduced.

## Regression / status
- `scripts/test_patch321_boot_and_manual_recovery.py` now asserts earliest safe receipt/queue-audit ordering, branch around the catch handler, and delayed retry parity.
- Existing `scripts/test_patch321_process_gate.py` still asserts the PATCH322 ART normal-execution skip in `DownloadRepair129.startup`.
- Protected workflow updated to label the next build/release PATCH323, continue compiling Smali/DEX and signing with the same checkpoint145 key, directly publishing the signed APK asset.
- **CI result: pending actual GitHub Actions execution. Android 15 device test: pending.** Do not use successful compilation as proof of runtime correctness.

## Next validation
1. Test launching PATCH323 on Poco F5 Pro without clearing app data/work. Ensure no VerifyError and observe `PATCH321_BOOT_IMMEDIATE_AUDIT` followed by eventual `PATCH321_BOOT_DELAYED_RETRY`.
2. Inspect upload CL for immediate recovered source->queue->FFmpeg activity, safeguarded subtitle gates and final MKV/Room promotion, no duplicate worker from `:filedownloader`.
3. Force-stop during active remux and then relaunch; after restart confirm intact source and exactly one verified MKV. Force-stop partial network download separately, then relaunch and check native resume policy.
4. Compare CPU/native heap, frames, GC and real 65-file backlog; do not bypass WAITING_PLAN_OR_SUBTITLES. Keep main/reference branches untouched.
