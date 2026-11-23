# R2 session 04 — durable synthetic batch store — 2026-11-23
فرع الكتابة experiment/rust-core-migration؛ source feature/download-stability ثابت للقراءة.

## ما تم فعلياً
- بنيت وحدة Rust rust-core/src/durable_fixture.rs بـ std فقط. تنشئ **في مجلد اختبار منفصل** قفلاً flock غير حاجب، وتستعيد snapshot مع magic/version/length/CRC32. تكتب دفعات ذات payload ثابت إلى ملف pending ثم fsync ثم rename ثم fsync للدليل قبل إصدار receipt.
- حافظت على Rust JNI R1 read-only \`nativeVersion=1\` وعلى Queue110/Restart108/FileDownloader/Room/MkvExporter/FFmpeg بلا أي استدعاء جديد.
- أضفت 9 اختبارات R2: 500 tasks/reopen/replay؛ crash window قبل rename؛ ambiguous after rename؛ رفض payload conflict؛ writer lock؛ corruption fail-closed؛ 400+500 overlapping؛ invalid/cap; forged lengths. لا اختبار SIGKILL حقيقي بعد.
- فشلت النسخ الأولية من CI بتنسيق rustfmt فقط (run 45113376596، 45113416210) وأصلحت 11 hunks من logs مباشرة في commit \`1b712bb0c347eef4b68700c91a500f588e7759a9\`.
- Run https://github.com/alwansan/CP/actions/runs/45113493256 = **SUCCESS**: fmt, Clippy, 14/14 tests, Linux release, Android ARM64 .so.
- R1 diagnostic APK ART run 45112292108 = SUCCESS سابقاً، لكن R2 محاكاة لم تُربط بـJNI/Android runtime.
- الفشل الـformat قديم ومصحح، لا تعتبر كل run failed حالياً. لا تنزيلات فعلية أو user data متأثرة.

## حدود المرحلة
- ملفات snapshot كاملة تُعاد كتابتها لكل batch مع limits؛ ليس خيار production scalable نهائياً.
- لا Android real cross-process/lock/fsync or actual kill؛ جميع faults injection مع reopen على Linux CI.
- لا SQLite/Room schema owner، لا end-to-end APP install أو media downloading/mux.
- لا release أو APK جديد للمستخدم من R2. لا تطلب user test صغير.

## الخطوة التالية
- تحقق من run 45113493277 (إعادة اختبار signed R1 diagnostic APK عند تغيير Rust module)، وعالج أي فشل.
- أعد mapping لملكية Room/Downloads DAO وBatchDownload.call(m) وnative service؛ قرر how to shadow receipts without duplication.
- أضف actual child process SIGKILL fixture test (Linux/Android بعد ذلك) ثم JNI read-only/synthetic bridge، وبعدها حسم بوابة R2.
- حدّث ملفات الحالة والخطة والذاكرة والاستعادة والمخاطر/الاختبارات في كل جلسة.

## متابعة جلسة04: child process SIGKILL
- Add rust-core/src/bin/r2_fixture_worker.rs and rust-migration/tests/test_sigkill.py; workflow rust-core-check.yml now builds worker and runs Python test.
- Run 45113795022 SUCCESS: 14/14 unit، fmt/clippy، Linux, ARM64 build، and `CP_R2_SIGKILL_PASS before_commit=0 after_commit=500 lock_released=1 replay=1`.
- هذا SIGKILL حقيقي قبل وبعد commit فقط، لا mid-write OS kill ولا Android. فرع الأصل untouched؛ لا production APK.

## تحقيق إضافي: مخطط Room الفعلي
- قُرئ `DownloadsDatabase_Impl$a.smali` واستُخرج CREATE TABLE Downloads والمفتاح المركب (task_id, external_id) وغياب batch_id؛ DAO `kz0` وbuilder `ut3` ومخزن `DL_SHARED_DAO`.
- قُرئ `NativeBatchScope` و`DownloadActionsHandlerScope.m` + `i44` interface؛ يظهر المسار الأصلي المرتبط بالـnative وcoroutine وMkvPlanStore.
- نُشرت الخريطة `rust-migration/R2_ROOM_SCHEMA_AUDIT_AR.md`؛ لا runtime/DB change أو اختبارات هاتف.

## إعادة تحقق R1 مع كود R2 الأخير — 2026-11-23
- `run 45113795068` **SUCCESS** على code SHA `40837af4e89a4c5463305885f488943022c03702`: Rust 14 tests، signed APK DEX، ART Android15 isolated.
- Log: `CPRUST_R1_JNI_PASS abi=1`؛ `CPDL_ART_PASS family=54 opens=2 refresh_paths=4 closes=2 backend=6 synthetic_slots=2 lease_duplicate_rejected=1`؛ `INSTRUMENTATION_CODE: -1`.
- Artifact 14791210489 `Cinemana-CP-Rust-R1-JNI-Diagnostic`؛ لا تثبت نسخة تشغيل كاملة أو هاتف أو actual download Rust.
- `run 45113795022` Rust Core SUCCESS: 14/14 + SIGKILL Linux + ARM64 .so.
