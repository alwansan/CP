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

## نقطة الاستئناف الفعلية — 2026-11-18 | B1b2 إعادة بناء بعد معالجة حد DEX
آخر سجل: https://github.com/alwansan/CP/blob/feature/download-stability/memory/sessions/2026-11-18_cp-dl-b1b2-anr-14.md
التقرير: https://github.com/alwansan/CP/blob/feature/download-stability/docs/CP_DL_B1B2_ANR_AR.md
B1b1 هاتفياً أصلح إرسال الفيديوهات (416 VIDEO_NATIVE_DISPATCH_RETURN) واختفت أخطاء جدول Downloads وقفل الصيانة خلال CLog000550، لكن إرسال الدفعتين 50.45s/88.82s وANR واحد. B1b2: فتحة MKV واحدة/عملية مع عاملَي تجهيز، async trace bounded، إلغاء تكرار admission في c->q فقط، تقليل refresh أثناء الإرسال. تحقق من CI قبل تجربة الهاتف؛ لا مسح بيانات. التالي durable batch transaction وDB ACK وactual UI sync وbounded recovery؛ HTML مؤجل.

## تحديث تلقائي إلزامي
في كل دفعة وفي كل جلسة، حتى الفشل، حدّث MEMORY وSTATE وPLAN وISSUES وسجل جلسة مستقل وهذه الرسالة نفسها حسب التقدم، واحفظها في الفرع دون أن يطلب المالك ذلك. تحقّق بعد الدفع من HEAD واقرأ RESTORE_SESSION_AR.md فعلياً لتثبت أن نقطة الاستئناف الجديدة ظهرت فيه وليست نصاً قديماً. لا تخزّن SHA commit الذاكرة نفسه في داخله ولا تدّع اختباراً غير منفذ.


## CI failure and follow-up evidence — B1b2
Run 44181479070: source gates PASS; smali main DEX failed unsigned short 65536 at nk6.clone invoke instruction (primary method reference limit after new private helper). No APK produced. Build.sh now relocates exactly 14 ey0 family classes together from smali to smali_classes6 before assembly, preserves descriptors/source code, idempotent guard, final inventory verifier checks 16-bit method/field counts. minSdk21 verified; no class removed. Rebuild required. Additional phone evidence: MIUIScout 00:11:21 main stack Queue110.remember -> Restart108.admitted -> ey0.q -> ey0.c -> m -> BatchDownload.Screen.enqueue; current message 2504ms. 00:12:29 main stack DownloadTrace.log -> CnmDownloadQueue.release -> mc4.completed -> UIHandlerCallback. 00:13:30 hang during JobSupport/CoroutinesRoom cancellation from ViewModelStore/Fragment destruction; distinct path still open. h64 new-window native admission counts 417 MP4 incl197 Shippuden, 479 SRT,177 ASS; 88 MP4 DOWNLOAD_COMPLETED and 88 DOWNLOAD_DB_COMPLETED_CONFIRMED (raw occurrences, not unique), so previous admission/DB lag materially improved. Two SQLiteConnectionPool leaks after restart, 17 video_status missing-table occurrences; separate investigation. Do not infer root of ANR solely from earlier queue/trace; ViewModel cancellation also proven. B1b2 does not yet fix it.
