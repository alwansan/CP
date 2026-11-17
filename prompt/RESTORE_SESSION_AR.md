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

## نقطة الاستئناف الفعلية — 2026-11-18 | B1b2 ART hotfix قيد البناء
آخر سجل: https://github.com/alwansan/CP/blob/feature/download-stability/memory/sessions/2026-11-18_cp-dl-b1b2-art-hotfix-16.md
التقرير الجديد: https://github.com/alwansan/CP/blob/feature/download-stability/docs/CP_DL_B1B2_ART_HOTFIX_AR.md
تحذير: B1b2-9 فشل فتح التحميل المتعدد هاتفياً؛ لا تستخدمه. انتظر نجاح بوابة ART للإصلاح الجديد؛ تفاصيل أدناه.
سجل الإصلاح السابق: https://github.com/alwansan/CP/blob/feature/download-stability/memory/sessions/2026-11-18_cp-dl-b1b2-anr-14.md
التقرير: https://github.com/alwansan/CP/blob/feature/download-stability/docs/CP_DL_B1B2_ANR_AR.md
B1b1 هاتفياً أصلح إرسال الفيديوهات (416 VIDEO_NATIVE_DISPATCH_RETURN) واختفت أخطاء جدول Downloads وقفل الصيانة خلال CLog000550، لكن إرسال الدفعتين 50.45s/88.82s وANR واحد. B1b2: فتحة MKV واحدة/عملية مع عاملَي تجهيز، async trace bounded، إلغاء تكرار admission في c->q فقط، تقليل refresh أثناء الإرسال. CI https://github.com/alwansan/CP/actions/runs/44182076388 completed/success؛ APK https://github.com/alwansan/CP/releases/download/cp-dl-B1b2-9/Cinemana_CP_DL_B1b2_signed.apk؛ لا مسح بيانات. B1b2 لم يُختبر على الهاتف بعد. التالي durable batch transaction وDB ACK وactual UI sync وbounded recovery؛ HTML مؤجل.

## تحديث تلقائي إلزامي
في كل دفعة وفي كل جلسة، حتى الفشل، حدّث MEMORY وSTATE وPLAN وISSUES وسجل جلسة مستقل وهذه الرسالة نفسها حسب التقدم، واحفظها في الفرع دون أن يطلب المالك ذلك. تحقّق بعد الدفع من HEAD واقرأ RESTORE_SESSION_AR.md فعلياً لتثبت أن نقطة الاستئناف الجديدة ظهرت فيه وليست نصاً قديماً. لا تخزّن SHA commit الذاكرة نفسه في داخله ولا تدّع اختباراً غير منفذ.


## CI failure and follow-up evidence — B1b2
Run 44181479070: source gates PASS; smali main DEX failed unsigned short 65536 at nk6.clone invoke instruction (primary method reference limit after new private helper). No APK produced. Build.sh now relocates exactly 14 ey0 family classes together from smali to smali_classes6 before assembly, preserves descriptors/source code, idempotent guard, final inventory verifier checks 16-bit method/field counts. minSdk21 verified; no class removed. Rebuild required. Additional phone evidence: MIUIScout 00:11:21 main stack Queue110.remember -> Restart108.admitted -> ey0.q -> ey0.c -> m -> BatchDownload.Screen.enqueue; current message 2504ms. 00:12:29 main stack DownloadTrace.log -> CnmDownloadQueue.release -> mc4.completed -> UIHandlerCallback. 00:13:30 hang during JobSupport/CoroutinesRoom cancellation from ViewModelStore/Fragment destruction; distinct path still open. h64 new-window native admission counts 417 MP4 incl197 Shippuden, 479 SRT,177 ASS; 88 MP4 DOWNLOAD_COMPLETED and 88 DOWNLOAD_DB_COMPLETED_CONFIRMED (raw occurrences, not unique), so previous admission/DB lag materially improved. Two SQLiteConnectionPool leaks after restart, 17 video_status missing-table occurrences; separate investigation. Do not infer root of ANR solely from earlier queue/trace; ViewModel cancellation also proven. B1b2 does not yet fix it.


## نتيجة البناء والنشر — B1b2
CI 44182076388 completed/success, tested code b9ed569950e5af7c70c2cd6a1474d4e2006f085c, release cp-dl-B1b2-9, APK 56302620 bytes, sha256:6773048d3c9f5dc011c4c3ac5f9a608eef7eae53e4414295c5089ab94097c7f3, https://github.com/alwansan/CP/releases/download/cp-dl-B1b2-9/Cinemana_CP_DL_B1b2_signed.apk. Source tests, rebalanced DEX assembly, inventory, signing, upload and release succeeded. Additional h64 timing: 54 exec-to-exit=0 FFmpeg pairs median7.54s (0.713–13.084); 51 matched slot acquisitions/releases median11.901s (0.872–22.609), includes postprocessing/DB, four acquisitions unpaired in capture including process death/boundary; samples not paired across both sets, do not subtract as per-task measurement. Tree 40→53 MKV. B1b2 phone validation not yet done. Main first-admission still synchronous, durable full-batch atomic queue and ViewModel/Room cancellation/real state invalidation remain unfinished. Next verify native admissions, pause/delete/cancel, foreground exit, recover after process kill, one mux permit, trace overflow count, ANR, time to accept 219+197 and compare. HTML later, one page at a time after stable backend. No CL edits.


## استعادة CP-DL — 2026-11-18، 00:48 بغداد (جلسة 15)
HEAD عند البدء 9e64b5891666a6a0c04f2f053924b6fcc8ba8149؛ CL/main 4b0bc931567f9dcdc197576bc2a9f5f5e0d4f8c0 بلا تغيير منذ آخر جرد؛ لا سجل B1b2 جديد في هذه الرسالة. قائمة Actions للفرع 9 runs، أحدثها 44182076388 completed/success؛ تحقق job steps وrelease API cp-dl-B1b2-9 وتطابق target b9ed569950e5af7c70c2cd6a1474d4e2006f085c، الحجم 56302620 وdigest sha256:6773048d3c9f5dc011c4c3ac5f9a608eef7eae53e4414295c5089ab94097c7f3. بيانات device السابقة في STATE.b1b2.device تخص B1b1 (h63/h64/CLog000550)، لا B1b2. لا تعديل runtime أو build جديد أو اختبار هاتف في هذه الجلسة. اختبار B1b2 كتحديث دون مسح بيانات هو البوابة التالية. قارن dispatch 47.325s/82.683s وtotal 50.450s/88.821s، native video return != durable ACK، single mux per process، ANR/trace overflow، DB/Room/إغلاق الشاشة والاسترداد. بعدها durable batch transaction خارج main مع serial native composer، DB ACK وإبطال UI واسترداد bounded؛ لا ادعاء حل ANR أو تعميم mux عبر العمليات. HTML مؤجل؛ لا CL edits.
سجل الجلسة: memory/sessions/2026-11-18_cp-dl-restore-15.md.


## B1b2 ART hotfix — 2026-11-18 (جلسة 16)
Owner h65.zip and CLog-20261118-004905-259: 14 call_error, zero dialog_open; root exact VerifyError BatchDownload$Screen.laterRefresh() [0x1C] wide register v2 has type Low-half Constant/Zero/null. B1b2 wrote boolean then scalar zero to v3, clobbering wide pair v2:v3; ART rejects entire class. Previous DEX inventory and symbol tests cannot validate register type flow. Fix: read busy before either const-wide/16, branch to complete 500/1000ms wide definitions, no scalar write between wide definition and Handler.postDelayed. Source gate asserts control-flow and rejects exact h65 regression + direct high-half clobber. Mandatory release gate: Android 15 emulator/x86_64 isolated offline instrumentation loads exact signed candidate APK via DexClassLoader, checks BatchDownload family, opens actual Screen.show twice using synthetic blank fixture, tests both delayed callbacks, closes dialog; no real account, download, native ABI or full production app startup/network tested. CI pending; no phone proof; no release if ART gate fails. Do not use B1b2-9. Preserve previous fixes and app data. docs/CP_DL_B1B2_ART_HOTFIX_AR.md; memory/sessions/2026-11-18_cp-dl-b1b2-art-hotfix-16.md. No edits to CL or other branches.


## تحقق ما بعد الدفع — جلسة 16
HEAD code 7eba85ff22fdfd99ed1a3c1b27d5b9096f0567cc; independently inspected actual fixed method from branch and reproduced structural guard against actual B1b2 code at b9ed569950e5af7c70c2cd6a1474d4e2006f085c and injected scalar-high-half: fixed accepted, both invalid cases rejected. This is static inspection, not execution of CI Python suite or ART. New run https://github.com/alwansan/CP/actions/runs/44185130936 (run_number10, job134399516013) in_progress; checkout/JDK/SDK/dependency steps completed/success; compile/test in_progress at check. Signed APK, emulator smoke result and release not yet verified. ART gate is mandatory before release; do not recommend artifact from failed gate. Probe uses actual Screen.show via synthetic offline context, not real production entry button/login/network or ARM64 app life cycle. Keep B1b2-9 marked failed on phone. Read live Actions and verify release before next phone test. No raw logs or account uploaded. No CL or other branch writes.
