# سجل القرارات والمخاطر لانتقال Cinemana Pro إلى Rust
تاريخ التحديث: 2026-11-23؛ يمنع اعتبار الخطر عطلًا مثبتاً حتى يظهر دليل runtime.

## قرارات ثابتة ADR
| ID | القرار | لماذا |
|---|---|---|
| A01 | نقل جزئي قوي إلى Rust، لا ترجمة كامل APK | الأصل Smali وJava ويتعامل مع Android system APIs |
| A02 | branch experiment/rust-core-migration فقط | صيانة خط الأساس المقبول B1b3-12 بلا تغيير |
| A03 | واجهات Android/المشغل والحساب والصلاحيات خارج ترحيل Rust | يضمن التكافؤ ويعزل مشاكل الأداء |
| A04 | مالك واحد للمهام والـDB والـFFmpeg | تجنب duplicate downloads وملفات تالفة |
| A05 | Rust scheduler يصبح صاحب القرار بعد shadow + durable ACK، وليس أثناء R0 | crate الحالية في الذاكرة فقط |
| A06 | Tokio/Reqwest خيارات مرشحة مشروطة بالأداء والـABI | ليست إلزامية، وتزيد مكتبات/حجم التطبيق |
| A07 | FFmpeg الحالي ومعه Lease115 وثلاثة MuxSlotsDL تبقى في البداية | قفل مشترك بين main و:filedownloader |
| A08 | الإلغاء والتوقف والحذف بepoch وownership verified | callbacks المتأخرة لا تعيد إحياء مهمة ملغاة |
| A09 | ترحيل DB additive/versioned فقط مع upgrade test | ممنوع مسح بيانات مستخدم |
| A10 | التطوير والتفعيل خلف feature flag + إمكانية الرجوع بتحديث متوافق | لا يكفي زر off إن غُيّر schema بشكل لا رجعة فيه |
| A11 | Android force-stop يوقف عمل التطبيق حتى إعادته من المستخدم | لا وعد باستمرار مخالف لنظام Android |
| A12 | signed APK ART smoke إجباري | h65 أثبت VerifyError حتى مع تجميع/توقيع ناجح |

## مخاطر العمل وقواعد الإغلاق
| Risk | مستوى | وصف | الحل والبوابة |
|---|---|---|---|
| RM01 | حرج | Room/SQLite owner مزدوج في عمليتين | حدد من يكتب، transaction ACK، replay test بعد kill |
| RM02 | حرج | duplicate physical transfers أو download rerun | stable key، idempotent requests، generation fenced callbacks |
| RM03 | حرج | تلف partial file بسبب تغير رابط أو Range | 200/206/416 وContent-Range وETag/Last-Modified/identity tests |
| RM04 | عالٍ | JNI panic/crash أو memory leak عند bridge | typed versioned ABI، strict lifetime handling، emulator/phone ART |
| RM05 | عالٍ | فشل lib في arm64 أو x86_64/emulator | build both + load and symbol verification، no unsupported ABI activation |
| RM06 | حرج | تغيير DB يمس الحساب/المكتبة | schema migration add-only، upgrade and rollback compatible path |
| RM07 | عالٍ | restart/recovery لا يلتقط MP4/MKV | journal receipts، proof، backoff، injected kill stages |
| RM08 | عالٍ | ضغط JNI events على main يسبب ANR | snapshots/deltas مجمعة، bounded queues، no blocking IPC on main |
| RM09 | عالٍ | تحويل FFmpeg مزدوج أو released slot early | Lease115 وMuxSlotsDL untouched حتى اختبار cross-process |
| RM10 | عالٍ | التوافق مع التوقيع وpackage/versionCode | fingerprint match + install upgrade، no clearing app data |
| RM11 | متوسط | زيادة threads/CPU/TLS RAM بسبب Runtime وReqwest | per-process PSS/RSS/CPU + size benchmark قبل اختيار crates |
| RM12 | متوسط | idle polling وتكرار DB scans | activity/dirty-based scheduler وdeadline trigger؛ benchmark idle |
| RM13 | حرج | بيانات سرية في logs | redact signed URL, account, absolute paths؛ events hashed IDs |
| RM14 | عالٍ | فقدان شاشة/ميزة أصلية بسبب Smali | negative tests + ART open/refresh + device parity all screens |
| RM15 | عالٍ | رفض النظام استمرار foreground work | احترام قيود Android target/API وأصناف dataSync/long tasks |

## مشاكل المصدر التي تبقى مفتوحة
- h68: sidecars E24/E26 في PREPARING رغم وجود final MKV/proof؛ repeated DB promotions وبعض SQLITE_BUSY/DB_PROMOTE_FAIL.
- تواتر polling والتعافي وsynchronization للواجهة، وbatch admission قبل ACK durable.
- pause/delete/cancel وموت عملية التحويل ونقص المساحة وlong soak ليست كلها certified.
- SQLite leaked/ANR في لقطات أقدم لا تعني أنها ما زالت تظهر بعد B1b3؛ نعيد قياسها.

## تحديث السجل
لكل خطر أضف first failure, reproduction fixture, evidence SHA/run, owner, status (open/mitigating/verified), no guesses. لا تختزل 0 observed crashes إلى ضمان شامل.

## تحديث R1 JNI — 2026-11-23
- بوابة R1: artifact signed+DEX-only لا يثبت DexClassLoader/System.loadLibrary؛ run 45112292108 يجرب الاختبار عبر Android15 ART. إذا فشل، افتح logs ولا ترفع APK للمستخدم.
- خطر جديد RM16: نوع الاختبار معزول ويحمل المكتبة من signed candidate إلى مجلد instrumentation، لذا نجاح ART لا يساوي تشغيل Cinemana الكامل ولا عمل الخدمة :filedownloader. لا تُغلق بوابة phone/live process إلا بتجربة مستقلة.

## قرار R2 synthetic fixture (2026-11-23)
- ADR13: `DurableFixture` اختبار تعليمي منفصل فقط؛ وجود file snapshot ليس بديلاً لمسار Room/Restart108 الحقيقي. لا يُستدعى عبر JNI من التطبيق.
- RM17: `flock` advisory لا يحمي من writers لا يستخدمون نفس القفل، ولا يضمن single owner بين خدمات Android التي تتجاهل العقد؛ يجب بناء اختبار process/JNI/Room owner قبل الإنتاج.
- RM18: كتابة snapshot كاملة في كل دفعة كبيرة O(state size)، محدودة 16 MiB و4096 مهمة فريدة؛ ليست ledger لانهائي. عالج نمو البيانات بجداول WAL/DB عند الاستبدال.
- RM19: CRC32 فقط لمقاومة تلف عشوائي وليس هجوم/توقيع، وfsync behaviour على Android لم يُختبر بعد. افشل مغلقاً عند فساد file؛ لا reset أو delete user data.
