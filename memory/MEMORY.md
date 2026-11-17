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

## استعادة السياق — 2026-11-17
قرئت ملفات الذاكرة والبروتوكول والخرائط وسجل التأسيس، وفُحص HEAD 7d8ab7b2a7be802e37da85e24096504780ba69b7 قبل توثيق الجلسة. CI الأساس مؤكد success؛ Actions الفرع الجديد صفر عند الفحص. CL/log,data,Clog موجودة؛ جرد فقط. لم يصف المالك فكرة الإصلاح بعد؛ لا تعديل كود أو تشغيل بناء. سجل الجلسة: memory/sessions/2026-11-17_cp-download-restore-01.md.

## تحقيق ضغط التنزيلات 2026-11-17
راجع docs/DOWNLOAD_PRESSURE_AUDIT_AR.md للتفاصيل المثبتة والخطة. CA1 220/496 جودة مكتشفة؛ Shippuden 197 ضمن 1–200 والأرقام المفقودة من سجل الجودة 120/128/130. admission 41.484/59.686s مقابل 2.654/7.728s metadata، dispatch على main. Queue110 scan full snapshot وbind لكل task disconnected؛ 612 requests، 415 bind results، 1257 WAIT_SERVICE_BEFORE_DB events، recovery إلى 9.938s في عينة. MKV 4 مكتملة/16 MP4/2 temp، 16407 DB discovery logs، 4 acquire/2 release markers لا تثبت leak وحدها. main threads peak 360، RAM متاحة min نحو 2.85GiB، لا OOM مثبت. 216 recovery entries، 4 proofs، عينة 8 queued. CL internal log decode failed. الفروع السابقة مراجع قراءة لا دمج. الحالة: تحليل وخطة قبل التنفيذ؛ لا سبب واحد مؤكد لكل الأعراض. الجلسة memory/sessions/2026-11-17_cp-download-pressure-audit-01.md.

## تحليل الموارد المتقدم 2026-11-17
docs/DOWNLOAD_RESOURCE_AUDIT_AR.md: ZIP المالك حل مشكلة فتح CLog. 8188 leaked SQLiteConnection warnings جميعها downloads DB (main وfiledownloader)، confirmed repeated Room builder في PATCH274، قارن PATCH318. حالتا startup ANR في :filedownloader بعد force-stop (4 markers)، 4 kills ليست LMK. 156 max parallel requests while disconnected، 54 skipped frames، 24 UID lock samples DownloadTrace.log، native video HTTP403 E12. PATCH321 main-only repair guard + PATCH322 ART fix، PATCH312/313 verified receipts، PATCH305/314 log cap، PATCH327–330 lifecycle safeguards. لا دمج ولا runtime tests جديدة. الأولوية P0A Room lifetime ثم P0B service startup/bind ثم P0C logs. سجل memory/sessions/2026-11-17_cp-download-resource-audit-02.md.

## تصميم التنفيذ 2026-11-17
docs/DOWNLOAD_EXECUTION_DESIGN_AR.md وdocs/DOWNLOAD_DEVICE_TEST_MATRIX_AR.md. ثُبت begin barrier قبل enqueue، per-screen pools مع shutdownNow وPriorityBlockingQueue بلا bound. Queue110 يحصل على نفس MkvExporter DAO عبر Restart108.exp؛ bind 5s throttle وphase no-op، Restart108.put no-op+commit، Mkv audit AUDIT_PENDING موجودة؛ حافظ على الموجود وحسن التنسيق. خطة releases DL-A0/A1/A2/A3/B1/B2/C1/C2/D1/D2 صغيرة، test matrix T01–T14 + force-stop boundaries. لا runtime أو builds. memory/sessions/2026-11-17_cp-download-plan-03.md.

## سياسة الخمول والموارد 2026-11-17
docs/DOWNLOAD_IDLE_RESOURCE_POLICY_AR.md: Persistence123 5s cycle checks prefs/stamps، existing no-op guards وchanged/inventoryChanged; Performance116 2s heartbeat؛ CacheCleaner124 first2min/6h؛ Restart108 backoff حتى120s ولو pending=0؛ MKV hasWork active OR MP4/temp وAUDIT_PENDING. LocalRuntime hourly notifications + foreground min60s, preserve account. Profiles historical PATCH307 queue0 threads50->184; PATCH308 mixed player not true idle; PATCH317/320 recursive UI lookup. Event-driven idle/wake and blocked deadline, preserve critical commits, no forced GC or cancel active; UI delta, thumbnail cache proposal not proven cause. memory/sessions/2026-11-17_cp-download-idle-audit-04.md. No runtime/build changes.

## تحديث أداة CLog 2026-11-17
بتكليف منفصل للمالك: raf/clog only، dfe70d60 CI 44140583807 success published clog-8، 034f2b51 CI 44141066327 completed/success. مسارا Cinemana/work وDownload/Games/cl/Clog تلقائيان بصلاحية all-files، SAF fallback، raw source logs/census/coverage، CPU/RSS/PSS/threads/FD/IO/rates/disk/gateway/UI metrics وLMK classification؛ لا قراءة media/private DB، لا ضمان كل /proc/dumpsys metrics؛ docs/CLOG_DIAGNOSTICS_HANDOFF_AR.md. CP runtime untouched no build. memory/sessions/2026-11-17_cp-dl-clog-upgrade-05.md.

## تنفيذ A1
انظر docs/CP_DL_A1_AR.md. CLog9 جهازياً يعمل، 5 startup ANR و1790 raw SQLite warnings. نفذ A1 DAO cache/main guard/markers/fast lookup/monotonic bind throttle/progress log reduction; isolated workflow. CI pending عند commit؛ لا إثبات هاتف.
