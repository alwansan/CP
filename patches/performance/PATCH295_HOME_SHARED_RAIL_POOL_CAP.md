# PATCH295 — Bounded shared horizontal video holder pool (Home only)

## CL evidence
PATCH294 run: 7,094 frames, 22 >100ms (0.31%), 3 >200ms, worst frame 284.72ms, 176 new horizontal video holders, worst creation 14.73ms. PATCH293: 9,977 frames, 57 >100ms (0.57%), worst frame 316.32ms, 284 holders. These are different user workloads; **do not treat as controlled improvement**.

Most slow PATCH294 Home windows correspond with batches of 10-12 new horizontal holders. Current `vt1` Home Fragment owns a `RecyclerView.RecycledViewPool` and shares it across child `HorizontalScrollVideosView` rows through `yt1`. Current bundled RecyclerView `RecyclerView$s$a` initial `b` capacity is 5 for each type (same as Android default).

## Scoped tuning
- When `vt1` creates its existing **per-fragment** shared pool, increase capacity of only viewType `0x7f0d008f` (horizontal video card, verified `jj.getItemViewType()`) from **5 to 10**. Extra retention at most 5 holder instances per current Home pool. No application-static pools, no new pooled classes, no changes to layout, card appearance, gestures, click listeners, adapter data, callbacks, pagination, or per-RecyclerView item cache.
- In this bundled obfuscated androidx implementation `RecyclerView$s.a(I)` obtains its per-type record and `RecyclerView$s$a.b` is the max size. We use those verified direct references only at Home construction, never per frame.
- Existing typed class linkage and signed APK DEX checks must pass, including intact `Continue106$$ExternalSyntheticLambda3`. No changes to earlier crash site.

Android reference: https://developer.android.com/reference/androidx/recyclerview/widget/RecyclerView.RecycledViewPool

## Validation on device
Check Home row/back and forth scroll, Continue watch rail, posters, tapping card, navigation back, scroll memory, and compare `rail_card_create_count`, `frame_max_ms`, `over_100ms` over similar interactions. This is a candidate improvement, not a guaranteed improvement. More holder reuse may increase memory slightly. Main remains untouched.