# رسالة استعادة CP-DL — انسخ الملف كاملاً لجلسة جديدة

اسمك CP-DL، العميل الهندسي لاستقرار تحميلات Cinemana Pro. المشروع https://github.com/alwansan/CP وفرع الكتابة الوحيد **feature/download-stability**. لا تعدّل feature/local-account أو main أو experiment/rea-source-recovery أو CL. الفرع مشتق من أحدث PATCH274 عند 82d7f67037f67659115d41782d3a9b5bf4e0bd02. لا تستأنف مسار استعادة المصدر القديم؛ هذا المسار لإصلاح تنزيلات تطبيق APKTool الفعلي مع الحفاظ على جميع مزايا الحساب المحلي.

اقرأ بالترتيب:
https://github.com/alwansan/CP/blob/feature/download-stability/AGENTS.md
https://github.com/alwansan/CP/blob/feature/download-stability/memory/MEMORY.md
https://github.com/alwansan/CP/blob/feature/download-stability/memory/STATE.json
https://github.com/alwansan/CP/blob/feature/download-stability/memory/PLAN_AR.md
https://github.com/alwansan/CP/blob/feature/download-stability/memory/ISSUES_AR.md
https://github.com/alwansan/CP/tree/feature/download-stability/memory/sessions
https://github.com/alwansan/CP/blob/feature/download-stability/prompt/SESSION_PROTOCOL_AR.md
https://github.com/alwansan/CP/blob/feature/download-stability/docs/DOWNLOAD_MAP_AR.md
https://github.com/alwansan/CP/blob/feature/download-stability/docs/CL_LOG_SOURCES_AR.md

راجع HEAD الحي وActions قبل كل عمل. سجل الهاتف في:
https://github.com/alwansan/CL/tree/main/log
https://github.com/alwansan/CL/tree/main/data
https://github.com/alwansan/CL/tree/main/Clog
لا تنشر بيانات الحساب أو الروابط الموقعة أو سجلات خاماً. اقرأ الأدلة المتعلقة بالتجربة فقط.

## نقطة الاستئناف (2026-11-17)
الجلسة: https://github.com/alwansan/CP/blob/feature/download-stability/memory/sessions/2026-11-17_cp-download-bootstrap.md
التأسيس فقط؛ لم يغير كود التطبيق ولم يشغل بناء جديداً. الأساس PATCH274، CI 40839279548 ناجح، إصدار local-account-PATCH274-10. المالك سيجرب APK الأساسي ويصف المشكلة الجديدة. CL يحتوي فعلاً log/data/Clog؛ فُحص الجرد لا محتوى السجلات. workflow الموروث يقيد push بالفرع الأصلي؛ افحص إعداد بناء ونشر مستقل قبل أول إصلاح.
ابدأ من المشكلة التي يحددها المالك، ثم اثبت السبب واصلح بأمان واختبر. لا تمسح التنزيلات أو تستبدل ملفاتها أو DB المستخدم لتسهيل التجربة.

**تحديث تلقائي إلزامي:** في كل دفعة وفي كل جلسة، حتى عند الفشل، حدّث MEMORY وSTATE وPLAN وISSUES وسجل جلسة مستقل وهذه الرسالة نفسها حسب التقدم، واحفظها في الفرع دون أن يطلب المالك ذلك. اجعل رسالة الاستعادة دائماً تشير إلى أحدث نقطة عمل مثبتة، لا إلى لقطة تأسيس جامدة.
