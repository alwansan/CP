# PATCH315 — Guard real native FileDownloader null-messenger main-thread crash

## User-confirmed new stress, not old data loss
The user deliberately deleted the **older** pressure-test data. Current independent PATCH313/PATCH314 test uses CL SHA `d78a4fbc5ae80a6ce9701093e0444f2473200796`. Current tree has 36 MP4, two .mp4.temp and 10 MKV. All 36 currently present MP4 tokens occur in actual native `DOWNLOAD_COMPLETED` events, so they must be tracked as completed-yet-unpromoted unless exact safe identity/plan/DB evidence rejects conversion; no file is deleted or forced to convert.

## Reproduced crash site
`CL/logfox/crash-com-cinemana-pro-_____-__-__-______.log (8)` reports Android 15 main-thread NPE at `com.liulishuo.filedownloader.FileDownloadMessageStation.interceptBlockCompleteMessage`, invoked by `FileDownloadMessageStation$UIHandlerCallback.dispose`. Exact code dereferences a null `IFileDownloadMessenger` in a batch list. In another UI message branch and native requestEnqueue, identical null assumptions can trigger the same issue.

PATCH315 skips ONLY null messenger entries: one batch entry guard (with a rate-by-occurrence native warning `null_messenger_dispose_skipped`), a direct UI callback guard, a fail-safe at the private `interceptBlockCompleteMessage` method and at the public two-argument native enqueue. **Every non-null messenger still executes original intercept, handover and queue code.** No download, subtitles, user notification, MKV, database or player code is disabled. No catch-all exception swallowing. All changes within unchanged Smali register allocation.

`scripts/test_patch315_null_messenger.py` asserts all guards precede the null-dereferencing calls and original valid delivery paths remain. CI validates real Smali assembly, APK DEX and alignment, and publishes a direct signed APK.

## Remaining crucial defect
This guard prevents the observed NPE; it does not explain **why** a null item entered the list, or fix the 36 new MP4 left in work with completed native receipts. More severe PATCH314 memory load is proven (1.65 GB RSS, 1337.95ms frame; main stalled 804.08ms), despite successful DAO log sampling. Analyze alternate download/DB identity and subtitle plans, active exporter queue and process memory growth. Avoid deleting work files and the 217-sidecar old-data investigation is CLOSED because user explicitly deleted the old test data.

**No device outcome claimed** until signed build and fresh PATCH315 log testing.
