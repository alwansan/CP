# خارطة ترحيل قواعد Room الأصلية — فرع الاسترجاع

التاريخ: 29 أكتوبر 2026. هذا تقرير عن النسخة المفككة المخزونة في المستودع، وليس إذناً بفتح أو تغيير قاعدة بيانات مستخدم حقيقية.

## أسماء الملفات والإصدارات الموثقة من Smali

| القاعدة | اسم الملف في نسخة الحزمة `com.cinemana.pro` | إصدار Room |
|---|---|---|
| `AppDatabase` | `localDatabase.db` | 5 |
| `DownloadsDatabase` | `shabakaty.pro.downloads.database` | 2 |

مصدر الإصدارين: `AppDatabase_Impl.d()` و`DownloadsDatabase_Impl.d()`، حيث يُنشأ `xt3` مع callback يحمل رقم schema. مصدر أسماء الملفات: `km0.get()` و`kh0.get()` مع `AndroidManifest.xml`. اسم ملف التنزيلات محسوب من **آخر جزء من اسم حزمة التطبيق**؛ يمكن أن يتغير إذا تغيّر `applicationId`.

## سلسلة AppDatabase الأصلية

- **1 → 2:** `it2$a`، يتضمن إنشاء `FranchiseItem` وإعادة تشكيل `DownloadItem` القديم، وليس ترقية MKV.
- **2 → 3:** `jt2`، ويقرأ `DownloadItem.videoFile` ويفك JSON ويحوّل بيانات إلى كائنات `CinemanaDownloadItem`. هذه مرحلة **تحويل بيانات برمجي** ولا يكفي نقل CREATE TABLE لتنفيذها.
- **3 → 4:** `o00$a` → `kt2`: يعيد بناء `CinemanaDownloadItem` و`video_model` مع نقل قيم الحقول القديمة، بينها `isSpecial → special` و`isMock → mock` و`isDeleted → deleted` و`isAddedToWatchLater → addedToWatchLater`، ويعيد إنشاء فهرس `nb`.
- **4 → 5:** `o00$b` → `lt2`: ينفّذ `ALTER TABLE TranslationDB RENAME TO SubtitleDb`.

تُمرّر أربع migrations صراحة في `km0`. هذا **لا يثبت** أن بيانات المستخدم من كل الإصدارات التاريخية قابلة للترحيل بدون نسخة احتياطية واختبارات Room الحقيقية.

## سلسلة DownloadsDatabase الأصلية

- **1 → 2:** `data/db/a.smali`، AutoMigration مولّد من Room. ينشئ `_new_Downloads`، ينسخ عشرة أعمدة من `Downloads`، يحذف الجدول القديم ويعيد التسمية، ثم ينشئ الفهرس الفريد `id` على الزوج `(task_id, external_id)`.
- المصدر `DownloadsDatabase_Impl.e()` يسجل auto migration واحدة. لا تُعتبر `task_id` وحدها مفتاحاً صحيحاً.

## اختبارات المصدر المضافة

1. `recovery/scripts/verify_original_room_database_names.py`: يتحقق من Dagger/Smali واسم الحزمة.
2. `recovery/scripts/verify_original_room_migration_graph.py`: يضمن توافق الإصدارات والانتقالات الفعلية وترتيب الربط بمصدر Smali.
3. `recovery/scripts/test_original_room_2_to_3_sql.py`: يقرأ 13 قيمة SQL محمّلة lazy من `it2`، ويتأكد من ترتيب استدعائها الأصلي في `jt2`، ويطبّق جزء إنشاء الجداول ونسخ بيانات `DownloadItem` و`CollectionItem` في SQLite مؤقت. الاختبار وجد أن SQL ينسخ **التنزيلات المكتملة فقط** إلى `CinemanaDownloadItem`، بينما نسخ `TranslationDB` غير مقيّد بحالة finished. هذه مطابقة لعبارة SQL وحدها، وليست ضماناً بأن ترحيل JSON لاحقاً لن يغير النتائج.
4. `recovery/scripts/test_original_room_migration_sql.py`: يشغّل SQL الأصلي لتحويل Downloads 1→2 وإعادة تسمية الترجمات 4→5، ويحاكي مقاطعة العملية وrollback عبر SQLite داخل الذاكرة.
5. `recovery/scripts/test_original_room_3_to_4.py`: يشغّل أوامر `kt2` الأصلية في SQLite مؤقت مع قيم وهمية لقياس الحفاظ على المفاتيح والحقول بعد إعادة البناء، ويختبر rollback.

جميع الأمثلة **بيانات مصطنعة**؛ تتوافق مع الأعمدة اللازمة للاختبار ولا تشكل نسخاً حقيقية من مخططات Room v1–v4 التاريخية. لم يُنقل تنفيذ ترحيل JSON 2→3 الكامل؛ أضيفت وحدة Java لعرض بيانات الحلقة واختبار Android للنص JSON، بينما يظل اختبار قاعدة البيانات 2→3 مقتصراً على SQL، ولا اختبارات ORM/SQLite على قواعد الإنتاج، ولا يتحقق من الهوية الفعلية للملفات على القرص.

لتشغيل فحوص المصادر:

```sh
python3 recovery/scripts/verify_original_room_database_names.py
python3 recovery/scripts/verify_original_room_migration_graph.py
python3 recovery/scripts/test_original_room_2_to_3_sql.py
python3 recovery/scripts/test_original_room_migration_sql.py
python3 recovery/scripts/test_original_room_3_to_4.py
```

## استرجاع جزء JSON من ترحيل 2→3 — 30 أكتوبر 2026

جرى تحليل تعليمات `jt2.smali` التي تمر على `SELECT * FROM DownloadItem` وتقرأ `videoFile`. مصدر JSON الأصلي هو `ea2.b` مع نموذج عناصر Gson المشوشة `ca2/z92`. الكود يختار `videoModel.kind == "2"`، ثم يستخرج:
- `nb` → معرف العنصر، و`episodeNummer` → رقم الحلقة، و`season`.
- `rootSeries` → `rootEpisode`، باستثناء القيمة الحرفية `"0"`، فيُستخدم `nb` بدلاً منها.
- `title` بعد تحويل سطر جديد إلى مسافة، واستبدال `" , "` و`" ، "` بمسافة.
- `vd5.B(rootEpisode)` يحاول تحويل الهوية إلى عدد صحيح، ويرجع صفراً عند عدم القدرة على التحويل.
- عند تجميع المجموعات يستعمل `distinctBy(rootEpisode)` و`split(" ")` ثم `dropLast(4)`، وليس اختيار أول أربع كلمات كما قد يُفهم بالخطأ.

تم حفظ جزء **مقروء وقابل للتجميع من Java** في `modernized/core-downloads/src/main/java/com/shabakaty/cinemana/recovery/downloads/LegacyRoomV2EpisodeMetadata.java`؛ يستقبل Map ناتجة عن JSON محلّل مسبقاً، ويعيد `Projection` دون كتابة على SQLite. يجتاز اختبارات `LegacyRoomV2EpisodeMetadataTest` (حالات missing keys، صيغة عنوان عربي/إنجليزي، numeric kind، rootSeries 0، int overflow، تكرار الجذر، ومرفوضات الأنواع).

كما أضيف:
- `scripts/verify_original_room_json_projection.py` لحماية ترتيب المفاتيح وتعليمات Smali من الانحراف أثناء إعادة البناء.
- `android-smoke/LegacyRoomJsonProbe.java` للتجربة على Android: يقرأ **JSON نصياً** عبر `org.json` ثم يمرر الكائن إلى Java المسترجعة. يختبر ثماني حالات مستقلة ويظهر `Legacy Room JSON projection: PASS (8 Android JSON fixture scenarios)` على شاشة التشخيص عندما ينجح الاختبار على المحاكي.

**حدود التكافؤ:** `org.json` ليس Gson الأصلي، ونموذج Map يتعمّد رفض أنواع غير متوقعة بدلاً من محاكاة كل استثناء في المصدر. الاختبار لا ينفّذ SQL + JSON + كتابة النتائج داخل Room ضمن معاملة واحدة، ولا يستبدل `jt2` أو `MkvExporter`. كذلك فإن SQL القديم ينسخ `DownloadItem WHERE finished = 1` في خطوة منفصلة عن المرور على JSON؛ يجب مطابقة السلوك إذا لم يكن العنصر ضمن مجموعة النتائج المستهدفة، ومنع تحديث صف مجاور بالخطأ. قاعدة البيانات الحقيقية وملفات المستخدم لم تُفتح.

## اختبار عملي لسلامة الربط بين JSON وقاعدة SQLite — 30 أكتوبر 2026

أُضيفت طبقتان **تشخيصيتان** منفصلتان لتجنّب تحديث صف تنزيل غير صحيح أثناء استرجاع تحويل Room من 2 إلى 3:

- `LegacyRoomV2RowWriteGuard.java`: فحص Java مستقل لا يكتب أي بيانات. يطلب أن يكون سجل `DownloadItem` الأصلي موجوداً بمعرف غير فارغ، ومعلّماً `finished=1`، وأن يكون `videoModel.nb` المستخرج من JSON مطابقاً **تماماً** لمعرف المصدر. كذلك يطلب وجود صف منسوخ داخل `CinemanaDownloadItem` يحمل نفس `id` و`downloadTaskId`. أي تعارض يؤدي للرفض دون محاولة تحديث.
- `LegacyRoomV2SqliteIdentityProbe.java`: اختبار Android ينشئ **SQLite مؤقتة بالذاكرة**، ويستخدم عبارات `CREATE TABLE CinemanaDownloadItem` من `it2$c.smali` و`INSERT INTO CinemanaDownloadItem ... SELECT ... WHERE finished = 1` من `it2$m.smali` حرفياً. بعد نسخ الصفوف المصطنعة إلى مخطط الإصدار 3، يقرأ `videoFile` المخزن في المصدر، يفكّه عبر موائم `org.json` التشخيصي، ثم يختبر حراسة الهوية والتحديث المقيد بشرطي `id=? AND downloadTaskId=?` داخل معاملة SQLite.
- الاختبار يضم **10 سيناريوهات**: تحديث حلقة صالحة، رفض التنزيل غير المكتمل، رفض JSON يشير إلى صف مجاور، رفض نوع عمل غير حلقة، رفض تغيير مهمة التنزيل، رفض اختفاء الصف المنسوخ، رفض شكل JSON غير مدعوم، التراجع عن معاملة قبل اعتمادها، معرف يحتوي علامات اقتباس ومحارف شبيهة بحقن SQL مع استعمال معاملات استعلام مربوطة، ورفض صف مصدر غير موجود.
- `verify_original_room_json_sql_guard.py` يقارن النص الكامل لأمري SQL المضمّنين في الاختبار مع المصدر الأصلي، ويضمن وجود مؤشرات الاستعلام الآمن والمعاملة وفحص هوية المصدر. يُشغَّل في GitHub Actions إلى جانب اختبار Java المستقل و8 سيناريوهات JSON الأخرى.

**مهم جداً:** هذا سلوك احترازي **أشد تقييداً** من `jt2` الأصلي، وليس تأكيداً لتطابق جميع نتائج ترحيل الإصدار القديم. كود `jt2` نفسه يمر على جميع صفوف `DownloadItem` بينما SQL ينقل المكتملة فقط، وقد يستعمل `videoModel.nb` للتحديث من دون مطابقة معرف صف المصدر. لهذا رفضنا الحالات الغامضة بدلاً من محاولة تقليد كتابة غير آمنة. لا يُستخدم أي جزء منه لتحديث بيانات المستخدم أو تشغيل ترحيل إنتاجي.

## استرجاع إنشاء مجموعات التنزيلات من ترحيل 2→3

استُخرجت العبارة الأصلية `CREATE TABLE IF NOT EXISTS DownloadsCollectionItem` من `it2$b.smali` والعبارة `INSERT INTO DownloadsCollectionItem ... SELECT ... FROM CollectionItem` من `it2$l.smali`، وثُبّت تطابقهما الكامل مع ثوابت Android الجديدة بفحص `verify_original_room_json_sql_guard.py`.

في `jt2.smali` تنشأ المجموعات بعد تحديث حلقات `CinemanaDownloadItem`، عبر انتقاء `distinctBy(rootEpisode)` وتكوين اسم المجموعة بواسطة `title.split(" ").dropLast(4).joinToString(" ")` وتحويل الجذر إلى `INTEGER`. يستعمل `A0(..., 4, ...)` في النسخة الأصلية نمط `CONFLICT_IGNORE` عند إدراج المجموعة.

أضيفت وحدتان **تشخيصيتان وليستا ترحيلاً إنتاجياً**:
- `LegacyRoomV2CollectionPlanner.java` في `core-downloads`: يرفض عدم وجود لقطة فعلية للمعرفات الحالية، ويحافظ على أول جذر مميز، ويرفض الجذر غير العددي أو غير الموجب، والاسم الفارغ، ومعرفاً محجوزاً في المجموعات القديمة، وكذلك تعارض رقمين متساويين لجذرين نصيين مختلفين (مثل `"101"` و`"00101"`).
- `LegacyRoomV2CollectionSqliteProbe.java` في `android-smoke`: ينفّذ أوامر إنشاء ونسخ المجموعات الأصلية على جداول SQLite وهمية في الذاكرة، يتحقق من بقاء الاسم والصورة للمعرفات التاريخية، ويفحص توليد مجموعات الحلقات ومنع تكرارها، ويفحص التراجع الكامل عندما لا تعتمد المعاملة.

هذه حماية أشد من `jt2` الأصلي عمداً، ولا ينبغي تفسيرها بأنها **تطابق سلوكي كامل** لجميع المجموعات القديمة، خاصة عند تعارض معرفات المجموعات أو JSON غير سليم. كما أن هذه الاختبارات لا تثبت مخطط Room v2 التاريخي الكامل ولا تكتب إلى قاعدة تطبيق فعلي.

## منع الترحيل الخاطئ أثناء إعادة بناء السورس

قبل ترقية أي قاعدة حقيقية: احتفظ بنسخة احتياطية وبمخططات Room التاريخية الأصلية وidentity hashes؛ نفّذ كل نسخة migration على قواعد اختبار مستنسخة بعد إزالة البيانات الحساسة؛ اختبر حفظ user_version والفهارس والمفاتيح الأجنبية والصفوف المجاورة؛ ثم اختبر توقّف التطبيق بين المراحل وإعادة التشغيل وعدم ضياع بيانات أو ملفات. لا تستبدل `MkvExporter.promoteDatabase` أو DAO الأصليين بالموائم التشخيصي في هذه المرحلة.

تقتصر كل التغييرات هنا على `experiment/rea-source-recovery` دون دمج.
