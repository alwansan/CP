# PATCH313 — native MP4 completion receipts must match exact byte counts

## Evidence (31 October 2026)
The newest available `alwansan/CL` commit `ed3dce9fbe1d96aa24fef6272088f120dc5a15fa` labels the device build PATCH312. Its `log/diagnostics.log`, `log/downloads.log` and `log/ca1_batch.jsonl` contain an actual `queue_terminal_error: completion receipt identity/length mismatch`. They also show `subtitle not committed: 1` and `subtitle plan count mismatch` during concurrent recovery. These are evidence of guarded failures, **not** evidence to bypass the subtitle checks.

The prior stress snapshot `12fa42a3d1f1aec78fad4edaf97cede9e9071b02` shows 66 MP4 and 2 MP4.temp files, compared with the later work tree containing no MP4 and 10 finished MKVs. The later CL synchronization deleted 217 `data/cnm_recovery` sidecars and the pending properties file. The data sets differ; neither all 66 completed conversion nor user deletion is established. Preserve these unknowns.

## Cause and scope
`Queue110.committed` already rejects the native completion receipt unless the queued task's path, URL, safe file and positive `getLargeFileTotalBytes` all agree and the file length equals the expected total. PATCH312's new `MkvCompletion312.process` checked the canonical root and a >1 KiB file but did **not** enforce the byte-count guard. Under a native event with an actual length mismatch it could write `sourceComplete=true` before `Queue110` rejected the original receipt.

PATCH313 adds a strict positive `getLargeFileTotalBytes()` check and requires `file.length() == expectedBytes` before calling `RecoveryCapsule.completeDownload`. The queue still processes asynchronously and is bounded; this fix **does not bypass** native identity, subtitle, item/DAO, FFmpeg, output validation, or recovery gates. Mismatches are logged **without** filenames, URLs or tokens, and remain untouched for the existing native retry/repair path. The success log is now explicitly phrased as an *attempt*, because `RecoveryCapsule.completeDownload` swallows its own write failures and returns void.

**Remaining risk:** The helper still cannot verify the original persisted queued path and URL without a coordinated API, or independently prove that the sidecar was written successfully. At queue saturation it may still drop callbacks. Do not claim full recovery based on this patch. Follow up with reliable completed-receipt confirmation, old-job identity mapping and a demonstrably safe bounded overflow policy. Never mark a partial MP4 complete.

## Validation plan
- The existing `scripts/test_patch312_mkv_recovery.py` now asserts that the exact-length guard precedes `completeDownload`.
- `scripts/test_recovery_flow.py` still executes the real bounded-cursor Smali.
- Full protected workflow compiles R8, validates Smali/DEX, signs/verifies the APK and releases a direct `Cinemana_Stable_Core_PATCH313_signed.apk` under `stable-core-PATCH313-<run number>`.
- **No Android runtime result is claimed yet.** Test 2–5 real downloads, including subtitles, inspect fresh `PATCH313` diagnostics, then a larger burst only after validating identity and output. Do not clear user data.

## Outstanding forensic and performance issues
- Investigate CL's deleted sidecars separately; presence/absence in a synchronized Git folder cannot prove the phone's deletion mechanism.
- Resolve earlier `WAIT_ITEM_MAPPING` and `WAITING_PLAN_OR_SUBTITLES` without guessing missing plans.
- Distinguish transient subtitle races from permanently stranded tasks.
- Check the repeated DAO promotion diagnostic work (806 `DB_PROMOTE_DOWNLOADS_DAO` entries in the latest exported log), 5-second audits and separate `Restart108` scans under load.
- Verify player Back returns to the same work details without the prior PATCH310 ART VerifyError.
