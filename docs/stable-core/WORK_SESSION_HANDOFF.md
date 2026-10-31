# Cinemana Pro — WORK SESSION HANDOFF (31 October 2026)

**Purpose:** authoritative continuity note for a fresh ChatGPT **Work** session. Read this file completely before editing anything. Do not restart the project or make assumptions from the earlier PATCH301/PATCH311 context. The repository and its logs can change between sessions: **recheck live GitHub state before acting**.

## 0. Current verified state (at handoff preparation, 2026-10-31 around 18:39 Asia/Baghdad)

- Project: https://github.com/alwansan/CP
- **ONLY writable working branch:** https://github.com/alwansan/CP/tree/feature/stable-core-ui-performance
- Verified working-branch HEAD **before this handoff-document commit**: **5311059f4b8d10ed2996da1a6221063ea6e4f23e** (test(PATCH312): execute bounded cursor Smali in recovery flow simulator). Previous functional commit: **c8464ac64e3342c4899c1065d9c4585be20c6b55** (PATCH312: bridge native MP4 completions to durable MKV receipts and pace recovery audits).
- Most recent verified signed APK release **at that moment**: **stable-core-PATCH312-20**: https://github.com/alwansan/CP/releases/tag/stable-core-PATCH312-20
- Direct signed APK: https://github.com/alwansan/CP/releases/download/stable-core-PATCH312-20/Cinemana_Stable_Core_PATCH312_signed.apk
- Successful GitHub Actions run **#20**: https://github.com/alwansan/CP/actions/runs/41214556579 ; all steps finished successfully, including account/restore tests, Smali/DEX validation, signing, and release publication. Run #19 failed and was superseded by #20.
- A documentation-only commit may trigger another automatic build because .github/workflows/stable-core-ui-performance.yml includes docs/stable-core/** in on.push.paths. **Check the branch HEAD and latest Actions/release again** in the new session; do not mistake a doc-only run for a new functional fix.
- GitHub mirror for logs: https://github.com/alwansan/CL ; log files https://github.com/alwansan/CL/tree/main/log ; LogFox https://github.com/alwansan/CL/tree/main/logfox ; data https://github.com/alwansan/CL/tree/main/data ; UI references https://github.com/alwansan/CL/tree/main/img
- Last inspected CL sync: commit **ed3dce9fbe1d96aa24fef6272088f120dc5a15fa**, committed 2026-10-31 15:37:14 UTC (18:37 Baghdad). Earlier comparison CL commit **12fa42a3d1f1aec78fad4edaf97cede9e9071b02**.
- The newest CL load_diagnostics.main.jsonl, load_diagnostics.filedownloader.jsonl, and ui_performance.jsonl **explicitly identify build PATCH312**. Thus the user has apparently run a PATCH312 build on the phone, but no full validation of all behavior should be inferred.

## 1. Non-negotiable user instructions

1. Do all technical work proactively: inspect GitHub history and logs, edit code, write meaningful tests, execute GitHub Actions, analyze failures, publish a **direct signed .apk in GitHub Releases (not zipped)**. The user has **no PC**; their Android/Poco F5 Pro device is used for real-device testing; Termux and GitHub Actions are available. Do not ask for routine approvals. Clearly identify genuinely blocked tasks.
2. **Never change or merge to main. Never write to feature/local-account or feature/ui-performance-optimization.** Use only feature/stable-core-ui-performance. Preserve signed upgrade compatibility and app data; do not recommend clearing app data.
3. **Functionality before speed.** Do not delete/hide/disable critical download, multipart/multiple download, native callback, account, subtitles, notifications, subscriptions, periodic new-episode checking, media playback, MKV export/watchdog, or recovery just to make UI faster.
4. **Do not delete, rename or automatically force-convert arbitrary .mp4, .mp4.temp or recovery state.** The source must be proved complete; match real native download identity, exact media item, subtitle plan, database state and safety gates. Only delete source when a fully verified export is committed using existing safe code.
5. User wants download recovery/watchdog to monitor unfinished or stranded completed MP4s, oldest-first/fair, resume after crashes and app restarts, one-by-one FFmpeg conversions with correct subtitles, clean temporary data only after verified success, and use the same safety logic in any manual repair action.
6. When the player opens over work details, **retain the underlying details NavHost/back stack**; Back from player must return to the same work details, not Home. Pause optional hidden UI work instead of destroying the details page. Avoid leaking Activity objects or inventing Home redirects.
7. The user initially tested baseline **without intentionally stressing downloads**, then intentionally stressed downloads and exposed failures. Preserve both baselines in the diagnosis. A successful build does **not** establish correct runtime behavior.
8. UI should remain responsive across Home, details, search, downloads, categories, profile, and player. Downloads list may need viewport-only binding/visibility reduction when hidden, **without suspending real downloads or state updates**. Prior user requests also include clear covers, consistent Continue Watching labels, eye icon for watched episodes, sensible Nuvio-inspired tabs without heavy blur, dark/OLED themes, system/English/Arabic language behavior, and episode alerts checked on app open as well as periodically. Prioritize core stability before further styling.

## 2. Repository history and safe branch structure

- Main repository: https://github.com/alwansan/CP
- Reference baseline: **feature/local-account**, verified HEAD **82d7f67037f67659115d41782d3a9b5bf4e0bd02** (PATCH274: prefer medium resolution notification covers with small-image fallback). The previously functioning download behavior was reported here.
- UI optimization historical branch: **feature/ui-performance-optimization**, verified HEAD **2a27c6e2957a0249145cc18204a4502bed722537** (PATCH301). Includes extensive performance instrumentation and risky UI/DownloadTrace changes; read-only reference.
- Current working branch: **feature/stable-core-ui-performance**, originally branched from PATCH274 (not from PATCH301), then received selectively audited changes PATCH302–PATCH312.
- Previously encountered critical errors: NoClassDefFoundError for Continue106$ExternalSyntheticLambda3 vs double-$ variant; ClassCastException with NuvioGlassBackdrop$FrostedImage and downloader type kn; NoClassDefFoundError for downloader/j32; delayed startup/ANR in main and :filedownloader; PATCH310 Android 15 VerifyError due uninitialized v0 in hx2.onCreate. Protect against regressions.
- Avoid blind cherry-picking from the performance branch. Compare by code path, not only commit count, and respect the CI allowlist of reviewed files.

## 3. Patch progression and what is actually known

- PATCH302: isolated safer local-account core, safe details layout behavior and initial CI. Reference docs/stable-core/PATCH302_ISOLATED_BASELINE.md.
- PATCH303: restored passive UiPerfDiag and startup traces/LogFox-oriented diagnostics. docs/stable-core/PATCH303_LOGFOX_UI_DIAGNOSTICS.md.
- PATCH304: distinct screen-level fragment telemetry, including Downloads/Home/details/search/profile; docs/stable-core/PATCH304_FRAGMENT_TELEMETRY.md.
- PATCH305: moved **optional** DownloadTrace file-log work away from the UI thread with bounded worker, not durable download-state writes. Historical ANR still observed; did not prove a full fix. docs/stable-core/PATCH305_ASYNC_UI_DIAGNOSTICS.md.
- PATCH306: cached reflective method lookup in Continue106 via MethodCache299; avoid touching original lambda bindings. Confirm real crash-free operation on device.
- PATCH307: sampled main and :filedownloader diagnostics at 15-second intervals, bounded rotation, main-looper lag probes, screen/tab visibility, memory/CPU/threads/io, incremental log counters. docs/stable-core/PATCH307_BASELINE_STRESS_LOGGING.md.
- PATCH308: top six per-thread CPU samples periodically, app-UID network counters when Android permits. docs/stable-core/PATCH308_THREAD_CPU_DIAGNOSTICS.md.
- PATCH309: corrected attribution of main thread CPU and player activity vs hidden details screen. docs/stable-core/PATCH309_CPU_PLAYER_ATTRIBUTION.md.
- PATCH310: preserve saved work-details back stack in hx2.onCreate rather than detach fragments and reselect Home after Android saved-state recreation. Initial build could fail at runtime. docs/stable-core/PATCH310_DETAILS_PLAYER_BACKSTACK.md.
- PATCH311: fixed Android 15 ART VerifyError: v0 Home tab ID integer now initialized before conditional restore branch in hx2.onCreate. CI passed. Runtime verification for Back returning to same details remains a separate user test. docs/stable-core/PATCH311_ART_VERIFYERROR_FIX.md.
- **PATCH312: FIRST corrective pass for stress-related native MP4 -> MKV disconnect**, not final proof of old-file recovery. Two changes:
  - DownloadTrace.task handles genuine error-free DOWNLOAD_COMPLETED callbacks; new bounded, low-priority MkvCompletion312 bridge filters actual .mp4 under canonical Cinemana/work root, ensures file >1 KiB, retrieves native id, calls existing RecoveryCapsule.completeDownload(nativeTask,id), and requests existing MkvReconciler audit. It must not convert, delete, trust arbitrary file size, or log signed URLs. Queue capacity 128; overload logged.
  - MkvReconciler.scanExistingRoot rotates through at most **8 candidate MP4s per audit** on its 5-second schedule, retaining sorted oldest-first candidates and unchanged reconcileDiskVideo safety/identity/subtitle gates. Explicitly test fairness, cursor reset, starvation and no premature .temp conversion.
  - Functional commit c8464ac64e3342c4899c1065d9c4585be20c6b55; regression commit 5311059f4b8d10ed2996da1a6221063ea6e4f23e.
  - Full explanation & specific testing: **docs/stable-core/PATCH312_DOWNLOAD_MKV_STRESS_RECOVERY.md**. Read in entirety before further changes.

## 4. Critical NEW evidence: CL before/after contrast (do not conflate test sets)

**OLDER STRESS SNAPSHOT:**
- CL at **12fa42a3d1f1aec78fad4edaf97cede9e9071b02**, log/tree.txt about 95 KB, showed **66 completed-looking .mp4**, **2 .mp4.temp** still downloading and **3 .mkv** in the final destination (Naruto season). Do not assume completed-looking implies safe to mux.
- Download logs for that stress period (since epoch ms 1793458060000) showed **74 native MP4 DOWNLOAD_COMPLETED** events, but most did **not** reach exporter onVideoCompleted; only **3 MKV FFmpeg slots** acquired in the analyzed period. Persistence sidecars in data/cnm_recovery often remained phase=DOWNLOAD_QUEUED/sourceComplete=false; pending ledger had WAIT_ITEM_MAPPING and WAITING_PLAN_OR_SUBTITLES; repeated all-file audits and Restart108 scans took roughly 48–70 seconds in some samples. See PATCH312 doc for provenance.
- This is the documented broken pipeline that motivated PATCH312. Confirm the native callback-to-receipt fix actually bridges all relevant events and does not lose events when queue is saturated.

**MOST RECENT SNAPSHOT:**
- CL at **ed3dce9fbe1d96aa24fef6272088f120dc5a15fa** / log/tree.txt, timestamp 18:35–18:37 local, shows **10 finished .mkv across 2 seasons (five Naruto and five Naruto Shippuden)**; its work root has only data and log directories, **no .mp4 or .mp4.temp**. This is a much smaller/different set than the earlier 66-file stress test.
- New CL .mkv_export.log shows actual FFmpeg activity, DB_PROMOTE_SUCCESS, verified identity/targets for these recent MKVs; downloads.log includes DOWNLOAD_COMPLETED then MKV_UI_QUEUED_IMMEDIATE for at least a late Shippuden episode; logs identify **PATCH312**. This establishes that MKV can complete for these newer tasks, NOT that the earlier 66 stranded videos were recovered.
- Latest CL sync commit removed **217 files under data/cnm_recovery/** and removed data/mkv_repair_pending.properties, along with a substantial set of old per-episode logs. **DO NOT conclude why** without evidence: deletion of jobs, user cleanup, exporter cleanup or different test state are possible. Do not try to regenerate missing data from guesses. Use git history to inspect before/after sidecars if needed.
- Current CL data/ folder contains episodes/library/watch binary snapshots and mkv-proofs; it **does not currently have cnm_recovery nor pending properties**. Older CL commits still retain these sources for targeted comparison. Prefer fetched exact commit refs over assuming a path exists at HEAD.
- CL log newest files include downloads.log, diagnostics.log, .mkv_export.log, ui95.log, ui_performance.jsonl, ca1_batch.jsonl, player_diagnostics.log, load_diagnostics.main.jsonl, load_diagnostics.filedownloader.jsonl, mkv_identity.map. Actual newest logs show PATCH312.
- Distinguish logs from different versions and rotated files; use timestamps and build labels. Never publish personal tokens/signed URLs from raw logs in issues or docs.
- **Unresolved question:** Did the user manually clear/remove the old 66 MP4, or did processes clean them after completed work? No direct proof in current evidence. Do not state all 66 were recovered.

## 5. Core pipelines and files to inspect

- Download callback logging: Cinemana_PATCH252_Project/app/smali_classes3/com/shabakaty/cinemana/features/DownloadTrace.smali; asynchronous optional logger DownloadTrace301.smali.
- New completion helper: patches/local-account/src/com/shabakaty/cinemana/local/MkvCompletion312.java.
- Disk watchdog: Cinemana_PATCH252_Project/app/smali_classes3/com/shabakaty/cinemana/features/MkvReconciler.smali; age comparator; queue/audit request.
- Durable recovery: Cinemana_PATCH252_Project/app/smali_classes6/com/shabakaty/cinemana/ca1/RecoveryCapsule.smali, Restart108, DownloadRepair129, Recovery119/Inputs114/Mux115 and related components. Check actual paths before assuming an entity is in a given dex/smali directory.
- Export and DB path: MkvExporter, database DAO and task metadata resolution; FFmpeg slot, exact subtitle manifest, atomic output validation and download path promotion.
- Other sensitive downloader code in app/smali/com/shabakaty/downloader including native tasks, obfuscated task adapters, DownloadTrace event sources and subtitle resolver Dependencies112. Do not replace on suspicion.
- Navigation: app/smali/com/shabakaty/downloader/hx2.smali, app/smali/com/shabakaty/downloader/d15.smali, HomeActivity, VideoPlayerActivity; avoid the PATCH310 uninitialized-register bug.
- Continue Watching: app/smali_classes6/com/shabakaty/cinemana/ca1/Continue106.smali, MethodCache299; protect lambda aliases and binding.
- Diagnostics: UiPerfDiag.java, LoadDiag307.java, ThreadCpuDiag308.java; files under Cinemana/work/log.
- Core CI: .github/workflows/stable-core-ui-performance.yml (Ubuntu 24.04, Java 17, pinned Android/R8 tooling, signed APK); tests scripts/test_patch312_mkv_recovery.py and scripts/test_recovery_flow.py; scripts/test_stable_diagnostics.py, scripts/validate_recovery.py, scripts/test_reference_guards.py, scripts/test_apk_dex.py, scripts/verify_apk_dex.py; patches/local-account/run_tests.py, build.py, validate.py. Inspect workflow before editing any guarded file.
- Other log audit workflows: .github/workflows/download-audit.yml and logfox-anr-audit.yml.
- Original decompiled APK source archive previously uploaded: '(الاصلي) سينمانا_5.3.3_src.zip' may be accessible in user's files; not a blocker if absent.

## 6. Current investigation questions and priority queue

**P0 — Download, MP4 and MKV functional recovery**
A. Verify newest on-device PATCH312 traces, distinguish native completion, successful RecoveryCapsule receipt, MkvReconciler reconciliation, exact subtitle plan acceptance, FFmpeg success, verified DB promotion and safe source cleanup. Compare new successful 10-video test against older 66-MP4 failure via CL commit history. Never conflate them.
B. Examine 217 deleted sidecars in latest CL sync; understand whether old jobs were deliberately removed. Check old ledger, mismatch reasons (WAIT_ITEM_MAPPING, WAITING_PLAN_OR_SUBTITLES), missing or stale native IDs, subtitle task race, recovery after app restart and failed/paused downloads.
C. Confirm worker queue saturation handling (128 jobs), reflection getPath/getId compatibility, id extraction and completion event contract; no false positive from subtitles, .mp4.temp or actively growing files. Confirm existing native callback is invoked across process boundaries and after app resume.
D. Confirm watchdog fairness and bounded 8-file audit when many files persist; verify no repeated expensive DB resolutions/long UI stalls, but maintain progress through oldest candidates. Avoid adding unbounded scans or running disk I/O on main thread.
E. Test small 2–5 download batch first, then user may stress again. Verify concurrent downloads, resume, service process, local database, subtitles and notifications. Provide item-by-item factual findings; any behavior not tested on device remains unconfirmed.

**P1 — Remaining crash, navigation and performance**
- Re-check latest CL/logfox for Android ART VerifyError, main/:filedownloader ANR, media database load, and especially player Back returning to SAME details. Keep PATCH311 fix.
- UI previous idle/stress samples showed high CPU on main and RenderThread, ~437 MB RSS and 233 threads in some separate PATCH308 trials; do not attribute all CPU to downloads. PATCH309 corrected video-player attribution. Re-baseline using fresh logs.
- Keep RecyclerView/recycled view optimizations carefully, avoid heavyweight overlays/blur or unnecessary offscreen item binding, but **do not stop actual downloads** when Downloads tab is hidden.
- Keep local account, watch-state, new episode notifications checked on app open, subtitle and player flows, image cover quality and app language settings stable.

**P2 — Evidence/observability**
- Each version should maintain bounded UiPerfDiag, LoadDiag and ThreadCpu metrics without writing frequently on main thread. Correlate screen visibility, frame drops, looper stalls, worker CPU, DB activity, queue state, MKV, RSS and process/thread counts.
- Include build tag in new logs; no raw signed URLs, tokens, paths identifying private content or content payloads in newly added telemetry.

## 7. Immediate Work session playbook

1. READ THIS ENTIRE FILE, then docs/stable-core/PATCH312_DOWNLOAD_MKV_STRESS_RECOVERY.md, PATCH311_ART_VERIFYERROR_FIX.md, PATCH310_DETAILS_PLAYER_BACKSTACK.md and relevant test/CI files.
2. Fetch exact live GitHub branch HEAD, latest commits, release and GitHub Actions. This handoff commit itself might have triggered a docs-only build; do not mistake new release number for new functionality.
3. Inspect CL/log/tree.txt and older ref 12fa42a3d1f1aec78fad4edaf97cede9e9071b02 vs current CL, along with logfox, downloads.log, .mkv_export.log, diagnostics.log, load diagnostics and ui performance. Preserve distinctions of snapshots and PATCH versions.
4. Investigate any brand-new failures first; implement **one small, evidence-based corrective patch at a time**. Write regression tests and protect core systems; do not assume old 66 files remain on device.
5. Run the project's full protected GitHub Actions build (and observe ALL test and DEX/ART limits); only after success publish signed APK directly, link direct .apk + commit + Actions. Never claim success of actual Android runtime from CI alone.
6. Maintain a chronological evidence summary inside docs/stable-core and update this handoff at a new session boundary. Stay on the same working branch. If long-running Actions are executing, provide their genuine URL and specific status; do not claim work completed before results arrive.
7. If screenshots/images in CL/img are pertinent, use them only to guide UX, not to override functional correctness. User can upload logs from Termux and test APK, but avoid unnecessary manual chores.

## 8. Known URLs and direct pointers

- Work branch: https://github.com/alwansan/CP/tree/feature/stable-core-ui-performance
- Old local-account branch: https://github.com/alwansan/CP/tree/feature/local-account
- Old performance branch: https://github.com/alwansan/CP/tree/feature/ui-performance-optimization
- Latest functional PATCH312 commit: https://github.com/alwansan/CP/commit/c8464ac64e3342c4899c1065d9c4585be20c6b55
- PATCH312 regression commit: https://github.com/alwansan/CP/commit/5311059f4b8d10ed2996da1a6221063ea6e4f23e
- Latest verified release: https://github.com/alwansan/CP/releases/tag/stable-core-PATCH312-20
- Latest verified successful Actions: https://github.com/alwansan/CP/actions/runs/41214556579
- Before-change CL 66 MP4 snapshot: https://github.com/alwansan/CL/blob/12fa42a3d1f1aec78fad4edaf97cede9e9071b02/log/tree.txt
- Latest CL 10 MKV snapshot: https://github.com/alwansan/CL/blob/ed3dce9fbe1d96aa24fef6272088f120dc5a15fa/log/tree.txt
- Latest CL changes and sidecar removals: https://github.com/alwansan/CL/commit/ed3dce9fbe1d96aa24fef6272088f120dc5a15fa
- Logfox: https://github.com/alwansan/CL/tree/main/logfox
- This handoff: https://github.com/alwansan/CP/blob/feature/stable-core-ui-performance/docs/stable-core/WORK_SESSION_HANDOFF.md

## 9. Definition of done

- Older and new completed MP4 candidates do not remain indefinitely orphaned after legitimate native completion, provided verifiable item/plan/DB requirements are met.
- Incomplete active/temp MP4s are never muxed as complete. MKV outputs contain correctly matched subtitle streams and metadata, use safe validated commit/promote, and never discard source on export failure.
- Recovery resumes cleanly after restart/crash and does not create endless duplicate work, runaway scan load or lost download state.
- Parallel downloads run reliably, plus notifications and subscription checking, local account, playback and player-to-details Back remain functional.
- Home, details, search, downloads and navigation remain responsive in real-device stress experiments.
- All steps have reproducible tests, identifiable commit, passing signed build, direct GitHub Release APK, and honest device-test status.

**Critical:** This handoff is documentation, not evidence of a successful repair of the entire old stress test. User instruction is to continue fixing ALL demonstrated issues, one by one, using current logs and code while maintaining existing features.
## 10. Follow-up session update — PATCH313 safety correction (31 October 2026)

Latest CP HEAD **before** this follow-up: `795f5fcf1bc6d0d0ea22432cb153e6202616bf0e`; signed docs-only release `stable-core-PATCH312-21` succeeded at Actions run `41216381638`. Last fetched CL commit remained `ed3dce9fbe1d96aa24fef6272088f120dc5a15fa`. No new post-PATCH312 CL upload was available during this investigation.

New explicit evidence found in recent PATCH312 CL diagnostics: `queue_terminal_error` with `completion receipt identity/length mismatch`, plus `inputs114_deferred` with `subtitle not committed: 1` and `subtitle plan count mismatch`. These safety checks must remain active. `Queue110.committed` already requires positive exact native byte length, but the extra PATCH312 `MkvCompletion312` completion bridge did not. The new PATCH313 change adds that gate to **the same helper before writing sourceComplete=true**, keeping Queue110's stricter path/URL checks unchanged. See `docs/stable-core/PATCH313_NATIVE_COMPLETION_LENGTH_GUARD.md`.

This session also reconfirmed that the old 66 MP4 + 2 temp snapshot and later 10 MKV/no-MP4 snapshot are different; the commit deletes 217 old sidecars, but the reason cannot be proven from Git mirroring alone. Newest logs have 27 native DOWNLOAD_COMPLETED events, 10 MKV_UI_QUEUED_IMMEDIATE events, and actual successful exports. No proof all old 66 files recovered. Repeat the 2–5 download trial then pressure trial; capture the full tree, sidecars and LogFox.

**Build status at write:** PATCH313 commit and its GitHub Actions result must be checked live; documentation written as part of the corrective commit. Do not infer successful CI or Android runtime before checking the workflow and device logs. Work only on `feature/stable-core-ui-performance`; do not touch reference branches or main.

## 11. Follow-up — PATCH314 new live CL evidence and MKV diagnostic pacing (31 Oct 2026)

Continuation from PATCH313 `451fe659bcaa7dbf7fd75fe76e1b3f9b95427899` (signed release `stable-core-PATCH313-22`, CI success `41217069329`), only on **feature/stable-core-ui-performance**. Newest inspected CL SHA is `b2d67a3be575d54ca8f8a9c77f95cd9ddd3af10c` (2026-10-31 16:29:52 UTC): 30 MKV across Naruto/Shippuden E01–E15, 0 work-root MP4 or MP4.temp. PATCH313 shows 24 native video complete events for 20 **unique** new episodes and their 20 new MKVs. Do not equate these 20 with old 66 stranded MP4s or presume the 217 deleted QUEUED/false sidecars were recovered.

The CL full-log audit workflow was repaired in `05b3b763284fb187825c5c5ca9558e5fea7edaaa`: pin exact CL SHA and tolerate missing optional pending.properties / prior-rotation UI logs. It **passed** in [run 41220389818](https://github.com/alwansan/CP/actions/runs/41220389818). The full 25,829-line MKV export trace has 24,873 repetitious `DB_PROMOTE_DOWNLOADS_DB_NAME`, `DB_PROMOTE_DOWNLOADS_DB_CLASS`, `DB_PROMOTE_DOWNLOADS_DAO` lines, versus 30 final MKV files; each invokes the external file logger. PATCH314 samples **only** these 3 verbose identity prefixes at first + every 128th call in the existing appendExternalLog, after the Log94.enabled check; errors, promotion results, subtitle, FFmpeg and original state transitions are unchanged. See `docs/stable-core/PATCH314_MKV_DAO_LOG_PACING.md`.

PATCH313 UI metrics still show serious Downloads lag and high CPU (28,304 process CPU ms during a 15,010ms window, up to 294 threads, main/RenderThread/GC spikes); PATCH314 is a targeted log I/O optimization, **not a proven lag fix**. Investigate UI binding/GC, process restarts, native queue replays, missing durable receipts, retention and player navigation with new logs.

**At write time:** PATCH314 commit, Actions/Release outcome and real-device behavior still require live verification. Do not claim success until completed. Never merge to main or modify the two reference branches.

### PATCH314 CI gate correction
The first PATCH314 build (GitHub Actions `41220856590`) failed its **protected file allowlist**, because the new `MkvLogGate314.java` and its standalone test were not yet explicitly listed. This is a CI allowlist failure, **not** a Smali/DEX or Android runtime failure. A subsequent workflow-only correction explicitly allows exactly those two audited files without opening the rest of the functional core. Check the corrected build's actual status and direct signed release before installing.

## 13. User clarification and new independent PATCH313 / PATCH314 stress (31 Oct 2026)

**The user explicitly confirmed the OLD stress test and its files were deliberately deleted.** The previous 217-sidecar deletion / 66-old-MP4 disappearance is not an unexplained app deletion and must no longer be called a P0 regression. Closed issue #4 accordingly. Do not conflate older and new test sessions.

**New CL SHA:** `d78a4fbc5ae80a6ce9701093e0444f2473200796`, Oct 31 16:47:51 UTC. Current tree (19:47 local) shows **36 MP4, 2 MP4.temp, 10 MKV**, in a NEW separate pressure test on versions PATCH313 and PATCH314. New `mkv_repair_pending.properties` reports `ITEM_SCAN_FAILED` when matching Naruto S01 E32; this is unresolved, not proven unrecoverable. PATCH314 measurements show up to ~1.65 GB main process RSS, 1,337.95ms UI frame and 804.08ms main thread stall in downloads. A new LogFox report shows FileDownloader's `interceptBlockCompleteMessage` null `IFileDownloadMessenger` crash on the main thread. Do not assume every current MP4 is fully downloaded; correlate native receipts and MKV queue.

The CL audit workflow was enhanced to fetch its logs at **one pinned CL SHA**, summarize PATCH313 vs PATCH314 by exact process-start timestamps, compare distinct MP4 completion callbacks against the current tree, count MKV diagnostics and report UI CPU/GC. See `scripts/audit_stress_compare.py` and its Actions output.

## 14. PATCH315 native FileDownloader main-thread null messenger crash guard (31 Oct 2026)

New precise crash in `CL/logfox/crash-com-cinemana-pro-_____-__-__-______.log (8)`: NPE in FileDownloadMessageStation.interceptBlockCompleteMessage() due to null IFileDownloadMessenger within UIHandlerCallback.dispose; actual Android main-thread crash. PATCH315 narrowly skips null batch/single delivery and null enqueue/intercept, leaving all valid callbacks intact. New regression test `scripts/test_patch315_null_messenger.py` validates original handovers and 4 guards; see `docs/stable-core/PATCH315_FILEDOWNLOADER_NULL_GUARD.md`. Do not claim safe handling of all crashes or MKV repair just from this guard. New independent current stress has **36 MP4 + 2 temp + 10 MKV**, and the all-log audit `41221764617` proved each of 36 MP4 current tokens already had a native DOWNLOAD_COMPLETED callback. PATCH314 still shows huge RAM/CPU/GC/UI stalls. First attempt to run the documentation/audit change `d6faf924...` produced an expected protected workflow allowlist failure for newly introduced `scripts/audit_stress_compare.py`; PATCH315 explicitly allowlists this approved audit script and the two audited native FileDownloader classes. Verify new CI/release live.
