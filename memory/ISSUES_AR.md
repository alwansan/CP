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
