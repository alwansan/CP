# تدقيق بنية Cinemana Pro لترحيل Rust
التاريخ: 2026-11-23. فرع المصدر feature/download-stability عند c68c0d80722765409f8544d499938a656217967b، وفرع التنفيذ experiment/rust-core-migration.
هذه مراجعة لمسارات محددة من المصدر الفعلي وتقاريره، وليست تدقيقاً شاملاً لكل تعليمة Smali، ولا برهاناً جديداً على أداء هاتف.

## المكوّنات التي فُحصت فعلياً
| المكوّن | الملف/المواضع المؤكدة | العقد الحالي |
|---|---|---|
| BatchDownload$Screen | Cinemana_PATCH252_Project/app/smali_classes6/com/shabakaty/cinemana/ca1/BatchDownload$Screen.smali: begin 255، enqueue 702، lambda begin 1388، laterRefresh 2480 | تجهيز metadata والدفعة وعمر شاشة التحميل وThreadPoolExecutor؛ تقارير المصدر رصدت all-ready barrier وenqueue على main |
| Queue110 | نفس مجلد ca1: Queue110.smali: bind 305، bindingResult 409، remember 2626، scanBody 3359، submitted 4053، terminal 4150 | طلبات الطابور والـreplay والربط بالخدمة؛ توجد حراسة throttle؛ bindingResult وحده لا يثبت READY |
| Restart108 | ca1/Restart108.smali: bootstrap 544، mp4Complete 2239، put 2770، reconcile 3148، repair 5101، start 6047 | journal/الاسترداد ومطابقة الهوية، والـDB completions؛ حافظ على durable state |
| FileDownloader | smali_classes3/com/liulishuo/filedownloader/download/FetchDataTask.smali: run 327؛ services/FileDownloadThreadPool.smali: setMaxNetworkThreadCount 543 | المالك الحالي لنقل البايتات، وعدد threads الفعلية |
| MkvExporter | smali_classes3/com/shabakaty/cinemana/features/MkvExporter.smali: exportLocked 1383، getDownloadsDao 4004 | تحويل MKV وFFmpeg وDAO، مع استدعاءات MuxSlotsDL |
| MkvReconciler | features/MkvReconciler.smali: reconcileDiskVideo 1146، requestAudit 1778، scheduleAudit 1785، hasWork 1822 | ملفات MP4/temp وaudit؛ AUDIT_PENDING coalescing موجود |
| MuxSlotsDL.java | patches/local-account/src/com/shabakaty/cinemana/local/MuxSlotsDL.java | ثلاثة تصاريح مشتركة على مستوى التطبيق باستخدام FileLock؛ Lease115 للمصدر قبلها |
| TokenWorkDL.java | patches/local-account/src/com/shabakaty/cinemana/local/TokenWorkDL.java | bounded coalescing على منفذ قائم؛ cap=128، ليس queue جديدة |
| LocalRuntime.java وExpiredLink269.java وTraceWriterDL.java | patches/local-account/src/com/shabakaty/cinemana/local | الحساب والاشتراكات، recovery للروابط المصرح بها، logging غير متزامن؛ logs ليست durable receipts |
| AndroidManifest.xml | Cinemana_PATCH252_Project/app/AndroidManifest.xml | package com.cinemana.pro؛ FileDownloadService$SeparateProcessService في :filedownloader؛ SharedMainProcessService؛ DownloaderService نوع dataSync |
| المكتبات | app/lib/arm64-v8a/ وapp/assets/ffmpeg | libffmpeg.so, libavcodec.so, libavutil.so, libswscale.so, libswresample.so وasset ffmpeg؛ يجب حفظ عمل FFmpeg |
| Rust الحالي | rust-core/src/lib.rs | فقط TaskKey وidempotent batch simulation وgeneration fencing وstage validation داخل الذاكرة؛ لا شبكات أو SQLite أو JNI |

## دليل مقارن من تقارير الفرع
- docs/DOWNLOAD_RESOURCE_AUDIT_AR.md: 8188 تحذير SQLiteConnection leaked (أحداث وليست اتصالات unique) وحالتا startup ANR بعد force-stop في عينة أقدم؛ ليس إثبات OOM دائم.
- docs/DOWNLOAD_EXECUTION_DESIGN_AR.md: مسار Queue110.scanBody → Restart108.exp → MkvExporter.getDownloadsDao، all-ready preparation barrier، وعمليات enqueue main، ودور DAO owner الحساس.
- docs/CP_DL_H68_CLOSURE_AR.md: baseline B1b3-12 مقبول وظيفياً؛ دفعة 35 accepted في 3.112s؛ 452 MKV و452 proof، لكن بقي sidecars E24/E26، وSQLITE_BUSY/DB_PROMOTE_FAIL/repeated promotions. Peak threads 249 في نافذة h68. لا تساوِ غياب ANR في نافذة محدودة مع ضمان كامل.
- docs/CP_DL_B1B2_ART_HOTFIX_AR.md: VerifyError حقيقي بسبب wide register clobber في Smali؛ المصدر والتوقيع وحدهما غير كافيين دون ART dialog smoke.
- docs/DOWNLOAD_IDLE_RESOURCE_POLICY_AR.md: Persistence123 نحو 5s، Performance116 نحو 2s وaudit coalescing موجودة، فلا تخترع إصلاحات لغياب guards ليست غائبة.

## الاستنتاج المعماري المستهدف
- Android يتولى Activity/واجهة العرض، accounts، permissions، foreground service، player، notifications، DB owner والتخزين المرخص.
- Rust logical core واحد يقرر admission والدفع المتدرج للمهام، identity/dedupe، scheduling والـbackpressure والـretry، state transitions والتجميع الحساس للأحداث. يبدأ في shadow mode.
- JNI/IPC حدود typed versioned: لا Activity reference طويل العمر، لا I/O على main، استثناءات/panic منضبطة؛ generation يفصل callback قديم بعد إلغاء.
- الكتابة durable وإصدار ACK لهما مالك واحد متوافق مع Room والجورنال، ولا نعتمد على قبول in-memory وحده.
- FileDownloader يبقى مالك bytes إلى حين اختبار replacement، وFFmpeg يبقى mux؛ لا 2 actual queues أو 2 mux owners.
- عند تبديل المسار تُستخدم flags قابلة للرجوع بدون إزالة ملفات أو DB، ويثبت التوقيع وpackage/versionCode.
- force-stop النظام يوقف التطبيق؛ لا توجد آلية مشروعة تضمن الاستمرار تلقائياً من force-stop دون فتحه مجدداً.

## الأسئلة المفتوحة التي تتطلب فحصاً في مرحلة R1
1. call graph الفعلي من on-click وBatchDownload إلى native FileDownloader وRoom DAO وUI progress، بما في ذلك delete/pause.
2. مخطط DB واسمها وWAL وownership والتحديثات بين main و:filedownloader وسبب سجلات النهوض القديمة.
3. هوية الحلقة والملف والـURL validator ورابط المحتوى الموقّع وRange، وما هو proof النهائي.
4. ملفات FFmpeg وكيف تُستخدم عبر executable أو .so وما يحدث عند kill بين exit0 وDB commit.
5. Android ABI x86_64 للـART emulator إلى جانب ARM64؛ DEX method references وpackage/signature/versionCode.
6. قياسات baseline الجديدة وتغطية السجلات قبل/بعد على نفس الجهاز وحمل 100/400/500 حلقة.

## مراجع تقنية خارجية تحققنا من محتواها
- Android NDK/JNI: https://developer.android.com/ndk/samples/sample_hellojni
- cargo-ndk: https://docs.rs/crate/cargo-ndk/latest
- Tokio runtime وbounded concurrency: https://docs.rs/tokio/latest/tokio/runtime/
- Tokio spawn_blocking caveat: https://docs.rs/tokio/latest/tokio/task/fn.spawn_blocking.html
- Reqwest HTTP streaming مرشح وليس قرار استبدال: https://docs.rs/reqwest/latest/reqwest/
- Android foreground/background restrictions: https://developer.android.com/develop/background-work/services/fgs/changes
