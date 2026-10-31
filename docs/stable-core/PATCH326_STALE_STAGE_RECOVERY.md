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
