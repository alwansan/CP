# Nuvio-inspired Home Rebuild — Phase 1 (2026-10-29)

## Source and scope
Base: `feature/local-account` commit `82d7f67037f67659115d41782d3a9b5bf4e0bd02`.
Target: `feature/nuvio-home-rebuild`. Reference: NuvioMedia/NuvioMobile `cmp-rewrite`.

**This is an initial, reversible visual/performance pass, not a claim that the legacy home presentation and adapter have been completely replaced.** The data adapters and navigation business logic intentionally remain active in phase 1 to avoid breaking video opens, show-more, continue-watching, deep links, categories, search, the local account and notifications.

## Current home anatomy / functional inventory
- `HomeActivity` provides `activity_home.xml` and the four destinations: Home, Categories, Search, Profile. The optional casting button and service-down banner are wired into generated view-binding.
- `fragment_home_root.xml` hosts the nested home navigation graph and toolbar.
- `fragment_home.xml` hosts one vertical `RecyclerView`; `HomeItems` includes featured slider, featured movies, featured series, recently added, ads, franchise collections and groups.
- Home feeds contain horizontally scrolling custom rows; selecting a poster, hero button, franchise or show-more entry triggers native navigation.
- Main source is an APKTool-decompiled XML/Smali project. Nuvio's Kotlin Compose UI cannot safely be imported directly into this binary project.

## Important performance finding
Previously `home_page_main_recycler` was set to `wrap_content` under a root with unconstrained bottom. That can produce unnecessarily large/expensive measurement of a feed containing nested carousels. Now it is strictly bounded by top/bottom constraints with `layout_height=0dp`. Removed live announcements from the hero carousel; disabled dot animations in XML and removed the adapter's forced animated indicator mode and prolonged 800 ms image crossfade in the hero; disabled layout-transition churn in the home activity variants. These are plausible optimizations **not measured FPS improvements**.

## Design decisions
- Nuvio-inspired Graphite/Arctic midnight surfaces, spacious 22dp rounded hero and high-contrast white play CTA.
- A detached pill-shaped bottom navigation with a translucent dark gradient, fine glass-like border, rounded selected item, correct tab labels, and all original IDs/click handlers.
- Deliberately **no real backdrop blur** in phase 1: live blur behind a constantly scrolling RecyclerView could reintroduce the exact dropped frames this work aims to remove.
- UI and new resource names use `nuvio_*`; no upstream Nuvio Compose classes were copied, and original data bindings remain structurally compatible.

## Required next engineering phase
1. Inspect obfuscated HomeFragment/adapter and video navigation contracts, and document the data API-to-view mapping in tests.
2. Implement a genuinely new bounded RecyclerView adapter with stable IDs, view-type-specific pools, incremental DiffUtil updates, poster image-size requests, cancellation and prefetch limits.
3. Replace all legacy home-only item binders and renderers; only then remove unused `HomeItems`/legacy home classes. Never remove shared smali classes blindly.
4. Add JankStats / Macrobenchmark (cold launch, first visible content, scroll p50/p95 frame durations, dropped frames, click-to-details, back-to-home) on real hardware. Test both 60Hz and 120Hz, cold/warm cache and RTL.
5. Compare side by side with screenshots from `alwansan/CL/img`; validate 4 tabs, casting, login state, notifications, navigation restoration, details and playback before merging.

## Native renderer follow-up
The home fragment now disables its default RecyclerView item animator during feed updates, avoiding expensive change animation/rebind passes. The original home screen forcibly hid its entire subtree from accessibility services; that override was corrected without changing any binding IDs. The old main adapter also forced indicator animations every bind; that setting is now owned by the non-animated XML widget.

## Compatibility guards
Do not rename: `home_bottom_nav`, `fragment_container`, `home_page_main_recycler`, `slider_item_root_constraint`, `videoThumb`, `item_slider_title`, `item_slider_description`, `item_slider_watch_now`, `home_page_slider_recycler`, `pageIndicatorView` or the `binding_N` tags. Generated data binding needs them.
`layout/activity_home.xml` and `layout-v22/activity_home.xml` must be changed together.
CI: `.github/workflows/nuvio-home.yml` builds, signs, verifies, uploads an APK and publishes a prerelease for this feature branch. APK availability depends on that workflow passing.
