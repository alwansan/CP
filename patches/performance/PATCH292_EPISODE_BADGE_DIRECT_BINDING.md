# PATCH292 — Reduce repeated episode badge reflection during Home card binding

## Evidence (latest CL PATCH291)
- Single captured PATCH291 session: 6,085 frames, 47 frames >100ms (0.77%), max 332.88ms. PATCH290 single session 4,389 / 22 (0.50%) / 405.85ms; different workloads, **not** a controlled A/B test.
- Home screen: 595 frames, 32 >100ms, multiple >200ms windows with FrameMetrics UNKNOWN_DELAY large and small same-frame layout stage.
- A blocked main-thread sample shows `Continue106.call -> Episodes107.badge -> Continue106.paint` with framework `Class.getDeclaredMethodsUnchecked`. Two other stalls observed in RenderNode/HardwareRenderer and Binder paths; do not attribute them to badge.
- No reported prior PATCH289 NoClassDefFoundError in latest CL diagnostics or UI records.

## Safe targeted changes
`Episodes107.badge(Object,boolean)` only:
- Replace reflective `getParent()` with `View.getParent()`, preserving original exception guard, and avoid casting a non-View parent.
- Replace reflective `findViewWithTag` with documented `View.findViewWithTag`, preserving the same tag constant and lookup scope.
- If badge label is already hidden, do not repeat `setVisibility(GONE)`.
- When badge label is visible: `TextUtils.equals(oldText,newText)`; skip `TextView.setText(CharSequence)` when unchanged, and skip `setVisibility(VISIBLE)` when already visible.
- **Keep** original TextView construction, tag, layout params, font, padding, elevation, other badge logic, and all other reflection paths exactly as before.
- **Do not modify** `Continue106.card`, `Continue106$$ExternalSyntheticLambda3`, DEX packaging or callback post after PATCH289 crash. Signed APK test checks class linkage.
- Mark build PATCH292 in numeric diagnostics and extend existing offline report acceptance. Compile source, full APK, DEX, and sign/release on feature branch only.

## Next-device checks
Confirm episode badge and hide/show behavior when progress changes or section changes, no crash, compare equivalent screen navigation and CL main-stall samples. Avoid claiming measured performance before device run.
