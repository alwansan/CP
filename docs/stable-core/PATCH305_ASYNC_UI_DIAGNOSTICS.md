# PATCH305 — restore nonblocking best-effort file diagnostics

## Grounded reason
Previous PATCH299 samples repeatedly included Main Thread stalls in file I/O while downloads were running; on stable-core PATCH302–304, `DownloadTrace.log` still opens, flushes and closes `downloads.log` plus `diagnostics.log` synchronously, potentially in the UI thread. The new LogFox reports show three startup ANRs, but lack the blocked thread stacks, so this logger is a **performance candidate**, not a proven cause for those ANRs.

## Limited fix
Port only the byte-identical PATCH301 `DownloadTrace301` and `DownloadTrace301$Log` helpers and the **17 inserted Smali lines** in `DownloadTrace.log` from `feature/ui-performance-optimization`. Main calls schedule best-effort file-log messages on a serial worker with up to 256 outstanding entries; non-main callers retain original file logic; output formats unchanged. All actual download task, persistence, playback, notification, MKV, subtitles and queue paths are untouched. The logger may drop optional records only when diagnostic backlog exceeds 256; it never drops tasks.

Unrelated PATCH299 Continue106 cache, PATCH300 lambda aliases and service code were **not** ported. CI validates no changes outside known touched paths and verifies DEX/signing. No device-run claim.

Compare performance with PATCH304 under the same downloads and navigation workload; if a device regression appears, rollback to PATCH304 Build #8. Track `CinemanaUITrace` frames and `CinemanaStartupTrace` process startup in LogFox.