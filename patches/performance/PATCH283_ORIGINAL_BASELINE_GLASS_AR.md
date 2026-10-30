# PATCH283 — original Cinemana 5.3.3 baseline, legacy glass cleanup, main-thread stalls

Reference input: user-supplied **unmodified decoded Cinemana 5.3.3 ZIP**, inspected independently. The reference archive contains two smali trees and no ThemeEngine142, ThemeStudio142, or NuvioGlassBackdrop. Current Pro adds extra theme and runtime code, but **presence alone does not imply performance cost**.

Observed latest CL PATCH282 session `1793334647247`:
- 3,758 frames, 109 over 32ms, 30 over 100ms.
- Home 455 frames / 16 over 100ms; longest frame 1147.76ms, main-thread probe delay 1008.47ms; peak layout 302.68ms (separate maximum, not necessarily same frame).
- ThemeEngine.apply: one measured call, 0.03ms. Horizontal row bind maximum 1.10ms. These probes do not explain the 1.1-second pause.
- The critical slow-frame stage metrics are not necessarily additive to total time (waiting / scheduling / unaccounted pipeline time remains); avoid blaming blur or GPU without matched Perfetto evidence.

## Changes
1. Retire stale, unfinished Glass preference: `ThemeEngine142.isGlassEnabled` always false; future saveCustom persists false. Preserve Harbor, OLED, custom colors, existing modes and API/signatures. No blanket removal of unrelated Fresco/Zendesk image blur implementation that exists in original.
2. Remove uninitialized `ThemeStudio142.glassSwitch` field and preview branch; stop calling `isChecked()` on a null switch in custom-theme save. Save remains opaque, including color, radius and opacity controls.
3. Add **bounded off-UI-thread** stack category sampling when a 4Hz main-thread heartbeat is overdue. Only coarse numeric buckets (view/image/theme/io/app/system/unknown) are saved, no method names/URLs/stacks/user data. Sampling 500ms max; only on writer, not during normal frames. Each bucket is a hint, not proof.
4. Regression checks + analyzer support PATCH277–PATCH283, direct signed APK GitHub Release.

Next log: correlate `main_stack_*`, `layout_over_100ms`, `worst_frame_*_ms`, and stalls with identical Home->Details->Home navigation. If main_stack_io dominates, instrument targeted disk/database work; if view dominates, focus nested layout; if unknown, Perfetto trace.

**Do not merge to main.**