# PATCH308: identify the high-CPU threads during zero-active-download baseline

## Evidence from PATCH307's first user-uploaded log
`CL/log/load_diagnostics.main.jsonl` confirms the build tag PATCH307 and a main-process-only run with **no new download starts/completions**, 0 download requests in the latest queue scans and `downloads_tab=false` on the recorded intervals. RSS increased 120,180 → 398,804 KiB and OS thread count increased 50 → 184 over approximately 105 seconds. The CPU reached 11,316 ms over 15,008 ms of wall clock in one interval, even outside Downloads. These are observations, not causal proof. `/proc/self/io` was inaccessible on this Android test device (all metrics -1). `:filedownloader` produced no separate log in the idle experiment; that process may not have started and cannot be assumed defective.

The original `Restart108.tick` has an intended backoff progression and still calls Queue110.scan(), reconciliation and dependencies during its startup retry passes even with 0 pending. **Do not remove its startup repair or alter MKV/download/notification scheduling before attributing the actual CPU use.**

## Additional passive sampling
- `ThreadCpuDiag308` samples at most **256** `/proc/self/task/<tid>/stat` files, every *second* 15-second diagnostic interval (~30s), reading at most the first 1024 bytes per thread. It returns process-local Linux tick deltas with **six** highest-consuming thread IDs and **allowlisted generic categories only**, not original thread names or stacks. `tasks_capped=true` alerts if the limit was reached; if restricted, `available=false`.
- `LoadDiag307` records `thread_cpu` summaries, `proc_io_accessible`, and separately labelled `uid_network_rx_delta` / `uid_network_tx_delta` from Android's TrafficStats APIs, or -1 when inaccessible. **Network is app-UID-wide across processes, not a replacement for file I/O.** No privilege escalation.
- Existing PATCH307 per-process metrics and normal UI `ui_performance.jsonl` are unchanged apart from the build label PATCH308, so comparisons should use stable metrics, not raw number of records.
- All profiling runs on a single low-priority executor. No UI-thread file reads, no audio/video content, titles, network URLs, user IDs or raw thread names.

## Test plan
1. Install PATCH308 over the same package without deleting app data. Run several minutes normally **without manually starting new downloads**, browsing Home, Details, Search and Profile, and record whether the app remains responsive.
2. Upload `load_diagnostics.main.jsonl`, `ui_performance.jsonl`, `downloads.log`, `.mkv_export.log`, and if any new process starts `load_diagnostics.filedownloader.jsonl` to `alwansan/CL/log`.
3. When ready, intentionally repeat with many concurrent downloads. Compare thread CPU categories/IDs, max RSS, thread count, queue scan activity, UID network counters, and UI worst frames **by scenario**, not merely by APK version. Capture ANRs with LogFox.
4. Avoid clearing user data, cached videos or work files for the benchmark.

Known limits: Android may block some `/proc` reads and UID counters. Thread IDs are ephemeral; the profiler needs two successful snapshots to calculate deltas. CPU tick units are not converted to ms; compare relative thread CPU **within this device only**. Sample cap can exclude some TIDs when there are >256 threads.
