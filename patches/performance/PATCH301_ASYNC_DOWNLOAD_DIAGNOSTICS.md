# PATCH301 - Nonblocking diagnostic file logging on UI thread

PATCH299 user logs: 188 main-stall samples, 176 on details during downloads; 86 I/O-bucket samples. DownloadTrace.log synchronously writes downloads.log and diagnostics.log, including file opens and flushes under a shared monitor.

PATCH301 inserts a main-looper check at the beginning of DownloadTrace.log, after its existing enabled and context guards but before any path/file I/O. On main only, schedule the SAME original logger on a single background executor, with up to 256 pending messages, Application context only, and a try/catch fallback to the previous write path if the worker cannot be initialized. Off-main callers retain old synchronous logging; file formats remain unchanged. Overflow drops only best-effort diagnostic messages, never download tasks, progress state or manifest transactions.

Do not alter CnmDownloadQueue.enqueue, MkvManifestStore.registerTask, persisted download state or file names. The latter still uses synchronous SharedPreferences commit and needs separate testing before any change.

Static guards verify main-thread dispatch precedes FileOutputStream and the capped executor. Signed APK DEX linkage guards verify the worker, Runnable and BOTH Continue callback descriptors. User must test actual download start and detail/Home navigation; CI success alone is not proof of runtime stability.

main untouched.
