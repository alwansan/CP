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

## نقطة الاستئناف (2026-11-17 — ترقية CLog)
الجلسة: https://github.com/alwansan/CP/blob/feature/download-stability/memory/sessions/2026-11-17_cp-dl-clog-upgrade-05.md
التقرير: https://github.com/alwansan/CP/blob/feature/download-stability/docs/CLOG_DIAGNOSTICS_HANDOFF_AR.md
المالك كلف تطوير أداة CLog منفصلة على raf/clog فقط لهذه الجولة. build8 https://github.com/alwansan/raf/actions/runs/44140583807 نجاح ونشر clog-8؛ build9 https://github.com/alwansan/raf/actions/runs/44141066327 completed/success؛ تحقق حياً من أحدث release. auto paths + permissions, resource metrics/coverage, LMK distinction. لا اختبار هاتف بعد؛ CP code/CI لم يتغير. المالك سيجرب CLog أولاً ثم CP DL-A0 isolated CI/fixtures/markers ثم A1 Room/A2 bind/A3 logs وB–D وفق docs/DOWNLOAD_EXECUTION_DESIGN_AR.md وdocs/DOWNLOAD_IDLE_RESOURCE_POLICY_AR.md. لا delete أو نشر حساب/URL؛ CL read-only. حافظ على سجل الاختبارات السابقة.

تحديث تلقائي إلزامي:** في كل دفعة وفي كل جلسة، حتى عند الفشل، حدّث MEMORY وSTATE وPLAN وISSUES وسجل جلسة مستقل وهذه الرسالة نفسها حسب التقدم، واحفظها في الفرع دون أن يطلب المالك ذلك. اجعل رسالة الاستعادة دائماً تشير إلى أحدث نقطة عمل مثبتة، لا إلى لقطة تأسيس جامدة.
