# PATCH307 — Baseline now / downloads stress later

## Goal
Record a **baseline while the user is not intentionally stressing downloads**, then measure the same app under high concurrent download load. Preserve ALL original download, MKV export, recovery, notification, background service, account and queue code.

## New passive telemetry
`LoadDiag307` starts immediately after the original Application superclass `onCreate()` in **every Android process** (main and `:filedownloader`). A single low-priority daemon samples every 15 seconds and writes one bounded JSONL line per process. No network, file tree scan or changes to downloaded files. The existing UI diagnostic file remains unchanged apart from changing the build label to PATCH307 and forwarding lightweight screen markers.

Files in `/storage/emulated/0/Cinemana/work/log/`:

- `load_diagnostics.main.jsonl` + `load_diagnostics.main.previous.jsonl`
- `load_diagnostics.filedownloader.jsonl` + `load_diagnostics.filedownloader.previous.jsonl`
- `ui_performance.jsonl` (existing FrameMetrics, screen, layout/draw, GC, UI stalls), `ui_performance.previous.jsonl`
- `downloads.log`, `.mkv_export.log`, `diagnostics.log` (original existing logs)

Sampling includes: PID/process, screen/visibility and whether Downloads tab is open; process CPU elapsed delta vs wall clock; resident/high-water memory; Java/native heap; OS thread count and context switches; per-process IO read/write counters; change in size of download, MKV and general app log files; incremental **bounded 32 KiB** event counting (download progress, started/completed, queue scan, portable save and MKV queued), including skipped byte counts so high-throughput samples do not imply completeness. A separate 2-second main-looper heartbeat in each process logs a `main_blocked` event only when delayed >1.5 seconds, at most once in five seconds, with at most three sanitized app method names. Existing UI frame data remains in `ui_performance.jsonl`.

Rotation: 512 KiB current + 512 KiB previous **per process**; no unbounded log file and no per-download-event logging added. If Android denies writing to shared work/log storage, logger falls back to private app files and sends a numeric-only Logcat mirror tagged `CinemanaLoadTrace`. After a process crash its last unfinished sample may be absent; Logcat markers `CinemanaStartupTrace` and external LogFox ANR reports remain complementary.

## Suggested comparison
1. Install PATCH307 as an update (do not clear data); preserve downloads. First **baseline**, no manually triggered heavy download burst. Browse Home, continue-watching, details, categories, search, profile, downloads (briefly), then return Home. Let the app run at least 1–2 minutes.
2. Upload fresh `log/` files with the new `load_diagnostics.*.jsonl` plus `ui_performance.jsonl` to `alwansan/CL/log`. For crashes and freezes, upload LogFox logs to `CL/logfox`.
3. Later, intentionally stress downloads for the same rough duration/screens, with the same app version. Upload logs again. Compare CPU/wall, thread growth, RSS, IO deltas, queue scans and worst-frame metrics. A faster/slower result alone does not prove causation.
4. Do **not** delete existing work files or clear app data for the experiment. No benchmark requires that.

## Guardrails
- All diagnostic file IO, process metric reads and existing log inspection execute on one low-priority background executor, never on UI or FileDownloader service callbacks.
- No raw download paths, episode titles, task IDs, user identifiers, stack arguments, URLs or file contents are recorded.
- No periodic scanning of `Cinemana/work`: only 3 known existing log file sizes and a capped 32 KiB incremental sample of `downloads.log`.
- Startup hooks are additive, with no changes to the worker/download business logic.
- GitHub Actions compiles and verifies final APK dex and signing, but only device Logcat/LogFox can validate runtime startup ANRs.
