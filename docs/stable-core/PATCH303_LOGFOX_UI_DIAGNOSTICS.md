# PATCH303 — UI and startup diagnostics restored without changing queue logic

## LogFox evidence (2026-10-30, Android API 35)
- Three separate **startup ANRs** from `CL/logfox`: one in `com.cinemana.pro`, two in `com.cinemana.pro:filedownloader`.
- All report **failed to complete startup**. Logs contain CPU/pressure summaries, **not** an app main-thread stack dump. No attribution of root cause to a Java method is possible yet.
- In one download-process ANR, Android MediaProvider used **256%** CPU during a measurement window, with very many worker threads. Correlation with media scanning and large file counts is a plausible lead, not proof.
- Do **not delete downloads, cancel tasks, disable notifications, pause download services, or manipulate DB/MediaStore** based on these ANRs.
- Baseline PATCH274 + detail XML fix PATCH302 omitted the comprehensive UI telemetry present in PATCH301. Compare `feature/ui-performance-optimization` before moving changes.

## What this patch does
- Backports only the former `UiPerfDiag` numeric frame/GC/CPU/main-thread heartbeat/logger from PATCH301 and pins build label to PATCH303.
- Installs at `HomeActivity.onStart` (the earlier performance branch used the same hook).
- Marks `DownloadsFragment` entry/exit for screen-specific frame measurements. **Does not hide or suspend off-screen download tasks or modify the adapter**.
- Adds six tiny **Logcat-only** timestamps at application attach/create/bootstrap boundaries, including secondary `:filedownloader` startups; no disk write on the UI thread.
- Backports `analyze_ui_performance.py` for log review and adds static hook test.
- Retains output rotation (1.5 MiB current + one previous), background file writes, 4Hz main-thread heartbeat and 10s flush. No per-frame disk I/O, downloaded content names, URLs or account data in UI log.
- Leaves `CnmDownloadQueue`, `MkvExporter`, FileDownloader, `DownloadTrace`, `Continue106`, and manifest untouched.

## How to test
1. Install PATCH303 without deleting app data; compare normal Home, detail, search, downloads, switching away from downloads.
2. Collect `Cinemana/work/log/ui_performance.jsonl` and `ui_performance.previous.jsonl` plus Android LogFox traces tagged `CinemanaStartupTrace` and `CinemanaUITrace`.
3. Repeat identical journey **without downloads only after independently backing up the data** if choosing to delete tasks. Do not delete downloads solely for diagnosis.
4. Look for startup milestone missing/long gaps; correlate Android process PID/session, startup ANRs and CPU spikes with main-frame probes. A failed start before HomeActivity cannot be seen in UiPerfDiag; it requires Logcat/ANR traces.
5. CI build/DEX signing is not a device runtime test. Preserve main and both reference branches.
