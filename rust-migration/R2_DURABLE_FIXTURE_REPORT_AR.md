# R2 — تقرير محاكاة استقبال الدفعات الدائم بـRust
2026-11-23 — فرع experiment/rust-core-migration

## إنجاز الكود
- \`rust-core/src/durable_fixture.rs\`: fixture مستقلة على Linux/Android Rust عبر std فقط؛ لا JNI أو Room أو تنزيل أو FFmpeg.
- \`DurableFixture::open(private_fixture_dir)\`: ينشئ ملف قفل **لا يُحذف** ويأخذ flock(LOCK_EX|LOCK_NB) حتى Drop/موت العملية. إذا فتح مالك ثانٍ نفس الدليل يرجع WouldBlock.
- \`accept_batch(batch_id, &[TaskKey])\`: حد 1000 مدخل دفعة، 4096 مهمة فريدة إجمالية، 256 دفعة و16 MiB snapshot. الهوية source+episode_id+quality+output_profile. حالة replay لنفس \`batch_id\` تقارن payload **المرتب بكامل عناصره**، وترفض تغييره؛ المحاولة بنفس الهوية في دفعة ثانية تُعد existing وليس عملاً جديداً.
- snapshot محدودة ومقسمة: MAGIC/format version/size/CRC32 وBTreeSet للمهام وBTreeMap للدفعات، مع رفض الملفات التالفة أو نسخة format غير معروفة. CRC32 هو كشف تلف عرضي، **ليس** حماية ضد مهاجم.
- قبل ACK يقوم بكتابة file \`rust-fixture.pending\` بـ\`create_new\`، ثم fsync file، ثم rename إلى \`rust-fixture.snapshot\`، ثم fsync directory. لا تُعدل الذاكرة الداخلية إلا بعد نجاحها كلها.
- عند فشل I/O أو نافذة commit غامضة تُسمم النسخة المفتوحة (poisoned) وتلزم إعادة فتحها. القراءة عند إعادة الفتح تنطلق من snapshot المحفوظة؛ pending غير مؤكدة وتُحذف داخل **دليل الاختبار الخاص فقط**، تحت lock.
- \`Rust TaskKey\` أصبحت Ord لتوفير ترتيب متكرر في snapshot. كل شيء مستقل عن مكتبة JNI التجريبية السابقة وعن بيانات المستخدم.

## نتائج GitHub Actions المؤكدة
- أول كود R2: فشل شكلي rustfmt في runs قديمة؛ تم إصلاح 11 مقطع تنسيق من logs؛ لا تعتبر failures المتجاوَزة دليل عطل التشغيل.
- \`run 45113493256\` **completed SUCCESS** على commit \`1b712bb0c347eef4b68700c91a500f588e7759a9\`.
- cargo fmt PASS؛ clippy -D warnings PASS؛ \`cargo test\` **14/14 PASS** (5 من R0+9 من R2)؛ host Linux release PASS؛ Android arm64 shared library cross-build وartifact PASS.
- سيناريوهات R2 الموثقة بالاختبارات: 500 حفظ ثم reopen/idempotent، قبل rename interruption، بعد rename ambiguous replay، payload conflict، منع مالك ثانٍ، checksum corruption fail closed، دفعتان متداخلتان 400+500 فيها 200 تداخل، قيم مدخلات سيئة، snapshot forged length.
- لا توجد حتى الآن *عملية موت فعلية عبر kill -9* في اختبار R2: \`Fault::BeforeRename/AfterRename\` هي حقن أعطال اصطناعي ثم Drop/reopen؛ لا تبالغ بوصفها crash soak أو إثبات أجهزة.

## ما لم يكتمل
- هذا **fixture مؤقتة تعليمية/اختبارية** ليست منتجاً ملائماً للتنزيلات الحية؛ تعيد كتابة snapshot كاملة (تكلفة O(total state)) ومقفلة بمالك واحد، وتستخدم format خاصاً بدل Room.
- لم تدخل \`DurableFixture\` ضمن JNI ولا APK runtime؛ الـ\`libcp_rust_core.so\` مبنية لكنها لا تُسلم طلبات للـFileDownloader.
- لم تُختبر lock أو fsync على Android ART/ملف التطبيق الحقيقي أو بالعمليتين main/:filedownloader.
- لا تفترض أن \`fsync\` يضمن جهازاً من دون دراسة filesystem؛ أو أن هذه المحاكاة تغني عن SQLite WAL/Room migrations.
- لا تنزيلات، لا ملفات فيديو ولا user data في الاختبارات. لا تغير للواجهة/الإشعارات/FFmpeg.

## التوجه التالي
1. تحديد \`BatchDownload$Screen.enqueue -> BatchDownload.call("m") -> native FileDownloader\` و\`Queue110.remember -> save -> Restart108.put(commit)\` بدقة ومعرفة الـRoom DAO/schema، بما فيها owner عبر main و:filedownloader.
2. بناء اختبارات process-crash مع actual child process/kill وchecksum/reopen، وحل no-admission-loss عبر request batch commit في مخزن متوافق مع Room أو durable adapter عند الالتزام.
3. Shadow-only JNI bridge: Rust تقارن IDs/receipts مع المنتج دون إصدار أوامر تنزيل؛ تأكد أن ACK لا يسبق المعاملة الفعلية.
4. بعد passing كل ذلك ومعايير الهاتف يمكن نقل مسؤولية admission داخل Android. لا تحول المجدول أو HTTP أو FFmpeg الآن.
