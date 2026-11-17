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

## نتيجة البناء A1
CI 44143681956 completed/success؛ compile/tests/sign/verify/upload ناجحة حسب jobs، release cp-dl-A1-1 asset verified 56290332 bytes sha256:b4e106499ab5f0cc57772ea340acefabaaecc9dab136365a8ace8d00f903cedd. APK: https://github.com/alwansan/CP/releases/download/cp-dl-A1-1/Cinemana_CP_DL_A1_signed.apk. code SHA af61b15396502d517ff5c9b71c78eb010810505e. لا اختبار CP على الهاتف بعد. CLog new raw 1790 leaks all main PID6094؛ 388 Queue110 lock samples matching tag (markers not unique locks), 6 DownloadTrace. CLog interval 3004–5528ms, median3117; shell CPU median3.705% one core, not total collector. gfxinfo final P95 20ms/P99 93ms, 251 janky markers out of 4228 cumulative frames, scope not pure idle. New dataset still legacy backlog; do not compare directly with fresh A1. CL log full size larger than ZIP tail. Next phone T01/03/04 then stress and force-stop; do not claim complete fix.

## A1 تجربة الهاتف وA2
A1 CLog session 210751: 0 SQLite leak, 0 ANR, 0 startup timeout; peak447 threads,42 unique MKV/183 DB promotes, 2 SQLITE_BUSY, 120s source wait, UI oscillation. CL tree44 MKV/19 MP4/2 temp. A2 scoped: 2 mux slots, 15s wait, safe advisory state cleanup, bounded8 rotating audit, no-op ledger, coalesced UI. docs/CP_DL_A2_AR.md; memory/sessions/2026-11-17_cp-dl-a2-implementation-07.md. pending CI/device.

## أول محاولة CI لـA2
Run 44149109180 فشل في test_recovery_flow.py بسبب Unmodeled instruction: if-lez v2, :ordered_done؛ المحاكي لم يدعم شروط/حقل cursor الجديدة. وسّع المحاكي لدعم sget/sput AUDIT_CURSOR, if-lez/ltz, if-ge/lt؛ اختبار 25 ملفات يثبت أول 24 بالترتيب ضمن 8/دورة ووصول 25، واختبار تقلص المجلد وإعادة المؤشر؛ لا تعطيل أو تخفيض اختبارات التحقق. البناء الجديد مطلوب.

## CL full logs + A2 CI final
CL pinned 0a9ff937794376130b07691b9a2f48398fbd7f79 full downloads.log 14174 lines: 83 video completion markers, 63 unique video task IDs; 68 recovery timing samples max25168ms. Full MKV log: 198 DB_PROMOTE_SUCCESS for 44 distinct external IDs (ZIP partial 183/42), 46 acquire/41 release. Not all pending leases are leaks. Batch: 20 selected/19 accepted/1 existing, 220 selected/200 accepted/20 existing, all 21 skips explicitly existing; no loss proven at admission. Second quality ready span489ms, detail ready span2178ms, dispatch span34367ms, full admission37.193s. First batch 2.205s. E23 video completed 21:15:24.112, DB confirmed21:15:24.127; E24 video completed21:15:22.507, DB confirmed21:15:22.544; MKV UI queued 21:15:26; no later video DOWNLOAD_STARTED in captured full log for E23/E24. Subtitle task IDs separate. Screens21:16:56/58 show status fluctuation after verified native completions; likely stale UI/DB status race, no proof exact writer. 
A2 CI first run44149109180 failed old simulator; second run44149544059 completed/success; signed APK published https://github.com/alwansan/CP/releases/download/cp-dl-A2-3/Cinemana_CP_DL_A2_signed.apk size 56290332 digest sha256:b84ab2ffeeb8b14374d72934afc83cbcfc2975c44786846f0b74f83c46e22e0e; build SHA ce67debfb802de548a4edf22395d3989f972452b. Source changes 1d0e97656e80b17a7f3845bed3655227be6f0e15; test fix ce67debfb802de548a4edf22395d3989f972452b. No device validation yet. Progress sampler lock split actually applied after checking map uses; file logger remains synchronous. Two mux workers experiment, 15s readiness timeout, 8 candidate rotating audit retain 5s active polling and list/sort; full adapter refresh remains but coalesced 250ms; ledger no-op reduces writes, not DB promotion dedup. Follow-up priority: call graph of native completion and durable receipt, idempotent DB promotion, epoch-aware state/UI, durable batch admission and incremental scheduler, idle/async log. Preserve A1 backlog (back up first), test 5min resume without restarting; check old MP4 and newest progress, then small batches and heavy once stable. Do not wipe, do not claim full fix. 

## A2 device / A3
docs/CP_DL_A3_AR.md: 619+78 samples, A2 existing backlog cleared, 2+0 leak markers, ANR0; 7 HTTP403; two new batches197+35 accepted, subtitle 1056 excess submit markers; A3 strict subtitle receipt, bounded retries/dependency, optional size suspend/coalescing; no full redesign or HTML. memory/sessions/2026-11-17_cp-dl-a3-implementation-08.md.

## نتيجة CI A3 وقراءة إضافية
CI 44163124193 completed/success، A3 APK signed published https://github.com/alwansan/CP/releases/download/cp-dl-A3-4/Cinemana_CP_DL_A3_signed.apk، bytes 56290332، sha256:1a990a2492f99367f138ee44b9c6fcb11b059158e3e27ea4d50f863465d1673c، code cc4576f122edfdbf1905f3e5cc36f0707ba36f79. Tests source guards/account/recovery/build/sign/Dex; not phone proof. Full CL selection_range from1 to200 matches197 BEFORE enqueue, not lost three at admission; exact missing episode IDs/catalog explanation not yet proved. 65/232 dispatch entries bytes=-1; size preview already not hard prerequisite; A3 pauses optional HTTP while busy but still waits metadata and dispatches via main, durable admission B1 remains. Second CLog coverage lag21.1MB compensated by full CL downloads/batch/export/tree. Owner reports queue invisible; accepted means native method returned, not durable-visible confirmation. Test A3 with existing 197+35 pending (backup), compare repeated subtitle starts (1056 excess in prior stress window), verify old/new tasks/MP4→MKV, two overlapping small then large batches, no forced restart, seven HTTP403 recovery not claimed fixed. Preview workers remain 3, 6 metadata. No HTML conversion, no failed-only button yet. No destructive changes. UI discussion: WebView not zero resource; benchmark local native vs WebView after stable backend. 

## نقطة الاستئناف الفعلية — B1 handoff09
docs/CP_DL_B1_HANDOFF_AR.md; memory/sessions/2026-11-17_cp-dl-b1-handoff-09.md. A3 CI/release verified, no A3 phone proof. Screen.begin waits all metadata; enqueue main8ms per item, NativeBatchScope.m void launches async video and subtitles; accepted not DB proof. Dialog closed drops queued callbacks/shutdownNow; lifecycle observer per scope; possible contributor not proven for second batch. Selected error blocks ready rows; enqueue catch not setting error. B1 durable admission/receipt/failed-only filter/bounded authorized retry/preview progression next; HTML discussion only. No runtime change in handoff.
