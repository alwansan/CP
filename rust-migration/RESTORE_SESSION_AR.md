# استعادة جلسة Rust Core — Cinemana Pro (2026-11-23)
أنت تعمل على experiment/rust-core-migration فقط في alwansan/CP. أساس النسخ feature/download-stability عند c68c0d80722765409f8544d499938a656217967b. لا تعدّل المصدر أو main أو Html. لا تخلط هذا المسار مع CP-DL أو واجهات HTML الحالية.
اقرأ rust-migration/README_AR.md وPLAN_AR.md وSTATE.json وسجل rust-migration/sessions/2026-11-23-r0.md ثم AGENTS.md الأصلي وdocs/DOWNLOAD_EXECUTION_DESIGN_AR.md وdocs/DOWNLOAD_MAP_AR.md. تحقق من HEAD وGitHub Actions فعلياً.
آخر عمل: إنشاء فرع معزول وRust crate مع عقد تجريبي in-memory: هوية الحلقة/المصدر/الجودة/output، batch ID dedupe وconflict، generation fencing، منع stage-skips وخمسة اختبارات. أُضيف Workflow rust-core-check.yml؛ **لم تتم مشاهدة نتيجة تشغيل CI بعد**. لم يتم بناء APK أو lib Android ولم يجر ربط JNI أو تبديل المحرك؛ لا تدّع نجاحاً أو اكتمال ترحيل.
الخطوة التالية: تحقق من CI أولاً وأصلح صياغة Rust إن فشلت الاختبارات، ثم استخراج نقطة اندماج Java/Smali صغيرة للقراءة فقط وبناء Android ARM64 .so مستقلة، وبعدها اختبارات ART قبل تشغيلها في التطبيق. لا تنشئ Queue ثانية ولا تغير DB/FFmpeg/حذف ملفات.
حدّث هذه الرسالة وSTATE وPLAN وسجل جلسة جديد عند أي تقدم أو فشل؛ أبقِ مصدر المستخدم سليماً.
