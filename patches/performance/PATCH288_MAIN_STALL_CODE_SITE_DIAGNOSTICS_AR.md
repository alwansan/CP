# PATCH288 — Identify main-thread stall call sites without user data

## Evidence: PATCH287 trace, latest CL
- 2,146 frames, 49 over 100 ms (22 >200ms), maximum 670.31ms, unknown delay up to 653.63ms, main thread heartbeat 1,063.97ms (sample periods and frame periods can be different).
- 10 ART GC runs, cumulative 1830ms total GC time; **0 blocking-GC runs**. Approximate ART total time alone does not prove the application UI was stopped.
- 94 nested card creations, max creation 30.52ms. Home worst frame with max 473.41ms unknown ~456ms had **zero** GC and card creations in same window. Do not causally attribute it to any one component.
- 9 sampled main-thread stack category observations: view=3, app=5, binder=1; current coarse grouping cannot identify source methods. Framework FrameMetrics UNKNOWN_DELAY_DURATION is time waiting for UI thread to become responsive.

## PATCH288 implementation
- In existing **4Hz** heartbeat, when main thread has not acknowledged a probe for >100ms, take at most one stack inspection per 500ms on the existing background writer thread.
- Write `main_stall_sample` event with thread state, bounded wait duration, fixed screen label, coarse bucket, **up to 3 app compiled class#method identifiers**, plus 1 selected framework class#method identifier. No method arguments, URLs, account/video titles, ID values, paths, line numbers, local variables or full stack traces. Truncate each identifier at 160 chars; JSON-escape content.
- Prior per-window numeric counters remain intact, report parser handles mixed versions, and offline test checks counts/most-common call sites.
- No change to runtime image, layout, navigation, adapter caching, themes or click behavior. The diagnostic is intended to localize stalls before making high-risk performance changes.

## Important
Android sources: [FrameMetrics UNKNOWN_DELAY](https://developer.android.com/reference/android/view/FrameMetrics) and [ART runtime stats](https://developer.android.com/reference/android/os/Debug#getRuntimeStat(java.lang.String)).
Device validation is essential. Keep changes on `feature/ui-performance-optimization`; never merge to `main`.
