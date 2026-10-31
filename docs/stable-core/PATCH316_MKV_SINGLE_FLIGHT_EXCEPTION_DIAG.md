# PATCH316: one-at-a-time MKV exporter and sanitized recovery error traces

## Verified source
Latest CL pinned commit: d44ff7cd0a31834cb8f50f211d3b8644651c77ca, 31 Oct 2026 20:15 Asia/Baghdad. Tree shows **13 final MKV, 38 work MP4 and 2 .mp4.temp**. Repair ledger has **16 entries**: 8 MKV_QUEUED, 3 EXPORT_STILL_MP4, 3 DISCOVERED_MP4, 1 ITEM_MATCHED, 1 ITEM_SCAN_FAILED (Naruto E32). User deliberately cleared the older stress run; these are a NEW stress test. Latest CL still records PATCH314, not PATCH315.

Peak main process RSS reached 1,782,356 KB and native heap 1,508,498 KB in PATCH314; separate filedownloader process stayed around 173 MB RSS. Neither FileDownloader nor the separate FFmpeg subprocess is yet confirmed to cause native memory growth.

## Scoped implementation
- MkvExporter initializer formerly ran 3 fixed executor workers and 3 FFmpeg permits. PATCH316 sets **both to 1** to serialize muxing while FileDownloader network downloads remain parallel. Preserve the original source-size, subtitle-plan, DB, job ownership, and FFmpeg error paths. No files are deleted.
- MkvReconciler silently ignored Throwable in several locations; PATCH316 records only Throwable.getClass().getName() with stage markers into Cinemana/work/log/download_repair_unresolved.log. It does not record exception messages, URLs, tokens or filenames. Stages include E32 ITEM_SCAN_FAILED and disk/DAO/subtitle checks. No safety guard relaxed.
- Startup, UI and load markers identify PATCH316. Regression in scripts/test_patch316_mkv_singleflight.py verifies one worker/one permit and original recovery guards. Signed APK requires the protected GitHub Actions full Smali/DEX build.

## Limitations
Single-flight may reduce throughput on an idle phone; under the severe download pressure it should reduce contention and matches user preference for one-by-one export. The native memory cause is not proven, and only fresh phone logs can establish improvement. Need check exact E32 class, queued ages, DB identity, FFmpeg completion, main native heap and frame metrics.

Do not claim device success just from CI. Do not delete source MP4s or weaken original completion gates.
