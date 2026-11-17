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
