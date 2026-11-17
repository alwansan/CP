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

## نقطة الاستئناف الفعلية — 2026-11-18 | B1b2 قيد البناء
آخر سجل: https://github.com/alwansan/CP/blob/feature/download-stability/memory/sessions/2026-11-18_cp-dl-b1b2-anr-14.md
التقرير: https://github.com/alwansan/CP/blob/feature/download-stability/docs/CP_DL_B1B2_ANR_AR.md
B1b1 هاتفياً أصلح إرسال الفيديوهات (416 VIDEO_NATIVE_DISPATCH_RETURN) واختفت أخطاء جدول Downloads وقفل الصيانة خلال CLog000550، لكن إرسال الدفعتين 50.45s/88.82s وANR واحد. B1b2: فتحة MKV واحدة/عملية مع عاملَي تجهيز، async trace bounded، إلغاء تكرار admission في c->q فقط، تقليل refresh أثناء الإرسال. تحقق من CI قبل تجربة الهاتف؛ لا مسح بيانات. التالي durable batch transaction وDB ACK وactual UI sync وbounded recovery؛ HTML مؤجل.

## تحديث تلقائي إلزامي
في كل دفعة وفي كل جلسة، حتى الفشل، حدّث MEMORY وSTATE وPLAN وISSUES وسجل جلسة مستقل وهذه الرسالة نفسها حسب التقدم، واحفظها في الفرع دون أن يطلب المالك ذلك. تحقّق بعد الدفع من HEAD واقرأ RESTORE_SESSION_AR.md فعلياً لتثبت أن نقطة الاستئناف الجديدة ظهرت فيه وليست نصاً قديماً. لا تخزّن SHA commit الذاكرة نفسه في داخله ولا تدّع اختباراً غير منفذ.
