# PATCH287 — redundant Home rail title binding + ART GC attribution

## Latest PATCH286 observed
The currently uploaded CL UI trace contains PATCH286 session `1793337905995` (the file was rotated, so do **not** treat its 2306 frames as a directly comparable complete history). In this slice: 2306 frames, 63 >100ms; 105 video-card ViewHolders created, up to 179.51ms; worst 1222.03ms and 1168.53ms unknown delay. Slow frames occur in search/profile as well as Home, often with zero cards created. Stack categories include app (10), view (6), image (5), Binder (2); none alone proves a root cause.

## Changes
1. `HorizontalScrollVideosView.u()` previously creates up to two SpannableStringBuilders, sets TextView text and sets its accessibility description on **every** bind, even when both values already match. Add an idempotent fast path based on `TextUtils.equals` for both displayed and accessibility labels; preserve original logic for first bind and changed text. No view graphics or strings changed.
2. Sample ART cumulative `art.gc.gc-count`, `art.gc.gc-time`, `art.gc.blocking-gc-count`, `art.gc.blocking-gc-time` **on the background writer only**, compute per-window deltas, append numeric counters `gc_count`, `gc_time_ms`, `blocking_gc_count`, `blocking_gc_time_ms`. Baselines update even if the window is not logged, preventing drift from unlogged windows. Android's ART counters are approximate, so don't claim every slow frame is caused by GC.
3. Expand offline analysis and test coverage, preserve older PATCH series, no global cache, no theme changes, no main merge.

## Next
Compare equivalent Home scroll/navigation patterns and look at GC/slow frame correlations. If >500ms UNKNOWN_DELAY still occurs without blocking GC, diagnose main-thread scheduling or native Binder using Perfetto/trace or further fine-grained safe probes.

Android documentation: https://developer.android.com/reference/android/os/Debug#getRuntimeStat(java.lang.String)
