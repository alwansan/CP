# Nuvio Home — Phase 5 (2026-10-29)

Branch: `feature/nuvio-home-rebuild`.

## Changes
- Updated only the `jj` VideoModel poster adapter, overriding `ej.e(list)` so the common `fo3` binding works as before through virtual dispatch.
- Preserves `Enhancements.transform(adapter, list)` before submitting each section list, and preserves original `ej.f/ej.g` equality comparators and `Continue106.itemId` stable-ID behavior.
- Reuses AndroidX AsyncListDiffer + the existing two-worker NuvioHomeDiff executor. Each adapter has an independently guarded generation sequence; stale diffs never apply.
- Initializes the differ with the current transformed `ej.a` list, so first/boundary updates do not assume an empty baseline.
- Collection snapshots are copied and immutable via unmodifiable list wrappers. Underlying mutable VideoModel objects are **not** deeply cloned.
- The update callback swaps the legacy adapter list before notifying, and a completion Runnable swaps even if DiffUtil generates no update events.
- Empty/initial list paths dispatch range removal/insertion immediately.
- Moved `jj` to the existing small secondary DEX group with its new helpers; do not add classes to primary DEX near the 64k reference limit.
- `ej` itself remains unchanged: other adapters keep their original behavior.

## Remaining work
- True live backdrop blur is **not** implemented; the bottom bar still uses translucency.
- Even with background diffs, mutable video progress must be checked on physical hardware, especially when the same VideoModel instances are changed in place.
- Profile 60/120Hz UI frames, memory and rapid repeated feed refreshes; static checks and a signed APK build are not equivalent to device testing.
