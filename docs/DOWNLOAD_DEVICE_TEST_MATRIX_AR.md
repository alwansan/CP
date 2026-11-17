# CP-DL — مصفوفة تجارب الهاتف والاختبارات
مرحلة تصميم فقط، لم يُشغّل اختبار أو APK جديد. يستخدم الاختبار مواد مصرحاً بتنزيلها أو بيانات/خادم اصطناعي. لا تزيل التطبيق أو حسابك أو ملفات التنزيل القديمة.
## طريقة القياس الثابتة
سجل build tag/commit/SHA، وقت بغداد، الجهاز/Android، الشبكة، سرعة التحميل إن أمكن، المتزامن المحدد، عدد مهام سابق/جديد، حالة التخزين ودرجة الحرارة. CLog capture قبل بدء الاختبار بوقت قصير وحتى ما بعد النهاية/إعادة الفتح. لا تنشر بيانات الحساب أو URL موقعة. لكل حالة BEGIN/END وسبب توقف؛ capture status بدون raw data قدر الإمكان. لا تقارن runs مختلفة workload/وقت بلا توضيح. 
## ترتيب اختبار كل APK على الهاتف
| ID | السيناريو | الإثبات/القبول |
|---|---|---|
| T01 | تحديث فوق PATCH274 دون حذف بيانات | يفتح، نفس الحساب/المكتبة/المفضلة/الإشعارات والتنزيلات القديمة |
| T02 | فتح بعد إيقاف إجباري بلا تحميل جديد | لا startup ANR، لا duplicate workers، service readiness إذا يوجد work |
| T03 | 1 ثم 5 حلقات | كل intent محفوظ، visible status، native transfer + verified MP4/MKV/DB/play |
| T04 | 20 حلقة | 2 native starts (أو max user) بعد READY، بقية الطلبات تنتظر، retry لا يحتكر الخدمة |
| T05 | 200 حلقة | accepted+already+failed/unavailable يطابق المحدد، لا فقد، ACK سريع؛ compare 41.484s/59.686s baseline ليس متطابقاً بالضرورة |
| T06 | 500 حلقة ثم خروج من dialog | الطلبات الملتزم بها باقية، واجهة قابلة للاستخدام، انخفاض peak threads/DAO churn |
| T07 | 1000 intent synthetic | لا unbounded executor growth، كل intent مصنف، restart recovery bounded |
| T08 | source missing episode / qualities missing | distinguish 120/128/130 catalog gaps vs resolve error، no invented IDs |
| T09 | مقاطعة الشبكة / 403/429/invalid range | classified retry, same quality/identity, no corrupted append, user-visible waiting |
| T10 | MKV queue with oldest blocked subtitle | next ready continues، blocked reason، no starvation، lease released |
| T11 | تشغيل E03/E04 أو media مكتمل | open player أو سبب فشل واضح، path/state validated، conversion does not hold UI |
| T12 | إلغاء/حذف عبر واجهة على ملف اختباري فقط | canceled generation never resurrects، existing files unaffected |
| T13 | storage low simulated / DB write exception | preserve source/output, no permanent claim, retry safely |
| T14 | stress soak 30–60 min optional, 200/500 workload | stable forward progress, no ANR/OOM/new SQLite leaks, no duplication; duration is test window not delivery ETA |
## Force-stop matrix (فقط test items؛ بعد كل توقف افتح التطبيق يدوياً)
| checkpoint | expected recovery |
|---|---|
| before admission commit | UI never acknowledged; retry same batch safely |
| after intent ACK before resolver | intent remains durable; no lost selections |
| during resolve/native submit | claim lease expired; native owner check prior to resubmission |
| mid-transfer | valid partial resume only with matching source and range |
| native terminal before source receipt | terminal evidence recoverable; no false-completion |
| verified MP4 before mux | enqueue oldest-ready automatically |
| FFmpeg staging | stale stage check w/ no active lease; source intact |
| output validated before DB commit | adopt only exact identity output, DB ACK retry |
| DB committed before cleanup | recheck path/size/ownership; cleanup idempotent, never redownload |
| user cancellation | tombstone respected, explicit re-enqueue required |
## Fault injection in CI / isolated fixtures before phone
Process crash simulation after every durable boundary, duplicate/out-of-order callbacks, repeated reconnect, half-batch writes, unbounded backlog guard, DAO cache contention 1000 calls, null/failure retry, phase no-op, wrong epoch, native ID signed/zero/collision, old paused request, Range 200/206/416, Retry-After 429, no dependency head-of-line, missing MP4, bad MKV, storage full, DB promotion failure, safe source retention, logger saturation, UI adapter stable IDs, legacy upgrade/non-destructive rollback. Artifact static verification and signed compatibility distinct from runtime. 
## Metrics and gates (provisional)
Compare new warnings/10min and same workload. Goal zero new sqlite leaked warnings/ANR from CP, count owner creations per DB/process (custom DAO <=1; count native separately if unavoidable), max FD/thread count and per-name CPU if accessible, peak RSS/PSS, recovery tick distribution, ack p50/p95, queue stage ages, bytes progress, completed unique videos/MKV (not subtitles or duplicate callbacks), attempts/native IDs per logical task. No absolute total thread cap without measurement. Proposed 500 durable intents <=2s typical and UI p95 <=200ms; if slow report measured p50/p95 and bottleneck. All accepted intents accounted for after reopen; 0 duplicate native transfer/verified final or unsafe deletion. No claim until observed. 
## سجل نتيجة كل تجربة
test_id, build_sha, release, start/end, device, workload, settings, selected/acknowledged/unique terminal/blocked, startup ANR, SQLite warning delta, peak threads/PSS, artifacts with sanitized evidence, pass/fail/not-run, next. Keep actual results separate from plan. Original CLog log 17 Nov baseline 8188 warnings; 2 startup ANR; peak main threads 360; do not mix with later test.
