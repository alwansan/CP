# Nuvio home rebuild — Phase 2, 2026-10-29

Branch: `feature/nuvio-home-rebuild`. Base: `feature/local-account`.

## Verified code-path findings
- `activity_home.xml` and `layout-v22/activity_home.xml` originally anchored `fragment_container` ABOVE `home_bottom_nav`. This categorically prevented home art from scrolling behind floating navigation. Both now anchor to the parent's bottom.
- Home's vertically scrolling RecyclerView has `112dp` bottom content padding and `clipToPadding=false`. The footer is now an overlay with a translucent graphite surface. Categories, profile and search have matching bottom safe content padding so last cards aren't blocked by the overlay.
- Nuvio's `HomeScreen.kt` uses keyed lazy scrolling, lifecycle-aware state and image loading. Its Android floating bar draws translucent glass with Haze and optionally a RuntimeShader on API 33+. CP is a decompiled XML/Smali Android app, so Compose's Haze/RuntimeShader behavior is **not** automatically available. Current bar uses translucent graphite glass **without dynamic backdrop blur** to avoid reintroducing jank.
- Dark neutral design tokens: background `#17191F`, surface `#24282F`, translucent nav `#B5383B43`/ `#AA30333D` gradient, subtle border and selection highlight.
- Posters: shortened Fresco image fades (800ms → 120ms), reduced card elevation (8dp → 2dp), removed permanent marquee on the main home shelf and card labels.
- Horizontal home shelves now share recycled poster holders with their parent screen RecyclerView; no static pool or Activity leak. Animators disabled and child view cache limited.
- Native navigation, binding IDs, show-more, continuation, local account, casting and video click callbacks remain wired.

## Performance caveats and next steps
This is a tangible performance/resource-layout change, **not proof of a 60/120fps device result**. The current Smali home `yt1`, child `jj`, `fo3` and `ej.e` still synchronously calculate DiffUtil updates. Avoid skipping equality checks without validating mutable VideoModel, progress and local-account state. A proper isolated home adapter + async diff snapshots, controlled image requests and cold/warm scroll Macrobenchmark remains the next architectural replacement.

## Test matrix
- Scroll home behind nav; pause on posters to see translucency
- Reach last poster with full visibility; repeat in categories/search/profile
- Fast horizontal fling / vertical fling / opening item / backing out
- RTL + LTR, 60Hz + 120Hz, dark theme and system bar insets
- Verify content updates, episode resume, local account and notification navigation
- Check GitHub Actions APK build and DEX integrity; validate performance on real device
