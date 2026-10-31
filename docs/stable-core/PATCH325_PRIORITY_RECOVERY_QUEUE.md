# PATCH325 — move stranded interrupted MKV jobs to front of existing single-worker queue
Date 2026-10-31, only `feature/stable-core-ui-performance`

## Actual new device evidence (CL main `194891ba0a2ff7efb0064c3d99ae3c34daca625e`, 22:59 Baghdad)
- PATCH324 **actually booted**. `download_repair_actions.log`: `PATCH324_INTERRUPTED_PART_AUDIT candidates=2 accepted_or_owned=2 cap=16; no_parts_deleted`. Therefore former PATCH321 VerifyError is not reproduced in that launch, though a full long-duration Android stability test remains open.
- E42 E01 MP4 and Arabic subtitle persisted, old staged `.mkv.cnm115-af3bb562-8cec-48e6-bf2a-5a1b31c07636.part` stayed ~7.5 MiB, E49 stage remained ~31 MiB. Neither was completed in this snapshot; E42 ledger remained `MKV_QUEUED`.
- E50 and E51 **did** convert, with new `MKV_FFMPEG_SLOT_ACQUIRED`, `DB_PROMOTE_SUCCESS`, `MKV_FFMPEG_SLOT_RELEASED`, `PATCH319_EXPORT_JOB_RETURN`. Other ordinary jobs such as E15 were ahead of the stranded sources. `MkvExporter.JOB_EXECUTOR` is a **single ThreadPoolExecutor** formerly created via `Executors.newFixedThreadPool(1)`, which uses a FIFO `LinkedBlockingQueue`. PATCH324 only enqueued E42/E49 in this queue; it had no mechanism to promote an already-queued job. That is the code-grounded priority bug (not a failure of subtitle verification).
- Pending ledger expanded: **53 MKV_QUEUED, 51 WAITING_PLAN_OR_SUBTITLES, 4 MKV_QUEUE_REJECTED**; these are separate issues and cannot safely be forced all into FFmpeg. No new LogFox crash files appeared in CL.
- UI traces show continuing long main-thread stalls and CPU pressure during recovery. Keep subsequent UI optimization separate from mux queue integrity.

## Narrow PATCH325 fix
- Replace only the one-worker executor's default unbounded FIFO backing queue with an unbounded `LinkedBlockingDeque` in the same `ThreadPoolExecutor(1,1,0,TimeUnit.MILLISECONDS,queue,existingThreadFactory)`; still **exactly one thread/worker** and existing fair one-permit `FFMPEG_SLOTS`.
- Add `MkvPriority325.promote(ExecutorService,File)`, which snapshots that executor queue, matches queued `MkvExporter$Recovered` or ordinary `MkvExporter$2` job to the exact original MP4 absolute path, removes an existing queued Runnable **only if still present**, and re-adds that same Runnable at the front. No running job is interrupted, no extra worker/duplicate job is submitted, no I/O/mux/deletion occurs in the helper. Existing job keys / state guards remain.
- PATCH324 interrupted parts scanner now gathers only successfully accepted source candidates and **after scanning** reorders them from newest to oldest with `addFirst`, so final priority order is oldest staged E42 then E49. It logs `priority_promoted=N`; separate `accepted_or_owned` count remains.
- Existing `Lease115` serial cross-process lock and staging/new-attempt handling, `Queue110` native state checks, `Inputs114` saved subtitle verification, `MkvManifestStore` / Room identity and source safety stay untouched. Never treat the old `.part` as a finished file or resume FFmpeg byte offsets.

## Regression and validation
- Added Python test `scripts/test_patch325_priority_deque.py` to preserve one worker, exact source match, queued-only reordering, dedup, no file mutation, and oldest-first ordering; adjusted PATCH316/319 static tests for equivalent single-worker implementation.
- Protected build workflow intended to label signed PATCH325 direct APK and run all prior protections including Smali/DEX verification.
- **GitHub CI / APK runtime status must be verified after committing**. New Android CL should show `PATCH324_INTERRUPTED_PART_AUDIT candidates=2 accepted_or_owned=2 priority_promoted=2` or explain if 0 (already executing, no queued matching Runnable, source mapping changed), and then E42/E49 `PATCH319_EXPORT_JOB_START`, `MKV_FFMPEG_SLOT_ACQUIRED` and eventual DB promotion / slot release. Do not claim E42 fixed until verified.

## Initial CI result / test correction
- [Run #42, 41237503076](https://github.com/alwansan/CP/actions/runs/41237503076) failed **before Smali/DEX** at `scripts/test_patch318_room_dao_cache.py`: legacy static assertion required the literal `newFixedThreadPool` text. PATCH325's equivalent `ThreadPoolExecutor(1,1,...,LinkedBlockingDeque,...)` correctly retains one worker but no longer contains that name.
- Updated that regression in commit `5a237141923a685d468f2c7fb058e57c4d21cfa3`, verifying actual one-worker constructor, queue type and semaphore. Re-run full protected CI from the next source commit; **first failure does not imply APK/runtime success or failure**.

## Second CI regression assertion correction
- Run [#43 (41237636217)](https://github.com/alwansan/CP/actions/runs/41237636217) failed at the same PATCH318 static regression **before APK compilation** because an over-escaped `<clinit>` regex matched nothing. Replaced the regex with a literal method substring split, preserving the one-worker/FFmpeg checks. This is a test-only correction; functional Smali remains exactly PATCH325 `d8fb89aa63cdb5a0677c4d121b892631ad21bd1f`. Full protected CI must now be rerun.

## Third CI correction / verification status
- [Run #44 (41237737638)](https://github.com/alwansan/CP/actions/runs/41237737638) passed every static regression PATCH312–PATCH324 but the *new PATCH325 test* used a substring search for `:p324_report` and matched a branch operand rather than its actual Smali label declaration. Fixed to `\\n    :p324_report\\n`. No runtime/Smali code changed by this correction. Re-run CI for actual signed APK.

## Final CI & signed APK
- **SUCCESS** https://github.com/alwansan/CP/actions/runs/41237836457 — full protected run #45, source commit `8108e663ec343cba3bf6d3fadbd7031202ebb619`, passed prior download/notification/Smali protections, new priority-deque regression, Smali/DEX compilation, zipalign, APK signing + verification and direct GitHub Releases publication.
- [Signed PATCH325 APK](https://github.com/alwansan/CP/releases/download/stable-core-PATCH325-45/Cinemana_Stable_Core_PATCH325_signed.apk), 56,347,676 bytes. Previous runs #42–#44 failed only test-source assertions before DEX. Functional Smali is from `d8fb89aa63cdb5a0677c4d121b892631ad21bd1f`.
- Latest CL `194891ba0a2ff7efb0064c3d99ae3c34daca625e` predates PATCH325; **no real-device proof of E42 new conversion yet**. Next: safely install without clearing files or data, obtain `priority_promoted` and E42 post-restart FFmpeg/Room confirmation.
