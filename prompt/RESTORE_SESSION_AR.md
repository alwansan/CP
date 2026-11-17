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

## نقطة الاستئناف (2026-11-17 — تحقيق الضغط)
الجلسة: https://github.com/alwansan/CP/blob/feature/download-stability/memory/sessions/2026-11-17_cp-download-pressure-audit-01.md
التقرير والخطة: https://github.com/alwansan/CP/blob/feature/download-stability/docs/DOWNLOAD_PRESSURE_AUDIT_AR.md
المالك وصف ضغط 200–500 حلقة/lag/فقد ظاهري/توقف/MP4-MKV/عدم تشغيل/force-stop. أدلة CL pinned b0b4e6721dd8dac0e2e74acd80a889dfc5b461ed: CA1 220/496 جودة، 197 ضمن 1–200 لأن 120/128/130 غير موجودة بسجل الجودات، 41.5/59.7s admission main؛ 612 queue requests و415 bind result، 4 MKV/16 MP4/2 temp، peak 360 threads، لا OOM مثبت. راجع التقرير للحدود؛ CLog internal decode failed. لا تعديل كود أو workflow ولا بناء. مرحلة تحليل فقط؛ الخطوة التالية توجيه المالك ثم P0/P1/P2. لا تدمج فروعاً ولا تمس بيانات المستخدم.

**تحديث تلقائي إلزامي:** في كل دفعة وفي كل جلسة، حتى عند الفشل، حدّث MEMORY وSTATE وPLAN وISSUES وسجل جلسة مستقل وهذه الرسالة نفسها حسب التقدم، واحفظها في الفرع دون أن يطلب المالك ذلك. اجعل رسالة الاستعادة دائماً تشير إلى أحدث نقطة عمل مثبتة، لا إلى لقطة تأسيس جامدة.
