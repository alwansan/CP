# CP-DL — مرحلة HTML والواجهات | handoff 2026-11-18

## القرار
تثبيت B1b3-12 baseline وظيفي للتحميل. لا نحتاج APK إضافياً لمجرد إغلاق المرحلة الأولى بعد h68. هذا ليس إثبات خلو المحرك من العيوب. لا تبدأ تنفيذ أو تصميم شاشة نهائية قبل أن يشرح المالك الفكرة في الجلسة الجديدة. لا تغير هوية CP-DL ولا فرع الكتابة feature/download-stability. حافظ على النسخة الأصلية وإمكانية الرجوع لكل شاشة على دفعات، دون مسح بيانات.

## هدف المالك
واجهة HTML/CSS/JS محلية تعرض الحالة وتستقبل التفاعل فقط. محرك native مستقل عن عمر الصفحة/Activity/WebView يملك الطابور والتنزيل والـMKV والاسترداد والـDB. يجب ألا ينتظر JS عمليات الشبكة أو DB أو FFmpeg على main، وألا يحتاج refresh كامل عند اكتمال عملية. لا تعد بعزل مطلق للموارد المشتركة CPU/RAM/I/O.

## خطة هندسية مقترحة؛ ليست تكليفاً بتنفيذ شاشة محددة الآن
1. استلام شرح المالك، تحديد صفحات وأولوية وترتيب، جرد UI الحالي (مزايا الحساب المحلي، مكتبة، مشاهدة، مشغل، إعدادات، تحميل فردي ومتعدد، طابور وتحويل). اقرأ actual APKTool/Smali؛ لا تستبدله بسورس REA.
2. تعريف عقد bridge غير متزامن ومحدود؛ requestId، ACK قبول دائم بعد كتابة الحالة، sequence/revision، snapshots عند attach وdeltas مجمعة ومحدودة، replay/reconcile عند فقد الحدث، cancellation من المحرك لا من JS. لا raw DB access أو signed URL أو بيانات اعتماد في HTML، لا JS bridge واسع من صفحات الشبكة. أصول محلية موثوقة، allowlist، CSP، منع navigation غير الموثوق وعزل الصلاحيات. 
3. معالجة backend backlog مع العقد: E24/E26 incomplete sidecar finalization عبر Restart108.repair (verify identity/path/size/epoch/lease/DB before cleanup; idempotent). DB promotion duplication/SQLITE_BUSY وvideo_status / room_table_modification_log schema/connection lifecycle. Durable batch transaction/ACK + bounded recovery scans، UI snapshot/invalidation and lifecycle، pause/delete/cancel races. لا تضف طابور تنزيل أو تحويل ثاني. حافظ على 3 shared MKV permits + per-source lease; لا تجعل معالجة الواجهة تتحكم بعمر الأعمال. 
4. اختبار bridge بمحاكاة ضغط 400+ حلقة دون تحميل فعلي؛ موت الصفحة وإعادة ربطها، قتل العملية في مراحل تحويل مختلفة، duplicate requests/events، out-of-order events، فقد الشبكة/المساحة، منع تكرار أو فقد البيانات. قارن latency/UI frame metrics على الهاتف. لا تدّع أن HTML أسرع من native قبل القياس. 
5. نفّذ صفحة واحدة بعد قرار المالك، مع feature flag أو fallback native حيث أمكن، اختبارات UI/WebView and existing API35 actual signed-DEX ART gate + negative h65 and missing synthetic descriptor gates, build/release and phone verification per batch. لا تستبدل جميع الشاشات دفعة واحدة ولا تنشر عند فشل البوابة. حافظ على signature/ABI/account.
6. حدّث MEMORY/STATE/PLAN/ISSUES/session/RESTORE تلقائياً مع كل خطوة، حتى الفشل. لا تنشر raw logs أو روابط موقعة أو بيانات الحساب. 
Evidence: https://github.com/alwansan/CP/blob/feature/download-stability/docs/CP_DL_H68_CLOSURE_AR.md; session https://github.com/alwansan/CP/blob/feature/download-stability/memory/sessions/2026-11-18_cp-dl-h68-html-handoff-18.md.
