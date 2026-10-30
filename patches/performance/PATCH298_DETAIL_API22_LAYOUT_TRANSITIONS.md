# PATCH298 — Android API 22+ detail implicit LayoutTransition cleanup

## Root cause candidate
During inspection of PATCH295 detail navigation traces, VideoInfoFragment had up to 91.89ms recorded layout and 117.26ms frame maximum in its details windows. The usual `res/layout/fragment_video_info.xml` already disables `android:animateLayoutChanges` on seven main nodes. However, the higher-priority `res/layout-v22/fragment_video_info.xml`, selected on the Android SDK 35 test device, enables it on **all seven** instead. `animateLayoutChanges=true` creates implicit LayoutTransitions on ViewGroups, potentially producing repeated measuring/layout work during dynamic poster/title/list updates. This is a concrete configuration mismatch, not proof it caused each slow frame.

## Narrow XML-only fix
Align only these seven `layout-v22` views to the base layout's existing `false` setting:
- AppBarLayout: `video_info_appbar`
- CollapsingToolbarLayout: `video_info_collapsing_toolbar`
- Poster: `video_info_poster`
- Poster overlay: `video_info_poster_fade_overlay`
- Toolbar: `video_info_toolbar`
- NestedScrollView: `root_scroll_view`
- Root ConstraintLayout: `root_constraint`

Keep the one `ExpandableTextView` animation **true** in both layouts, allowing user-requested expand/collapse behavior. Do not change parallax, image loading, poster shared-element transitions, scroll, RecyclerViews, visual dimensions, colors, resources, any Java/Smali details logic, or `Continue106.card`.

## Validation
Static tests inspect both XML variants by view ID and assert the seven flags match; exactly one true flag remains in `layout-v22`. Existing complete pipeline must pass Smali, DEX, signed APK and synthetic class checks.

Device testing: repeatedly open movie and episode detail, back out to Home, expand description, scroll app bar and open poster. Compare matched PATCH297 and PATCH298 journeys (detail `layout_max_ms`, `over_50ms`, `over_100ms`, first content readiness via `detail_view_created → detail_ui_ready`, Home return frames) before claiming improvement. No merge to `main`.
