# Nuvio Home — Phase 6 | selective GPU-backed frosted navigation

Date: 2026-10-29. Branch: `feature/nuvio-home-rebuild`.

## Implementation

The translucent footer remains the default XML implementation. On Android 12+ (API 31), non-low-RAM devices opt in to a **real** sampled backdrop blur:

- `NuvioGlassBackdrop.install(Activity)` hooks into `HomeActivity.onCreate` after the existing home view is initialized.
- Resolves `home_bottom_nav` and `fragment_container` and inserts two non-interactive children *before* the existing nav menu: blurred image then graphite tint.
- Captures ONLY `FragmentContainerView` into a viewport-aligned, quarter-resolution bitmap corresponding to the navigation's exact on-screen region, never screenshots the activity root or navigation controls.
- Uses Android 12 `RenderEffect.createBlurEffect` on that sampled image, **not** on the scrolling page.
- Global scroll/layout listeners coalesce refreshes to a maximum of about 6 fps (`160ms` interval). Bitmap sampling is reused and bounded (at most 1024x256 pixels). It does not run a continuous frame loop.
- Listeners and callbacks are removed when detached. Runtime rendering/memory failures preserve the translucent XML surface.
- API < 31 or Android low-RAM devices continue using Phase 3's cheap graphite translucency, avoiding runtime crashes and heavy software blur.
- No new permissions, native libraries or network requests; the image is not stored on disk. Helpers are compiled into secondary DEX with existing pinned Java/D8 toolchain.
- Nav's original sizing, full-screen feed overlay, cast button, label/icon behaviors, and current account/progress features stay unchanged.

## Limitations and validation required

- This is a throttled approximate backdrop using downsampled software view rendering + a GPU blur of the nav snapshot; not a zero-cost direct compositor blur. It will not capture hardware-only SurfaceView content (not normally in the home feed).
- Visual fidelity (especially rapid scrolling, 120Hz smoothness, RTL, dark contrast) and frame timing must be measured on physical devices before claiming production readiness.
- There is no live blur on pre-Android-12 devices. Existing translucency is intentional fallback.
- Does not modify Android platform `Window.setBackgroundBlurRadius` because that API blurs **behind windows**, not sibling content beneath a navbar.
