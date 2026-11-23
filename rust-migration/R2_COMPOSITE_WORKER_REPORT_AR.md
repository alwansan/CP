# R2 — مصفوفة أحداث مركبة وهوية Room + عامل تشخيصي منفصل
**2026-11-23 | experiment/rust-core-migration ONLY**

## التنفيذ
- \`rust-core/src/shadow_events.rs\`: نموذج Rust نقي وقرائي لأحداث لا تزيد عن 1000؛ هوية الصف \`(task_id, external_id)\` استناداً إلى \`Downloads\` الحقيقية، مع generation افتراضي من مصادر اختبار وrole 0 للعمليّة الرئيسية و1 للخدمة \`:filedownloader\`. لا يعني هذا أن generation مُستخرَج من تطبيق المستخدم بعد.
- counters \`first_seen\`, \`mirrored\`, \`repeated\`, \`stale\`, \`advanced\` ضمن \`long\` بـ 5 حقول عرض 12bit. لا durable receipt ولا dedupe إنتاجي؛ state محلي لاستدعاء واحد فقط، ويعود فارغاً بعد انتهاء الاستدعاء.
- رفض الهوية غير الصالحة: task_id <=0, empty external ID، generation سلبي، role غير 0/1، external_id >128 bytes أو يحمل \`://\` أو NUL. لا raw URL ولا account logged.
- \`rust-core/src/jni_shadow.rs\`: JNI جديد \`Java_com_shabakaty_cinemana_local_RustShadowEventWorker_nativeAudit\` يستقبل \`int[]\` task IDs، \`String[]\` external IDs، \`long[]\` generations، \`int[]\` roles. يتحقق من الأطوال قبل allocation، يحرّر JNI local refs لكل String، يستعمل catch_unwind وJava exceptions. لا DB أو الملفات أو network.
- \`rust-migration/android/RustShadowEventWorker.java\`: Java worker واحد على خيط \`CPRustShadowDiagnostic\` مع \`ArrayBlockingQueue<Runnable>(16)\`، وdeep clone لمصفوفات المدخلات عند قبول العمل، و\`Future<Long>\` و\`rejectedCount\`، ورفض overload بـ\`RejectedExecutionException\` بدلاً من إسكات الفشل. الإغلاق shutdownNow. **ليس listener حقيقي لـQueue110**.
- \`.github/workflows/rust-r1-jni.yml\`: في CI على فرع التجارب فقط تُنسخ Java helper إلى \`patches/local-account/src/.../RustShadowEventWorker.java\` بعد helper tests وقبل build.py، فتدخل diagnostic signed APK دون أي hook إلى Application/Queue110/Room. لا تغيّر المصدر المستقر.
- \`scripts/cp_dl_art/Probe.java\`: Android15 isolated instrumentation: 500 event منها 300 unique و100 mirrored من العملية الثانية و50 repeated من العملية الأولى و50 stale؛ 24 Rust unit tests مستقلة، مقابل ART JNI real test؛ validate async background / bounded 16 pending / overload 17 rejected / deep snapshot integrity / invalid external ID. Marker مطلوب \`CPRUST_R2_EVENTS_PASS selected=500 first=300 mirrored=100 repeated=50 stale=50 advanced=0 async=1 saturated=1 invalid_rejected=1\`.

## دليل المصدر الأصلي والتخطيط
- \`app/smali_classes6/com/shabakaty/cinemana/ca1/Queue110.smali\`: \`remember\` عند ~2626 يستخرج task id عبر \`Queue110.id\` ويقرأ external من model field \`e\`، ثم \`Queue110.save\` ~2773 و\`RecoveryCapsule.seed\` ثم \`ADMISSION_DURABLE\`; منبع ثابت لأحداث *بعد* commit ممكن، لكن لم نحقن أي code فيه.
- \`Queue110.save\` ~3251 ينفذ \`Restart108.put\` على \`request:<taskId>\`، وهذا SharedPreferences per-task commit؛ ليس commit لدفعة كاملة.
- \`app/smali/com/shabakaty/downloader/data/db/DownloadsDatabase_Impl$a.smali\` يعرف \`PRIMARY KEY(task_id,external_id)\` version 2؛ \`app/smali/com/shabakaty/downloader/lz0.smali\` DAO فعلي يحدد \`SELECT * FROM Downloads WHERE ? = task_id\` و\`SELECT * FROM Downloads WHERE ? = external_id\` على حدة، وكلاهما *قد* لا يكون وحيداً عند composite PK. هذه نقطة خطر عند الربط production؛ لا تعتمد على أي أحدهما كمفتاح فريد.
- نطاق التجربة الآن **row identity** وليس canonical episode identity؛ \`task_id\` قابل للتغيّر، ويجب ربط source+episode+quality+profile لحالة المستخدم في العقد النهائي.

## CI والحدود عند تحديث التقرير
- Rust Core run \`45117076600\` **SUCCESS**: format/clippy، **24/24 Rust unit tests**، SIGKILL Linux synthetic، ARM64 .so.
- Android15 diagnostic signed APK/ART run \`45117076689\` **قيد التنفيذ** عند توثيق هذا checkpoint. لا تعتبر Marker ناجحاً إلا من logs الفعلية؛ إذا فشل فامسك بالـstack trace وأصلح ثم أعد البناء.
- الاختبار لا يدّعي إنشاء غرفة مهام حيّة ولا حفظ فوري لدى Room ولا ACK حقيقي، ولا قياس سرعة تنزيل، ولا APK إنتاجي قابل لاستبدال النسخة المثبتة.
- رفض الـshadow overload هنا يعني **تُحذف المقارنة التشخيصية فقط ويُبلّغ عن ذلك**، ولا يحق إسقاط تنزيلات المستخدم أو اعتبار observation مفقود = task completed.

## التالي
1. تثبيت نتيجة Android15 ART الجديدة مع marker + artifact id + signed candidate SHA؛ إصلاح أي فشل دون تجاوز الاختبار.
2. تصميم passive opt-in hook بعد \`Queue110.save\` مع I/O=zero in caller، fail-isolated، ومنع ازدواجية مع \`:filedownloader\`، مع feature flag disabled-by-default.
3. فحص lifecycle/ownership الفعلي للـDAO وworker قبل تثبيت أي app user test؛ وفي حال فشل اختبار الهاتف يجب معرفة log صغير مفصل دون تجارب بسيطة كثيرة.
