# R2 — Shadow JNI: اختبار تبادل دفعة اصطناعية بين Android وRust
التاريخ: 2026-11-23 — تنفيذ أولي على experiment/rust-core-migration.
**لا يوجد تشغيل لتحميل المستخدم، ولا استبدال لـQueue110 أو Room أو FileDownloader.**

## ماذا أصبح قابلاً للتنفيذ؟
- \`rust-core/src/shadow_audit.rs\`: خوارزمية مقارنة read-only/stateless تستقبل \`selected[]\` و\`already_known[]\` من integer IDs اصطناعية. تحسب \`new_unique\`, \`existing_unique\`, \`duplicates_in_selection\`. نفس المدخلات تعطي نفس النتائج، بدون state أو FS/DB أو شبكات.
- \`rust-core/src/jni_shadow.rs\`: واجهة JNI مستندة إلى \`jni = "=0.21.1"\`، تمرر مصفوفتي \`int[]\` من أندرويد إلى Rust مع حدود طول قبل التخصيص (1000 اختيار و4096 known). المعرّفات يجب أن تكون أكبر من صفر. \`catch_unwind\` لتطويق الـpanic عند FFI، و\`throw_new\` لاستثناءات Java؛ لا logging للمعرفات أو URLs. ترجع \`long\` pack لثلاثة عدادات 20-bit؛ **ليس transaction/receipt durable**.
- \`rust-migration/android/RustAbiProbe.smali\`: طريقة \`shadowAudit([I[I)J\` تستدعي native \`nativeShadowAudit([I[I)J\`. تُدخل إلى APK التشخيصي **خلال CI فقط** بعد codegen، ولا يوجد hook إلى Activity/Queue110/Restart108/Application. \`version()\` السابقة ما زالت تعمل.
- \`scripts/cp_dl_art/Probe.java\` و\`run.sh\`: اختبار حقيقي عبر JNI على Android15 isolated ART يُرسل 500 ID فيها 400 unique، و200 already-known و100 duplicates، ويتوقع 200 new/200 existing/100 duplicates؛ يكرر النداء ويتأكد من الاستقرار، يختبر empty/invalid/oversized ويفرض marker \`CPRUST_R2_SHADOW_PASS...\`. ما يزال يفتح نافذة BatchDownload الأصلية ويغلقها من دون أي تحميل.
- \`rust-migration/android/verify_candidate.py\`: يتحقق من descriptor native Shadow، ووجود ARM64+x86_64 ELF وغياب runtime hooks قبل النجاح.
- \`rust-core/Cargo.toml\`: دخلت مكتبة JNI بلغة Rust، ولا Tokio/Reqwest بعد. يجب تثبيت transitive dependencies بشكل قابل لإعادة الإنتاج قبل production release.

## ما تحقق فعلياً
- Runs الأولى فشلت بسبب rustfmt فقط، وتم تصحيح الفروق بلا تجاوز بوابة CI.
- \`run 45115514740\` **COMPLETED SUCCESS** على code SHA \`4534e7dea2bb595e0036dbf789202c493fd08064\`. 19/19 Rust unit tests (5 الأصلية +9 R2 fixture+5 shadow) وClippy وformat وLinux SIGKILL وAndroid arm64 .so build ناجحة.
- Android15 signed diagnostic APK + JNI shadow ART تشغيل \`45115514777\` كان ما يزال **قيد التنفيذ عند توثيق هذه المرحلة**. لا تعتبر R2 ART ناجحة إلا بعد استخراج marker من logs النهائية.

## تحذيرات مهمة / ما يزال مفتوحاً
1. int IDs اصطناعية؛ ID الأصلي في Downloads عبارة عن \`task_id + external_id\` ولا يكفي رقم واحد لتعريف episode مستقرة عبر إعادة التشغيل. أي وصول shadow لاحق للأحداث الحية يحتاج mapping موثّق، لا raw URL.
2. هذا *comparison-only JNI function* وليس ذاكرة للتحميلات ولا ACK إلى قاعدة البيانات ولا shadow listener متصلاً بالأحداث الحقيقية؛ لا تعديل لملفات المستخدم ولا مسار MKV أو HTTP.
3. signed diagnostic APK في CI ليس تحديثاً للإصدار الحالي، ولا اختبار فتح Cinemana التطبيق الكامل على جهاز ARM64. ART يستخدم DexClassLoader واستخراج .so من APK الموقع في بيئة معزولة.
4. دالة JNI تُنفذ بصورة متزامنة قصيرة على thread اختبار غير تابع للواجهة؛ لا يجوز نسخ هذا الأسلوب كما هو لدفعات ثقيلة على UI main؛ يجب إدخال bounded async bridge قبل real events.
5. ما يزال حفظ 500 طلب في \`DurableFixture\` أمراً مستقلاً تماماً؛ لا صلة لهذا الـreceipt بـRoom commit. 
6. راجع \`R2_ROOM_SCHEMA_AUDIT_AR.md\`، \`R2_STORAGE_CONTRACT_AR.md\`، \`DECISIONS_AND_RISKS_AR.md\` قبل أي تفعيل جديد.

## الخطوة التالية
- احصل على exact ART pass/fail وmarker أو traceback من run 45115514777؛ أصلح إذا فشل.
- أكمل تتبع task_id وexternal_id وDAO/Service ownership عبر main و:filedownloader، وقرر موقع read-only event tap.
- صمم JNI/IPC event envelope typed وbounded بلا raw URLs، وعلى thread منفصل، مع generation وsource identity؛ ابدأ مقارنة shadow دون dispatch أو database writes.
- لا تطلب من صاحب الهاتف تثبيت APK تشخيصي لهذا الاختبار الصغير. 

## R2 Shadow JNI confirmed on Android 15 — 2026-11-23

GitHub Actions run 45115514777 completed SUCCESS on code SHA 4534e7dea2bb595e0036dbf789202c493fd08064. Signed APK DEX checks, ARM64 and x86_64 Rust native builds, and isolated x86_64 ART instrumentation passed. Artifact 14791611443 (Cinemana-CP-Rust-R1-JNI-Diagnostic).

Exact log markers:
- CPRUST_R2_SHADOW_PASS selected=500 new=200 existing=200 duplicates=100 invalid_rejected=1 oversized_rejected=1
- CPRUST_R1_JNI_PASS abi=1
- CPDL_ART_PASS family=54 opens=2 refresh_paths=4 closes=2 backend=6 synthetic_slots=2 lease_duplicate_rejected=1
- INSTRUMENTATION_CODE: -1

Rust host run 45115514740 also completed SUCCESS: 19/19 unit tests, Clippy, fmt, real Linux SIGKILL regression fixture, Linux/Android ARM64 builds.

SCOPE: Arrays are synthetic. Signed APK was loaded in isolated ART instrumentation, not as the installed Cinemana app on a phone. No production Room, Queue110, network/FFmpeg data flow, real durable ACK, or live downloader integration has been validated. Do not release as production.

## 2026-11-23 R2 composite event observer checkpoint
- Rust `shadow_events.rs`: task_id+external_id composite Room-row model (not stable episode key), generation & role (main/:filedownloader) for synthetic first/mirror/repeat/stale/advance comparisons. 500 test -> first300/mirror100/repeat50/stale50. No DB or actual source event tap.
- `RustShadowEventWorker.java` CI-only staging to diagnostic APK: 1 off-main worker + 16 bounded pending batches, deep copies arrays, overload throws/counters, rejects URL-looking external IDs in Rust. JNI typed String[]+long[]+int[]; local ref cleanup.
- `45117076600` SUCCESS Rust Core: 24/24 tests, fmt/clippy, SIGKILL & ARM64 .so; `45117076689` Android15 ART pending at checkpoint. More in R2_COMPOSITE_WORKER_REPORT_AR.md.
- `lz0.smali` Room DAO has WHERE task_id and WHERE external_id queries independently even though schema composite primary key; do not treat partial selector as unique. Source branch unchanged.
