# خطة CP-DL — استقرار التنزيلات
الحالة: تأسيس مكتمل؛ لا بدء بإصلاح محدد حتى يصف المالك العطل. هذه أولويات مقترحة وليست نتائج تشخيص.
1. تثبيت baseline PATCH274 وتحديد package/version/SHA ووقت التجربة؛ حفظ بيانات التطبيق.
2. ربط log/data/Clog بالتجربة والتوقيت؛ بناء timeline لكل task/token ومرحلة. فصل أعراض الشبكة عن طابور العمل وDB وFFmpeg والتخزين.
3. جرد نقاط دخول التنزيل وإعادة المحاولة والاسترجاع والـDAO والمراقب والـFFmpeg في الكود الحي؛ إثبات call graph لكل إصلاح.
4. بعد وصف المالك: تسجيل مشكلة بمعرف DL-xxx، إعادة الإنتاج ببيانات مصطنعة/اختبار هاتف غير مدمر؛ تحديد first failure والفرضيات واختبارات تمييزها.
5. إصلاح أصغر نطاق قابل للتحقق، مع اختبارات سلبية: انقطاع شبكة، 200/206 غير متوقع، فقد العملية، امتلاء تخزين، تكرر callbacks، إلغاء، استئناف، تضارب ملف/هوية، ترقية DB غير مكتملة. لا تجارب مدمرة على بيانات المالك.
6. إعداد بناء معزول للفرع (لا تعديل workflow في التأسيس) مع فحص DEX/ART المتاح وتوقيع متوافق وإصدار مختلف عن local-account.
7. اختبار هاتف مع الأدلة: حفظ بيانات وحساب PATCH274، تنزيل فردي ومتعدد، استئناف، MP4→MKV وDB، عدم تكرار أو فقد ملفات، إلغاء آمن، استقرار بعد reboot/force-stop حسب الحالة.
8. حدّث الذاكرة وسجل المشكلة وخطة التحقق ورسالة الاستعادة بعد كل دفعة؛ إغلاق فقط مع دليل واضح.

تحديث 2026-11-17: استعادة السياق والتحقق الحي اكتمل؛ ما زالت الخطوة الأولى الفعلية استلام فكرة المالك ووصف عطل الهاتف. لا تغيير في ترتيب الإصلاح أو الاختبارات.

## خطة الضغط المحدثة
المصدر التفصيلي: docs/DOWNLOAD_PRESSURE_AUDIT_AR.md. المالك طلب مرحلة تحليل فقط، لا تنفيذ runtime بعد. ترتيب P0 القياسات والاختبارات الاصطناعية، P1 قبول دائم/اختيار/ACK، P2 scheduler/recovery single-flight، P3 resolver/size/links bounded، P4 MKV oldest-ready/lease/DB/observer، P5 تنزيلات UI diff/playback، P6 force-stop recovery، P7 soak وCI مستقل. الأهداف المبدئية قابلة للقياس وليست وعوداً. حافظ على PATCH274 وملفات المستخدم.

## تعديل الأولوية بعد CLog ZIP
docs/DOWNLOAD_RESOURCE_AUDIT_AR.md. P0A lifecycle Room/DAO per process والتسرب؛ P0B startup minimal service, main-only repair, single-flight bind والحد بعد connected؛ P0C bounded diagnostic logger/قياسات per-thread. ثم P1–P7 السابقة؛ التخطيط فقط. لا نسخ كامل الفروع ولا حذف ملفات المستخدم، لا اعتماد نجاح CI كاختبار هاتف.

## تصميم التنفيذ التفصيلي ومصفوفة الاختبار
docs/DOWNLOAD_EXECUTION_DESIGN_AR.md وdocs/DOWNLOAD_DEVICE_TEST_MATRIX_AR.md. التخطيط فقط. الإصدارات المقترحة DL-A0 CI/fixtures؛ DL-A1 DAO؛ DL-A2 service; DL-A3 diagnostic; DL-B1 admission/B2 scheduler; DL-C1 resolver/C2 MKV; DL-D1 downloads UI/D2 soak. تحقق من حراسات موجودة قبل التعديل (bind throttle 5s، no-op put/phase، AUDIT_PENDING، shutdownNow). حدد بعد إذن المالك، لا بناء قبل التنفيذ. اختبارات الهاتف T01–T14 والـforce-stop gates؛ preserve data/signature.

## سياسة الخمول وكلفة الواجهات
docs/DOWNLOAD_IDLE_RESOURCE_POLICY_AR.md. أضف إلى A0 baseline idle الحقيقي/no player والضغط والـlarge library، A3 مراقبة مقتصدة، B2 dirty event scheduler + backup coalescing لا فقد critical writes، C2 MKV readiness and blocked deadline، D1 card diff/lifecycle/artwork cache بعد إثبات. حافظ JobScheduler/account/notifications. No continuous full scans idle after bounded boot, no lost wakeups, no blanket shutdown. مرحلة تخطيط فقط.

## أداة التشخيص قبل أول APK تجريبي
docs/CLOG_DIAGNOSTICS_HANDOFF_AR.md. CLog منفصل raf/clog بتكليف المالك؛ build8 success وbuild9 completed/success. فحص release حي، اختبار الهاتف CLog أولاً، ثم CP A0 isolated workflow/signed fixture/runtime markers، A1/A2/A3 وB–D. لا حذف بيانات تلقائياً، fresh لا يغني recovery/legacy tests.

## التنفيذ بدأ
A1 scoped implementation + isolated CI، docs/CP_DL_A1_AR.md. بعدها تحقق CI والهاتف، A2/A3 ثم B–D. لا حذف بيانات ولا اعتبار A1 حل كامل.

A1 APK منشور، CI completed/success. جرب الهاتف حسب docs/CP_DL_A1_AR.md ثم A2/A3/B–D.

## A2
docs/CP_DL_A2_AR.md. A1 phone gate improved leaks/startup but heavy stress remains. A2 reduce MKV worker/scan and UI refresh cost; then B1/B2 durable batch and queue, source receipts, DB idempotency + state authority. No full scheduler rewrite this batch.

## أول محاولة CI لـA2
Run 44149109180 فشل في test_recovery_flow.py بسبب Unmodeled instruction: if-lez v2, :ordered_done؛ المحاكي لم يدعم شروط/حقل cursor الجديدة. وسّع المحاكي لدعم sget/sput AUDIT_CURSOR, if-lez/ltz, if-ge/lt؛ اختبار 25 ملفات يثبت أول 24 بالترتيب ضمن 8/دورة ووصول 25، واختبار تقلص المجلد وإعادة المؤشر؛ لا تعطيل أو تخفيض اختبارات التحقق. البناء الجديد مطلوب.

A2 CI 44149544059 success, published cp-dl-A2-3. Owner phone test next: preserve backlog, old/new progress and flicker, then 5/20/200 only if stable. B1/B2 incremental scheduler, durable source receipt, idempotent DB promotion and UI state generation still open. Full CL max recovery25.168s, 198 promotes/44 IDs; 21 selection skips all existing.

A3 docs/CP_DL_A3_AR.md: fix subtitle ownership before full B1; test same backlog and multi-batch stress; priority remaining durable intents, error filter, link recovery authorization-safe, DB dedup, idle. HTML discussion only, benchmark after backend.

## نتيجة CI A3 وقراءة إضافية
CI 44163124193 completed/success، A3 APK signed published https://github.com/alwansan/CP/releases/download/cp-dl-A3-4/Cinemana_CP_DL_A3_signed.apk، bytes 56290332، sha256:1a990a2492f99367f138ee44b9c6fcb11b059158e3e27ea4d50f863465d1673c، code cc4576f122edfdbf1905f3e5cc36f0707ba36f79. Tests source guards/account/recovery/build/sign/Dex; not phone proof. Full CL selection_range from1 to200 matches197 BEFORE enqueue, not lost three at admission; exact missing episode IDs/catalog explanation not yet proved. 65/232 dispatch entries bytes=-1; size preview already not hard prerequisite; A3 pauses optional HTTP while busy but still waits metadata and dispatches via main, durable admission B1 remains. Second CLog coverage lag21.1MB compensated by full CL downloads/batch/export/tree. Owner reports queue invisible; accepted means native method returned, not durable-visible confirmation. Test A3 with existing 197+35 pending (backup), compare repeated subtitle starts (1056 excess in prior stress window), verify old/new tasks/MP4→MKV, two overlapping small then large batches, no forced restart, seven HTTP403 recovery not claimed fixed. Preview workers remain 3, 6 metadata. No HTML conversion, no failed-only button yet. No destructive changes. UI discussion: WebView not zero resource; benchmark local native vs WebView after stable backend. 

## B1 handoff09
docs/CP_DL_B1_HANDOFF_AR.md: durable single scheduler admission and DB acknowledgement, independence from screen lifetime, ready rows not blocked, failed-only button with retry/quality, optional bounded preview, safe 403 recovery; deterministic failure injection. A3 signed published cp-dl-A3-4; phone pending. HTML A/B deferred. Preserve user data and all previous protections.

## استعادة CP-DL — 2026-11-17، 22:59 بغداد
قرئت نقطة التسليم B1 الجديدة في docs/CP_DL_B1_HANDOFF_AR.md (HEAD 350bac2909337b40b89517141a90d31b161cb5a4 قبل توثيق الاستعادة)؛ CL/main ظل 4b0bc931567f9dcdc197576bc2a9f5f5e0d4f8c0. آخر CI 44163124193 success وrelease cp-dl-A3-4 وتطابق SHA/الحجم من release API؛ CLog9 success ومنشور. أربعة runs CP بينها فشل محاكي A2 المعالج. لا دليل هاتف A3 جديد؛ لا تغيير كود أو build أو بيانات، لا قراءة raw logs جديدة. B1 التالي durable admission/ACK مستقل عن dialog، failed-only، preview bounded، حسب handoff09. سجل الاستعادة memory/sessions/2026-11-17_cp-dl-restore-10.md.

## B1a — 2026-11-17
Re-read three owner CLog ZIPs and CL unchanged at 4b0bc931567f9dcdc197576bc2a9f5f5e0d4f8c0. Same A1/A2 evidence, not A3. Additional snapshot: A2 recovery CLog 5340 GC/1228 lock markers, stress 674 GC/204 lock markers (broad log classifier, not unique pauses); min available RAM 3198592 KiB stress; no OOM/LMK/ANR observed, thermal status0; final cumulative gfx 2572/17615 janky, P99 200ms. B1a scoped runtime change: selected error isolation, actionable failed-only dialog with episode/known error, row-level retry using quality() and no auto-dismiss with selected errors; existing/submitted guarded. Unknown size already allowed in A3. Keep current all-metadata barrier and native ADMITTED guard until durable transactional receipt proven. No claim of durable enqueue, full automatic retry, root cause of missing batch, or A3/B1a phone test. CI pending. docs/CP_DL_B1A_AR.md; memory/sessions/2026-11-17_cp-dl-b1a-11.md.

## B1a — نتيجة البناء والمحاكاة
CI 44166130522 completed/success، code baec38e3d2fb741094cf237ab944b83d3a01ee64؛ compile/tests/sign/DEX/upload/release job steps success. Release cp-dl-B1a-5، APK 56294428 bytes، SHA256 e8787202e0d9e8480f2ac8c0b8acd26e714c960953ccbcc9b0f29b9439e50137، https://github.com/alwansan/CP/releases/download/cp-dl-B1a-5/Cinemana_CP_DL_B1a_signed.apk. لا اختبار هاتف B1a أو A3 بعد. محاكاة SQLite مستقلة docs/fixtures/cp_dl_b1_contract.py (6/6 PASS local): 197+35 unknown sizes/reopen؛ rollback؛ duplicate request/callback؛ dispatch-before-receipt ambiguity + reconciliation؛ cancellation epoch؛ independent failed/healthy batches. Model only (sequential DB reopen, not actual Android kill or parallel workers); unresolved ambiguous dispatch intentionally remains pending reconciliation; does not prove actual native DB, media identity, retry or scheduler. Next integrate B1b safely with existing Queue110/Restart108 and real ACK. HTML discussion only. No raw logs/URLs/account uploaded; CL unchanged.

## B1a hotfix — 2026-11-17
Owner clean-data phone test: multi-download button does not open. Direct uploaded CLog-20261117-231744-342 ZIP internal ca1_batch JSONL: 22 dialog_open and 22 call_error; identical underlying NoClassDefFoundError / ClassNotFoundException BatchDownload$Screen$ExternalSyntheticLambda15 in show(), borrowed listener class actually defined with $$; Naruto and Shippuden affected. No relation to reset/data/network. B1a JS string replacement used replacement text with $$ (expands to one dollar); affected 20 references across Lambda0,12,15–22 in Screen, not only initial 15. Restored all using function replacement (literal), validated all Screen family descriptors against pinned tree, preserved failed-only behavior. Source test scans all BatchDownload family refs and rejects injected missing-dollar regression, final APK verifier checks DEX type_ids against class_defs across dex for family; dedicated negative test. CI pending; phone open regression gate before B1b. CL unchanged 4b0bc931567f9dcdc197576bc2a9f5f5e0d4f8c0. No deletion or raw log exposure. docs/CP_DL_B1A_HOTFIX_AR.md; memory/sessions/2026-11-17_cp-dl-b1a-hotfix-12.md.
