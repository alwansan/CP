# مطابقة نموذج استرجاع MKV مع بنية سينمانا الأصلية

الفرع: `experiment/rea-source-recovery` — 29 أكتوبر 2026.

## مرجع التحقق

جرت مقارنة النموذج التشخيصي `MultiDatabaseJournalProbe` مع الملفات المفككة:

- `recovery/generated/java/com/shabakaty/cinemana/features/MkvExporter.java`
- `recovery/generated/java/com/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem.java`
- `recovery/generated/java/com/shabakaty/cinemana/data/db/downloads/SubtitleDb.java`
- `recovery/generated/java/com/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem.java`
- `Cinemana_PATCH252_Project/app/smali_classes3/com/shabakaty/cinemana/features/MkvExporter.smali`

ملف `promoteDatabase` المعاد عبر JADX ما زال يحتوي عبارات غير صالحة لـJava مثل `??`، لذلك لا يُعد مصدر تنفيذ معتمداً؛ Smali هو المرجع التنفيذي الأساسي.

## مخططات Room الفعلية من ملفات Smali المولّدة

راجعت تعليمات `CREATE TABLE` مباشرةً في:

- `Cinemana_PATCH252_Project/app/smali/com/shabakaty/downloader/data/db/DownloadsDatabase_Impl$a.smali`
- `Cinemana_PATCH252_Project/app/smali/com/shabakaty/cinemana/data/db/AppDatabase_Impl$a.smali`

وهذه الأسماء والأعمدة **مؤكدة من SQL المضمّن في Room**، وليست استنتاجاً من أصناف Kotlin:

| الجدول الأصلي | عدد الأعمدة | المفتاح الأساسي | بيانات الترحيل المهمة |
|---|---:|---|---|
| `Downloads` | 10 | مركب `(task_id, external_id)` | `path` و`size_bytes` و`progress_bytes` و`status` |
| `CinemanaDownloadItem` | 24 | `id` | `downloadTaskId` و`path` و`sizeMB` |
| `SubtitleDb` | 7 | `id` | `parentId` و`downloadTaskId` و`file` |

ويوجد أيضاً فهرس فريد باسم `id` على `Downloads(task_id, external_id)`. لذلك أي ربط DAO لاحق يجب أن يطابق **الزوج الكامل**؛ مجرد `task_id` وحده ليس ضماناً لهوية صف Downloads.

أعمدة `Downloads` كاملة بالترتيب: `task_id`, `external_id`, `progress_bytes`, `title`, `url`, `img`, `path`, `size_bytes`, `status`, `last_updated`.

وأعمدة `SubtitleDb` كاملة: `id`, `parentId`, `downloadTaskId`, `name`, `type`, `extension`, `file`. هذا يثبت ضرورة تسجيل **كل ترجمة بهويتها ومسارها الأصلي** وليس تخزين مسار واحد فقط في الـJournal.

كما أن مكتبة FileDownloader تحتوي مخزناً SQLite منفصلاً باسم `filedownloader.db` في `SqliteDatabaseOpenHelper.smali`. لا يُفترض أنه نفس مخزن Room `Downloads`، ولا يجوز تعديله دون تتبع علاقته الفعلية بعمليات التنزيل.

**الخطوة التالية:** إنشاء اختبارات Room-schema fixture مطابقة لهذه الجداول الأصلية قبل توصيل أي قاعدة حقيقية. قاعدة الاختبار ذات الأسماء `diag_*` تظل مبسطة لحين تطبيق ذلك.

## ما تؤكده الأصناف الأصلية

| الكيان | حقول Java/Kotlin المستخرجة المهمة | ملاحظة |
|---|---|---|
| `CinemanaDownloadItem` | `id`, `downloadTaskId`, `path`, `sizeMB`, `title`, `season`, `episodeNumber` | `sizeMB` عدد صحيح، وليس حجم Downloads بالبايت |
| `SubtitleDb` | `id`, `parentId`, `downloadTaskId`, `name`, `type`, `extension`, `file` | مسار/اسم الترجمة في حقل `file`، وليس `path` كما في جدول الاختبار المبسط |
| `CombinedDownloadItem` | `cinemanaDownloadItem`, `subtitles`, `skippableScenes` | أكثر من ترجمة ممكن؛ يجب استرجاع قائمة snapshots لا قيمة واحدة |
| Downloads / FileDownloader | يتعامل `MkvExporter` مع `getDownloadsDao`, `readAllDownloads`, `findDownloadsRow`, `callDownloadsUpdate` | لا يجوز افتراض اسم جدول أو schema ثابت دون فحص تنفيذ DAO الأصلي |

تذكر طريقة `promoteDatabase` أيضاً إجراءات `restoreDownloadsRow` و`restoreCinemanaItem` و`restoreSubtitleSnapshots` مع التحقق من المسارات وهويات `downloadTaskId`, `externalId`, `itemId`. تظهر محاولة مطابقة Download row وتصحيح `downloadTaskId` في بعض الحالات؛ النموذج الجديد يرفض اختلاف الهوية، ولا يدّعي تكافؤ هذا السلوك حتى يُفحص بالكامل.

## الفرق بين النموذج التشخيصي والمصدر الحقيقي

1. النموذج الحالي يستعمل `diag_downloads` في ملف SQLite خاص، و`diag_cinemana` مع `diag_subtitles` في ملف ثان، و`intents` في ملف ثالث. أسماء الجداول **ليست** أسماء قواعد بيانات سينمانا الأصلية.
2. يوجد صف ترجمة واحد فقط، بحقل مبسط `path`. في المصدر الحقيقي `SubtitleDb.file` وقائمة ترجمات ذات هويات مستقلة.
3. يعتمد النموذج على اسم ملف واحد وحجم بالبايت؛ تطبيق سينمانا يحفظ معلومات حجم إضافية بينها `sizeMB`.
4. الـJournal الجديد يُحفظ قبل الكتابات الثلاث ويقبل إعادة المحاولة، لكن لا يغطي عمليات نقل أو حذف ملفات الفيديو والترجمات على القرص.
5. عملية قتل Android بين مراحل الكتابة أقرب للحالة الواقعية من إغلاق اتصال SQLite، لكنها لا تُثبت سلامة الإنتاج أو التزامن أو انقطاع الكهرباء.

## تجربة SQL الأصلية في تطبيق التشخيص

أُضيف `OriginalRoomSchemaProbe` الذي ينشئ قواعد SQLite **داخل الذاكرة فقط** باستخدام نصوص `CREATE TABLE` الحرفية المستخرجة من Room-generated Smali للجداول الثلاثة: `Downloads` و`CinemanaDownloadItem` و`SubtitleDb`. يفحص الأسماء وترتيب الأعمدة و`NOT NULL` والمفاتيح الأساسية، وينشئ نموذجاً لصفّي تنزيل لهما `task_id` واحد و`external_id` مختلفان؛ ويثبت أن تحديث هوية واحدة لا يمس الأخرى، وأن التكرار التام للهوية مرفوض.

كما يُدخل صف `CinemanaDownloadItem` و**ترجمتين حقيقيتي البنية** تحتويان `parentId` و`downloadTaskId` و`file`، ثم يفحص تحديث الملفين ضمن transaction، وتجربة rollback غير مكتملة، مع التحقق من `sizeMB` و`size_bytes` وفق أسماء الحقول الأصلية.

وجود `PASS (3 original Room tables, 2 subtitle rows)` داخل APK التشخيصي يثبت نجاح هذا الاختبار على Android SQLite فقط؛ **لا يعني** نسخ قاعدة بيانات المستخدم أو ربط DAO الحقيقي. ويجب التحقق من النتيجة على محاكي Android داخل GitHub Actions قبل إعلان نجاح الاختبار.

## موائم تجريبي بين MkvPromotionCoordinator ومخططات Room الأصلية

يوجد الآن `OriginalRoomDiagnosticPort` الذي يطبق `MkvPromotionCoordinator.Port` على قاعدتي SQLite مؤقتتين لديهما جداول `Downloads` و`CinemanaDownloadItem` و`SubtitleDb` **بنفس CREATE TABLE المصدر الأصلي**. يتعامل مع المفتاح المركب `(task_id,external_id)`، ويحفظ `size_bytes` و`sizeMB` قبل التعديل، كما يلتقط جميع هويات ومسارات `SubtitleDb` للعنصر المحدد ويحدّثها في معاملة SQLite واحدة مع التحقق من `id,parentId,downloadTaskId,file`.

تجربة `OriginalRoomCoordinatorProbe` تتحقق من خمس حالات: نجاح الترقية لصف محدد مع بقاء تنزيل مجاور لا يتغير؛ حقن خطأ بعد تحديث أول ترجمة داخل المعاملة وإثبات تعويض قواعد البيانات وإرجاع المسارات والأحجام؛ ورفض مفتاح تنزيل خاطئ دون أي تعديل على الصف المجاور، ورفض \`downloadTaskId\` غير المطابق في Cinemana دون الكتابة على بيانات طرف آخر؛ ورفض صفين يشتركان في مسار ملف فيديو واحد رغم اختلاف external_id. تُعرض النتيجة في APK التشخيصي ضمن `Original Room coordinator: PASS (5 Room coordinator scenarios)`.

**مهم:** هذا موائم تشخيصي يقتصر على نماذج اختبار في الذاكرة. لا يستخدم Room runtime أو DAO الأصلية، ولا يفتح قواعد بيانات المستخدم ولا يوفر وحده Journal دائماً للتعويض بعد انقطاع العملية. قاعدة تسمية الترجمات التجريبية `Episode.en.srt → Episode.mkv.en.srt` افتراضية للاختبارات ولا تثبت سياسة تسمية سينمانا الفعلية.

## الخطوات المطلوبة للترحيل الكامل بأمان

- تحديد أسماء SQLite والـDAO الأصلية ومخططات الجداول وإصدارات schema من Smali، بدلاً من استنتاجها من أسماء DTO.
- التقاط snapshot كامل: صف Downloads، كائن `CinemanaDownloadItem` والحقول المتغيرة، **وكل** صفوف `SubtitleDb` المرتبطة مع المعرفات.
- إثبات استرجاع قيم المسارات والأحجام وهويات العناصر دون تغيير السجلات المجاورة، بما فيها حالات فشل تصحيح `downloadTaskId`.
- اختبار إيقاف العملية بعد كل كتابة وبعد كل **خطوة استرجاع** بين قاعدتين، مع الاحتفاظ بالـJournal عند فشل الاسترجاع.
- التحقق من وجود ملف MKV النهائي أو MP4 المصدر ومن قواعد إعادة المحاولة وملفات `.temp` قبل أي ربط مع تنزيلات المستخدم.
- بناء الـAPK الكامل من Java/Kotlin وربط DAO وواجهة الاستخدام، بعد اكتمال اختبارات التكافؤ وعدم تلف البيانات.

**حالة العمل:** هذا تقرير فوارق بنيوية مثبتة من الأصناف المفككة. يُمنع استبدال `MkvExporter.promoteDatabase` الأصلية به الآن.
