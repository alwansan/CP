# R2 — تدقيق بنية قاعدة Downloads الأصلية ومسار الاستدعاء
**2026-11-23 | source feature/download-stability@c68c0d80722765409f8544d499938a656217967b | read-only source**

## حقائق مؤكدة من ملفات Smali الفعلية
1. ملف \`Cinemana_PATCH252_Project/app/smali/com/shabakaty/downloader/data/db/DownloadsDatabase_Impl$a.smali\` نحو السطر 38 ينشئ الجدول:
   \`CREATE TABLE IF NOT EXISTS Downloads (task_id INTEGER NOT NULL, external_id TEXT NOT NULL, progress_bytes INTEGER NOT NULL, title TEXT NOT NULL, url TEXT NOT NULL, img TEXT NOT NULL, path TEXT NOT NULL, size_bytes INTEGER NOT NULL, status INTEGER NOT NULL, last_updated TEXT NOT NULL, PRIMARY KEY(task_id, external_id))\`.
   ويوجد UNIQUE INDEX(id) على نفس العمودين. **لا يوجد batch_id ضمن هذه الأعمدة**. هذه حقائق في الكود، لا قراءة من قاعدة المستخدم.
2. \`DownloadsDatabase.smali\` يمتد \`vt3\` (Room) ويكشف \`p()Lcom/shabakaty/downloader/kz0;\`، و\`DownloadsDatabase_Impl.smali\` يمتلك DAO \`kz0\` وحفظه في field \`n\`؛ \`kz0.smali\` هو interface فعلي للـDownloadsDao (أساليب a..k، كثير منها suspend/continuation \`ud0\`).
3. \`ut3.a(Context, Class, String)\` يبني Room database بوسيط اسم غير فارغ. \`MkvExporter.getDownloadsDao\` نحو 4004–4247 يشتق اسم قاعدة من \`Context.getPackageName()\` ويصل إلى \`DownloadsDatabase\`/Room builder ثم \`p()\` عبر reflection مع \`DL_SHARED_DAO\` cache. لا يمكن افتراض أن كل عملية تستخدم نفس in-memory DAO.
4. \`BatchDownload$Screen.enqueue\` نحو 985+ يجهز \`NativeBatchScope\` ويستدعي \`BatchDownload.call(scope, "m", ...)\`. \`NativeBatchScope\` يمتد \`DownloadActionsHandlerScope\`، وتوجد \`m()V\` في \`app/smali/com/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope.smali\` نحو 990–1188؛ تتعامل مع \`MkvPlanStore.record\` ومع \`i44\` API والـsubtitles/coroutine. لا يصح افتراض أن مجرد عودة method انعكاسية يعني وصول كامل الـbatch إلى durable DB.
5. \`i44.smali\` interface أصلي يحتوي \`c(String,String,String,String,String,tm1)\` بجانب \`d(int)\` و\`b(int,tm1)\` وغيره. يجب تتبع المصنع \`vy0.c()\` وcallbacks والتوقيع الحقيقي قبل استبداله، وعدم قلب pause/cancel semantics.
6. \`Queue110.remember\` 2626+ ثم \`save\` 3251+ → \`Restart108.put\` 2770+ يقوم commit لـSharedPreferences **per task_id** تحت \`request:<task_id>\`؛ هذا ليس batch header ولا يثبت single transaction لـ500 عنصر. \`Queue110.done\` يقرأ \`done:<task_id>\` وشهادة ملف/حالة، وليس اسماً من Rust.
7. \`AndroidManifest.xml\` يحتوي خدمة FileDownloader منفصلة في \`:filedownloader\`؛ Room/SharedPrefs وجميع أصحاب الأحداث قد يكونون في عمليتين، لذلك أي Native Rust owner يجب ألا يملك نفس المهام مرتين. نقل Rust الكامل يحتاج ABI/IPC owner وdedupe عند كل process boundary.

## آثار هذا التدقيق على تصميم R2
- **لا تعديل مباشر لـDownloads** من Rust الآن: primary key هو \`(task_id, external_id)\` وRust TaskKey source+episode+quality+profile، ويتطلب mapping محكماً وهوية حساب/جودة، وعدم إفساد status/last_updated.
- مخزن \`DurableFixture\` fixture مستقلة بملف snapshot؛ ليس schema upgrade، ولا ترحيل بيانات، ولا بديل لـRoom. وصول 500 مهمة إلى snapshot mock لا يضمن 500 native task enqueued.
- الأولوية القادمة بناء READ-ONLY shadow contract: stable logical batch IDs، جدولة وصول events، ACK بعد commit من مالك واحد، مقارنة Rust with Queue110 and native downloads by mapped IDs. لا duplicate network/callbacks.
- احتفظ بمعاملات Room وصيغ DB الأصلية وملفات المستخدم وFFmpeg. لا تضف جدولاً جديداً في DB إنتاجية قبل قراءات \`DownloadsDatabase_Impl$a\` migration والـversion وتفعيل upgrade tests على APK موقّع.
- الحاجز المتبقي: تحديد مكان إنشاء task_id الأصلي، DAO \`kz0\` handler methods، service ownership في main/:filedownloader، وtransaction + WAL behavior الفعلي على جهاز؛ لا شيء من ذلك محسوم بمجرد هذا المسح.

## حالة الإثبات
فُحصت الملفات في GitHub مباشرة، لا قاعدة بيانات المستخدم. CI R2 fixture SUCCESS 45113795022 (14 unit + Linux subprocess SIGKILL + ARM64 crossbuild) مستقل تماماً. تشغيل Rust الحقيقي/Room/Android file I/O والحفظ للتحميلات الحية: **لم يبدأ**.

## Room migration code inspection — 2026-11-23

The real APK Smali file app/smali/com/shabakaty/downloader/data/db/DownloadsDatabase_Impl.smali passes schema version 2 into DownloadsDatabase_Impl$a. The source file app/smali/com/shabakaty/downloader/data/db/a.smali is DownloadsDatabase_AutoMigration_1_2_Impl, explicitly mapping migration 1 to 2. It rebuilds _new_Downloads, copies existing columns via INSERT SELECT, drops the old table, renames, and restores the unique index on task_id + external_id. The Downloads table has no batch_id. Do not modify Room schema version 2 or this migration in the Rust diagnostic phase. Any real batch-header migration requires separate compatibility validation.

## 2026-11-23 R2 composite event observer checkpoint
- Rust `shadow_events.rs`: task_id+external_id composite Room-row model (not stable episode key), generation & role (main/:filedownloader) for synthetic first/mirror/repeat/stale/advance comparisons. 500 test -> first300/mirror100/repeat50/stale50. No DB or actual source event tap.
- `RustShadowEventWorker.java` CI-only staging to diagnostic APK: 1 off-main worker + 16 bounded pending batches, deep copies arrays, overload throws/counters, rejects URL-looking external IDs in Rust. JNI typed String[]+long[]+int[]; local ref cleanup.
- `45117076600` SUCCESS Rust Core: 24/24 tests, fmt/clippy, SIGKILL & ARM64 .so; `45117076689` Android15 ART pending at checkpoint. More in R2_COMPOSITE_WORKER_REPORT_AR.md.
- `lz0.smali` Room DAO has WHERE task_id and WHERE external_id queries independently even though schema composite primary key; do not treat partial selector as unique. Source branch unchanged.
