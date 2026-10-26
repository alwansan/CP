# Cinemana Liquid Glass — screen and component matrix

## Audit basis

This matrix maps the app-specific layout resources in the APKTool project to a staged material rollout. The repository has many decompiled library resources alongside the app's own XML and Smali; changes should stay scoped to the app-specific layouts and avoid blanket edits across third-party resources.

The top-level navigation declared in app/res/menu/menu_navigation.xml contains Home, Categories, Search, and Profile. The expanded media-controller menu in app/res/menu/expanded_controller.xml contains the media-route action. The first shell/scrim pilot is in activity_home.xml and retains the existing home_bottom_nav view ID.

## Cross-app material contracts

| Surface type | Architecture | Rule |
|---|---|---|
| Floating navigation, toolbar controls, filter buttons | Outer shell + inner stabilized plate | Use the shared shell token family and fixed top/left light model; place text/icons above the stable plate. |
| Bottom sheets, popovers, menus, transient dialogs | Outer shell + separately inset scrim + content | Keep the content readable while allowing the outer edge to show context. Avoid putting all text directly on a busy background. |
| Cards, poster tiles, episode thumbnails | Keep the media content itself intact | Do not blur/refract posters or video thumbnails. Glass can be limited to small overlay actions or badges where appropriate. |
| Video playback surface and subtitles | Opaque video + controlled floating controls | Never refract the movie frame or apply glass/blur to subtitle pixels. Only player control panels and their buttons are candidates. |
| Long text/settings forms | Stable content surface with glass only on small controls | Preserve reading contrast and scroll performance; do not turn whole text-heavy pages into translucent glass. |

### Phase-one token references

| Resource | Purpose |
|---|---|
| drawable/liquid_glass_shell.xml | Outer shell, fixed top/left highlights, hairline border and inner stroke. |
| drawable/liquid_glass_scrim.xml | Independent stabilized plate behind labels and icons. |
| drawable/liquid_glass_control_selector.xml | Default, pressed, focused and disabled control recipes. |
| drawable/liquid_glass_shell_pressed.xml | Denser fill and reduced highlight for pressed state. |
| drawable/liquid_glass_shell_focused.xml | Crisp outer focus ring in #FF5DA9FF. |
| drawable/liquid_glass_shell_disabled.xml | Flat disabled surface with no specular bands. |
| drawable/liquid_glass_shell_error.xml | Dark stable surface with solid #FFC53637 error edge. |
| drawable/liquid_glass_error_helper_line.xml | Solid red helper/error line. |

Existing semantic theme attributes should remain the color source for legacy surfaces: cinColorBackground, cinColorSurface, cinColorSurfaceRaised, cinColorSurfaceSunken, cinColorSurfaceTransparent, cinColorOutline, cinColorScrim, cinColorTextPrimary, cinColorTextSecondary, cinColorAccent, and cinColorError. Existing radius attributes range from cinRadiusSmall (6dp), cinRadiusCard (8dp), cinRadiusControl (12dp), cinRadiusDialog (16dp), cinRadiusLarge (24dp), to cinRadiusPill (32dp). Do not hard-code new radius values across unrelated layouts.

## Screen-by-screen matrix

### P0 — global app shell and primary navigation

Files:
- app/res/layout/activity_home.xml
- app/res/layout/main_toolbar.xml
- app/res/layout/fragment_home_root.xml
- app/res/menu/menu_navigation.xml
- app/res/color/bottom_navigation_selector.xml

Material approach: the home bottom-navigation pilot uses liquid_glass_shell as its outer background and a bounded child scrim behind the retained BottomNavigationView. The activity-level fragment_container now spans to the parent's bottom so live page content can extend underneath the higher-elevation floating nav shell; it must not be constrained to the wrapper's top edge. The CastButton stays anchored above the nav wrapper. Home, Categories, Search and Profile scroll surfaces receive 88dp of bottom padding with clipToPadding=false so content can travel behind the bar but the final row can still be scrolled fully into view. Preserve all four destinations, selected-state tint, labels, accessibility descriptions, system insets, and touch targets. Do not change menu IDs.

Toolbar follow-up: main_toolbar.xml is included with a merge root inside a CoordinatorLayout. Do not wrap the AppBarLayout in a generic FrameLayout without proving that CoordinatorLayout scrolling behavior remains attached to the AppBarLayout. First prototype a safe inner plate without breaking nested scrolling/collapse behavior.

### P1 — Home feed, featured content and reusable media rails

Files:
- app/res/layout/fragment_home.xml and fragment_home_root.xml
- app/res/layout/fragment_show_more.xml
- app/res/layout/videos_layout.xml and horizontal_scroll_videos_layout.xml
- app/res/layout/wide_vertical_videos_layout.xml
- app/res/layout/item_base_video.xml, item_base_video_horizontal.xml, item_base_video_wide.xml
- app/res/layout/item_horizontal_scroll_videos.xml, item_slider.xml, item_slider_view.xml
- app/res/layout/item_category.xml, item_franchise.xml, item_franchise_large.xml

Material approach: preserve poster imagery and recycler performance. The page now extends behind the bottom-navigation overlay; RecyclerView bottom padding is scroll reach rather than an opaque footer, so cards may visually pass behind the translucent nav shell while the last row remains reachable. Apply additional glass only to transient controls or small overlay actions after this pilot is validated. Keep text and icons on the independently stabilized plate.

### P1 — Search and advanced filters

Files:
- app/res/layout/fragment_search_root.xml, fragment_search.xml
- app/res/layout/fragment_search_all_tab.xml
- app/res/layout/fragment_search_movie_tv_shows_tab.xml
- app/res/layout/dialog_advanced_search_filter.xml
- app/res/layout/no_search_results_layout.xml

Material approach: search entry and the advanced-filter trigger are strong candidates for the shell selector. The search tabs and filter chips should preserve their selected-state indicator and icon/text contrast. Keep result lists and empty-state messages on a stable content surface; avoid applying blur to each search result card.

### P1 — Categories and category results

Files:
- app/res/layout/fragment_categories_root.xml, fragment_categories.xml
- app/res/layout/fragment_category_details.xml
- app/res/layout/fragment_category_movies_tv_shows.xml
- app/res/layout/item_category.xml

Material approach: use shell material for the filter/sort controls and temporary menus, not for the entire category grid. Preserve sort order, category selection, content descriptions and recycled-item state.

### P1 — Movie/TV detail, cast, seasons and episodes

Files:
- app/res/layout/fragment_video_info.xml
- app/res/layout/video_info_top_actions_layout.xml
- app/res/layout/video_info_seasons_layout.xml
- app/res/layout/video_info_cast_and_crew_layout.xml
- app/res/layout/item_video_info_actor.xml, item_video_info_comment.xml, item_video_info_episode.xml
- app/res/layout/fragment_internal_season.xml, fragment_external_season.xml
- app/res/layout/item_inner_episode.xml

Material approach: leave the hero poster and collapsing image intact. Candidate controls include compact action buttons, season chips, and a bottom sheet that selects an episode or shows comments. Use a stabilizing plate for labels rendered against the hero art; do not lay long text directly on a refracting/translucent poster region.

### P1 — Comments and community interactions

Files:
- app/res/layout/fragment_comments.xml
- app/res/layout/fragment_comments_rules.xml
- app/res/layout/dialog_comment_update_layout.xml
- app/res/layout/item_video_info_comment.xml

Material approach: the comments panel is already a bottom-sheet-style surface. Prototype shell and scrim around the outer sheet and input/action row; keep the recycler rows and long comment text on a stable, high-contrast plate. Error states need a solid red edge plus helper text, not just a red glow.

### P1 — Downloads

Files:
- app/res/layout/activity_downloads.xml
- app/res/layout/fragment_downloads.xml
- app/res/layout/fragment_download_collections.xml
- app/res/layout/fragment_download_items.xml
- app/res/layout/item_download.xml
- app/res/layout/item_downloads_collection.xml
- app/res/layout/download_button_layout.xml
- app/res/layout/download_progress_dialog.xml

Material approach: use glass on the downloads toolbar, tabs, selection/filter controls, and transient progress dialog only if tests show readability under rapid progress updates. Keep download rows and status/progress text stable. Preserve pause/resume/delete flows, Wi-Fi restriction behavior, and filesystem/storage error messages.

### P1 — Profile and account entry points

Files:
- app/res/layout/fragment_profile_root.xml, fragment_profile.xml
- app/res/layout/profile_item_layout.xml
- app/res/layout/fragment_edit_profile.xml
- app/res/layout/item_edit_profile_input.xml
- app/res/layout/activity_login.xml, activity_sign_up.xml
- app/res/layout/activity_qr_login.xml, activity_qr_scanning.xml

Material approach: keep account identity and form text on a stable surface. Small QR/login actions can use the shell selector. Validate keyboard appearance, autofill, password visibility, screen rotation where supported, accessibility focus, and RTL field alignment.

### P1 — Settings and personalization

Files:
- app/res/layout/activity_settings.xml
- app/res/layout/fragment_settings_list.xml
- app/res/layout/fragment_app_settings.xml
- app/res/layout/fragment_filter_settings.xml
- app/res/layout/fragment_subtitles_settings.xml
- app/res/layout/bottom_sheet_subtitle_fonts.xml
- app/res/layout/dialog_change_password.xml, dialog_forgot_password.xml, dialog_colorpicker.xml
- app/smali_classes6/com/shabakaty/cinemana/ca1/ThemeStudio142.smali
- app/smali_classes6/com/shabakaty/cinemana/ca1/ThemeEngine142.smali

Material approach: apply glass selectively to small controls and the font/theme preview sheet. Keep setting descriptions, accessibility labels, color-picker text and subtitle samples legible. Retest system-theme changes and activity recreation. Custom mode is a prerequisite: getMode() must preserve mode 3 so its saved palette accessors stay reachable.

### P2 — User lists, subscriptions and notifications

Files:
- app/res/layout/fragment_user_lists.xml
- app/res/layout/fragment_user_list_details.xml
- app/res/layout/fragment_subscriptions.xml
- app/res/layout/item_subscription.xml
- app/res/layout/fragment_notifications.xml
- app/res/layout/item_notification.xml
- app/res/layout/item_watched.xml

Material approach: floating action menus and filters may use shell materials. Keep notification bodies, timestamps, list titles and empty-state messages on stable surfaces. Verify badge visibility and that tapping cards remains unaffected by the new layer stack.

### P2 — Franchises, discovery, staff and service status

Files:
- app/res/layout/fragment_discover_more.xml
- app/res/layout/fragment_franchises.xml
- app/res/layout/franchises_view.xml, groups_view.xml
- app/res/layout/fragment_staff_info.xml
- app/res/layout/activity_status.xml and status_view_layout.xml
- app/res/layout/discover_more_apps_layout.xml

Material approach: preserve logos, portraits, app artwork and service-status indicators. Glass can be introduced on small action controls or modal panels, but not as a full-page wash over service outage/maintenance text.

### P2 — Player and playback controls — isolated rollout

Files:
- app/res/layout/activity_video_player.xml
- app/res/layout/cinemana_player_view.xml
- app/res/layout/cinemana_playback_control_view.xml
- app/res/layout/bottom_sheet_subtitle_fonts.xml
- app/res/layout/cinemana_playback_control_view.xml also owns control-level actions and labels
- app/smali/com/shabakaty/cinemana/player/VideoPlayerActivity.smali
- app/smali/com/shabakaty/cinemana/player/CinemanaPlayerView.smali

Material approach: the video frame stays untouched and opaque. Later glass candidates are limited to the top/bottom control panels and small settings/subtitle/episode controls. Do not apply a backdrop shader to subtitle pixels, the seek-preview image, the playback bitmap, or the full-screen PlayerView. Test H.264 8-bit/10-bit playback, subtitle selection and synchronization, seeking, next/previous episode, speed, quality, external player, cast/DLNA, and display orientation after any player change.

### P2 — Casting, DLNA and system/utility flows

Files:
- app/res/layout/activity_dlna_controls.xml
- app/res/menu/expanded_controller.xml
- app/res/layout/activity_splash.xml
- app/res/layout/activity_status.xml

Material approach: do not attempt to skin OS-owned cast sheets or third-party controller UI globally. For app-owned DLNA controls, treat the panel as a separate pilot. Keep splash artwork simple; do not delay startup by waiting for a live glass renderer.

## Existing palette baseline

Harbor/Dark theme colors in app/res/values/colors.xml include canvas #111213, surface #191B1C, raised surface #252628, sunken surface #0D0E0F, transparent surface #E6191B1C, outline #3C3D3F, primary text #F4F5F7, secondary text #A3A5A6, subtle text #626365, red accent #C9170F, and scrim #99000000.

OLED theme colors include canvas #000000, surface #080808, raised surface #101010, sunken surface #050505, outline #2A2A2A, primary text #F5F5F5, secondary text #B5B5B5, subtle text #7A7A7A, and scrim #B3000000. Keep both dark variants consistent when assigning the glass shell/scrim; do not copy a single background color across every semantic role.

## Rollout priority and gates

1. Home bottom navigation overlay pilot (content host underlap and scroll reach implemented; fresh build/device checks pending).
2. Search/advanced-filter control and shared toolbar prototype.
3. Bottom sheets, comments and season/episode selection.
4. Settings/profile controls and download panels.
5. Player controls only after a separate playback-regression pass.
6. Remaining secondary screens after each surface family is visually checked.

Do not roll out by mass-replacing every reference to cinColorSurface. Each family has different interaction, scrolling, media, accessibility, and performance constraints. A shared material drawable is the starting primitive; the correct hierarchy, scrim placement, state logic, and shader capability gate are screen-specific.