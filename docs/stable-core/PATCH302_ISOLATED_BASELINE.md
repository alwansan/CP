# Stable Core PATCH302 — change scope and evidence

## Verified refs (2026-10-30)
- Base branch `feature/local-account`: `82d7f67037f67659115d41782d3a9b5bf4e0bd02` (PATCH274).
- Performance branch `feature/ui-performance-optimization`: `2a27c6e2957a0249145cc18204a4502bed722537` (PATCH301).
- Compare: **126 commits ahead**, zero behind, same merge-base as PATCH274.
- CL logs latest commit `4ec05e422e5770eefd89735c963a9b5a4c97001d`; recent sessions include PATCH274 and PATCH301. Do **not** mix sessions or attribute all failures to PATCH301.
- `data/mkv_repair_pending.properties` in CL has `EXPORT_STILL_MP4` / `source_mp4_remained_after_export_attempt` entries. This is a confirmed incomplete export/pending repair state, **not a proved root cause**; investigate independently of UI performance.

## First isolation build
Chosen base: PATCH274. This limits changes to one safe, reviewed layout configuration:
`app/res/layout-v22/fragment_video_info.xml` switches seven `animateLayoutChanges` flags to `false`, matching `res/layout/fragment_video_info.xml`. The user-triggered description expand animation stays enabled.

No downloader Smali, `DownloadTrace`, MKV converter, Services, receivers, database, permissions, `Continue106`, or other feature paths are changed relative to PATCH274. This intentionally **does not declare downloads fixed**.

## Validation
The dedicated GitHub workflow pins Ubuntu 24.04, verifies the scoped diff, runs the XML/manifest checks, existing local-account tests, Smali/APK build, DEX checks, zipalign and signing validation using the same repository keystore. It publishes only after CI passes. Device validation of concurrent downloads, resume, MKV conversion and notifications remains necessary. No merge to `main`, and no edits to either reference branch.

## Remaining investigation
1. Obtain version-separated full `downloads.log` and `diagnostics.log` error traces; evaluate `STATE=` transitions, foreground service and persistent queue.
2. Determine whether `EXPORT_STILL_MP4` is a converter error, file rename issue, or intentional pending state before code changes.
3. Review regression-prone PATCH299–301 lambda, reflection, logging changes individually.
4. Port UI optimizations only after tests on this isolated baseline. Never extrapolate device/runtime stability from signed APK assembly.
