# PATCH284 — Unexplained Main Thread stalls + measured ViewHolder creation

## Latest CL PATCH283 evidence
- Session: `1793335829041`. 4,030 frames; 93 frames above 32ms and 31 above 100ms. Longest frame: 386.62ms. Home peak layout: 137.59ms, max heartbeat delay: 338.46ms.
- Home refresh max 1.39ms, home inflation max 3.42ms, DiffUtil max 0.12ms: these do **not** explain the stalls.
- 3 slow-main-thread stack samples fell into the generic `system` bucket. Old categorizer took the first matching generic frame, losing more specific clues.
- Home ViewHolder creation peaks: slider type 0 = 29.39ms; advertisement type 2 = 25.65ms; horizontal type 1 = 9.86ms. This is a smaller but measurable optimization target.
- FrameMetrics total times regularly exceed all already-measured phases; Android `UNKNOWN_DELAY_DURATION` measures waiting for the UI thread to process a frame. We were **not** logging that phase. <https://developer.android.com/reference/android/view/FrameMetrics>

## PATCH284
1. Record `FrameMetrics.UNKNOWN_DELAY_DURATION`, `INPUT_HANDLING_DURATION`, `ANIMATION_DURATION` **from the same worst frame per window**; also count frames with >100ms unknown delay. All are API 24. Do not add stage times and claim equality with TOTAL_DURATION; some timings overlap.
2. Improve background-only stalled-main coarse stack classification to consider all frames and prioritize explicit `theme`, `binder`, `lock`, `io`, `image`, `view`, `app` over generic framework frames. Do not log any actual stack text, names of films, URLs or user data. A category is a hint, not a root-cause proof.
3. Increase retained offscreen ViewHolders in root Home RecyclerView and each horizontal carousel from default 2 to **3**. This does not eagerly inflate more views, change on-screen layout, disable animations or touch handling. Note extra cached holder memory, bounded to one extra per recycler.
4. Extend offline report and mixed-version tests, preserve PATCH277–PATCH283 compatibility and signed standalone APK GitHub release.

## Next interpretation
- High worst-frame `unknown` and `unknown_over_100ms` => prioritize main-thread blocking work / scheduling, rather than rendering.
- High `layout` with low `unknown` => layout hierarchy / nested RecyclerView measurement.
- High `command/swap` with low unknown => rendering/GPU; Perfetto trace if needed.
- Test identical scroll/navigation and upload next CL log. Never merge to main.