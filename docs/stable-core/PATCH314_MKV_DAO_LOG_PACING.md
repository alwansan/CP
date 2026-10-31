# PATCH314 — Sample redundant MKV DAO diagnostics (31 Oct 2026)

## Verified latest on-device evidence
- CL source commit **b2d67a3be575d54ca8f8a9c77f95cd9ddd3af10c**, Oct 31 16:29:52 UTC. New tree: **30 MKVs**, 0 work-root MP4 and 0 MP4.temp; Naruto E01–E15 and Naruto Shippuden E01–E15.
- The PATCH313 segment of downloads.log has **24 native video completion events for 20 distinct video tokens**, matching the 20 newly exported MKV files, and 35 completed subtitle download events. Four callbacks were duplicate observations, not four missing episodes.
- The previous `queue_terminal_error: completion receipt identity/length mismatch` and `inputs114_deferred subtitle plan count mismatch` appear only in the earlier PATCH312 part. The PATCH313 portion has no newer instances of these exact errors. Do **not** infer old 66 stranded MP4 files were recovered.
- PATCH313 load diagnostics measured process CPU **28,304 ms / 15,010 ms** on a Downloads sample, 294 threads and high main/RenderThread/GC activity. Some PATCH313 frames exceeded 300 ms. The exact lag causes remain broader than one logging path.

## Precise performance evidence and correction
Audited **the entire** `CL/log/.mkv_export.log` in [GitHub Actions #41220389818](https://github.com/alwansan/CP/actions/runs/41220389818); that job pins the CL commit, tolerates optional missing files and succeeded.

The 25,829-line export log contained:
- `DB_PROMOTE_DOWNLOADS_DB_NAME` 8,252 occurrences;
- `DB_PROMOTE_DOWNLOADS_DB_CLASS` 8,252 occurrences;
- `DB_PROMOTE_DOWNLOADS_DAO` 8,369 occurrences;
- total of the three repetitive identity lines **24,873**;
- `DB_PROMOTE_SUCCESS` 119 diagnostic observations (not 119 distinct MKV episodes);
- `MKV_FFMPEG_SLOT_RELEASED` 30 entries, matching 30 output files, with 36 acquired slots recorded during retries and concurrent activity.

Each verbose identity diagnostic passes through `MkvExporter.appendExternalLog`, which performs `ensureLogDir`, `migrateLegacyLogs` and `appendLog` file I/O. This repeated success-only instrumentation is an **identified source of avoidable file operations**. It does not alone prove the root cause of the main-thread stalls.

PATCH314 adds `MkvLogGate314.shouldWrite(String)` directly **after** the existing logging-enabled check and **before** any logging file I/O. It keeps the **first** and **every 128th** identity message independently for the three exact prefixes. Estimated retained samples for these three categories on the same observations are ~197 instead of 24,873, without touching the actual DAO calls or conversion logic.

**Never filtered:** `DB_PROMOTE_FAIL`, `DB_PROMOTE_SUCCESS`, subtitle plans/validation, path identity checks, native completion receipts, `MKV_FFMPEG_SLOT_*`, recovery/watchdog, downloads, notifications and user-visible features.

## Tests / release
- Real Java test `patches/local-account/tests/MkvLogGate314Test.java` asserts initial and every-128th samples, independent counters, no suppression of errors/results/subtitle events, and safe null handling.
- `scripts/test_patch312_mkv_recovery.py` asserts the actual Smali hook is *inside the logging sink*, after enabled check and before disk I/O; protected functional gates remain unchanged.
- Full protected GitHub workflow compiles test, app helper DEX, validates original system guards, signs/verifies APK, and publishes direct signed `.apk` in Releases (not ZIP).
- **Build and runtime results must be verified after pushing**; do not claim reduced device CPU or successful Android run without new PATCH314 logs.

## Remaining P0 and P1
The 66 old stranded MP4s and 217 removed sidecars still require causality investigation; the 30 MKVs represent a different download set. Stress-test restart/resume, missing native receipts, parallel queue saturation and exact subtitles. Diagnose high UI layout/GC/RenderThread loads separately. Keep PATCH311's ART register fix and details→player→same details back navigation.
