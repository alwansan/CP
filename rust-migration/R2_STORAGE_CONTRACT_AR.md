# R2: عقد قبول دفعات التحميل الدائم — source evidence، لا تنفيذ حي
تاريخ 2026-11-23. المكوّنات الحالية على feature/download-stability هي الأصل؛ Rust ledger in-memory فقط.

## الحقائق المثبتة من Smali
- BatchDownload$Screen.enqueue (~702–1227) يُعد عناصر/جودة ورابط عبر NativeBatchScope ثم ينادي BatchDownload.call(..., "m", ...) ~1085، ويعتبر `enqueue_admitted` عودة call لا receipt من SQLite.
- BatchDownload$Screen.lambda$begin$23 (~1388–1530) يستدعي `BatchDownload.existing` و`prepare` لكل عنصر، ينقص AtomicLong، وبعد بلوغه صفراً ينشر Runnable enqueue عبر `ui()`، فيظل هناك barrier لكل الدفعة.
- Queue110.remember (~2626–2806) يلتقط task/native id وexternal/title/name/url/path/created/intent، يفحص Queue110.done، ثم Queue110.save → Restart108.put، ويولد marker `ADMISSION_DURABLE`. هذا حفظ per-task لكنه ليس دليلاً أن نية 500 حلقة خُزنت كلها atomically.
- Queue110.save (~3251–3310) يكتب Preferences تحت `request:<taskId>` بواسطة Restart108.put؛ `Restart108.put` (~2770–2882) يفحص no-op ثم يدعو SharedPreferences Editor `commit` وينتج IOException لو false. لا نستبدله بـapply أو async غير مضمون.
- Queue110.done (~741–936) يراجع علامة `done:<taskId>` مع external/url/path وحالة ملف/size؛ لا نفترض أن الاسم أو الطول وحدهما ضمان cryptographic correctness لكل media.
- Queue110.scanBody (~3359+) يستخرج getAll ويصل إلى MkvExporter.getDownloadsDao عبر Restart108.exp، والذي ينشئ/يعيد استخدام DAO في العملية بحسب cache الحالي. DAO ownership عبر main و:filedownloader يحتاج tracing.
- MkvExporter.getDownloadsDao (~4004–4247) يشتق اسم القاعدة من package ويستخدم reflection DownloadsDatabase/ut3، ويحفظ `DL_SHARED_DAO` عند نجاحه. التعارض السابق DB_PROMOTE_FAIL ليس حلاً معروفاً من استخدام Rust.
- MkvExporter.exportLocked (~1383+) ينفذ `MuxSlotsDL.acquire` وProcessBuilder FFmpeg؛ حد 3 عمليات mux عبر العمليتين مثبت من MuxSlotsDL.java.

## التصميم المرجح وليس تقرير تنفيذ
1. لا تنقل انتقال actual bytes قبل معرفة أين يُنشأ native id. افصل user intent عن physical transfer: task key ثابت مستقل عن signed URL؛ synthetic data أولاً.
2. سجّل batch id ورؤوس كل 500 اختيار وidentities قبل أن تعطي ACK. إذا استُخدمت chunks، ACK صريح لكل chunk مع retry idempotent، لا قبول 500 بعد كتابة أول 100.
3. حافظ على Queue110/Restart108 وRoom manager كمصدر حقيقة أثناء shadow mode؛ Rust تقارن قراراتها وتعرض mismatch counters فقط. لا queue فعلية ثانية.
4. حماية أخطار current SharedPrefs/Room عبر عملية واحدة/transaction owner، تحقق من process + schema/WAL/upgrade وذاكرة التجربة. لا تنقل كل DB إلى Rust عشوائياً.
5. عند تفعيل أي جزء: callback generation fencing، cancellation epoch، replay بعد process death، no duplicate native tasks، no deletion قبل verified MKV/DB ACK، ميزة rollback compatible.
6. R2 gate: synthetic 500 + overlapping batches + loss-free crash/reopen + native exact accepted counts + ART dialog + preserved phone data.

## الخطوة التالية لاستكمال التصميم
تتبّع BatchDownload.call("m") وNativeBatchScope إلى FileDownloader submit الفعلي؛ اربط ذلك بالـRequest110.remember والـRoom native id، وقارن schema وWAL/DAO owners بين عمليتي Android. لا يصح افتراض أن أي واحدة منها sync durable batch على مستوى 500.

## إضافة كود محاكاة R2 — 2026-11-23
اكتمل اختبار مستقل `rust-core/src/durable_fixture.rs`؛ ليس `Room` أو `SharedPreferences`. يتعامل مع batches in fixed private test dir، ويعطي receipts فقط بعد fsync+atomic rename. CI run 45113493256 SUCCESS، 14 tests.
لا تربط `DurableFixture::accept_batch` إلى BatchDownload الحقيقي؛ file snapshots والـcross-process owner ليسا مصممين لبيانات المستخدم. ما يزال مخطط DAO والـnative task_id يحتاج تحقق، وما تزال بوابة R2 production غير مجتازة.

## دليل الاسترداد الجديد
- CI 45113795022 PASSED actual Linux subprocess SIGKILL + lock release + 500 intents reopening, run marker `CP_R2_SIGKILL_PASS before_commit=0 after_commit=500 lock_released=1 replay=1`. 
- مخزن fixture لا يزال غير ملائم لحالة SharedPreferences/Room الأصلية، ولا يعني Android R2 gate PASS.
