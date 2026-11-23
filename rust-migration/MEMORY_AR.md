# ذاكرة CP-RUST طويلة المدى
**آخر تحديث 2026-11-23، ضمن فرع experiment/rust-core-migration فقط.**
هذه ذاكرة تقنية داخل المستودع؛ يجب أن تتحدث بعد كل جلسة/قرار/اختبار حسب rust-migration/AGENTS.md. لا تدع تحديث مستودع داخل جلسة يعني عملاً دورياً خارج المحادثة.

## الهدف المثبت من المالك
اعتماد Rust ومكتباتها عندما تكون مفيدة فعلاً في:
1. تحميل الحلقات؛
2. مئات التحميلات والطوابير؛
3. threads/CPU/RAM وعمليات الخلفية؛
4. استئناف التحميل بعد الإنترنت/موت العملية/فتح التطبيق مجدداً؛
5. إدارة الملفات وعمر التحويل إلى MKV مع إبقاء FFmpeg الحالي.
لا تبديل لواجهة Cinemana Pro في مسار Rust، ولا خسارة أي ميزة، ولا حذف بيانات المستخدم.

## المستودع
- repo: https://github.com/alwansan/CP
- write only: experiment/rust-core-migration، مشتق من feature/download-stability عند c68c0d80722765409f8544d499938a656217967b.
- read only: feature/download-stability, main, Html, feature/local-account, experiment/rea-source-recovery, alwansan/CL.
- APK الأصل APKTool/Smali مع Java helpers في patches/local-account؛ ليس مشروع Kotlin كامل قابل للترجمة الآلية.
- وثائق المصدر المرجعية: docs/DOWNLOAD_EXECUTION_DESIGN_AR.md وdocs/DOWNLOAD_IDLE_RESOURCE_POLICY_AR.md وdocs/DOWNLOAD_RESOURCE_AUDIT_AR.md وdocs/CP_DL_H68_CLOSURE_AR.md وdocs/CP_DL_B1B2_ART_HOTFIX_AR.md.

## حقائق معمارية حاسمة
- BatchDownload$Screen تجهيز UI والدفعات؛ Queue110 وRestart108 admission/recovery؛ FileDownloader ينقل البيانات.
- MkvExporter/MkvReconciler يراقبان التحويل والاسترداد، ويتعاملان مع Downloads DAO.
- AndroidManifest package com.cinemana.pro مع خدمة FileDownloadService$SeparateProcessService في :filedownloader.
- MuxSlotsDL.java: ثلاث تصاريح mux مشتركة main/:filedownloader؛ احتفظ بـLease115 per-source أولاً. FFmpeg الأصلي موجود في arm64 libs/assets.
- LocalRuntime يدير الحساب والاشتراكات والتحديثات؛ لا تنقله اعتباطياً أو تعطله.
- R0 Rust in-memory فقط: 5 tests، idempotent batch IDs, generation/stages؛ لا persistent DB أو JNI أو network أو FFmpeg.
- run 45110102602 success Linux fmt/clippy/tests؛ run 45110176247 success Android ARM64 libcp_rust_core.so، artifact 14788429301. هذا ليس APK.
- baseline h68: 35 accepted في 3.112s و452 MKV/452 proof، لكن E24/E26 sidecars وrepeated promotions/DB warning issues ما زالت تحتاج تحقق. أرقام h68 ليست قياس Rust.

## قرارات السلامة
- اختيار runtime واحد logical owner ومنع duplicated downloads/FFmpeg.
- Durable ACK فقط بعد commit، وليس بعد UI أو Rust in-memory.
- حفظ package/cert/versionCode + migrations compatible + upgrade بدون clear data.
- Android system force-stop لا يمكن ضمان الاستمرار بعده قبل فتح المستخدم.
- Rust ليس ضماناً لسلاسة الواجهة: لا blocking UI، اقرأ RSS/PSS/threads/frame stats.
- مكاتب مرشحة: Tokio وReqwest، مع benchmark قبل اعتمادها؛ FFmpeg يحتفظ بمهمته.
- بنية موافقات: ABI probe read-only، shadow mode، durable journal، policy migration، network migration المشروط، mux, device parity.
- يمنع تخزين raw signed URLs/account data في السجلات أو التوثيق.

## ملفات الاستئناف الحية
- rust-migration/PLAN_AR.md: خطة R0–R7، بوابات وشروط انتقال.
- rust-migration/ARCHITECTURE_AUDIT_AR.md: مسارات ونتائج الفحص.
- rust-migration/DECISIONS_AND_RISKS_AR.md: ADR/risk register.
- rust-migration/TEST_MATRIX_AR.md: T01–T20، تجارب CI/ART/phone.
- rust-migration/STATE.json: status عملي.
- rust-migration/RESTORE_SESSION_AR.md: أهم ملف جلسة جديدة.
- rust-migration/sessions/2026-11-23-r1-planning-02.md: جلسة التخطيط الحالية.
انتبه: AGENTS.md الأصلي في جذر المستودع متعلق بـCP-DL؛ اتبع rust-migration/AGENTS.md في هذا المسار، مع احترام تعليمات حماية البيانات المشتركة.

## الخطوة التالية المعتمدة
R1: اسحب call graph ومخطط Room والـservices، وابن JNI ABI read-only داخل APK تجريبي، وافحص ART/ABI/device دون تشغيل أي نقل Rust. إذا أثبتت هذه البوابة السلامة، ننتقل إلى durable queue R2.
