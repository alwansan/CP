# Nuvio Home — Phase 3 (2026-10-29)

Base: Phase 2 on `feature/nuvio-home-rebuild`. This phase is an incremental correctness/performance pass; it is **not** a completed Compose port or a measured device performance result.

## Code changes
- Home shelf RecyclerView policy no longer calls `setItemViewCacheSize()` and `setItemAnimator(null)` on every shelf rebind: it initializes these settings once per view instance, resetting the flag when detached.
- The child poster RecyclerView shares the parent home RecyclerView pool **only when the pool object changes**. Reattaching the same pool at every bind can detach/attach holders unnecessarily. Parent view types 0..4 and child poster view type `0x7f0d008f` are distinct.
- No change to video click handling, `fo3` list-update handling, nested scroll data contracts or local-account integration.
- Primary Home/Categories/Search/Profile roots now use a consistent neutral dark-gray background; the search ViewPager no longer paints an opaque themed background behind the floating footer.
- The shared toolbar avoids redundant layout transitions while preserving coordinator scroll flags and its click/toolbar bindings.
- The nav's translucent gray gradient has been retuned for the neutral palette. It is still **not a live background blur**.

## Tests
`python3 patches/nuvio-home/test_home_ui.py` verifies:
- Overlay: Activity's fragment fills the parent, navigation is stacked after it.
- Home feed is bounded, can render into padding behind the footer and can scroll fully clear of it.
- Glass surface colors are translucent, not opaque.
- Four primary screen roots, search pager, and common toolbar are consistent.
- Shelf settings/pool comparison are guarded, and shared parent/child view types are disjoint.

The test runs in `.github/workflows/nuvio-home.yml` before build/sign/DEX integrity verification.

## Remaining
1. Device screenshots/video while scrolling slowly **and fast**: overlay overlap, last item, gestures, nav bar insets, readability; compare with Nuvio and the source app. Static tests cannot prove visual correctness.
2. Decide between the translucent gradient (cheaper) and true live background blur. A blur implementation needs dedicated rendering work and hardware FPS measurements; don't mistake glass styling for actual blur.
3. The Smali `yt1` / `fo3` / `ej` data binder remains the old engine; incrementally build a snapshot-based diff and renderer after mapping mutation semantics, navigation and poster sizing. Avoid breaking resume/progress/live notifications.
4. Real hardware cold/warm launch, frame timing, memory usage, 60Hz/120Hz, RTL, casting and local account regression. Build passing alone is not proof of jank elimination.
