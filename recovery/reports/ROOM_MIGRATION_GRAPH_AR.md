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

جميع الأمثلة **بيانات مصطنعة**؛ تتوافق مع الأعمدة اللازمة للاختبار ولا تشكل نسخاً حقيقية من مخططات Room v1–v4 التاريخية. لا يُشغّل ترحيل JSON 2→3 (الاختبار 2→3 يقتصر على SQL)، ولا اختبارات ORM/SQLite على قواعد الإنتاج، ولا يتحقق من الهوية الفعلية للملفات على القرص.

لتشغيل فحوص المصادر:

```sh
python3 recovery/scripts/verify_original_room_database_names.py
python3 recovery/scripts/verify_original_room_migration_graph.py
python3 recovery/scripts/test_original_room_2_to_3_sql.py
python3 recovery/scripts/test_original_room_migration_sql.py
python3 recovery/scripts/test_original_room_3_to_4.py
```

## منع الترحيل الخاطئ أثناء إعادة بناء السورس

قبل ترقية أي قاعدة حقيقية: احتفظ بنسخة احتياطية وبمخططات Room التاريخية الأصلية وidentity hashes؛ نفّذ كل نسخة migration على قواعد اختبار مستنسخة بعد إزالة البيانات الحساسة؛ اختبر حفظ user_version والفهارس والمفاتيح الأجنبية والصفوف المجاورة؛ ثم اختبر توقّف التطبيق بين المراحل وإعادة التشغيل وعدم ضياع بيانات أو ملفات. لا تستبدل `MkvExporter.promoteDatabase` أو DAO الأصليين بالموائم التشخيصي في هذه المرحلة.

تقتصر كل التغييرات هنا على `experiment/rea-source-recovery` دون دمج.
