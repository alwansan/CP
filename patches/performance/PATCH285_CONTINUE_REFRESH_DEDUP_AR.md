# PATCH285 — Avoid unnecessary full Home relayout on resume

Latest [CL log](https://github.com/alwansan/CL/blob/main/log/ui_performance.jsonl): PATCH284 session `1793336515521`:
- 3,647 frames; 30 over 100ms and 15 frames with `UNKNOWN_DELAY_DURATION >=100ms`.
- Home: 326 frames / 21 over 100ms. Peak frame 728.33ms; peak Layout 346.5ms; max same-window unknown 237.12ms; heartbeat delay as high as 693.6ms.
- Home transitions repeatedly produce three >100ms frames together. ThemeEngine is not implicated by the stack samples (one view and one Binder sample only).
- In Pro-only `Continue106.refresh`, called from `vt1.onResume`, `notifyDataSetChanged()` was unconditional, even if the continue rail and backing Home list had not changed. Method time is low but the adapter invalidation can drive additional downstream layout/rebind, which was not counted by its synchronous timer. The original 5.3.3 lacks Continue106.

### Targeted fix
- Keep refreshing the continue rail before deciding, but skip `set(c, ...)` and `notifyDataSetChanged` only if (a) this is the same adapter object via weak reference, (b) the old and new lists are content-equal using Kotlin model `equals`, and (c) a 64-bit in-memory state stamp over continuation entries (IDs, paths, position, duration and last-update time) has not changed.
- When a video progresses, a row is removed, the base Home list changes or a new adapter appears, the full update remains available. No user/content identifiers leave the app. The stamp is transient, not persisted.
- Telemetry adds `continue_refresh_skipped` and `continue_refresh_full` (numeric counters only), so real device logs can prove whether redundant invalidations were suppressed.
- Avoid changing data loading, native video playback, bottom navbar, OLED/Harbor theme or recycler layout. If the trace remains slow after skipped refresh, the next profiling target is actual Home hierarchy measurement / fragment navigation.

Note: this is a **testable causal candidate**, not a proven resolution until PATCH285 device logs are compared.

No merge to main.
