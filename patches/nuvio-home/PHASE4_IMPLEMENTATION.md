# Nuvio Home Phase 4 — asynchronous home section differences
Date: 2026-10-29. Branch: `feature/nuvio-home-rebuild`.

## Discovery and change
The generated `rj1.i()` binding recalculated the home section diff using `androidx.recyclerview.widget.j.a()` on the main thread whenever LiveData invalidated. This is a potential jank source when section lists are refreshed.

This phase replaces the synchronous call with `NuvioHomeDiff.submit(yt1, list)`, using the `AsyncListDiffer` internals already bundled in the app (e/c/d) with no additional libraries. A shared two-thread pool calculates list differences. Each submission copies the list collection, and a generation sequence discards old results. Empty/initial content updates are dispatched immediately. The update callback synchronizes legacy `yt1.c` with the committed AndroidX list before notifying the RecyclerView, preserving existing binder logic. Identity and content comparisons match the previous implementations (Kotlin equality; horizontal title comparison).

The generated binding, navigation callbacks, item IDs, player routes, local-account and resume integration are otherwise unchanged.

## Regression verification
`patches/nuvio-home/test_home_ui.py` now checks the async wiring, legacy adapter update ordering, initial/empty list fast path, and that the generated binding never calls DiffUtil directly. GitHub Actions additionally compiles, signs, zip-aligns and validates DEX integrity.

## Known limits
- This snapshots the **collection**, not mutable VideoModel objects. The equality/comparison contract was not changed. On-device tests must verify live progress refreshes and repeated feed updates before merging to a stable branch.
- Nested poster rows still call synchronous DiffUtil from `ej.e()`, which may be a separate performance hotspot.
- The floating navigation has a translucent, glass-like color overlay but still does **not** implement live backdrop blur.
- Real 60/120Hz frame timing, poster cache/memory measurement and RTL validation remain required before claiming performance gains.
