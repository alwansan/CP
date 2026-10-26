# Liquid Glass — Phase 1 device acceptance checklist

**Status: NOT RUN ON A PHYSICAL DEVICE.** Complete this checklist against the signed QA APK before removing Draft status from PR #2. A successful CI build is not a substitute for device validation.

## Candidate build

- PR: https://github.com/alwansan/CP/pull/2
- Feature branch: `feat/liquid-glass-phase1`
- Latest validation workflow: https://github.com/alwansan/CP/actions/runs/40266612699
- QA artifact (signed APK and SHA-256 file): https://github.com/alwansan/CP/actions/runs/40266612699/artifacts/12626014740
- APK SHA-256: `e3ebc127f90ac998e65f41ddf5bc5998212a5494e93542e65355cd94755f3534`
- Package baseline from the decompiled project: `com.cinemana.pro`; app metadata lists version code `50382` / version name `6.0.0`.

The APK is signed with the repository's Android Debug certificate for QA. If Android refuses to update an installed app due to a signing-certificate mismatch, do not uninstall a daily-use install without first backing up user data/preferences; prefer a spare test device or a deliberately backed-up test install.

## Record before testing

| Field | Result |
|---|---|
| Tester / date | Not recorded |
| Device / manufacturer | Not recorded |
| Android version / API level | Not recorded |
| Screen resolution / density | Not recorded |
| Language: Arabic RTL / English LTR | Not recorded |
| Font scale | Not recorded |
| Navigation mode: gesture / 3-button | Not recorded |
| Accessibility: TalkBack / keyboard / D-pad | Not recorded |
| APK SHA-256 checked against value above | Pending |

## Test cases

Mark each case PASS / FAIL / BLOCKED and attach screenshots or logs for failures.

| ID | Test | Acceptance criteria | Status |
|---|---|---|---|
| LG-01 | Install and first launch | APK installs; app starts without crash or resource inflation error. | NOT RUN |
| LG-02 | Main navigation appearance | Shell is clipped to the intended rounded shape; no square corners, white seams, unexpected padding, or visual clipping. | NOT RUN |
| LG-03 | Navigation destinations | Home, Categories, Search, and Profile all open their expected destinations; selected icon/label tint remains correct. | NOT RUN |
| LG-04 | Tap and back-stack behavior | All four destinations remain responsive; back navigation and repeated taps do not leave a stale fragment or overlay. | NOT RUN |
| LG-05 | Bottom system inset | Navigation shell and items remain clear of gesture handle / system navigation area in gesture and 3-button modes. | NOT RUN |
| LG-06 | Large text and RTL | Arabic labels align correctly at default and enlarged font scales; labels are not cut off, overlapped, or obscured. | NOT RUN |
| LG-07 | Contrast across home content | Labels and icons remain readable against the available dark/light/high-saturation content; no poster/video pixels are visibly altered by the shell. | NOT RUN |
| LG-08 | Theme regression: Classic / Harbor / OLED | Switching each existing mode does not crash; system bars, background surfaces and navigation remain coherent. | NOT RUN |
| LG-09 | Custom mode persistence | Select Custom, save a recognizable color change, force-stop/relaunch, and confirm Custom remains selected and the saved color remains. Reset afterward. | NOT RUN |
| LG-10 | Screen recreation | Rotate or recreate the activity where supported; navigation stays visible and destinations/selected state remain correct. | NOT RUN |
| LG-11 | Accessibility & focus | TalkBack names destinations correctly; keyboard/D-pad focus remains visible and actionable on devices that support it. | NOT RUN |
| LG-12 | App smoke regression | Search, category details, login/profile, downloads, and one video with subtitles still work. Test Cast/DLNA if available. | NOT RUN |

## Screenshot set required

Capture the same device, resolution, font scale, and navigation mode for each before/after comparison:

1. Home with the default system theme.
2. Home in Arabic RTL at an enlarged font scale.
3. Home in gesture navigation mode and in 3-button mode (if both are supported).
4. Home with each existing app theme: Classic, Harbor/Dark, OLED, and Custom.
5. One Home capture while a visually light or high-saturation item is visible near the bottom navigation, if the app content makes this possible.

Preserve originals; do not recolor or crop away system insets. Name each file with device, API level, language, theme, and font scale.

## Release gate

Do not mark this phase as device-accepted if any of these occur: crash at launch/theme switching; a missing destination; clipped/overlapping labels; nav controls under the system bar; inaccessible focus/TalkBack labels; lost Custom palette; or regressions to playback, subtitles, downloads, login, or casting.

If all cases pass, record Android/device details, attach the screenshots, and then consider progressing to the toolbar/search pilot. Keep optical refraction out of acceptance claims until a shader implementation is actually present and visually verified.
