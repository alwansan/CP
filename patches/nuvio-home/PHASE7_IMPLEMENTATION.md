# Phase 7 — Crash fix, scroll performance, and Nuvio home comparison

Date: 2026-10-29. Development branch: `feature/nuvio-home-rebuild`. **Do not merge to main, even after testing.**

## Diagnosed crash
User supplied `ClassCastException: NuvioGlassBackdrop$FrostedImage cannot be cast to kn` in `nl6.v()`.
The exact source `nl6.v(BottomNavigationView, String)` expects `bottom.getChildAt(0)` to be the Material `BottomNavigationMenuView` (`kn`). Phase 6 prepended `FrostedImage` at position zero. This is a verified root cause.

## Fixes implemented
- Rebuilt `NuvioGlassBackdrop` to **never add child views** to the navigation bar. Paints a rounded, tinted, blurred bitmap via the nav's own background Drawable only. The original nav menu remains first child; all taps and avatar refresh routes stay with Material.
- Additional typed checks in `nl6.v` now locate the Material menu if the hierarchy changes, and safely skip unexpected item types instead of casting and crashing.
- Removed the previous 160-ms main-thread `feed.draw()` loop. Sampling is debounced until **950ms after the last scroll**, at **one-sixth resolution**, bounded to **160×40** pixels. Two-pass box blur runs in a **single bounded worker**. Old generations are discarded; the existing XML translucent nav is the fallback for API<31 or Android low-RAM classification. The UI still performs one small viewport capture after idle; it is not a free compositor effect.
- Home poster rails use fixed-size measurement mode, two cached holders, previously established shared recycled pool, and disabled item animator.
- Reworked the home hero into a **full-width, borderless, 490dp high** background with a stronger graphite gradient, larger title and updated primary action spacing.
- Widened poster artwork to 114dp, rounded corners 12dp, removed extra card elevation; section titles use 18sp bold and 16dp header spacing.

## Upstream Nuvio cross-check
Checked current `NuvioMedia/NuvioMobile` `cmp-rewrite` sources:
`HomeScreen.kt`, `HomeHeroSection.kt`, `HomePosterCard.kt`, `MainTabsDestination.kt`, `NavigationBar.kt`, `GlassBarSurface.kt`.
Nuvio uses Compose lazy lists, a mobile hero based on ~82% viewport height, scroll-aware floating nav, Haze blur and (API 33+) RuntimeShader refraction. Cinemana is a legacy XML/Smali app and cannot directly import Compose components. This phase adds corresponding styling and reduces overhead without changing navigation architecture.

## Parity work still outstanding
Full UI parity is **not complete**: viewport-relative hero sizing, layout settings, adaptive scrolling nav, collection/folder shelves, animated transitions, custom clearlogos, Nuvio loading skeletons, and live shader refraction are future tasks. Hardware tests remain necessary for 60/120Hz scrolling, data refresh, login/avatar refresh and background-sample cost. Successful APK build/DEX/signature tests do not prove on-device FPS.

## Safety
All changes are isolated to `feature/nuvio-home-rebuild`; leave `main` and `feature/local-account` unchanged.
