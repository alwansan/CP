# PATCH263: Resume display and deletion repair

The PATCH262 native/app Room DAO mixup passed lz0 to kw0$p and prevented deletion before any file operation. DownloadStore263 now resolves CinemanaApplication.h(), validates the concrete episode DAO, and uses it for cancellation lookup and sidecar path capture. The same receiver correction restores the three recovery lookup paths. Existing journaled file deletion and queued/running MKV cancellation remain in use.

Continue Watching home now cleans the actual localized title field P (X is an unrelated overlay). More displays separate season/episode and playback time in O. Unknown metadata is not rendered as S00/E00. The existing badge, history-only menus, selection scopes and progress bar remain. More resolves the first ConcatAdapter child, matching native fo3, before reading/updating the video list; footer adapters stay independent. This fixes the continue_more_refresh262 error observed in CL logs.

On partial download deletion failure, failed episode IDs remain selected for retry; successful IDs are recorded by the deletion worker and removed from selection without database work on the UI thread. Error summaries are limited to three bounded messages, with a remaining-count indicator.

Reference review: Harbor src/lib/continue-watching.ts models work name separately from season/episode/progress. NuvioMobile core/ui/ContinueWatchingText.kt derives a separate episode subtitle. No reference-project implementation was copied; existing per-episode history semantics are preserved.

Validation: 31 host assertions cover concrete kw0/lz0 distinction, rejection before persistent intent, failed selection retention, bounded errors, nested ConcatAdapter routing, real Entry p/d fields, title cleanup, unknown metadata, queued/running cancellation, late publication fencing and scoped partial cleanup. Static checks cover localized native title binding, recovery DAO receivers, linkage/access and invoke registers. Three negative reference-guard tests and five recovery-flow tests pass. APK assembly is checked separately. Android ART/device interaction is not emulated by these host checks.
