# رسالة استعادة CP-RUST — 2026-11-23
اسم العميل CP-RUST. المستودع alwansan/CP وفرع الكتابة **experiment/rust-core-migration فقط**. المصدر feature/download-stability عند c68c0d80722765409f8544d499938a656217967b، للقراءة فقط. لا تعدّل main أو feature/download-stability أو Html أو feature/local-account أو CL. حافظ على بيانات user/signature/package/FFmpeg.
لا تخلط هذه الرسالة مع prompt/RESTORE_SESSION_AR.md الأصلي الخاص بـCP-DL.

## ابدأ مباشرة
1. تحقق من HEAD وGitHub Actions للفرع وHEAD المصدر الحيين.
2. اقرأ rust-migration/AGENTS.md وrust-migration/STATE.json وrust-migration/MEMORY_AR.md.
3. اقرأ rust-migration/PLAN_AR.md وrust-migration/ARCHITECTURE_AUDIT_AR.md وrust-migration/DECISIONS_AND_RISKS_AR.md وrust-migration/TEST_MATRIX_AR.md.
4. اقرأ أحدث rust-migration/sessions/2026-11-23-r1-planning-02.md ثم تقارير source: docs/DOWNLOAD_EXECUTION_DESIGN_AR.md وdocs/CP_DL_H68_CLOSURE_AR.md وdocs/CP_DL_B1B2_ART_HOTFIX_AR.md.
5. افحص Smali/Java/Manifest فعلياً قبل تعديل runtime. حدّث HEAD بعد كل commit.

## هدف المالك (مؤكد)
Rust: محرك تحميل الحلقات، إدارة مئات المهام والطوابير، threads/resources، resume بعد انقطاع، إدارة الملفات وحالة MKV، مع الإبقاء على FFmpeg الأصلي. أي UI/native Android features تبقى متوافقة؛ no data loss, no double downloading. تاريخ الانتهاء لا يُعتمد إلا على gates.

## ما أُنجز
- R0: نسخة branch مستقلة، rust-core in-memory task ledger و5 tests، ABI smoke C function.
- نجاح CI Linux 45110102602؛ نجاح CI Android ARM64 shared library 45110176247، artifact 14788429301؛ لا APK، ولا JNI/ART/Device proof.
- جلسة 2026-11-23 التخطيط: تدقيق معماري مستهدف، خطة R0–R7 كاملة، register للمخاطر والقرارات، test matrix T01–T20، AGENTS لانتظام التوثيق، MEMORY/STATE. لا تغييرات production downloader أو DB/FFmpeg. source branch unchanged عند آخر فحص.
- Baseline B1b3-12 H68 مقبول وظيفياً لكن E24/E26 sidecars وDB promotion وغيرها غير مغلقة. لا تقول كل المشاكل انحلت.

## الخطوة التالية الحقيقية R1
1. خريطة call graph ومسارات JNI/Java/Smali وملكية Room عبر main و:filedownloader.
2. ABI/JNI read-only probe + Android x86_64 وarm64 targets حسب test; package .so in isolated signed APK، verify symbol, exact ART load + BatchDownload dialog open.
3. لا تحويل لطلبات تنزيل حقيقية داخل Rust قبل durable ACK/schema mapping/shadow R2 وsingle owner.
4. إذا فشل CI، أصلح وكرر ولا تتجاوز ART أو signing. اطلب اختبار هاتف فقط عند milestone كبير مع logs diagnostics تلقائية.

## إلزام تحديث مستمر
عند كل نتيجة/فشل/قرار/اختبار: حدّث rust-migration/STATE.json، MEMORY_AR.md، PLAN_AR.md، DECISIONS_AND_RISKS_AR.md، هذه الرسالة، وسجل جلسة مستقل. تحقق من HEAD/Actions عند الانتهاء. لا تدّع تشغيل عمل في الخلفية لمجرد كتابة خطة.
