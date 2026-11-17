# سجل المشاكل — CP-DL
لا توجد مشكلة جديدة مشخصة في جلسة التأسيس. المالك سيحددها لاحقاً. لا تعد المخاطر التاريخية أخطاء حالية.
| ID | المجال | الحالة | الدليل / الخطوة |
|---|---|---|---|
| DL-000 | التأسيس | مكتمل | فرع من PATCH274 + ذاكرة؛ انتظار سيناريو |
| DL-001 | عطل التنزيل الحالي | بانتظار وصف المالك | لا سبب مثبت؛ ربط تجربة الهاتف بـCL |
| BUILD-001 | CI الفرع الجديد | مطلوب قبل أول بناء | push في local-account.yml مخصص للفرع الأصلي؛ افحص dispatch وتعارض tags |
| RISK-001 | استرجاع/تحويل/DB | تاريخي، غير مؤكد حالياً | تقارير PATCH258–262؛ تحقق من الكود والسجلات |
لكل مشكلة لاحقة: ID، عرض، إصدار ووقت، دليل منقح، first failure، فرضية، اختبار، SHA، نتيجة CI/هاتف، حالة، خطوة تالية. لا تغلق على مجرد نجاح تجميع APK. حدّث هذا الملف تلقائياً.

تحديث 2026-11-17: DL-001 بانتظار توجيه المالك؛ BUILD-001 مؤكد من trigger الموروث؛ صفر عمليات بناء على الفرع الجديد عند الفحص. لا مشكلة جديدة مثبتة.

## سجل ضغط 2026-11-17
| ID | المشكلة | حالة الدليل |
|---|---|---|
| DL-002 | batch admission بطيء/main | مؤكد 41.5/59.7s مقابل metadata 2.65/7.73s؛ call/notifyDataSetChanged على main |
| DL-003 | selection 197/200 | مؤكد gaps 120/128/130 في qualities_ready؛ سبب source vs catalog غير محسوم |
| DL-004 | accepted غير ظاهر/DB ACK | 197 CA1 admitted؛ native activity مثبتة؛ Room identity/ACK غير مثبت |
| DL-005 | queue recovery/bind flood | مؤكد 612 requests + 415 bind results؛ scan full وbind داخل loop disconnected |
| DL-006 | MKV backlog/oldest/progress | 4 MKV/16 MP4/2 temp؛ 4 acquire/2 release markers، لا إثبات leak؛ verify lease/DB/retry |
| DL-007 | downloads UI/playback | أعراض المالك + repeated playback_path_repaired؛ verify path/intent/main |
| DL-008 | link retry وparallel cap | desired=2 applied=false x3؛ يحتاج إثبات first failure/validator/alternate |
| DL-009 | force-stop resilience/resource pressure | peak 360 threads؛ 216 journals و4 proofs؛ recovery identity/acks غير مكتملة |
انظر docs/DOWNLOAD_PRESSURE_AUDIT_AR.md. DL-001 الآن umbrella للتحقيق، لا إغلاق قبل اختبار الهاتف. BUILD-001 مفتوح.

## أدلة إضافية (ZIP)
| ID | المشكلة | حالة |
|---|---|---|
| DL-010 | SQLite connection leak / Room lifecycle | 8188 warnings وكرر builder في PATCH274؛ P0A، PATCH318 مرجع |
| DL-011 | startup ANR في :filedownloader | حالتان مؤكدتان بعد force-stop؛ stack غير متاح؛ P0B |
| DL-012 | synchronous logging / lock contention | 24 UID samples DownloadTrace.log + code open/flush/close؛ P0C |
| DL-008 | retry/cap | 156 disconnected cap requests، HTTP403 E12 مثبت؛ لا تعميم |
DL-009 تصحيح: 4 am_kill هي force-stop x2 + ANR x2، لا LMK مثبت. DL-006 يبقى مفتوحاً. docs/DOWNLOAD_RESOURCE_AUDIT_AR.md.

## توضيح أدلة التصميم
DL-002: all-ready AtomicLong barrier + main dispatch؛ per-screen pools shutdown موجود، queue unbounded، لا إثبات thread leak من هذه وحدها. DL-005: bind throttle 5s موجود؛ bindingResult مجرد accepted log، لا READY ack. DL-010: Queue110.scanBody calls Restart108.exp -> MkvExporter.getDownloadsDao؛ يمتد أثر Room ownership إلى scheduler. DL-006: AUDIT_PENDING coalescing و5s hasWork polling موجودان؛ تحسين incremental لا إلغاء حماية. DL-004/DL-009: durable commit موجود لكنه synchronous per change؛ لا استبداله بapply. docs/DOWNLOAD_EXECUTION_DESIGN_AR.md.

## تحقيق الخمول
DL-013: Persistence123 fixed 5s checks + Performance116 fixed 2s heartbeat مثبتة؛ no-op guards موجودة؛ قياس الكلفة قبل تعديل. DL-014: MKV hasWork MP4/temp قد يبقي polling رغم blocked؛ Restart108 pending=0 backoff موجود؛ wake/deadline/idle race tests. DL-015: Native98/Download94 recursive resource lookup مثبت، mc4 coroutine update، إعادة تحميل الصور نفسها غير مثبتة؛ profile adapter/image lifecycle. DL-016: LocalRuntime foreground scan/network and dual-process initialization inspect؛ preserve subscription notifications. docs/DOWNLOAD_IDLE_RESOURCE_POLICY_AR.md.

## CLog
DIAG-001: automatic paths/permissions/coverage/metric attribution implemented in raf/clog؛ build8 success، build9 completed/success؛ device permission/paths/collector load validation open. DIAG-002: Android restricted readings and backlog/rotation may prevent full visibility؛ mark null/coverage limits; CP internal lifecycle markers still required. docs/CLOG_DIAGNOSTICS_HANDOFF_AR.md. DL issues not closed.

## A1
DL-010/011/015: mitigation implemented, pending CI/device; DL-005 throttle synchronized monotonic only; remaining issues open. ZIP new 5 startup ANR / 1790 raw warnings; CLog verified, coverage behind 6.6 MB. BUILD-001 isolated workflow added; pending run. docs/CP_DL_A1_AR.md.

BUILD-001: verified signed A1 APK published; runtime gate pending. DL-010/011/015 remain open until device evidence.

A1 evidence: DL-010/011 no observed leak/ANR in 273 samples (keep regression tests). DL-006/007/012/005 open: 183 promotes/42 IDs, SQLITE_BUSY x2, 120s source wait, 447 threads, UI state oscillation, long recovery ticks. A2 mitigations pending CI/device; no proven root for status oscillation. docs/CP_DL_A2_AR.md

## أول محاولة CI لـA2
Run 44149109180 فشل في test_recovery_flow.py بسبب Unmodeled instruction: if-lez v2, :ordered_done؛ المحاكي لم يدعم شروط/حقل cursor الجديدة. وسّع المحاكي لدعم sget/sput AUDIT_CURSOR, if-lez/ltz, if-ge/lt؛ اختبار 25 ملفات يثبت أول 24 بالترتيب ضمن 8/دورة ووصول 25، واختبار تقلص المجلد وإعادة المؤشر؛ لا تعطيل أو تخفيض اختبارات التحقق. البناء الجديد مطلوب.

A2 compiled/signed/published, phone gate pending. DL-002: 220 ->200 accepted,20 existing; 34.367s main dispatch span vs detail2.178s. DL-006 full CL198 promote successes/44 IDs; DL-007 E23/E24 native DB completed before screenshots; no late video starts in captured log; state race not yet proven. DL-005 recovery max25.168s. Keep A1 no observed ANR/leak as regression gate.

A2 observed work backlog clears, startup ANR0 but 2 SQLite leak markers in first session; stress subtitle 1056 repeat submits/receipt mismatch, 7 HTTP403 E87/96/118/122/132/155/167; 197+35 admitted but no proof UI visibility. A3 mitigations pending CI/device. docs/CP_DL_A3_AR.md.

## نتيجة CI A3 وقراءة إضافية
CI 44163124193 completed/success، A3 APK signed published https://github.com/alwansan/CP/releases/download/cp-dl-A3-4/Cinemana_CP_DL_A3_signed.apk، bytes 56290332، sha256:1a990a2492f99367f138ee44b9c6fcb11b059158e3e27ea4d50f863465d1673c، code cc4576f122edfdbf1905f3e5cc36f0707ba36f79. Tests source guards/account/recovery/build/sign/Dex; not phone proof. Full CL selection_range from1 to200 matches197 BEFORE enqueue, not lost three at admission; exact missing episode IDs/catalog explanation not yet proved. 65/232 dispatch entries bytes=-1; size preview already not hard prerequisite; A3 pauses optional HTTP while busy but still waits metadata and dispatches via main, durable admission B1 remains. Second CLog coverage lag21.1MB compensated by full CL downloads/batch/export/tree. Owner reports queue invisible; accepted means native method returned, not durable-visible confirmation. Test A3 with existing 197+35 pending (backup), compare repeated subtitle starts (1056 excess in prior stress window), verify old/new tasks/MP4→MKV, two overlapping small then large batches, no forced restart, seven HTTP403 recovery not claimed fixed. Preview workers remain 3, 6 metadata. No HTML conversion, no failed-only button yet. No destructive changes. UI discussion: WebView not zero resource; benchmark local native vs WebView after stable backend. 

## B1 source review
DL batch: full preparation barrier, main dispatch8ms, accepted=void return not durable; closed screen drops pending work, per-episode Fragment lifecycle observer (possible cost). No exact proof second batch invisibility writer. DL failure UI: any selected error disables start, enqueue catch no episode.error. DL 403: existing helper bounded but cross-DB migration/retry trigger needs audit; 7 failures unresolved. docs/CP_DL_B1_HANDOFF_AR.md. No B1 patch yet.
