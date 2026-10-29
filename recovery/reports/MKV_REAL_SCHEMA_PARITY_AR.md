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

## الخطوات المطلوبة للترحيل الكامل بأمان

- تحديد أسماء SQLite والـDAO الأصلية ومخططات الجداول وإصدارات schema من Smali، بدلاً من استنتاجها من أسماء DTO.
- التقاط snapshot كامل: صف Downloads، كائن `CinemanaDownloadItem` والحقول المتغيرة، **وكل** صفوف `SubtitleDb` المرتبطة مع المعرفات.
- إثبات استرجاع قيم المسارات والأحجام وهويات العناصر دون تغيير السجلات المجاورة، بما فيها حالات فشل تصحيح `downloadTaskId`.
- اختبار إيقاف العملية بعد كل كتابة وبعد كل **خطوة استرجاع** بين قاعدتين، مع الاحتفاظ بالـJournal عند فشل الاسترجاع.
- التحقق من وجود ملف MKV النهائي أو MP4 المصدر ومن قواعد إعادة المحاولة وملفات `.temp` قبل أي ربط مع تنزيلات المستخدم.
- بناء الـAPK الكامل من Java/Kotlin وربط DAO وواجهة الاستخدام، بعد اكتمال اختبارات التكافؤ وعدم تلف البيانات.

**حالة العمل:** هذا تقرير فوارق بنيوية مثبتة من الأصناف المفككة. يُمنع استبدال `MkvExporter.promoteDatabase` الأصلية به الآن.
