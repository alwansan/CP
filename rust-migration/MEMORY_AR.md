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

## جلسة R1 JNI — 2026-11-23
- كود Rust: native JNI export `Java_com_shabakaty_cinemana_local_RustAbiProbe_nativeVersion` بإرجاع version=1 فقط، بلا state أو network.
- `RustAbiProbe.smali` فقط في rust-migration/android/، يُضاف إلى generated classes11 أثناء workflow الخاص بالفرع، وليس خطاف تشغيل production.
- exact signed APK diagnostic مع `libcp_rust_core.so` لكل من ARM64/x86_64، وhelper compile وDEX/zipalign/sign checks نجحت في run 45112292108؛ اختبار Android15 ART كان in_progress عند توثيق هذا التقدم. artifact id 14790505739، لا Release.
- اختبار ART معزول وسيناريو Dialog الحقيقي يستخدم DexClassLoader على signed candidate ويتحقق من Rust native version، لكنه ليس اختبار فتح التطبيق على هاتف.
- مراجعة كود إضافية: BatchDownload$Screen -> BatchDownload.call("m")، Queue110.remember -> Queue110.save -> Restart108.put (SharedPreferences commit) per task؛ لا يوجد دليل أن 500 عنصر commit في معاملة واحدة. Queue110.scanBody يستعمل DAO عبر Restart108.exp -> MkvExporter.getDownloadsDao. راجع R2_STORAGE_CONTRACT_AR.md.
- المطلوب التالي: نتيجة ART ثم Android runtime/phone ABI proof ونقاط ملكية DB، لا نقل actual bytes قبل ذلك.

## نتيجة Android15 ART النهائية — 2026-11-23
- Run 45112292108 completed/success. 5/5 Rust tests PASS، APKTool signed/verify/DEX PASS، ARM64/x86_64 .so packaged.
- exact signed-candidate isolated ART: `CPRUST_R1_JNI_PASS abi=1`؛ `CPDL_ART_PASS family=54 opens=2 refresh_paths=4 closes=2 backend=6 synthetic_slots=2 lease_duplicate_rejected=1`، `INSTRUMENTATION_CODE: -1`.
- Artifact 14790505739 `Cinemana-CP-Rust-R1-JNI-Diagnostic`؛ ما يزال diagnostic APK وليس تحديثاً للاستخدام؛ لم يُختبر Android 15 **فتح التطبيق الكامل** أو هاتف المالك، ولا تحويل أي download حي إلى Rust.

## تحديث R2 — 2026-11-23 (fixture فقط)
- Rust `rust-core/src/durable_fixture.rs`: مخزن دفعات اصطناعي بملف snapshot مُكتب atomically و`fsync` قبل receipt، مع `flock` لمالك وحيد وCRC32 لحماية من التمزق، ومقارنة payload كاملة للـbatch ID.
- `run 45113493256` **SUCCESS**: 14/14 Rust tests، fmt/clippy/Linux/Android arm64 .so. الاختبارات تشمل 500 طلب، 400+500 متداخلة، sim crash قبل/بعد rename، رفض تغير payload، 2nd owner، corruption. الدليل: rust-migration/R2_DURABLE_FIXTURE_REPORT_AR.md.
- **ليس** تخزين مستخدم، ولا ربط Room/Queue110 أو JNI runtime؛ format snapshot غير مناسب لادعاء حل scalable production queue. `Fault` حقن اصطناعي وليس SIGKILL حقيقي؛ لا claim كاملة.
- الخطوة التالية owner mapping/Room WAL والعقد الدائم الذي يندمج مع المصدر، وتمرين OS kill فعلي في بيئة معزولة.

## عملية قتل فعلية SIGKILL — 2026-11-23
- `rust-core/src/bin/r2_fixture_worker.rs` + `rust-migration/tests/test_sigkill.py`: اختبار Linux child process بـSIGKILL فعلي بدل الاكتفاء بحقن Error. اختبار 1 يقتل مالك القفل قبل أي commit ويتحقق من 0 tasks، واختبار 2 يثبت حفظ 500 intents ثم يقتل المالِك مع بقاء القفل مفتوحاً، وبعدها يفتحها process آخر دون فقد أو تكرار.
- Run 45113795022 **SUCCESS**؛ marker `CP_R2_SIGKILL_PASS before_commit=0 after_commit=500 lock_released=1 replay=1`، Rust unit 14/14 وAndroid ARM64 crossbuild PASS.
- حدود الدليل: ليس قتل وسط write/fsync فعلي، وليس Android process ولا Room/FFmpeg. لا تبدأ production.

## اكتشاف schema الأصلي — 2026-11-23
- `DownloadsDatabase_Impl$a.smali` ينشئ `Downloads` بPRIMARY KEY `(task_id,external_id)` وfields progress_bytes/title/url/img/path/size_bytes/status/last_updated؛ لا `batch_id`.
- Room `DownloadsDatabase.p()` يرجع DAO obfuscated `kz0`; `ut3.a()` builder، MkvExporter.getDownloadsDao يحفظ `DL_SHARED_DAO` داخلياً.
- `NativeBatchScope` يمتد `DownloadActionsHandlerScope.m()` التي تستخدم MkvPlanStore و`i44` API وcoroutines. مجرد `BatchDownload.call("m")` ليس receipt durable.
- راجع `rust-migration/R2_ROOM_SCHEMA_AUDIT_AR.md` قبل R2 shadow adapter. لا تكتب Rust إلى Room schema مباشرة.

## إعادة تحقق R1 مع كود R2 الأخير — 2026-11-23
- `run 45113795068` **SUCCESS** على code SHA `40837af4e89a4c5463305885f488943022c03702`: Rust 14 tests، signed APK DEX، ART Android15 isolated.
- Log: `CPRUST_R1_JNI_PASS abi=1`؛ `CPDL_ART_PASS family=54 opens=2 refresh_paths=4 closes=2 backend=6 synthetic_slots=2 lease_duplicate_rejected=1`؛ `INSTRUMENTATION_CODE: -1`.
- Artifact 14791210489 `Cinemana-CP-Rust-R1-JNI-Diagnostic`؛ لا تثبت نسخة تشغيل كاملة أو هاتف أو actual download Rust.
- `run 45113795022` Rust Core SUCCESS: 14/14 + SIGKILL Linux + ARM64 .so.

## جلسة R2 Shadow JNI — 2026-11-23
- أضيفت `shadow_audit.rs` و`jni_shadow.rs` باستخدام jni=0.21.1 لنقل **مصفوفة أرقام اصطناعية** عبر JNI (حد 1000/4096)، وحساب 200 new/200 existing/100 duplicate من 500 معرّف؛ الاستثناءات Java بدل silent bad ACK.
- `RustAbiProbe.smali` حصلت على `shadowAudit([I[I)J`، وART صار يرفض النجاح بدون marker اختبار 500 وinvalid/oversize.
- `run 45115514740` SUCCESS: 19/19 tests، clippy/fmt، SIGKILL Linux، ARM64 native build. `run 45115514777` signed Android15 ART **لم يتحقق بعد** أثناء تحديث الملفات.
- read-only فقط ولا اتصال بـRoom أو Downloads / الهاتف. الخطة التالية typed async event bridge بعد إثبات mapping `(task_id,external_id)` ومُلكية الخدمة.
- تقرير مستقل `rust-migration/R2_SHADOW_JNI_REPORT_AR.md`.

## R2 Shadow JNI confirmed on Android 15 — 2026-11-23

GitHub Actions run 45115514777 completed SUCCESS on code SHA 4534e7dea2bb595e0036dbf789202c493fd08064. Signed APK DEX checks, ARM64 and x86_64 Rust native builds, and isolated x86_64 ART instrumentation passed. Artifact 14791611443 (Cinemana-CP-Rust-R1-JNI-Diagnostic).

Exact log markers:
- CPRUST_R2_SHADOW_PASS selected=500 new=200 existing=200 duplicates=100 invalid_rejected=1 oversized_rejected=1
- CPRUST_R1_JNI_PASS abi=1
- CPDL_ART_PASS family=54 opens=2 refresh_paths=4 closes=2 backend=6 synthetic_slots=2 lease_duplicate_rejected=1
- INSTRUMENTATION_CODE: -1

Rust host run 45115514740 also completed SUCCESS: 19/19 unit tests, Clippy, fmt, real Linux SIGKILL regression fixture, Linux/Android ARM64 builds.

SCOPE: Arrays are synthetic. Signed APK was loaded in isolated ART instrumentation, not as the installed Cinemana app on a phone. No production Room, Queue110, network/FFmpeg data flow, real durable ACK, or live downloader integration has been validated. Do not release as production.

## Room migration code inspection — 2026-11-23

The real APK Smali file app/smali/com/shabakaty/downloader/data/db/DownloadsDatabase_Impl.smali passes schema version 2 into DownloadsDatabase_Impl$a. The source file app/smali/com/shabakaty/downloader/data/db/a.smali is DownloadsDatabase_AutoMigration_1_2_Impl, explicitly mapping migration 1 to 2. It rebuilds _new_Downloads, copies existing columns via INSERT SELECT, drops the old table, renames, and restores the unique index on task_id + external_id. The Downloads table has no batch_id. Do not modify Room schema version 2 or this migration in the Rust diagnostic phase. Any real batch-header migration requires separate compatibility validation.

## 2026-11-23 R2 composite event observer checkpoint
- Rust `shadow_events.rs`: task_id+external_id composite Room-row model (not stable episode key), generation & role (main/:filedownloader) for synthetic first/mirror/repeat/stale/advance comparisons. 500 test -> first300/mirror100/repeat50/stale50. No DB or actual source event tap.
- `RustShadowEventWorker.java` CI-only staging to diagnostic APK: 1 off-main worker + 16 bounded pending batches, deep copies arrays, overload throws/counters, rejects URL-looking external IDs in Rust. JNI typed String[]+long[]+int[]; local ref cleanup.
- `45117076600` SUCCESS Rust Core: 24/24 tests, fmt/clippy, SIGKILL & ARM64 .so; `45117076689` Android15 ART pending at checkpoint. More in R2_COMPOSITE_WORKER_REPORT_AR.md.
- `lz0.smali` Room DAO has WHERE task_id and WHERE external_id queries independently even though schema composite primary key; do not treat partial selector as unique. Source branch unchanged.

## بوابة R2 composite events — نجحت (2026-11-23)
- run 45117076600 Rust Core **SUCCESS**: 24/24 tests، fmt/clippy، SIGKILL Linux، ARM64 library.
- run 45117076689 signed diagnostic APK Android15 isolated ART **SUCCESS**: `CPRUST_R2_EVENTS_PASS selected=500 first=300 mirrored=100 repeated=50 stale=50 advanced=0 async=1 saturated=1 invalid_rejected=1`, واستمرار `CPRUST_R2_SHADOW_PASS` و`CPRUST_R1_JNI_PASS` و`CPDL_ART_PASS`. Artifact 14792057535؛ لا production APK.
- الهدف التالي: passive Queue110 hook مصمم ليكون optional/disabled-by-default، nonblocking/fail-isolated، ولا يمسّ DB أو يرسل transfer/MKV؛ يحتاج حماية الـcallback execution وتأكيد source process.
