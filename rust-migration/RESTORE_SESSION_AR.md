# استعادة جلسة Rust Core — Cinemana Pro (2026-11-23)
فرع الكتابة الوحيد: experiment/rust-core-migration داخل alwansan/CP. الفرع مشتق من feature/download-stability عند c68c0d80722765409f8544d499938a656217967b. لا تعدّل feature/download-stability أو main أو Html أو CL ولا تخلط مع فرع CP-DL الآخر.

## اقرأ عند الاستئناف
- rust-migration/README_AR.md ثم rust-migration/STATE.json ثم PLAN_AR.md ثم rust-migration/sessions/2026-11-23-r0.md
- AGENTS.md الأصلي وdocs/DOWNLOAD_EXECUTION_DESIGN_AR.md وdocs/DOWNLOAD_MAP_AR.md ثم خريطة Smali الحالية ومكتبات Android/FFmpeg/Room
- تحقق من branch HEAD وActions الحاليين، ولا تعتبر أرقام هذه الجلسة حالة حية ثابتة

## ما اكتمل بالفعل
- فرع معزول من baseline المذكور دون تعديل الأصل؛ Rust library rust-core/src/lib.rs مع 5 اختبارات لمنطق batch idempotency وconflict وgeneration fencing وstage transitions.
- أول workflow run 45110027899 فشل بسبب rustfmt؛ إصلاح الكود ثم نجاح run 45110102602 لفحوص format, clippy, tests وبناء Linux.
- تشغيل 45110176247 **success** لبناء Android ARM64 shared library مستقلة (libcp_rust_core.so). GitHub artifact id 14788429301 واسمه cp-rust-core-arm64-experimental، المحفوظ في https://github.com/alwansan/CP/actions/runs/45110176247 . كود الاختبار commit 54f66df4402bdc20e72376f3a024bdcc281ab012.
- الـABI export cp_rust_core_abi_version فحص فقط؛ لم يتم ربط JNI/ART داخل تطبيق Cinemana، ولم يُبن APK، ولم تتغير خدمات التحميل أو قاعدة البيانات أو واجهة المستخدم. التحميل الحقيقي لا يستخدم Rust حالياً.
- استنتاج هذا المسار: المصدر APKTool/Smali مع Java helpers، لذلك ترحيل كامل من غير خسارة ميزات يحتاج إعادة بناء تدريجي وتجارب parity لا ترجمة آلية.

## الخطوة العملية التالية
1. استخرج استدعاءات BatchDownload وQueue110 وRestart108 وMkvExporter وRoom وnative FileDownloader.
2. أضف قراءة ABI عبر Java/JNI دون تفويض أي تحميل جديد إلى Rust؛ اختبر ART والتحزيم والتوقيع.
3. أضف تجارب shadow mode تقارن ناتج Rust بالأصل وdurable ACK قبل نقل الملكية؛ لا تنشئ طابورين فعليين، ولا تحذف بيانات أو ترفع APK مضللاً.
4. حدّث STATE وPLAN وسجل جلسة جديد وهذه الرسالة بعد كل تقدم وCI، ثم تحقق من HEAD الجديد. لا تدّع عملاً في الخلفية.
