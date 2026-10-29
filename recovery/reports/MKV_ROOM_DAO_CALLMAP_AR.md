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

## الأمور المعلقة قبل استبدال promoteDatabase

1. استخراج عقود `jw0/kw0` و`kz0/lz0` بالكامل إلى Kotlin/Java مقروء، مع ضمان التوافق مع عمليات Room suspend وtransactions والاستعلامات LiveData.
2. تحديد ملفات قواعد البيانات وإصدارات Room الفعلية من مواقع الإنشاء في التطبيق؛ أسماء الكلاسات **لا تكفي** لتعيين أسماء ملفات DB.
3. تدقيق سلوك `MkvExporter.findDownloadsRow` إذا تعددت نتائج المهمة أو كان `external_id` مختلفاً، وإثبات سياسة الإرجاع/الإصلاح من Smali.
4. نقل لقطة `SubtitleDb` كاملة وإدارة حذف/إضافة الترجمات المتزامن (وليس حقول `file` وحدها)، مع اختبارات ضد تغيرات طرف آخر.
5. الحفاظ على ذرية التحديثات داخل قاعدة `AppDatabase`، وكتابة Journal مستقل **قبل** تحديث `DownloadsDatabase`، واختبارات إيقاف العملية بعد كل نقطة تزامن.
6. التعامل مع ملفات MP4 وMKV على القرص ومنع الإشارة إلى ملف لم يكتمل إنشاؤه.

**لا توجد وصلة إلى قاعدة إنتاج أو إلى حساب المستخدم في هذه المرحلة. لا يجوز استبدال Smali الأصلي بالنموذج التشخيصي الآن.**
