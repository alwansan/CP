# خطة Cinemana Pro Rust Core التفصيلية
**إصدار 2 — 2026-11-23 — Owner-approved scope: download engine / queue / threads-memory / recovery / MKV orchestration.**
فرع الكتابة الوحيد: experiment/rust-core-migration. المصدر feature/download-stability@c68c0d80722765409f8544d499938a656217967b.
لا يتم تعديل source branch أو main أو Html، ولا إعادة بناء واجهات ضمن هذه الخطة.

## الرؤية وحدود العمل
نريد معالجة اختناقات التحميل وإدارة مئات الحلقات بأجزاء Rust حيث يعطي Rust فائدة منضبطة بالذاكرة/التزامن والأمان، مع بقاء Cinemana Pro بكافة الوظائف والتوقيع والتخزين. لا نقيس النجاح بنسبة Rust، بل مقارنة measurable performance وعدم ضياع media أو الوظائف.
النطاق المطلوب:
1. محرك تحميل الحلقات تدريجياً.
2. Queue/admission لدفعات 200–500 حلقة بدون انتظار metadata الكامل أو UI main.
3. Resource scheduler وحدود threads والـCPU وRAM وIO، مع fairness والـbackpressure؛ لا حد مطلق لكل خيوط Android.
4. توقف/استئناف بعد انقطاع شبكة أو موت process أو إعادة فتح التطبيق، مع respecting Android force-stop rules.
5. إدارة ملفات وMP4/part وMKV stages في Rust، مع FFmpeg الأصلي لإنتاج MKV، ومُلكية قفل مشتركة.
خارج النطاق: إعادة بناء UI والحساب والمشغّل والبحث والتصفح والاشتراكات؛ اختبار عدم تراجعها إلزامي.

## رسم طبقات التنفيذ
- Android: UI/UI-thread، media player، notifications، Account، permissions، Downloader foreground service، Java JNI shim، Room schema الحالي.
- Rust: TaskIdentity + BatchActor + Scheduler + Recoverer + ResourceGovernor + EventAggregator + MuxCoordinator logical policy.
- Adapters: (1) native FileDownloader قائم حتى إقرار النقل (2) FFmpeg/Lease115/MuxSlotsDL قائم (3) Storage/Room owner (4) AuthorizedSourceResolver.
- IPC: main و:filedownloader لا يخلقان mutable Rust schedulers مستقلين للبيانات نفسها؛ اختيار مالك واحد مع command/receipt protocol.
- Immutable task identity: source namespace + stable episode ID + quality + output profile + account scope إن لزم؛ URL والتسمية ليسا المفتاح.
- State machine على القرص، مع terminal stage معترف به بعد تحقق المصدر وDB ومسار الملف، لا بمجرد callback.

## R0 — التأسيس والحماية | مكتمل جزئياً
- فرع مستقل؛ rust-core crate in-memory بخمسة اختبارات؛ Linux fmt/clippy/tests وAndroid ARM64 .so ناجحة في run 45110176247؛ artifact 14788429301.
- NO: JNI/ART، actual Android APK، file/SQLite/network/FFmpeg integration أو مقارنة هاتف.
- إنجاز هذا التدقيق وخطة كاملة وذاكرة/رسالة استعادة مستقلة. لا تحوّل successful .so إلى إعلان محرك جاهز.

## R1 — حصر العقود وبناء JNI probe آمن | التالي
- افتح ملفات Smali وأكمل call graph للمهام والـDB والتوقيع وعمر service؛ دوّن أسماء الكلاسات والإصدارات وطرق الاستدعاء بدون التخمين.
- حدد package/process واحد لمالك Rust runtime؛ صمم ABI_VERSION وcapabilities وstatic handshake؛ منع panics عبور FFI، وتحرير references على نحو صحيح.
- cross-build ARM64 and x86_64 (emulator) عند الحاجة. أضف .so إلى APKTool libs المناسب وتحقق من system library load وnative symbol.
- JNI read-only smoke يقوم بجلب نسخة ABI فقط؛ لا يسحب البايتات ولا يغيّر الـDB أو يصدّر FFmpeg.
- بوابة: signed APK passes verify_apk_dex + ART Android15 الحقيقي + فتح شاشة BatchDownload/refresh/close + phone load smoke. إذا فشل، لا تبدأ R2.

## R2 — نموذج هوية الدفعات ومخزن durable | عالي الخطورة
- افصل command enqueue عن نافذة BatchDownload؛ ID وpayload immutable؛ حفظ batch_header وجميع intents atomically أو chunk receipts دقيقة.
- ACK meaningful states (requested/accepted/already/failed/blocked) بعد commit، لا بعد native void return؛ أعد فتح DB واختبر crash بين commit وack.
- امتنع عن duplicate physical transfer بعد تكرار النداء أو فتح الشاشة مرتين. Refuse same batchId with changed payload.
- استخدم existing Room/Restart108 states والعقد الموثق؛ migration schema add-only بعد استخراج versions وupgrade path؛ لا destructive migration.
- Shadow comparisons على مهام synthetic، لا تسجيل raw URLs/account. واجهة displays snapshot/delta events غير متزامنة؛ لا full refresh عن كل حدث.
- بوابة: 500 intents tracked durably، replay idempotent، no data loss/new UI ANR/VerifyError، من دون الاستيلاء بعد على النقل الحقيقي.

## R3 — Rust scheduler وresource governance | بعد R2
- actor/task scheduling واحد يملك dirty-ID set + deadlines + bounded queue؛ لا Thread لكل حلقة ولا unbounded spawn_blocking.
- Tokio مرشح async execution bounded workers، semaphore للبروسس+الـI/O والـmux وnetwork، explicit blocking pool؛ لا نختار مكتبة نهائياً قبل تجارب.
- Runnable tasks تنفذ أولاً بدل barrier waiting on slow subtitle/server؛ fairness تمنع starvation للمهام الأقدم.
- single-flight bind مع READY ack، backoff+jitter وepoch cancellation؛ limit scans، demand-driven idle، bounded diagnostics.
- resource policy adaptive على CPU/memory/storage/network health مع hysteresis؛ user parallel setting حد أعلى، idle بلا busy polling.
- حافظ على FileDownloader كمالك للبايتات، Rust policy يوجه adapter واحد فقط بعد المقارنة وfeature flag.
- بوابة: 2 overlapping batches مع 400–500 حلقات؛ قياسات queue age, p50/p95 ACK, RSS/PSS, thread peaks, frame jank، no double transfer.

## R4 — تنزيل البيانات والاسترداد الذكي بـRust | بعد إثبات R3
- قيّم ما إذا نقل HTTP نفسه لـRust (Reqwest + Tokio/TLS أو مكتبات أخف) يستحق التكلفة؛ لا تعِد بزيادة السرعة قبل القياس.
- إذا تم النقل: حالة واحد-owner لكل episode، stream chunks إلى owned .part مع fsync/checkpoint مناسب، bounds على buffers، no full-file buffering.
- التعامل الصحيح مع HTTP 200/206/416، Content-Range، ETag/Last-Modified، unknown length، signed URL expiry، 401/403/404/429/503/DNS/connection reset.
- لا append على partial تغيرت هويتها؛ quarantine مع ownership/proof؛ لا bypass access rights ولا تكرار full downloads بلا دليل.
- persistent retry reasons، network/service wait، manual pause/resume/cancel مع tombstone/epoch، sleep/kill/reopen recovery.
- cutover حصري per-task/per-cohort مع feature flag وdrain native owners، rollback forward-version؛ لا مسارين فعليين يتنافسان.
- بوابة: checksums للبيانات الاصطناعية، resume after injected network/process failures، no corrupt part، no duplicate native transfer.

## R5 — MKV، التخزين، وFFmpeg lifecycle | بعد R4 أو تكامل تدريجي
- Rust يدير MUX_READY → MUX_RUNNING → OUTPUT_VERIFIED → DB_COMMITTED → DONE فقط، وFFmpeg الأصلي يبقى منتج MKV.
- حافظ على Lease115 وعلى ثلاثة MuxSlotsDL مشتركة بين العمليتين؛ اختبر kill أثناء قفل file/mux، no orphan work or extra processes.
- افحص MP4/الترجمة/identity وreadiness، لا تمنع فيديو لأن ترجمة واحدة معلقة إلى الأبد؛ user-defined fallback policies.
- احمِ قواعد clean-up: لا حذف source قبل وجود output verified + DB ACK + identity/epoch match؛ لا تعتمد على اسم/حجم ملف وحده.
- أصلح unresolved E24/E26 sidecar finalization، repeated promotion، SQLITE_BUSY فقط بدليل؛ materialized state refresh without duplicate work.
- بوابة: 0 final MKV تضيع، 0 duplicate conversion غير آمن، .part/MP4 محفوظ عند نقص مساحة/kill، lock/DB reconciliation valid.

## R6 — التحسين والأداء وحماية الخمول | بالتوازي بعد R2 وحتى الإصدار
- backlog scan bounded، wake events بدل polling مكلف، heavy DB/network work خارج main، delta events aggregated (مثلاً 250–500ms للعرض، وليس للـdurable state).
- قياسات مستقلة للحالات: idle، browsing، video playback، queue admission، download-only، MKV-only، parallel pressure.
- Compare نفس 100/400/500 fixture على baseline B1b3-12 وRust candidate؛ recorded RSS/PSS each process, CPU, threads, battery/thermal if available, p95 UI frame, DB lock warnings, request+completion rates.
- لا تضع limit hardcoded قبل profiling، واستبدال لغة وحده لا يبرهن خفة موارد.
- بوابة: no sustained regression in UI, resource, correctness, idle; لو التحسن غير ثابت تبقى feature flag مغلقة.

## R7 — الاختبارات النهائية والإصدار التجريبي
- Native x86_64 ART smoke + ARM64 real device; signed candidate same applicationId + certificate fingerprint + compatible versionCode.
- Regression matrix: batch dialog opens, account, browse/search, playback, subtitle, storage permissions, notification, UI update, pause/resume/delete, BG/reopen, upgrade.
- Stress: 500 episodes، network drop، process kill، free-space exhaustion synthetic، FFmpeg interrupted، duplicate callbacks، second batch overlap.
- تحقق من SHA/هوية كل ملف وكشف حالة كل task؛ للعمليات التي تفشل يظهر blocked reason وليس busy forever.
- release candidate feature flag default off → internal shadow → guarded canary → full-on only after parity; rollback through compatible forward-version APK without clearing app data.
- قرار الإغلاق: كل اختبار حرج PASS على جهاز حقيقي مع قدرة الرجوع؛ لا إغلاق فقط لنجاح GitHub Actions.

## قواعد تقنية بين كل المراحل
- كل مرحلة لها PR/commit مستقل ونتيجة CI، توثيق الأدلة (SHA/test_id/run_id/last-success/known blockers)، تحديث STATE وMEMORY وPLAN وRESTORE وسجل جلسة.
- لا force push ولا تعديل source branches أو CL.
- no full raw logs، no account/token/signed URLs في تقرير أو artifact. Synthetic fixtures بحسابات مزيفة.
- Android 15 وقيود dataSync/foreground service لا تُحل بتغيير اللغة؛ التطبيق يلتزم بالمنصة.
- تأجيل فعلية النقل إذا لم تكتمل مخططات DB أو JNI أو الحقوق أو اختبار الهاتف.
- CI stages: Rust unit/fmt/clippy/fuzz → Android targets → Java/JNI integration → exact APK signed/DEX check → mandatory ART → device acceptance. لا تستبدل أي شرط بـcontinue-on-error.
- جدول المخاطر والاختبارات في DECISIONS_AND_RISKS_AR.md وTEST_MATRIX_AR.md، والأدلة في ARCHITECTURE_AUDIT_AR.md.

## ترتيب الأولوية
P0: المحافظة على البيانات وعدم تعطل الواجهة؛ ABI/ART وsingle owner + durable ACK.
P1: batch 500 وإلغاء الازدواجية والتعافي.
P2: تقليل threads/CPU/RAM والاستفادة من Rust scheduler.
P3: نقل HTTP إذا أثبت تفوقاً على FileDownloader؛ هذا قرار مشروط، ليس إلزامياً لمجرد Rust.
P4: MKV completion proof وإغلاق ثغرات recovery المتبقية.
P5: كل الميزات/الترقية والتحقق على الهاتف.
متى نعتبر المشروع منتهياً؟ ليس بتاريخ مقطوع، بل بمرور R7 وكل البوابات الحرجة؛ لا توجد مدة موثوقة قبل R1/R2 وقياسات الأداء الحقيقية.

## حالة تنفيذ R1 الحالية — 2026-11-23
- JNI read-only C export وSmali probe حقق فحوص Rust Linux وARM64/x86_64 build.
- signed diagnostic APK verified في run 45112292108؛ artifact 14790505739 متاح على Actions. اختبار exact candidate Android15 ART قيد التنفيذ عند هذا التحديث؛ لا اعتبار بوابة R1 كاملة قبل النتيجة.
- الوثيقتان R1_JNI_REPORT_AR.md وR2_STORAGE_CONTRACT_AR.md تبينان حدود التحقق وسلسلة قبول الدفعات الموثقة.
- R2 لم يبدأ implementation بعد، حافظ على single writer/Queue110 SharedPreferences commit وRoom، ولا تعتبر `enqueue_admitted` وصل ACK لدفعة كاملة.

### R1 نجاح بوابة ART المعزولة — 2026-11-23
- ✅ Run 45112292108 succeeded: verified signed diagnostic APK, JNI ABI=1 on Android15 x86_64 emulator, opens=2/refresh_paths=4/closes=2 لـBatchDownload.
- ✅ Binary ARM64 وx86_64 CI builds. ABI/DEX smoke تحقق.
- ⬜ Device Android ARM64 full app startup/multi-process JNI smoke ما زال NOT_RUN. لا تفرض تجربة صغيرة على المالك؛ اجمعها مع milestone وظيفي أكبر.
- ⬜ R2 durable Rust ledger وشيفرة الإنتاج لم تبدأ؛ أكمل حقائق source/Room قبل التعديل.
