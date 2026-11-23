# Cinemana Pro — Rust Core Migration
**الفرع المنفصل: experiment/rust-core-migration | المصدر: feature/download-stability | 2026-11-23**

الهدف اعتماد Rust للمحركات الثقيلة: تحميل الحلقات، طوابير 200–500 مهمة، إدارة threads/الذاكرة، الاسترداد، وإدارة MKV مع إبقاء FFmpeg. الحفاظ الكامل على الواجهة/الحساب/المشغّل/الترجمات/الإشعارات/البيانات الأصلية.

## الحالة
- R0: Rust in-memory engine simulation بخمسة اختبارات (batch idempotency/generation/state).
- CI Linux successful run 45110102602، Android ARM64 libcp_rust_core.so successful run 45110176247، artifact 14788429301.
- **لم يتم تشغيل Rust داخل APK أو عبر JNI ولم يُنقل download/queue/FFmpeg فعلياً؛ لا APK جديد جاهز بعد.**
- R1 التالي: read-only JNI load وART، وبعدها R2 durable queue ثم R3/R4/R5/R6/R7.

## مستندات العمل
- PLAN_AR.md: خطة تفصيلية R0–R7
- ARCHITECTURE_AUDIT_AR.md: الأدلة ومسارات Smali/Java/Android
- TEST_MATRIX_AR.md: T01–T20 وCI/ART/Phone acceptance
- DECISIONS_AND_RISKS_AR.md: ADR ومخاطر العودة
- AGENTS.md: استقلال الفرع والتحديث الآلي
- MEMORY_AR.md: معرفة تقنية طويلة المدى
- STATE.json: حالة التنفيذ
- RESTORE_SESSION_AR.md: استعادة الجلسة
- sessions/: سجل كل دفعة بدون الكتابة فوق القديمة

يحافظ المشروع على feature/download-stability كما هو؛ ويمنع حذف ملفات المستخدم وازدواج محركات النقل أو mux. نجاح .so لا يعني نجاح APK ولا اكتمال نقل Rust.

## R2 snapshot fixture — 2026-11-23
rust-core/src/durable_fixture.rs هي تجربة Rust لمسار حفظ دفعات طلبات 500 حلقة: fsync/rename/dir sync قبل ACK وقفل مالك وحيد ومحاكاة crash وreplay. CI run 45113493256 = 14/14 tests PASS + Android ARM64 cross-build PASS. المصدر الأصلي لا يرسل الطلبات إليها بعد. التفاصيل في R2_DURABLE_FIXTURE_REPORT_AR.md.

## جلسة R2 Shadow JNI — 2026-11-23
- أضيفت `shadow_audit.rs` و`jni_shadow.rs` باستخدام jni=0.21.1 لنقل **مصفوفة أرقام اصطناعية** عبر JNI (حد 1000/4096)، وحساب 200 new/200 existing/100 duplicate من 500 معرّف؛ الاستثناءات Java بدل silent bad ACK.
- `RustAbiProbe.smali` حصلت على `shadowAudit([I[I)J`، وART صار يرفض النجاح بدون marker اختبار 500 وinvalid/oversize.
- `run 45115514740` SUCCESS: 19/19 tests، clippy/fmt، SIGKILL Linux، ARM64 native build. `run 45115514777` signed Android15 ART **لم يتحقق بعد** أثناء تحديث الملفات.
- read-only فقط ولا اتصال بـRoom أو Downloads / الهاتف. الخطة التالية typed async event bridge بعد إثبات mapping `(task_id,external_id)` ومُلكية الخدمة.
- تقرير مستقل `rust-migration/R2_SHADOW_JNI_REPORT_AR.md`.
