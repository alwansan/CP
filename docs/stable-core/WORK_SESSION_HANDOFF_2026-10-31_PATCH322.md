# Cinemana Pro — Work Session Transfer — 31 October 2026, ~21:50 Asia/Baghdad

> READ FIRST in the next ChatGPT Work session. This is a **current, additive checkpoint** to the full historical [WORK_SESSION_HANDOFF.md](WORK_SESSION_HANDOFF.md) (about 46 kB, PATCH302 through PATCH321); do not substitute this short synopsis for reading the full file. Always re-check live HEAD, Actions, Releases and CL before making edits.

## 1. Ownership, branches and rules

- Repository: https://github.com/alwansan/CP
- **ONLY writable branch:** `feature/stable-core-ui-performance`; never merge into or edit `main`, `feature/local-account` or `feature/ui-performance-optimization`. The latter are **read-only historical references**.
- Logs/images/snapshots: https://github.com/alwansan/CL (`main`), specifically `log/`, `logfox/`, `data/`, `img/`, `log/tree.txt`.
- User has **no PC**; tests APKs on Poco F5 Pro/Android 15 (SDK 35), uploads CL with Termux, and expects GitHub Actions to build and GitHub Releases to host a **direct, signed .apk (not ZIP)**. Keep signing and upgrade compatibility; never advise deleting app data or `Cinemana/work`.
- Preserve local account, notifications / new-episode checks, downloads and concurrent network transfers, subtitle validation, MKV recovery, player and work-details backstack, UI cover images/language options. Do not replace FileDownloader with OkDownload without separately proven compatibility; legacy FileDownloader 1.7.7 plus app's R8/Smali integrations are not drop-in replaceable.
- Do **not** force-convert any existing MP4 without exact native completion identity, finished/unchanging source, matching DB/item and fully committed subtitles. Never delete unverified MP4, .temp, subtitles, receipts or recovery state. Successful remux promotes MKV to DB then cleans safely.
- **Single MKV export worker / single FFmpeg permit** by user agreement, but preserve multiple network downloads. Prefer improving scheduling overhead and avoiding duplicate work rather than introducing concurrent muxes.

## 2. Current live checkpoints and urgent NEW crash

Verified earlier CP functional PATCH321 commit: `5170251b2ac9d63bdc2f374f8a282d75b112aa5d`. Verified historical docs-only HEAD: `32d49cb65d87646fe44a5a826d4387a3685f1eb4`. Protected PATCH321 CI `41230399348` **passed static tests, Smali/DEX packaging, signing**, and published `stable-core-PATCH321-35`. **BUT PATCH321 IS NOT SAFE TO INSTALL: the user actually hit an Android ART startup VerifyError.** Building successfully is *not* adequate runtime verification.

New CL commit **`1342ac414dca89d0b96526f8b336bf63ab022c9a`** at **2026-10-31 18:48:27 UTC / 21:48:27 Baghdad**, one commit after previous `2ccb60e86d85755c08bc783f30c541af43bfeb2a`. Its `logfox/crash-com-cinemana-pro-_____-__-__-______.log (9)` through `(12)` each record a FATAL startup:
```
java.lang.VerifyError: Verifier rejected class
  com.shabakaty.cinemana.ca1.DownloadRepair129:
  void ...startup(android.content.Context) failed to verify:
  [0x12] Can flow through to move-exception
at CinemanaApplication.onCreate(CinemanaApplication.kt:133)
```
Occurs four times, Android 15 SDK 35, package `com.cinemana.pro`. Same CL tree remains **65 MP4 + 3 .mp4.temp + 31 final MKV** (work snapshots are not evidence that MP4 is necessarily safe/ready). The new CL commit also updates diagnostic logs and adds these four LogFox crashes. **P0 means PATCH321 is unlaunchable on the tested device; don't ask user to install it again.** Tell them to remain on/rollback to a working signed prior APK (e.g. PATCH320) until PATCH322 runtime validated; reverting APK may need care due to Android versionCode downgrade policy, so do not promise simple downgrade or suggest clearing data.

### Cause and PATCH322 corrective code already submitted

File `Cinemana_PATCH252_Project/app/smali_classes6/com/shabakaty/cinemana/ca1/DownloadRepair129.smali`, method `public static startup(Landroid/content/Context;)V`: PATCH321 added a try/catch around `Restart108.main(...)` but successful normal execution fell straight through after `Thread.start()` to `:startup_gate_failed` / `move-exception v0`. ART correctly rejects any normal control flow to `move-exception`. The narrow repair inserts `goto :startup_done` immediately after `Thread.start()`, before `:startup_gate_failed`. The exception handler still only executes from `.catch`.

- Fix commit: `853529dc5b8b4bf7bda9ffa63d863f71a7270753` (Smali; `[skip ci]`)
- Guard test commit: `17c8858a8146e5881b02029bc204fbc2ffc79de3` (`scripts/test_patch321_process_gate.py` now verifies normal control-flow skip; `[skip ci]`).
- **These two commits were saved to the ONLY working branch.** At writing, the full PATCH322 CI/signing outcome was not yet checked; the next session must verify latest Actions and latest signed release before recommending any APK.
- The regression test should ideally be followed by Android 15 real-device startup test and runtime verifier; binary build/DEX structural tests alone did not catch PATCH321.

## 3. Functional evolution relevant to this task

- PATCH302–PATCH311 rebuilt stable-account baseline/UI diagnostics/navigation. PATCH310 introduced a separate VerifyError, fixed by PATCH311. Keep detailed work-player backstack: returning from player should show the same work details, not Home. Do not repeat register/exception-flow mistakes on Android 15 ART.
- PATCH312 bridged native MP4 completion to durable `RecoveryCapsule` receipts and started bounded oldest-first disk audits (8 candidates). PATCH313 required exact reported filesize match; PATCH314 sampled repetitive DB/DAO identity log spam; PATCH315 guarded null FileDownloader UI messenger delivery without breaking valid native callbacks.
- PATCH316 serialized exporter and FFmpeg to **one worker**; PATCH317 sped up Downloads view ID lookup and eliminated redundant progress toString logging; PATCH318 cached Downloads Room DAO in `MkvExporter` (prior per-call builder strongly correlated with too-many-open-files/SQLiteCantOpen). PATCH319 shortened periodic MP4 audit from 5s to 1.5s, avoided no-op ledger writes, added job timing markers; PATCH320 directly finds native download button by resource ID with fallback.
- PATCH321 guarded MKV `DownloadRepair129.startup` to main process (avoids independent `:filedownloader` watcher), runs immediate boot repair **in a background thread** before delayed 8s second pass, makes manual Repair Downloads call sidecar recovery/Queue110 scan and original guarded reconciliation, logs previously swallowed audit errors by sanitized exception class. BUT PATCH321 must be corrected with PATCH322 ART control-flow guard above.
- Relevant report `docs/stable-core/PATCH321_COLD_START_AND_MANUAL_REPAIR.md` and tests `scripts/test_patch321_boot_and_manual_recovery.py`, `scripts/test_patch321_process_gate.py`. Historical detailed reports for each patch under `docs/stable-core/`.
- Key code: `CinemanaApplication.smali`, `Restart108.smali`, `DownloadRepair129.smali`, `DownloadRepair129$Worker.smali`, `MkvRepairStartup.smali`, `MkvReconciler.smali`, `MkvReconciler$Audit.smali`, `RecoveryCapsule.smali`, `Queue110`, `MkvExporter.smali`, `Inputs114`, `Recovery119`, `MkvRepairLedger.smali`, `DownloadTrace.smali`; many reside in `Cinemana_PATCH252_Project/app/smali_classes3/` or `smali_classes6/`.
- The app is decompiled and R8-obfuscated; static Java source is insufficient to capture integration. Preserve obfuscated method signatures, dex classes, original callback and lifecycle. Use protected CI `.github/workflows/stable-core-ui-performance.yml`, **do not broaden protected file allowlist casually**.

## 4. Last functional stress evidence (not yet post-PATCH322)

- Older 66-MP4 stress dataset was **intentionally deleted by user**. Git deletion of old 217 sidecars is not an unexplained data-loss incident; issue #4 is closed. Never conflate old and current stress.
- Latest meaningful completed phone run before crash: PATCH320, CL commit `2ccb60e86d85755c08bc783f30c541af43bfeb2a` on 2026-10-31 21:26 Baghdad. 65 MP4, 3 .mp4.temp, 31 MKV. `data/mkv_repair_pending.properties` contains 8 entries: 3 `MKV_QUEUED`, 5 `WAITING_PLAN_OR_SUBTITLES`; remaining MP4 count cannot be equated to pending ledger count.
- Completed MP4s from previous snapshots had durable native receipts and `sourceComplete=true` sidecars, yet backlog remained. Queue acceptance != FFmpeg start. Inspect exact subtitle-plan barriers, sidecar/native identity, DB mapping, sorted scanner cursor/fairness, active job keys, FFmpeg slot release, and main-process worker; do not bypass safety.
- PATCH318's optimized Room DAO reduced native-heap peaks in later samples (recent ~121–138 MB vs much larger earlier snapshots) but main CPU can still consume ~35s CPU per 15s interval; Downloads and Search/Categories UI frames can stall >400ms (some samples >1.3s). These are *observations*, not proofs of full resolution.
- FFmpeg uses `-c:v copy -c:a copy` for remux; successful ~30–45MB episodes mux in ~5–9 seconds, plus finalization. Previously extra 7–10s gaps occurred between jobs; PATCH319 reduced periodic audit overhead, but no proof of sustained throughput under all conditions. User wants oldest-first robust queue, immediate startup discovery, on-going watcher during downloads, and manual repair using identical safety checks. One process/one FFmpeg, dedupe, avoid GPU/GC/UI stalls.
- Force-stop kills threads, observers and FFmpeg; on **next manual app launch**, recovery should re-evaluate persistent source MP4, subtitles and receipts, retry stalled conversion safely. It cannot continue FFmpeg at the exact stopped byte and force-stop doesn't permit automatic background restart without reopening. Native partial download resumption depends on stored state and HTTP server Range.
- Full details and earlier CI/release list in historical `WORK_SESSION_HANDOFF.md`.

## 5. Immediate priorities for next Work session

1. Verify PATCH322 has succeeded in CI, and **test Android 15 startup on device** before declaring fixed. New test must prevent normal control-flow into any Smali `move-exception` in `DownloadRepair129.startup`; use DEX/ART verifier on compatible Android 15 environment where practical. If VerifyError persists, revert the PATCH321 process gate to a safe state or correct the register/exception structure rather than disabling downloader features. Do not delete app data.
2. Re-fetch CP HEAD, releases and Actions, then CL HEAD and logfox (new `(9)`–`(12)` VerifyError files). **CL 1342** is newer than **2ccb**, so don't report the old logs as newest.
3. Run first-boot test on PATCH322: log `PATCH321_BOOT_IMMEDIATE_AUDIT` and `PATCH321_BOOT_DELAYED_RETRY` and absence of second scanner in `:filedownloader`; verify downloader still works. Test Repair Downloads, force-stop mid mux then relaunch, and force-stop mid partial network download then relaunch. Preserve source, filename and subtitle state, no duplicate or stale source conversion.
4. Correlate evidence per MP4: source timestamp/size and durable completion receipt; native task identity; manifest expected vs committed subtitles; Queue110 input acceptance; exporter queue/slot acquire/release; output MKV validation/DB promotion; source cleanup only on success. Sort oldest-first and guarantee fairness even for 50+ MP4; 8 candidates/1.5s audit with saved cursor.
5. Measure CPU, memory, threads, Java/Native heap, looper stalls, and UI frame times with CL load diag. Investigate Categories/Search/Downloads hot paths independently; do not disable any download, notification or account features to increase FPS.
6. Maintain report per small patch; update handoff and issue #5 with *sanitized* data. Use GitHub Actions for all tests and publish **direct signed APK** in Releases; link commit, run and exact asset. Don't count passing CI as proof of phone runtime. Do not merge to main.

## 6. Current release URLs and live pointers

- PATCH321 (verified signed CI but **device startup crashes**): https://github.com/alwansan/CP/releases/tag/stable-core-PATCH321-35 — not recommended until corrected.
- Last signed pre-PATCH321 APK (PATCH320): https://github.com/alwansan/CP/releases/download/stable-core-PATCH320-34/Cinemana_Stable_Core_PATCH320_signed.apk
- PATCH321 CI: https://github.com/alwansan/CP/actions/runs/41230399348
- Open issue #5: https://github.com/alwansan/CP/issues/5
- Newest crashing CL: https://github.com/alwansan/CL/commit/1342ac414dca89d0b96526f8b336bf63ab022c9a
- Full handoff: https://github.com/alwansan/CP/blob/feature/stable-core-ui-performance/docs/stable-core/WORK_SESSION_HANDOFF.md
- PATCH321 report: https://github.com/alwansan/CP/blob/feature/stable-core-ui-performance/docs/stable-core/PATCH321_COLD_START_AND_MANUAL_REPAIR.md

## 7. User-facing Work prompt guidance

Ask user to switch to **ChatGPT Work**, paste a message referring to both handoffs. Work should execute tasks using the connected GitHub repository and GitHub Actions, not merely send plans. Developer should inspect current branch and pending Actions first; no reason for user to upload tools/PC files. Do not promise unattended background operation in ordinary chat.

## 8. VERIFIED PATCH322 full CI / signed release (2026-10-31 21:53 Baghdad)

- **PATCH322 protected CI SUCCESS:** [GitHub Actions run #41231465688](https://github.com/alwansan/CP/actions/runs/41231465688), source SHA `2618d97079f46630503e7dd5e44c91b5b835f993`. Static original-feature regression guards including process-gate normal branch, Java checks, Smali/DEX rebuild, zipalign, APK signing, APK verification and release upload succeeded.
- **Signed direct APK now published:** https://github.com/alwansan/CP/releases/download/stable-core-PATCH322-37/Cinemana_Stable_Core_PATCH322_signed.apk (56,343,580 bytes). Tag: https://github.com/alwansan/CP/releases/tag/stable-core-PATCH322-37 . Uses same existing checkpoint145 signing key.
- The first PATCH322 workflow [#41231412538](https://github.com/alwansan/CP/actions/runs/41231412538) failed **only the new static test assertion** because it matched the earlier `.catch` label operand instead of the actual handler label. This test was corrected in `5139c6d1f18a615953a2e20ee678ba174d70710d`, and the corrected source passed full CI at #37.
- **ANDROID 15 RUNTIME IS NOT YET VERIFIED.** PATCH321 had passed CI but crashed at startup, so require the user to install PATCH322 **without deleting work or app data** and confirm app opens; investigate immediately if the VerifyError repeats. Do not promise 100% from CI alone. Only then stress-test cold recovery / MKV.
- No merges or updates to main/reference branches. The next work session must check if there are newer CL uploads than `1342ac414dca89d0b96526f8b336bf63ab022c9a`, and whether PATCH322 actually boots.

## 9. PATCH323 immediate durable recovery / signed CI checkpoint (31 October 2026 ~22:00 Baghdad)

- Only writable branch `feature/stable-core-ui-performance`. Functional PATCH323 commit: `e29554170f5a00653dcda3df9e5079ca21d59e13`. Corrected static tests: `3993e9c18dcb44f540b4cadb0188837c7c38b1c2`, `9b22c79821b574267caf2c059ad5826442b28577`. The latter was the verified CI source commit.
- Root-cause limitation PATCH321: `MkvRepairStartup.run` called guarded `DownloadRepair129.execute` immediately, but waited 8 seconds before initial `RecoveryCapsule.recoverPending` and conditional `Queue110.scan` even if old complete native sidecars already persisted. PATCH323 also performs these exact existing safe calls after immediate execute, then coalesces an audit. The delayed 8-second second pass remains. Unchanged: main-process gate/PATCH322 goto, native identity and byte completion gates, subtitle plan/Room verification, paused/deleted native task checks, single FFmpeg permit, parallel network downloads, app data and media files.
- Initial CI run #38 ([41231886718](https://github.com/alwansan/CP/actions/runs/41231886718)) and retry #39 ([41231948635](https://github.com/alwansan/CP/actions/runs/41231948635)) failed **only new test label-substring assertions** before DEX build. Both were corrected to match actual Smali label definitions, not jump operands. No functional change was needed between these attempts.
- **FULL protected CI SUCCESS**: https://github.com/alwansan/CP/actions/runs/41232007723 (run #40, source SHA `9b22c79821b574267caf2c059ad5826442b28577`), including original-feature regression tests, helper build, Smali/DEX compile, zipalign, APK signing/verification and direct GitHub Release upload.
- **Signed APK direct**: https://github.com/alwansan/CP/releases/download/stable-core-PATCH323-40/Cinemana_Stable_Core_PATCH323_signed.apk (56,343,580 bytes); tag: https://github.com/alwansan/CP/releases/tag/stable-core-PATCH323-40 . Same checkpoint145 signing identity.
- Latest known CL HEAD still `1342ac414dca89d0b96526f8b336bf63ab022c9a`, with four PATCH321 Android 15 startup VerifyError reports. **No post-PATCH322/PATCH323 device log confirming successful startup** yet. CI is not runtime proof. Test PATCH323 launch first without clearing data. Force-stop means recovery cannot run before manually reopening. Any successful recovery claims require new native/sidecar, subtitle, queue, FFmpeg, Room and UI diagnostics.
- Current stress baseline remains 65 work MP4, 3 .mp4.temp, 31 final MKV; ledger 3 MKV_QUEUED, 5 WAITING_PLAN_OR_SUBTITLES. Neither 65 MP4 files nor 3 queued entries prove readiness or FFmpeg start. Do not bypass safety to force conversion. Old intentionally deleted stress experiment is not an incident.
- Detailed report: [PATCH323_IMMEDIATE_DURABLE_RECEIPTS.md](PATCH323_IMMEDIATE_DURABLE_RECEIPTS.md). Issue #5 updated with code and CI status; follow the newest actual CL before changing more functional paths.

## 10. Late CL metadata-only sync after PATCH323 signed build
- New CL HEAD `6e4a5c71c9448b0e01de48894ef1f56fca8669a2` appeared during final review (author commit time 2026-10-31 18:56:06 UTC). Its GitHub commit changed **only** `log/tree.txt`; it did **not** add new LogFox or new runtime diagnostic files.
- Compared both tree.txt revisions line by line: same **65 MP4, 3 .mp4.temp, 31 final MKV** and same 582 lines. Seven differing lines are modified timestamp fields for snapshot binaries and tree.txt; this does **not** demonstrate PATCH322/PATCH323 boot success, MKV output progress or deletion.
- Therefore no post-PATCH321 crash-free on-device evidence is available yet. On the next actual PATCH323 phone launch upload fresh CL/logfox, mkv repair actions/unresolved logs, and main/filedownloader/UI metrics before making any further runtime claims.

## 11. PATCH324 confirmed signed CI, interrupted E42 .part recovery (31 October 2026)
- Only writable branch `feature/stable-core-ui-performance`. Functional commit `ea3d0899072bbdea0b842b68f2e5f5688a770ec4`. Previous source baseline: PATCH323; no edits to main/reference branches.
- Latest CL `711f0fa52603d14426733aca485de121a100f5a4` (22:02 Baghdad) has E42 source 40,928,667 bytes with saved subtitle plan, and 7.5 MiB `.mkv.cnm115-UUID.part` from 21:04. E42 acquired one FFmpeg slot but no release/promotion in that session; it subsequently logged QUEUE_ENQUEUED `item:5702` without a new QUEUE_START in available logs. The original interruption cause is not proven.
- Snapshot ledger counts 44 MKV_QUEUED, 42 WAITING_PLAN_OR_SUBTITLES, 2 MKV_QUEUE_REJECTED. Newest LogFox still has older PATCH321 startup VerifyError only; absence of new LogFox does not prove Android 15 launch success.
- PATCH324 `DownloadRepair129.prioritizeInterruptedParts` runs before ordinary cold-start scan and during manual Repair. It matches only staged `.mkv.cnm115-<36-char UUID>.part`, checks adjacent MP4, offers up to 16 oldest staged sources to existing `MkvReconciler.reconcileDiskVideo`. The scanner never deletes/renames content or treats the fragment as a finished MKV. Native/task, exact subtitle, identity and DB safeguards remain. One FFmpeg permit and parallel network downloads retained.
- **GitHub Actions #41 SUCCESS:** https://github.com/alwansan/CP/actions/runs/41232930490 ; source `ea3d0899072bbdea0b842b68f2e5f5688a770ec4`. Protected regression tests, Smali/DEX, signing and direct release publication completed.
- **Direct APK**: https://github.com/alwansan/CP/releases/download/stable-core-PATCH324-41/Cinemana_Stable_Core_PATCH324_signed.apk (56,343,580 bytes). Release: https://github.com/alwansan/CP/releases/tag/stable-core-PATCH324-41. Real phone runtime, E42 new FFmpeg start and actual finished output unverified.
- Next task: install without clearing user data; inspect `PATCH324_INTERRUPTED_PART_AUDIT`, E42 `QUEUE_START`/FFmpeg slot, MKV validation and DB promotion, later E49, and fresh LogFox/performance traces. If the source remains queued, determine active/paused/queue-blocked reasons; do not bypass safety.
- More detail: [PATCH324_INTERRUPTED_PART_PRIORITY.md](PATCH324_INTERRUPTED_PART_PRIORITY.md).
