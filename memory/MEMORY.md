# الذاكرة الهندسية — CP-DL

تأسيس 2026-11-17؛ فرع feature/download-stability من feature/local-account، الأساس 82d7f67037f67659115d41782d3a9b5bf4e0bd02. لا تخلط ذاكرة هذا الفرع مع experiment/rea-source-recovery. ذاكرة REA القديمة مرجع تاريخي فقط، لا تُنقل تعليماتها أو حالتها تلقائياً.

## نقطة الانطلاق المثبتة
- PATCH274، commit 2026-10-29 08:02 UTC: تفضيل صور الإشعارات متوسطة الدقة مع fallback صغير، دون تغيير توقيت الفحص أو بيانات الحساب حسب تقرير PATCH274.
- CI: https://github.com/alwansan/CP/actions/runs/40839279548 ناجح على SHA الأساس؛ artifact 12881579576 وقت التأسيس غير منتهٍ: https://github.com/alwansan/CP/actions/runs/40839279548/artifacts/12881579576
- الإصدار: https://github.com/alwansan/CP/releases/tag/local-account-PATCH274-10 ؛ target مطابق للأساس؛ APK موقّع 56,290,332 بايت. المالك سيجرب هذه النسخة. لا توجد نتيجة هاتف جديدة مثبتة في جولة التأسيس.
- المشروع Cinemana_PATCH252_Project/app/ مفكك APKTool؛ مجلد patches/local-account فيه Java helpers وbuild.py وpatch_android.py وvalidate.py وrun_tests.py وtests/stubs. scripts/ فيه تحقق recovery/DEX. لا يوجد recovery/ في جذر هذا الفرع عند الفحص.
- ملف .github/workflows/local-account.yml يبني helpers، يفحص references/recovery وDEX، يجمع APKTool، يوقع ويفحص وينشر prerelease. push محصور feature/local-account؛ workflow_dispatch موجود؛ لا تعديل له في التأسيس. إعداد نشر مستقل للفرع الجديد مطلوب قبل نشر نسخ إصلاحه.
- CI_BUILD.md وتقارير patch_notes قد تذكر فروعاً/إصدارات تاريخية؛ مصدر الحقيقة هو الكود الحالي.

## التاريخ المرتبط بالتنزيل (من تقارير موجودة في الأساس؛ تحقق من التنفيذ الحالي قبل الاعتماد)
- PATCH258: زر إصلاح التحميل يستدعي Queue110.scan وMkvReconciler.reconcileAll وRestart108.wake مع حراسة الملكية. تقارير سابقة: MKV نجح ثم database commit incomplete بسبب task id صفري؛ قبول الصفر مشروط بتطابق المسار والحجم. UnknownHostException في تنزيلات متعددة مشكلة DNS/مصدر مختلفة؛ الزر لا يحل URL جديداً من تلقاء نفسه.
- PATCH260: كبسولات recovery داخل MP4/MKV ونسخ جانبية تاريخياً؛ PATCH261 يذكر ترك JSON خارج الحاوية، فلا تستنتج أن تضمين MP4/MKV لا يزال مفعلاً. افحص التنفيذ والـlogs.
- PATCH261: مسح MP4 مباشر حسب الأقدمية، استبعاد temp، دمج FileObserver وجدولة الخمول، إصلاح الربط وصلاحيات Smali، منع callback الترجمة من تلويث هوية الفيديو.
- PATCH262: نية حذف محفوظة وrequest epoch، إلغاء انتظار التحويل وإيقاف FFmpeg ومراجعة الملكية قبل حذف، إصلاح IllegalAccessError. لا تحذف تحت عامل حي.
- PATCH268: حماية الحساب المحلي وملف account.bin ومسار النسخ الاحتياطية؛ لا تخلط حساب المستخدم ببيانات التنزيل.
- PATCH273/274: foreground episode scan وصور الإشعار؛ الحفاظ عليهما شرط عدم regression.
- مشاكل قديمة تشمل .part المتوقف، تجديد URL، MP4→MKV، تعارض المهمة، DB promotion، high10/BUFFERING والبحث؛ ليست تشخيصاً للمشكلة الجديدة.
- مصادر التفاصيل: docs/DOWNLOAD_MAP_AR.md.

## السجلات الحية
CL/main يحوي log وdata وClog فعلياً بتاريخ 2026-11-17؛ لم يعد وضع 2026-11-09 صحيحاً. جرى جرد الملفات بالأسماء والأحجام فقط، ولم يُحلل محتوى السجلات الكبيرة أو بيانات الحساب. انظر docs/CL_LOG_SOURCES_AR.md.

## الحالة الحالية
المالك لم يصف العطل الجديد بعد. لا تعديل منطق التطبيق، لا بناء جديد أو تثبيت ضمن هذه الجولة. الأولوية استلام سيناريو محدد ومطابقة إصدار الهاتف والسجلات ثم التحقيق. كل جولة تسجل أدلتها وتحديث الذاكرة والاستعادة تلقائياً؛ لا انتظار لتذكير المالك.
