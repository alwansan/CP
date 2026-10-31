# PATCH326 — Fail-closed orphan MKV stage cleanup and post-replay queue priority (1 November 2026)

## Source and ground truth
- CP starting HEAD: `21f553d94d4a8db353f618b7da6f530a13b32606` on `feature/stable-core-ui-performance` ONLY.
- CL: `c4090293d96a3a56c2e146659a509fe50a6839ce` (same CL as PATCH325 handoff).
- Verified `download_repair_actions.log`: `priority_promoted=2`, but latest `.mkv_export.log` still has no new E42/E49 FFmpeg slot acquisition after that marker. New worker starts for E62/E72/E70/E73/E74 exist. Queue promotion is not proof of execution.
- E42/E49 legacy per-file logs record subtitle policy `expected=1 completed=1` and old FFmpeg launch, without final success. Their MP4 files remain; ledger entries still `MKV_QUEUED`.
- E74 per-file log **does** show `exit=0` and `SUCCESS ... size=45425292`. Its `.part` in the near-simultaneous tree snapshot must not be treated as abandoned. Final Room promotion not yet confirmed for E74.

## Changes
1. Retain existing native download/Room/subtitle/capsule guarded repair entrypoint and the exact `Lease115` exclusive per-target file lease. Stale same-target `.mkv.cnm115-UUID.part` files are only removed in `Lease115.stage` after a successful lease and canonical UUID/target validation; never in the cold-start filesystem scanner.
2. **Fail closed** when deleting such a stale stage fails: throw `IOException` while holding the valid lease instead of starting another competing `.part`. The source MP4, subtitle, data and recovery files are not deleted. Add `STAGE_ORPHAN_REMOVED part=` and `STAGE_REBUILD_STARTED part=` trace markers, allowing exact old/new attempt evidence. This is an enhancement to the existing stage cleanup, not blind deletion.
3. During the delayed boot repair pass and immediately after manual full repair scan, repeat the existing oldest-first bounded orphan queue promotion. Ordinary new queue additions no longer rely solely on the one early promotion. No second FFmpeg executor/slot, no interruption or duplicate work.
4. Expand existing protected PATCH324 static test to assert valid lease, exact UUID, canonical stage, fail-closed delete semantics and both post-scan promotions. Extend CI protected allowlist only to the directly audited `Lease115.smali`.

## Required validation / blockers
- CI, Smali/DEX verifier, signing and direct APK Release are **pending** until the new action finishes; this document deliberately does not claim success.
- Android runtime unverified: after installing without clearing app data, inspect E42/E49 for `STAGE_ORPHAN_REMOVED`, new unique `STAGE_REBUILD_STARTED`, FFmpeg success, subtitle tracks, DB promotion and final one MKV; no E74 active stage deleted.
- If E42/E49 still lack `QUEUE_START`, investigate queue-task identity/liveness rather than deleting files outside `Lease115.stage`.
- Backlog `87 MKV_QUEUED` / `64 WAITING_PLAN_OR_SUBTITLES` / `4 MKV_QUEUE_REJECTED` still needs per-token classification.

## First regression correction
- PATCH326 run [#46](https://github.com/alwansan/CP/actions/runs/41244467769) failed in the newly extended `test_patch324_interrupted_part_recovery.py` because its `stage.index("move-result v6")` picked an unrelated earlier register result, not the delete result. All pre-existing static tests passed before that assertion; no Smali/DEX compilation ran.
- Commit `1c5ea616b6be9fea0f52084f0a9b972dec460e43` scopes the assertion search after the `File.delete()` call, no runtime code changed. New protected CI is required.

## Verified CI #47 (first successful source build)
- [Run #47](https://github.com/alwansan/CP/actions/runs/41244559455) **SUCCESS** for commit `5885550050d8560fa5e3aba3d45274dc3220f202`. Protected tests, Java helper compilation, Smali/DEX APK assembly, signing and verification passed; direct APK **actually uploaded** (56,347,676 bytes).
- The workflow inherited PATCH325 naming; this APK contains PATCH326 source but was published under `stable-core-PATCH325-47` and `Cinemana_Stable_Core_PATCH325_signed.apk`. This is a naming issue, not missing build output. Signed source file: https://github.com/alwansan/CP/releases/download/stable-core-PATCH325-47/Cinemana_Stable_Core_PATCH325_signed.apk
- Next workflow revision corrects tag, title, artifact and direct APK filename to PATCH326. **New label-specific CI/release is not yet confirmed here.**

## Final correctly named CI and direct Release
- [GitHub Actions #48](https://github.com/alwansan/CP/actions/runs/41244703708) **SUCCESS**, code/documentation/workflow source commit `7e3584303989659e9e135b537e583524826affb0`. Protected regressions and Smali/DEX build, zipalign, APK signing, verification and direct release publishing succeeded.
- [Direct PATCH326 signed APK](https://github.com/alwansan/CP/releases/download/stable-core-PATCH326-48/Cinemana_Stable_Core_PATCH326_signed.apk) — 56,347,676 bytes, upload state `uploaded`. Tag `stable-core-PATCH326-48`; signed filename correctly reflects the patch.
- IMPORTANT: CI and packaging prove build correctness, not live device conversion recovery. E42/E49 must still show actual cleanup + fresh FFmpeg + MKV+subtitle+Room finalization after Poco F5 Pro testing. E74 per-file success requires final DB proof. The 87 queued/64 waiting/4 rejected statuses and UI/memory performance issues are still open.
