# خارطة الـRoom DAO الأصلية اللازمة لاسترجاع MkvExporter

29 أكتوبر 2026 — فرع `experiment/rea-source-recovery` فقط.

## المصادر التنفيذية (Smali)

- `Cinemana_PATCH252_Project/app/smali/com/shabakaty/cinemana/data/db/AppDatabase_Impl.smali`
- `Cinemana_PATCH252_Project/app/smali/com/shabakaty/downloader/data/db/DownloadsDatabase_Impl.smali`
- `Cinemana_PATCH252_Project/app/smali/com/shabakaty/downloader/kw0.smali`
- `Cinemana_PATCH252_Project/app/smali/com/shabakaty/downloader/lz0.smali`
- `Cinemana_PATCH252_Project/app/smali/com/shabakaty/downloader/jw0.smali`
- `Cinemana_PATCH252_Project/app/smali/com/shabakaty/downloader/kz0.smali`
- `recovery/generated/java/com/shabakaty/cinemana/features/MkvExporter.java`

## المسارات التي ثبتت بالمعاينة

| قاعدة Room | getter من كود Room المولّد | واجهة DAO | تطبيق DAO المولّد | كيان البيانات |
|---|---|---|---|---|
| `AppDatabase_Impl` | `p()` | `jw0` | `kw0` | `CinemanaDownloadItem`, `SubtitleDb`, `DownloadsCollectionItem` |
| `DownloadsDatabase_Impl` | `p()` | `kz0` | `lz0` | `Downloads` |

في `kw0` تظهر عبارات Room المثبتة:
`SELECT * FROM CinemanaDownloadItem Where id = ? LIMIT 1`، واسترجاع الترجمات المرتبطة عبر `SELECT id,parentId,downloadTaskId,name,type,extension,file FROM SubtitleDb WHERE parentId IN (...)`. تؤكد هذه العلاقة أن الترجمة مرتبطة بـ`parentId` وبهوية `id` مستقلة.

في `lz0` تظهر عبارات `SELECT * FROM Downloads WHERE ? = task_id` و`SELECT * FROM Downloads WHERE ? = external_id`، وكذلك الاستعلام غير المقيّد `SELECT * FROM Downloads`. **تنبيه:** لا يظهر في هذه العبارات وحدها استعلام يجمع `task_id` و`external_id` في شرط SQL واحد، رغم أن مفتاح جدول `Downloads` الأساسي **مركب** من القيمتين. يجب لذلك التحقق من الاثنين عند إعادة تركيب `findDownloadsRow`؛ الاكتفاء بأول صف ذي `task_id` مماثل خطر إذا وُجدت عدة صفوف.

## ما تم تنفيذه في السورس المرحلي

- `OriginalRoomSchemaProbe`: إثبات schema والأعمدة والمفتاح المركب باستخدام SQL من Smali.
- `OriginalRoomDiagnosticPort`: نسخة تشخيصية من واجهة `MkvPromotionCoordinator.Port`، تستخدم `task_id + external_id`، وتحفظ `size_bytes`, `sizeMB`, وكل `SubtitleDb.file` مع مفاتيح الصفوف.
- `OriginalRoomCoordinatorProbe`: نجاح تحديث السجلات المستهدفة، تعويض عند حقن خطأ تحديث ترجمة، ورفض هوية خاطئة. الاختبارات تستخدم قواعد **داخل الذاكرة فقط**.
- `MultiDatabaseJournalProbe`: تجارب عودة من قتل العملية بين قواعد SQLite مستقلة؛ تتصل بجداول تشخيصية مبسّطة، وليس بـDAO الأصلي.

## استرجاع قرار اختيار صف التنزيل من الطريقة الأصلية

راجعت جسم `MkvExporter.promoteDatabase` في JADX مع تعريف `pw0` (DownloadItem) في `recovery/generated/java/com/shabakaty/downloader/pw0.java`. حقول الصف المفككة هي `r=taskId`, `s=externalId`, `x=path`, `u=title`, `y=sizeBytes`. الطريقة القديمة تجمع نقاطاً من الهوية والمسار والعنوان ثم يمكن أن تغير `downloadTaskId` بناءً على أقوى نتيجة حتى إن لم تطابق الهوية الأولى. هذا السلوك خطر عند تشابه أسماء الحلقات أو المسارات.

تمت كتابة `core-downloads/LegacyDownloadIdentityResolver.java` كمكوّن Java مستقل من المصدر: لا يسمح بالكتابة إلا إذا توافقت هوية `taskId + externalId` والمسار **الكامل**، وكانت النتيجة وحيدة بدون صف آخر يستخدم المسار نفسه. استرجاع هوية محتملة أو صف مشابه يظل مجرد **اقتراح للمراجعة**، ولا يُسمح بإصلاح تلقائي للـtask ID. الحالات `SOURCE_PATH_COLLISION` و`DUPLICATE_COMPOSITE_KEY` و`AMBIGUOUS_RECOVERY` ترفض الكتابة.

أُضيفت اختبارات Java مستقلة لانتقاء الصف وتحليل التباس العنوان والمسار، ومهمة Gradle `testLegacyDownloadResolver` ضمن `core-downloads:check`. هذا استبدال آمن **لجزء قرار الاختيار**، وليس استرجاعاً حرفياً لخوارزمية النقاط القديمة أو استبدال الدالة كلها. يجب وصله بالـDAO الحقيقي ضمن معاملة/قفل قبل دخوله تطبيق المستخدم.

## أسماء ملفات قواعد Room مثبتة من Dagger Smali

جرى تتبع مصدر أسماء ملفات SQLite في **مسارات إنشاء Room الحقيقية**، وليس استنتاجها من أسماء الأصناف:

- `Cinemana_PATCH252_Project/app/smali/com/shabakaty/downloader/km0.smali` (`DbModule_ProvideDatabase...Factory`): يستدعي `ut3.a(Context, AppDatabase.class, "localDatabase.db")`. الاسم **`localDatabase.db`** ثابت لقاعدة `AppDatabase`.
- `Cinemana_PATCH252_Project/app/smali/com/shabakaty/downloader/kh0.smali` (`DBModule_ProvideDaoFactory`): يركّب النص `shabakaty.` + **آخر جزء من `Context.getPackageName()` بعد فصل النقاط** + `.downloads.database`، ثم يمرره إلى `ut3.a(..., DownloadsDatabase.class, name)`. اسم `DownloadsDatabase` إذن **ديناميكي** ويتوقف على حزمة التطبيق الفعلية. على سبيل المثال، إن كانت الحزمة `com.shabakaty.cinemana` ينتج `shabakaty.cinemana.downloads.database`، وإن كانت `com.shabakaty.downloader` ينتج `shabakaty.downloader.downloads.database`. والنسخة المفككة الموجودة في هذا الفرع تُعلن `package="com.cinemana.pro"` داخل `Cinemana_PATCH252_Project/app/AndroidManifest.xml`، لذلك اسم قاعدة التنزيلات الموافق **لهذه النسخة بالذات** هو `shabakaty.pro.downloads.database`. هذا لا يفترض نفس الاسم لأي نسخة بحزمة معدّلة.
- يرتبط `AppDatabase` بتكوين Room يحوي مصفوفة من أربع خطوات migration في نفس `km0`. يجب استخراج إصدارات الترحيل وتطابقها قبل فتح بيانات المستخدم في إصدار جديد.

أضيف `recovery/scripts/verify_original_room_database_names.py` إلى CI، وهو يفحص هذه التعليمات في Smali الأصلي قراءة فقط. هذا يؤكد تسمية الملفات، **ولا يعني** أن موائم DAO الإنتاجي أصبح موجوداً أو أن تعديل قواعد بيانات المستخدم صار آمناً.

## الأمور المعلقة قبل استبدال promoteDatabase

1. استخراج عقود `jw0/kw0` و`kz0/lz0` بالكامل إلى Kotlin/Java مقروء، مع ضمان التوافق مع عمليات Room suspend وtransactions والاستعلامات LiveData.
2. اسم الملف الثابت `localDatabase.db` وصيغة اسم ملف Downloads الديناميكية مثبتان من `km0/kh0`؛ ثبت `packageName=com.cinemana.pro` في الـManifest واسم `shabakaty.pro.downloads.database` لهذه النسخة؛ **ما زال** مطلوباً تحديد إصدارات Room والمهاجرات، دون فتح قواعد المستخدم.
3. تدقيق سلوك `MkvExporter.findDownloadsRow` إذا تعددت نتائج المهمة أو كان `external_id` مختلفاً، وإثبات سياسة الإرجاع/الإصلاح من Smali.
4. نقل لقطة `SubtitleDb` كاملة وإدارة حذف/إضافة الترجمات المتزامن (وليس حقول `file` وحدها)، مع اختبارات ضد تغيرات طرف آخر.
5. الحفاظ على ذرية التحديثات داخل قاعدة `AppDatabase`، وكتابة Journal مستقل **قبل** تحديث `DownloadsDatabase`، واختبارات إيقاف العملية بعد كل نقطة تزامن.
6. التعامل مع ملفات MP4 وMKV على القرص ومنع الإشارة إلى ملف لم يكتمل إنشاؤه.

**لا توجد وصلة إلى قاعدة إنتاج أو إلى حساب المستخدم في هذه المرحلة. لا يجوز استبدال Smali الأصلي بالنموذج التشخيصي الآن.**
