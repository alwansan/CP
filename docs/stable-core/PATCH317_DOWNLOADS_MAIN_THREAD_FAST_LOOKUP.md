# PATCH317 — Remove confirmed Downloads main-thread lookup hot path

## Pinned evidence
Latest CL `afa4d796929b95d096054a265c769977bd5aeaa4` was recorded around 20:43 Asia/Baghdad, 31 October 2026, with **PATCH316 device logs**. Its tree has 44 MP4, 1 MP4.temp, and 14 MKV final. Pending MKV ledger has 4 states, two WAITING_PLAN_OR_SUBTITLES and two MKV_QUEUED; 4 ledger items do not mean only 4 still need MKV conversion. A few finals progressed, but 44 MP4 still await conversion or validation. The original stress test was intentionally deleted by the user and must not be counted.

PATCH316 main process maximum observed sample RSS 796,464 KB, native heap 203,136 KB, Java heap 383,438 KB, CPU 45,870ms per 15-second sample. FileDownloader separate process peak RSS 176,240 KB. UI had 45 frames over 100ms, maximum 766ms frame; latest Downloads main thread reached ~781ms main delay. **Multiple independent main-stall samples** at downloads cite com.shabakaty.cinemana.ca1.Download94#find with android.content.res.ResourcesImpl#getResourceEntryName and ViewGroup recursion; another cites com.shabakaty.downloader.mc4#progress and java.lang.reflect.Method#invoke. This grounds two narrowly scoped changes without claiming the broader memory issue fixed.

## Code changes
1. Download94.find retains the original fallback recursive resource-name matching for future arbitrary names, but fast-paths the only three known production caller names via View.findViewById with exact IDs pinned in res/values/public.xml: downloads_recycler=0x7f0a014e, collections_recycler=0x7f0a00f9, home_bottom_nav=0x7f0a0204. This avoids repeated Resource.getResourceEntryName for every descendant during frequent downloads view binding.
2. StateListener.kt decompiled mc4.progress no longer formats and logs the entire task object on every progress callback. Original DownloadTrace.progress call **remains**, and original mc4$e coroutine dispatched by mc4.a to refresh UI and notifications **remains untouched**. Other pending, started, paused, completed and error callbacks are untouched.
3. Keep the PATCH316 single-flight MKV worker+FFmpeg semaphore at one, FileDownloader 1.7.7, PATCH315 null messenger guard, and original MKV source, subtitle, DB and deletion checks.
4. tests/test_patch317_downloads_main_thread.py verifies public.xml IDs, direct lookup preceding fallback, structured progress and UI/notification callback methods. Existing Smali, DEX, Java tests, signing and GitHub Releases are mandatory.

## Remaining issues
No cause of the 44 MP4 backlog is yet proven. Still need inspect serialized MKV job activity, exact subtitle plan, persistent DB identity, and post-PATCH316 recovery errors. High Java heap, CPU, GC and frame stalls can have additional causes, including UI binder/image work. Never infer that this UI hot-path optimization cures every stall. Evaluate only with fresh PATCH317 phone logs, and preserve all Cinemana/work/data and sources for recovery.
