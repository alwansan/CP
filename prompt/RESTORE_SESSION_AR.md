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

## نقطة الاستئناف (2026-11-17 — سياسة الخمول)
الجلسة: https://github.com/alwansan/CP/blob/feature/download-stability/memory/sessions/2026-11-17_cp-download-idle-audit-04.md
التقرير: https://github.com/alwansan/CP/blob/feature/download-stability/docs/DOWNLOAD_IDLE_RESOURCE_POLICY_AR.md
التصميم: docs/DOWNLOAD_EXECUTION_DESIGN_AR.md؛ tests docs/DOWNLOAD_DEVICE_TEST_MATRIX_AR.md؛ التقارير pressure/resource audit. المالك طلب تخفيف التطبيق حتى بلا تحميل وإيقاف الفحص دون حاجة. Persistence123 5s checks (ليس full write دائماً)، Performance116 2s، CacheCleaner 6h، Restart108 backoff حتى120s، MKV hasWork MP4/temp. stable-core PATCH307–309/317/320 مرجع؛ idle حقيقي يحتاج اختبار منفصل. سياسة event-driven + dirty generations/earliest retry/wake race guards، UI delta/artwork بعد الإثبات. لا runtime أو workflow أو build. DL-A0 idle fixture/CI ثم A1/A2/A3، بقية الخطة كما هي؛ استلم إذن التنفيذ. اقرأ HEAD الحي، لا تمس البيانات أو الفروع الأخرى.

**تحديث تلقائي إلزامي:** في كل دفعة وفي كل جلسة، حتى عند الفشل، حدّث MEMORY وSTATE وPLAN وISSUES وسجل جلسة مستقل وهذه الرسالة نفسها حسب التقدم، واحفظها في الفرع دون أن يطلب المالك ذلك. اجعل رسالة الاستعادة دائماً تشير إلى أحدث نقطة عمل مثبتة، لا إلى لقطة تأسيس جامدة.
