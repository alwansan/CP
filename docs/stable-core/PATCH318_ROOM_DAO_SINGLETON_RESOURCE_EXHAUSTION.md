# PATCH318 — Fix repeated Room database-builder churn / SQLite handle exhaustion

## Confirmed evidence
The independent PATCH316 stress log from CL pinned commit `afa4d796929b95d096054a265c769977bd5aeaa4` contained **44 work MP4, 14 final MKVs and 1 temp**, with ongoing severe main CPU and UI stalls. A rerun of pinned full CL audit (Actions run `41221764617`, attempt 2) confirmed `DOWNLOAD PATCH316` 55 MP4 completion callbacks across 30 distinct tokens, 37 `QUEUE_ENQUEUED` exporter entries, but only 1 `MKV_FFMPEG_SLOT_ACQUIRED` observed before snapshot (no corresponding release in that segment), so the single worker may be executing an export or blocked; do not infer permanent deadlock from this single timepoint.

The complete `diagnostics.log` and `downloads.log` also contain earlier PATCH314 failures `java.io.IOException: Too many open files` and `SQLiteCantOpenDatabaseException: unable to open database file (code 14 SQLITE_CANTOPEN), while compiling PRAGMA journal_mode`. These errors **predate PATCH316** and are not evidence of a new PATCH316 crash. They strongly motivate investigating resource exhaustion.

The confirmed code defect in `MkvExporter.getDownloadsDao(Context,Context)` was that **every call** used reflection to invoke Room's database builder `ut3.a(Context,DownloadsDatabase,String)` and `builder.b()`, then retrieved a generated DAO `DownloadsDatabase.p()` without reusing the resulting Room instance. Thousands of `DB_PROMOTE_DOWNLOADS_DB_NAME / CLASS / DAO` diagnostics were recorded, even after PATCH314 sampled those messages. Generated `lz0` DAO retains its owning Room database via final `lz0.a:vt3` reference.

## Fix
- Add `private static volatile SHARED_DOWNLOADS_DAO318:Object` to MkvExporter; make only private `getDownloadsDao` synchronized. On first successful resolution, cache the nonnull generated DAO. Future calls return it before re-creating a Room builder, keeping its original DB owner alive through the DAO reference.
- If original Room builder/DAO resolution throws or returns null, no cache is stored and the next call can retry. No query, DB name, schema, data-path, transaction, subtitle, FileDownloader or MKV source validation is modified.
- Keep PATCH316 single-flight 1 FFmpeg worker/permit, PATCH317 download UI lookup/per-progress logger optimization and PATCH315 null messenger guard.
- Static regression: `scripts/test_patch318_room_dao_cache.py` verifies the declared-synchronized method, early cache hit, original Room builder and `lz0` ownership, no caching of nulls. Full APK Smali/DEX verification and signing via protected CI.

## Risks and verification
Caching one DAO per app process is a standard lifetime choice for Room and avoids duplicate SQLite helper instances. However the legacy app may have bespoke external database lifecycle or deletion code, so a real device must check DB writes, delete/re-download, completed MP4=>MKV promotion, main RSS/native+Java heap, and count SQLiteCantOpen / Too-many-open-files incidents. If DB is deliberately destroyed while app stays alive, further invalidation may be needed. An APK build alone is not runtime proof.

No cleanup or deletion of the existing source MP4 or sidecars. Version PATCH318 release is conditional on successful signing and CI.
