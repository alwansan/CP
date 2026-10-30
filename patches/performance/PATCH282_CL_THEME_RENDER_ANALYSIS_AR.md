# PATCH282 — Investigating ThemeEngine and UI rendering

Source: CL/log/ui_performance.jsonl, PATCH281 session 1793333835809.

- Frames 3,520; >32ms 46; >100ms 21; worst frame 514.29ms.
- Home: 876 frames; 17 >100ms; worst layout 338.30ms, worst main probe 440.65ms.
- Horizontal section: 40 binds, peak 26.17ms. Ad section creation peak 22.28ms.
- ThemeEngine142.apply is called at Activity lifecycle points and currently changes window system bars, not all views on each scroll. Separate recursive styleTree methods exist; do not blame them without an observed call.
- Continue106.row in HorizontalScrollVideosView.u uses reflection and I18n on each bind but both title-check branches always set the More MaterialButton visibility to 0 (VISIBLE). Replace with direct binding lookup + setVisibility(0), preserving behavior.
- Measure ThemeEngine.apply and same-frame FrameMetrics layout/draw/sync/command/swap, plus counts with >100ms layout/command. These metrics can distinguish UI/layout from rendering stalls but do not replace Perfetto/GPU traces.
- No changes to main, features, accounts, downloads or video playback. Test identical journeys and upload new CL log.
