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
