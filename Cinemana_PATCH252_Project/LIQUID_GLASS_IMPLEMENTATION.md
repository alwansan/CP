# Cinemana Liquid Glass — implementation phase 1

Detailed route-by-route coverage: see [LIQUID_GLASS_SCREEN_MATRIX.md](LIQUID_GLASS_SCREEN_MATRIX.md).

## Scope of this change

This phase lays down an isolated, reviewable base for the Liquid Glass rollout:

- Fixes ThemeEngine142.getMode() so the already-persisted MODE_CUSTOM = 3 survives reading instead of being coerced to Harbor/Dark (1).
- Reports the Custom mode correctly from modeName().
- Adds reusable Android XML drawables for a layered glass shell, a stabilized contrast plate, pressed/focused/disabled/error recipes, a control-state selector, and an error helper line.

The shell and independent scrim are now wired into one limited pilot: the home bottom-navigation container. All other production screens remain unchanged until the pilot passes APK build, screenshot, touch, and accessibility checks. This phase does not claim to ship optical refraction.

## Baseline confirmed in the APKTool project

- The repository contains decompiled APKTool resources and Smali, not a conventional Android Studio source tree with original Kotlin/Java and Gradle modules.
- app/apktool.yml declares minimum SDK 21 and target SDK 29.
- ThemeEngine142 defines Classic (0), Harbor/Dark (1), OLED (2) and Custom (3) and stores custom colors and glass settings in SharedPreferences.
- Before this patch, saveCustom() wrote mode 3, but getMode() changed it to 1 and clamped to 0..2. Several palette accessors already contain explicit mode-3 branches, so that coercion made their Custom branches unreachable.
- isGlassEnabled() and surfaceWithOpacity() implement alpha/opacity handling; they do not sample the backdrop or perform lens refraction.

## Material recipes and exact values

All drawable gradients share a fixed top/left highlight direction. No random or per-component light angles are introduced.

| Token / property | Value | Purpose |
|---|---:|---|
| Shell base start | #C61D2630 | Tinted outer material; 78% alpha |
| Shell base center | #B218202A | Mid-layer tint; 70% alpha |
| Shell base end | #D20B1118 | Dark lower material; 82% alpha |
| Outer hairline | #5CFFFFFF, 1dp | Defines silhouette |
| Top specular start | #2DFFFFFF | Consistent upper highlight |
| Left specular start | #20FFFFFF | Low-intensity left edge cue |
| Inner cross-section stroke | #22FFFFFF, 1dp | Implies edge thickness |
| Stabilized plate start | #B30B1118 | Reduces background variance behind text/icons; 70% alpha |
| Standard shell radius | 22dp | Primary material radius |
| Stabilized plate radius | 16dp | Keeps the plate inset from the shell |
| Focus ring | #FF5DA9FF, 2dp | Crisp outer keyboard/accessibility focus |
| Error structural edge | #FFC53637, 1dp | Non-ambiguous error state |
| Disabled shell | #7A252A31 | Contrast reduction, with all specular layers removed |

The shell drawable must be paired with liquid_glass_scrim as an **independent child plate** behind the primary content. Do not rely on the background drawable alone to guarantee text contrast. On a real layout, use a FrameLayout (or equivalent) with the shell as the outer container background, the inset scrim as a child, and the labels/icons as later children.

## Interaction contracts

- **Default:** shell + stabilizing plate; one top-left light model, fine outer edge and inner stroke.
- **Pressed:** denser fill and reduced highlight band; host view elevation/shadow should be compressed by its state animator when integrated.
- **Focused:** high-contrast #FF5DA9FF ring outside the shell.
- **Disabled:** flat fill and restrained edge; no specular bands.
- **Error:** stable dark fill plus a solid #FFC53637 border and a separate helper line.
- **Hover (where supported):** add a separate recipe only after desktop/TV pointer behavior is confirmed; don't simulate hover with arbitrary opacity alone.

## Important platform boundary: optical refraction

Android shape XML cannot produce true backdrop refraction or per-frame, context-reactive lensing. RenderEffect is API 31+ and AGSL RuntimeShader is API 33+, while this APK declares minimum SDK 21. A complete implementation therefore needs a deliberate rendering layer:

1. Prototype on API 33+ using AGSL/RuntimeShader and a bounded backdrop snapshot/displacement map, clipped to the rounded silhouette.
2. Keep the optical shader limited to small floating controls, navigation, and transient sheets; do not distort the movie frame, subtitles, or long text blocks.
3. Provide an API 21–32 fallback using these shell/scrim resources without shader APIs.
4. Avoid claiming a full Liquid Glass implementation until the lens responds to changing content and animation, and until GPU, memory, contrast, and lifecycle behavior are measured.

Because original Java/Kotlin project sources are absent, do not add a Maven UI dependency or claim that copying its source will be compiled by APKTool. Any native shader must be delivered as compatible bytecode or be integrated into a restored source/build pipeline, then verified through an APKTool rebuild and real-device testing.

## Next implementation phases

### Phase 2 — validate the home navigation pilot
- Build the APK and verify all new drawables compile on the declared minimum SDK.
- Capture before/after screenshots on portrait phones and with large-font/RTL settings.
- Verify bottom insets, touch targets, icon tinting, selected-state indicators and navigation behavior.
- Verify contrast over light posters, dark backdrops, high-saturation artwork and dynamic content before adding any other surface.

### Phase 3 — shader capability gate
- Choose AGSL for API 33+ only after confirming the actual runtime device distribution; otherwise prototype a bounded OpenGL ES / displacement-map implementation.
- Build a no-shader fallback for older devices and a user/system reduced-transparency preference.
- Never run backdrop capture every frame without profiling; prefer invalidation-driven snapshots or a tightly bounded shader input.

### Phase 4 — roll out by surface family
1. Home/search navigation and search/filter controls.
2. Bottom sheets, comments, season/episode selectors, dialogs and menus.
3. Profile/settings controls and download panels.
4. Player controls only, leaving video pixels and subtitles undistorted.
5. Notifications/status and remaining secondary screens.

### Phase 5 — state, accessibility and regression validation
- Test default/pressed/focused/disabled/error states, keyboard/TV focus, touch targets, RTL, font scaling, system bars and navigation.
- Test API 21, 24, 29, 31 and 33+ paths, including shader-unavailable fallback and low-memory devices.
- Re-run video playback, subtitle selection/sync, downloads, cast/DLNA, login and navigation smoke tests.
- Inspect APK build logs and XML resource compilation. Use screenshots and on-device checks; static XML validation alone is insufficient.

## Acceptance gates

- Custom mode reads back as 3; all Custom color accessors return the saved values.
- modeName() reports Custom when mode 3 is selected.
- The new drawable resources compile on the declared minimum SDK.
- The home navigation pilot keeps foreground icons/labels above a separate stable plate and passes screenshot, contrast, touch, insets and navigation tests over varied content.
- The shader-backed version is only labeled Liquid Glass after live backdrop refraction, locked light direction, and state deltas are verified; older Android builds clearly use the non-refractive fallback.