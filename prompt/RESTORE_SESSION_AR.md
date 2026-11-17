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

## نقطة الاستئناف الفعلية — 2026-11-17 | B1a hotfix، CI pending
آخر سجل: https://github.com/alwansan/CP/blob/feature/download-stability/memory/sessions/2026-11-17_cp-dl-b1a-hotfix-12.md
التقرير: https://github.com/alwansan/CP/blob/feature/download-stability/docs/CP_DL_B1A_HOTFIX_AR.md
B1a-5 فشل فتح النافذة 22/22 في تجربة هاتف جديدة؛ NoClassDefFoundError من فقدان $ في listener names. استعدنا 20 مرجعاً وفعّلنا source/DEX type reference gates. لا تعتمد B1a-5؛ تحقق CI hotfix ثم اختبر فتح النافذة دون حذف البيانات. B1b مؤجل حتى إثبات فتح النافذة.
آخر جلسة: https://github.com/alwansan/CP/blob/feature/download-stability/memory/sessions/2026-11-17_cp-dl-b1a-11.md
التقرير: https://github.com/alwansan/CP/blob/feature/download-stability/docs/CP_DL_B1A_AR.md
B1a فصل الحلقات المحددة الفاشلة عن الجاهزة، زر أخطاء ومعلومات السبب وإعادة التجهيز، إبقاء النافذة عند أخطاء مختارة. لا durable admission أو DB ACK جديد بعد، لا تغيير في queue/MKV/HTTP أو HTML. CI https://github.com/alwansan/CP/actions/runs/44166130522 completed/success؛ APK https://github.com/alwansan/CP/releases/download/cp-dl-B1a-5/Cinemana_CP_DL_B1a_signed.apk. محاكاة docs/fixtures/cp_dl_b1_contract.py نجحت 6/6 محلياً فقط؛ لا طابور B1b مدمج. اختبر الهاتف دون مسح البيانات. الأرقام من A1/A2؛ لا A3/B1a هاتف مثبت.
اقرأ أولاً التقرير الجديد كاملاً: https://github.com/alwansan/CP/blob/feature/download-stability/docs/CP_DL_B1_HANDOFF_AR.md
جلسة الاستعادة الحالية: https://github.com/alwansan/CP/blob/feature/download-stability/memory/sessions/2026-11-17_cp-dl-restore-10.md
ثم سجل تسليم B1: https://github.com/alwansan/CP/blob/feature/download-stability/memory/sessions/2026-11-17_cp-dl-b1-handoff-09.md
وتقرير A2/A3: https://github.com/alwansan/CP/blob/feature/download-stability/docs/CP_DL_A3_AR.md
تأكد من آخر HEAD وActions وCL قبل التنفيذ. CL evidence pinned 4b0bc931567f9dcdc197576bc2a9f5f5e0d4f8c0.
A3 build 44163124193 ناجح موقّع ومنشور: https://github.com/alwansan/CP/releases/download/cp-dl-A3-4/Cinemana_CP_DL_A3_signed.apk
SHA الكود cc4576f122edfdbf1905f3e5cc36f0707ba36f79. اختبار A3 على الهاتف غير مثبت بعد. آخر اختبار A2: backlog 19 MP4 ->0، ANR0، ضغط batch جديد peak382 threads، 1056 excess subtitle submit markers، 7 أخطاء HTTP403. A3 خفف replay والـdependencies وpreview أثناء الإرسال، لا إعادة هيكلة كاملة بعد.
B1: begin ينتظر كل metadata، enqueue على MAIN، NativeBatchScope.m يرجع void قبل إثبات DB، dialog close يوقف work، selected errors تمنع زر البدء، catch لا يضع episode.error. راجع التقرير؛ نفذ durable admission مع scheduler واحد وack حقيقي وfailed-only button، فصل preview الاختياري عن القبول، علاج retry من المصدر المصرّح به، ثم DB/MKV idempotency وidle. لا تدّع سبب invisibility مؤكداً دون ربط DB. لا تمسح الملفات؛ اختبر backlog ودفعتين متداخلتين وforce-stop. فكرة HTML/WebView للنقاش المستقبلي فقط، لا تطبقها الآن. لا تغيّر فروعاً أخرى أو CL. لم يحدث تعديل runtime في handoff09.
 
## تحديث تلقائي إلزامي
في كل دفعة وفي كل جلسة، حتى الفشل، حدّث MEMORY وSTATE وPLAN وISSUES وسجل جلسة مستقل وهذه الرسالة نفسها حسب التقدم، واحفظها في الفرع دون أن يطلب المالك ذلك. تحقّق بعد الدفع من HEAD واقرأ RESTORE_SESSION_AR.md فعلياً لتثبت أن نقطة الاستئناف الجديدة ظهرت فيه وليست نصاً قديماً. لا تخزّن SHA commit الذاكرة نفسه في داخله ولا تدّع اختباراً غير منفذ.
