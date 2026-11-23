# خطة الترحيل الآمن — 2026-11-23
## R0 — تأسيس (الحالي)
1. فرع منفصل وإبقاء مصدر download-stability كما هو.
2. وحدة Rust in-memory فقط واختبارات هوية الدفعة/generation/state، CI مستقل.
3. لا APK أو مكتبة Android مثبتة بعد؛ تحقق من نتائج Actions قبل ادعاء نجاح.

## R1 — ربط مشاهدات بلا تغيير التشغيل
1. خريطة Smali الفعلية: Queue110, BatchDownload, Restart108, MkvExporter, MkvReconciler, FileDownloader, Room, FFmpeg, process/service and UI callbacks.
2. صمم واجهة FFI/JNI صغيرة ذات إصدارات وتحقق من handles/stale callbacks وانهيارات Rust، مع عدم تنفيذ I/O على main.
3. بناء cargo-ndk لـ arm64-v8a عبر Actions ثم حزم libcp_rust_core.so في APK تجريبي، اختبارات التحميل داخل Android ART/device.
4. مقاييس baseline: thread counts, PSS/RSS, ANR, batch latency, DB busy, Mkv queue stalls.

## R2 — نقل دفعات التحميل
- تجريب shadow-mode: Rust يحسب القرارات ويراقب الأصل دون تفعيل القرارات. compare deterministic outputs.
- تسجيل batch request durable في DB القائمة بتصميم إضافة فقط بعد فحص schema؛ حفظ ACK وتكرار/إلغاء والـepoch.
- بعد تكافؤ الأدلة، انقل مالك قرار القبول فقط وراء feature flag؛ لا تنشئ تنزيلات موازية.
- ارفض raw URL بوصفه مفتاحاً؛ تحقق من source identity وRange/validator قبل استئناف bytes.

## R3 — نقل المجدول والاسترداد
- single-flight service binding, bounded scans, fairness, backpressure, retry with reasons.
- native FileDownloader يحتفظ بنقل bytes الفعلي حتى يثبت بديل Rust، وMkvExporter/FFmpeg يبقى مالكاً وحيداً للتحويل.
- اختبر إيقاف العملية والعودة والتحميل على 400–500 حلقة وبقاء جميع النتائج.

## R4 — تكافؤ الميزات والواجهة
- احتفظ بواجهة Android Native مبدئياً؛ أي تبديل UI قرار مستقل. لا تفترض أن Rust تحل jank تلقائياً.
- اختبارات الحساب المحلي والترجمات والمشغل والإشعارات والصلاحيات والعمل بالخلفية والتنزيل والبحث والأقسام.
- APK تجريبي موقّع متوافق data/versionCode/cert مع اختبار ART وPhone؛ لا تمسح بيانات.
- قارن الأداء بمقياس متكرر وليس بانطباع. أوقف التفعيل عند أي regression.

## قواعد الاستعادة
راجع rust-migration/RESTORE_SESSION_AR.md وSTATE.json والخطة وسجل الجلسة، وحدّثها بعد كل جلسة وعمل؛ لا تلمس feature/download-stability. لا تعمل في الخلفية ما لم توجد مهمة منفصلة مفعلة بالفعل.
