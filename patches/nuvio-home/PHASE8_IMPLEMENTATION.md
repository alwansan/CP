# Phase 8: home-feed DiffUtil queue optimization

Date: 2026-10-29. Branch: `feature/nuvio-home-rebuild`. **Never merge with main.**

## Root cause
The Phase 4/5 asynchronous differs reliably move DiffUtil CPU off the UI thread but still schedule a new background diff on each feed/shelf binding, even when the new list comprises exactly the same object references in exactly the same positions. Rapid feed notifications enqueue repeated, eventually stale CPU work, competing with image decoding and on-screen rendering.

## Changes
- Added `NuvioDiffSnapshots.sameReferences`: a cheap O(n) identity and order check before *allocating* a new array/list or worker.
- Both home-section and nested VideoModel poster AsyncListDiffer bridges skip the worker when references are unchanged, while **incrementing the differ generation**, so any earlier pending/delayed diff cannot later overwrite the current committed dataset.
- Added `NuvioGuardedDiffTask`: worker-side generation test before calling AndroidX DiffUtil to avoid CPU for requests that have already become stale. AndroidX's existing main-thread generation gate remains enabled as a second safety layer.
- The central root RecyclerView has a fixed measured viewport, so `setHasFixedSize(true)` avoids needless parent measurements when the section list changes.
- No global `ej` change: other adapters keep original behavior. No changes to stable IDs, VideoModel transforms, click listeners, account state, XML overlay or signed APK key.

## Caveats and remaining UI fidelity
- Reference-based skip is intentionally restricted to the **same item instances in the same order**, not merely equal contents. Changed instances always take the full diff. Like the original object comparator, in-place field mutations of the same VideoModel instance are not treated as a new item change.
- `NuvioMedia/NuvioMobile` uses Compose/Haze; high-fidelity refraction, scroll-sensitive nav label collapse, per-device viewport-relative hero heights, custom clearlogos and more complex section variants are **not implemented**.
- Android CI validates Smali/DEX, signing and static guards; 60/120Hz frame pacing and real-device crashes must still be measured with logcat/Perfetto.

## Testing priority
Navigate quickly between Home, Search and Profile while loading. Scroll vertically and horizontally during image downloads, refresh on resume, verify progress/cover update and old avatar crash is still fixed. Test Android <31 fallback too.
