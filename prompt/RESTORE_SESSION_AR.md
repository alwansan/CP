# رسالة استعادة CP-DL — الانتقال إلى مرحلة HTML والواجهات (18 نوفمبر 2026)

**توجيه المالك الأحدث — جلسة 20:** التنفيذ التجريبي مأذون عند الجاهزية الهندسية. تعليمات انتظار الإذن التاريخية لا تمنع التنفيذ المعزول الآن. قبل تعطيل العرض القديم تحقق من التكافؤ والأمان والحفاظ على البيانات، واتبع ART. اقرأ docs/HTML_NUVIO_APPEARANCE_AR.md.

اسمك CP-DL، العميل الهندسي لمشروع Cinemana Pro: https://github.com/alwansan/CP. فرع الكتابة الوحيد **Html** (feature/download-stability مرجع فقط). لا تعدل feature/download-stability أو main أو feature/local-account أو experiment/rea-source-recovery أو CL، ولا تستأنف استعادة المصدر القديم. المشروع APKTool/Smali الفعلي وJava helpers، أساس PATCH274؛ حافظ على جميع ميزات الحساب المحلي والتوقيع والبيانات.

اقرأ بالترتيب:
https://github.com/alwansan/CP/blob/Html/AGENTS.md
https://github.com/alwansan/CP/blob/Html/memory/MEMORY.md
https://github.com/alwansan/CP/blob/Html/memory/STATE.json
https://github.com/alwansan/CP/blob/Html/memory/PLAN_AR.md
https://github.com/alwansan/CP/blob/Html/memory/ISSUES_AR.md
https://github.com/alwansan/CP/blob/Html/memory/sessions/2026-11-18_cp-dl-h68-html-handoff-18.md
https://github.com/alwansan/CP/blob/Html/docs/CP_DL_H68_CLOSURE_AR.md
https://github.com/alwansan/CP/blob/Html/docs/CP_HTML_HANDOFF_AR.md
https://github.com/alwansan/CP/blob/Html/prompt/SESSION_PROTOCOL_AR.md
https://github.com/alwansan/CP/blob/Html/docs/DOWNLOAD_MAP_AR.md
https://github.com/alwansan/CP/blob/Html/docs/CL_LOG_SOURCES_AR.md

راجع HEAD وActions وCL الحي؛ CL read-only: https://github.com/alwansan/CL/tree/main/log ، https://github.com/alwansan/CL/tree/main/data ، https://github.com/alwansan/CL/tree/main/Clog. اقرأ الأدلة اللازمة فقط ولا تنشر سجلات خاماً أو بيانات حساب أو روابط موقعة.

## نقطة الاستئناف الحالية
مرحلة إصلاح التحميل الأساسية مغلقة وظيفياً كخط أساس B1b3-12، مع عيوب backend مفتوحة؛ لا حاجة إلى APK إضافي لهذه المرحلة حالياً. تنتقل للمراحل التالية HTML/واجهات حسب شرح المالك في الجلسة الجديدة؛ **لا تبدأ تعديلات UI أو بناء جديد قبل إذن المالك بالانتقال إلى التنفيذ**.
آخر runtime code 9511f14a3eb1b7511e453a1931017f495d4208ad، CI https://github.com/alwansan/CP/actions/runs/44207852201 success (JVM cross-process وART Android15 signed APK). APK https://github.com/alwansan/CP/releases/download/cp-dl-B1b3-12/Cinemana_CP_DL_B1b3_signed.apk. لا مسح بيانات. 
هاتف h68: 452 MKV/452 proofs، 0 MP4، إعادة تنزيل35/35 ب3.112s، 35 conversion exit0، 3 actual simultaneous FFmpeg، 5 force-stops، CLog no observed ANR/FATAL/VerifyError/OOM. أُعيد تحويل E10/E11/E19 بعد الانقطاع. 33 normal promotion markers و2 recovered final outputs E24/E26 مع proof موجود وsidecar MKV_EXPORT_PREPARING باقٍ. لا تعتبر النظام بلا أخطاء. 1 new SQLITE_BUSY، 1 new DB_PROMOTE_FAIL، raw no-such-table 222 video_status و88 room_table_modification_log، repeated DB promotions؛ durable batch ACK وbounded scans وlifecycle/UI sync وpause/delete/cancel/soak ما زالت مفتوحة. لا تُعد إنتاج عطل زر التحميل h65: الفحص ART للنوافذ إلزامي.
هدف المالك: HTML/CSS/JS محلية للعرض والتفاعل؛ native backend مستقل عن عمر Activity/WebView، كل العمليات الثقيلة بالخلفية، bridge غير متزامن بأوامر وACK دائم وأحداث snapshot/delta، لا full page refresh، لا انتظار DB/network/mux على main، لا طوابير موازية، الحفاظ على 3 shared slots وLease115. لا تدّع عزل موارد مشترك مطلقاً. ابدأ بمناقشة الفكرة وترتيب الصفحات وخطة فصل المحرك، ثم التنفيذ صفحة صفحة وفق توجيهه.
حدّث MEMORY وSTATE وPLAN وISSUES وسجل جلسة مستقل وهذه الرسالة بعد كل دفعة أو فشل دون طلب المالك. احفظها في الفرع، تحقق من HEAD بعد الدفع وأعد قراءة RESTORE. لا تخزن SHA commit الذاكرة نفسه ولا تدّع اختباراً لم يحدث. آخر سجل https://github.com/alwansan/CP/blob/Html/memory/sessions/2026-11-18_cp-dl-h68-html-handoff-18.md.

اقرأ مستندات المرحلة أولاً: https://github.com/alwansan/CP/blob/Html/docs/HTML_MASTER_PLAN_AR.md وhttps://github.com/alwansan/CP/blob/Html/docs/HTML_UI_AUDIT_AR.md وhttps://github.com/alwansan/CP/blob/Html/memory/sessions/2026-11-18_cp-dl-html-planning-19.md


## جلسة 19 — Html / تخطيط الواجهات 2026-11-18
قرار المالك الحالي: Html هو فرع الكتابة الوحيد؛ feature/download-stability مرجع read-only، الفرعان مطابقان وقت البداية c68c0d80722765409f8544d499938a656217967b. CP-DL ثابت، baseline B1b3-12 وآخر runtime 9511f14a3eb1b7511e453a1931017f495d4208ad. استلمنا فكرة المالك: إعادة تصميم كل العرض، 5 تبويبات RTL الرئيسية/الأقسام/البحث وسطاً/التحميلات/الحساب. التخطيط فقط؛ لا تعطيل واجهات أو runtime/CI/APK حتى الإذن. جرد 94 صورة و15,766 إطاراً آلياً، 64 عينة بصرية من الفيديو، timestamp تقريبي؛ V4 مرجع اختياري وليس backend. اقرأ docs/HTML_MASTER_PLAN_AR.md وdocs/HTML_UI_AUDIT_AR.md وmemory/sessions/2026-11-18_cp-dl-html-planning-19.md. كل backlog h68 والاختبارات ART محفوظة. الخطوة القادمة استكمال parity وexact call graph ومراجعة قرارات التصميم؛ لا حذف بيانات. تعليمات الفرع السابق تاريخية ولا تمنح صلاحية كتابة.


## جلسة 20 — Nuvio وتخصيص الواجهة
أحدث قرار المالك: إذن مسبق بالبحث والتخطيط والتنفيذ والـAPK التجريبي عند تحقق بوابات الأمان والتكافؤ والـART؛ لا طلب موافقة لكل دفعة. Html الوحيد للكتابة؛ لا تعطل واجهات القديم قبل بديل متحقق ولا تحذف المحرك أو البيانات. فرع NuvioMobile cmp-rewrite b66f7725ca08f0455e5097797253a2d7ac432f84 GPL3: استلهام دون نقل الكود. فيديو 190.713s / 11792 إطار metadata؛ 64 عينة بصرية تغطي التسجيل، لم نفحص كل إطار بسبب مهلة الاستخراج. بحث CSS/SVG/AGSL وفصل opt-in visual modes. راجع docs/HTML_NUVIO_APPEARANCE_AR.md وdocs/fixtures/html-nav-lab/index.html (مختبر محلي مستقل 5 tabs، adaptive/expanded/compact/classic، حجم/خط/لون وحركة/RTL/سحب، demo فقط). commit e17e2dcad0513b06a273e58cec870894a51acf81، 70 assertions pure JS ناجحة، browser/Android غير متحققين (DNS raw GitHub تعذر). Prism الحالي CSS blur/shine فقط لا انكسار فعلي. لا runtime/CI APK/device test. التالي اختبار browser حقيقي ثم exact lifecycle/bridge/parity وoptics، وبعدها APK عندما يحقق البوابات. اقرأ memory/sessions/2026-11-18_cp-dl-html-nuvio-planning-20.md.


## إكمال جلسة 20 — مختبر واختبار وفصل الواجهات
حفظ docs/HTML_NATIVE_ENTRYPOINTS_AR.md: تدقيق call graph أولي HomeActivity/DownloadsActivity/CinemanaApplication/DownloaderService/BatchDownload$Screen/Queue110، نقاط LocalRuntime/Restart108 وi1/E1/J0 وevent bus وUI coupling. المختبر المستقل حصل على test-browser.cjs وتعديل font root/fallback. CI مخصص غير APK: .github/workflows/html-nav-lab.yml، commit 77e87221a052fc12f97d3e9b8c2c85f9aac354cb، run https://github.com/alwansan/CP/actions/runs/44389366278. عند الفحص Model and syntax checks SUCCESS؛ Chromium tools install in_progress، browser regression pending. لا claim عن نتيجة نهائية ولا Android test. عند الاستعادة راجع هذا run الحي واختبر/أصلح قبل تفعيل الواجهة. لا تغييرات runtime؛ لا بناء APK.


## جلسة 21 — الحركة والانتقالات / 2026-11-18
Html الوحيد للكتابة؛ إذن المالك السابق للتجربة عند البوابات قائم. Nav lab CI 44389366278 completed SUCCESS including Chromium regression؛ 70 model assertions. لا قياس Android. فيديو 1006543263.mp4: 27.822s، 1720 metadata/decoded frames (passthrough، duplicate DTS warnings)، 56 عينات بصرية 2fps؛ راجعنا عينة الفيديو السابق أيضاً. لاحظنا poster zoom، dim/blur/context actions، bottom sheet، 3 continue styles Card/Wide/Poster، switch/reflow وحفظ موضع. Nuvio pinned b66f7725 GPL3: قراءة ContinueWatchingActionSheet/HomeContinueWatchingSection/Preferences/PosterOpenMotion دون نقل كود. وثّق docs/HTML_MOTION_SYSTEM_AR.md. مختبر مستقل أصلي docs/fixtures/html-motion-lab/index.html + motion-model.js + test-motion.cjs + test-browser.cjs؛ 34 model assertions PASS pure JS. commit beaadffcd110702087805fa0cecc1342c23eb452، CI https://github.com/alwansan/CP/actions/runs/44392095637 in_progress عند الفحص؛ Chromium ليس مثبتاً لهذا المختبر حتى نتيجة run. WAAPI/FLIP، context overlay، long hold، back/Esc، focus restore، عرض 3 أنماط وإخفاء empty، no data/backend. المدد المقترحة ليست مقاسة؛ Android touch/rotation/long-press/animation interruption وfeature compatibility مفتوحة. لا runtime أو APK changes. اقرأ memory/sessions/2026-11-18_cp-dl-html-motion-21.md وراجع run الحي قبل التعديل التالي. Next: تحقق CI/أصلح، ثم shell/router وstate/bridge parity، ومعمارية فصل native واختبار فعلي قبل APK.


## آخر تحديث — جلسة 22
اقرأ docs/HTML_SHELL_LAB_AR.md وdocs/HTML_BRIDGE_CONTRACT_AR.md وmemory/sessions/2026-11-18_cp-dl-html-unified-shell-22.md. تحقق من Actions run 44394539721 ثم أحدث run shell بعد تعديل app.js. Shell lab خمسة تبويبات وبياناته وهمية فقط؛ لا تدمجه كواجهة إنتاج. Motion CI 44392095637 PASS 34 model +24 Chromium؛ Navigation CI 44389366278 PASS 70 model +143 Chromium. لا يوجد Android WebView أو bridge في APK. LocalRuntime ليس JS bridge، BatchDownload.enqueue UI-coupled، Queue110 NATIVE_SUBMIT لا يساوي DB_COMMITTED. لا تعطل الواجهات القديمة ولا تغيّر APK قبل bridge/parity/security/ART gates. فرع الكتابة Html وحده.


## خريطة التحميل Native
اقرأ docs/HTML_DOWNLOAD_NATIVE_MAP_AR.md قبل تصميم downloads bridge. Queue110.pause يكتب PAUSE/USER_PAUSED، وDelete94/MkvCancel262 تتطلب delete intent/journal؛ لا تعاملها كعمليات UI عادية. resume/DAO snapshot ما زالا قيد التتبع.


## JS bridge protocol
راجع docs/HTML_BRIDGE_CONTRACT_AR.md وdocs/fixtures/html-shell-lab/bridge-protocol.js. عميل JS مستقل، لا Android transport. شغّل test-bridge.cjs. Native origin/main-frame validation والداتا/العمليات والـdurable ACK لم تُنفذ بعد.


## آخر CI للبروتوكول
run 44397348530: bridge protocol unit/syntax passed، browser test لم يبدأ بنجاح لأن workflow لم ينصب npm package playwright؛ أصلحناه بإضافة npm install pinned قبل browser cache/install. تحقق من أحدث run بعد commit. اختبار Continue remove route fix في a80331d ينتظر regression. لا تخلط بين نجاح protocol unit tests ووجود Native bridge فعلي.


## أحدث نتيجة — جلسة 23
HEAD e3b00bce2debdb0f5c7c4eb44888e4e6b803514d. Shell CI 44397753290 SUCCESS: 40 Chromium assertions + bridge protocol 21 assertions. Artifact 14472026955. Motion CI 44392095637 SUCCESS 34 model +24 browser; Navigation CI 44389366278 SUCCESS 70 model +143 browser. راجع docs/HTML_DOWNLOAD_NATIVE_MAP_AR.md وdocs/HTML_BRIDGE_CONTRACT_AR.md. لا Android WebView/Native bridge بعد؛ لا APK ولا تعطيل القديم. الخطوة القادمة exact resume/DAO mapping ثم typed native admission service.


## Resume gap — لا تخمّن
المسار المثبت ey0.d = pause وey0.i = retry. yy0 auto retry يمر عبر Restart108.canRetry الذي يمنع |PAUSE/Queue110.isPaused ويتحقق من DAO/delete intent. Restart108.attach → wake scan. لا ResumeDownloadBR في Manifest. Dependencies112/Inputs114 resume خاص بترجمة/subtitle. راجع docs/HTML_DOWNLOAD_NATIVE_MAP_AR.md؛ generic video resume/clear PAUSE لم يثبت بعد، فلا تنشئ endpoint باسم resume أو تربط retry به.


## تحديث Resume candidate
Queue110.isPaused يقرأ request intent=PAUSE؛ Queue110.remember يكتب RUN/NATIVE_ADMITTED. Restart108.admitted يكتب external|RUN ثم Queue110.remember. ey0.l(manager,id) يعيد بناء composer ثم q(...,true) → dlStart(reuse) → Restart108.admitted. هذا مرشح ميكانيكي قوي لإعادة القبول بعد pause، لكن UI caller لم يثبت؛ لا تعرض endpoint resume قبل tracing caller والتحقق من عدم تكرار المهمة وACK.


## WorkManager recovery findings
CheckDownloadsStatusWorker is androidx.work.Worker; it scans downloadsRepo, detects stopped tasks, starts DownloaderService and rebuilds/restarts through ey0.n/q. jy0 attaches manager, calls Restart108.start, checks DAO rows and Restart108.canRestore before ey0.o/q. This is recovery, not a WebView action. Renderer reattach must subscribe only, never launch recovery again. See docs/HTML_DOWNLOAD_NATIVE_MAP_AR.md.


## جلسة 24 — next checkpoint
اقرأ memory/sessions/2026-11-19_cp-dl-native-download-model-24.md وdocs/HTML_NATIVE_MODEL_AR.md. Java candidate مستقل تحت patches/html-bridge، لا APK ولا Native transport. JS resync now blocks until fresh snapshot; new CI pending. Verify both workflows first. لا تتعامل مع COMPLETED أو NATIVE_ADMITTED كدليل MKV أو ACK دائم. لا endpoint resume حتى معرفة caller. الفرع Html فقط.


## نتيجة جلسة 24 — verified CI
Runtime source unchanged; laboratory code commit e51912305b0de0e00f5cb67c0df117491e163857. Java native model run 44424763514 SUCCESS (CP_NATIVE_DOWNLOAD_MODEL_PASS assertions=8366 syntheticEpisodes=452). Integrated shell run 44424763298 SUCCESS (CP_BRIDGE_PROTOCOL_PASS assertions=47; CP_SHELL_BROWSER_PASS assertions=40; preview artifact 14483751253). CL main unchanged at 4b0bc931567f9dcdc197576bc2a9f5f5e0d4f8c0. All current tests are isolated JVM/Node/Chromium, no APK, real DB or device. Next: bounded actual app/downloader DAO read adapter, real verified evidence sources, extract typed native admission, complete resume caller tracing; do not claim durable ACK/Android parity yet.


## جلسة 25 — bounded DAO candidate
راجع docs/HTML_BOUNDED_DAO_AR.md وmemory/sessions/2026-11-19_cp-dl-bounded-dao-25.md. أضيف BoundedDownloadRead وExistingDaoSource (isolated, 64 item cap, A→transport→A, 192 point reads worst case; no full scan, no writes, no ACK, no playback proof). Existing helper descriptors verified statically; actual Android/Room execution not tested. CI pending; static resume caller scan added, not yet a verified UI caller. Next: verify CI and callers, proof/journal readers and typed admission. Html only; no APK or old UI changes.


## جلسة 25 — CI verified + resume candidate narrowed
Code 61cbaac4f3c8f86dc659d0b388829fe6cb2c1c77, run https://github.com/alwansan/CP/actions/runs/44425947999 SUCCESS (8366 existing model +26 bounded read assertions; source scanner 2 exact invoke callers). Both callers of ey0.l are missing-DB-row fallbacks: ey0$i (DownloadManager$pauseInDatabase$1, enclosing ey0.p) line424 calls l then d(pause); ey0$k (DownloadManager$retryDownload$1, enclosing ey0.i) line353 calls l only when no DAO row. This refutes interpreting l as a direct dedicated UI resume path. Do not expose l or retry as resume; next trace actual screen action callers of d/i and whether retry explicitly clears PAUSE for existing rows, then verify journals and ownership. Bounded adapter JVM/fixtures only, not Android Room or globally consistent snapshot; no proof of media/ACK/real device, no APK or runtime changes. CL unchanged. Future work: native evidence/journal read mapping and typed admission before bridge.


## جلسة 26 — native evidence gate
راجع docs/HTML_NATIVE_EVIDENCE_AR.md وmemory/sessions/2026-11-19_cp-dl-native-evidence-26.md. NativeEvidenceGate + ExistingControlSource isolated. Actual control descriptors audited; local prefs/active owner are hints only (authoritative=false), no READY from them. Epoch/path/quality/receipt/DB and changing controls checked; unknown fails closed. Final100 only bytes+EBML, Commit105.isPromoted transfer row not full proof. CI pending; scan proof writer/readers and d/i callers then implement bounded authoritative producer; no runtime/APK/device/real DB/ACK. Html only.


## جلسة 26 — verified CI and exact proof format
Code 18894a719ab5a799ab9d6c84a127966d75d5caef; run https://github.com/alwansan/CP/actions/runs/44427230592 SUCCESS (8366 +26 +4405 = 12797 synthetic assertions). Scanner: StorageMaintenance152 is .path writer/reader, EpisodeSidecarCleanup retires proof on delete. Read exact methods: ROOT=/storage/emulated/0/Cinemana, PROOFS=work/data/mkv-proofs; safeToken strips [cnm- and ] then removes non ASCII alnum/_/-; writeProof validates final root (outside work/legacy), .mkv and size>1024, writes canonical path newline + timestamp newline via tmp rename/copy. readProof reads first line, resolveFinalMkv then validFinalMkv; it may scan and is not sufficient evidence of identity, size, epoch or playable bytes. recordSuccess derives marker from first input file with marker then writes proof and schedules scanSoon; importLegacyProofs can import log records; no direct call from bridge. Design next bounded exact token file read with strict token validation (no lossy normalization), path equality to current verified DB, max bytes, reject changed/truncated record, no scan, and treat as hint only. ProofCameFromLog scans directories; avoid per item. Scanner direct invokes d: iy0 pauseAll, ey0$i fallback, PauseDownloadBR; i: yy0 automatic retry. No direct UI resume proven; may be interface/reflection caller, trace before action. ExistingControlSource stays non-authoritative; Android proof producer, real Room/IPC consistency, recovery zero-task and transport conflict policy remain open. No APK, runtime or data modification. Next: implement bounded path hint, actual evidence producer + typed native admission; preserve old UI and ART gates.


## جلسة 27 — bounded MKV path hint
راجع docs/HTML_MKV_PATH_HINT_AR.md وmemory/sessions/2026-11-19_cp-dl-path-hint-27.md. BoundedMkvPathHint exact token/8KiB per read/path/timestamp/size and repeated read checks, no scans/alias/hash/writes, MATCH_HINT never READY. Tests 452 synthetic records, malformed/path escape/symlink. NativeBatchScope already detached from observer but needs Fragment for app Context; m() dispatches subtitles then schedules dv0 video coroutine; return not durable video ACK. Next trace dv0/Queue110.save/Fresh121 and typed admission. CI pending; no APK/Android/real media/real Room/authoritative proof. Html only.


## جلسة 27 — verified CI and video coroutine
Code 1959f88a3779cd4fa818c3bbcfb9fdfb8decf0ee; run https://github.com/alwansan/CP/actions/runs/44428257593 completed SUCCESS. CP_NATIVE_DOWNLOAD_MODEL_PASS 8366; CP_BOUNDED_DOWNLOAD_READ_PASS 26; CP_NATIVE_EVIDENCE_GATE_PASS 4405; CP_BOUNDED_MKV_PATH_HINT_PASS 934 (452 synthetic records, actual temporary-file IO on Linux). Total 13731 assertions. No actual Android/Room/media/IPC test. MATCH_HINT deliberately accepts fake media bytes; only path hint, not proof/ACK/READY. No deterministic concurrent file replacement test yet; comparison is not atomic. dv0 is DownloadActionsHandlerScope$downloadVideo$1: VIDEO_COROUTINE_ENTER -> scope.c metadata -> h collection setup with ev0 -> permission check i() (VIDEO_PERMISSION_MISSING possible) -> e() -> if appropriate i44$a.a with mv0 -> VIDEO_NATIVE_DISPATCH_RETURN or VIDEO_EXISTING_ROW. m return, scheduled coroutine, subtitle and video dispatch return are different stages. Next trace mv0/manager admission/Queue110.save/commit/Fresh121 epoch and formulate typed receipt correlation, not a second queue. No APK, runtime, old UI, or user data changes. CL main unchanged. Html only. Initial metadata tree write timed out (422); retry using blobs.


## جلسة 28 — typed admission receipt gate
راجع docs/HTML_ADMISSION_RECEIPT_AR.md وmemory/sessions/2026-11-19_cp-dl-admission-receipt-28.md. Code 1c605e7d170338481831d1f49a5d7c99409500f8; CI pending. ey0.c -> Restart108.admitted -> dlStart; dlStart does not branch on admission false and ignores CnmDownloadQueue.enqueue result. Restart108.admitted returns true non-main; Queue110.remember/save then separate intent commit, not atomic. Restart108.put equality shortcut not disk proof. Fresh121 uses UUID writeUTF+sync+rename, missing epoch legacy; exact begin caller pending CI scanner. New AdmissionReceiptGate pure Java class requires command/episode/quality/task/current nonlegacy epoch and both verified writes, main owner, durable binding, RUN, no conflicts and authoritative correlation. UNKNOWN/RECONCILE/VERIFIED_ADMISSION only; not DB_COMMITTED/READY/retry. 452 synthetic + combinations, expected 4198 assertions not yet verified. No runtime/Android/real Room/IPC/APK/durable producer. Next verify CI/caller outputs, locate actual CnmDownloadQueue, plan existing-owner idempotent binding and failure recovery. Html only; CL unchanged at entry. No resume endpoint.


## جلسة 29 — immutable command reservation
راجع docs/HTML_COMMAND_RESERVATION_AR.md وmemory/sessions/2026-11-19_cp-dl-command-reservation-29.md. Prior CI 44429335768 SUCCESS (4198 new, total 17929). Fresh121.begin only direct caller MkvPlanStore.record; record catches Throwable and m continues subtitle/video dispatch; replay may advance epoch. CnmDownloadQueue actual smali_classes5: enqueue true on any normal start() return, false ambiguous; getQueuedCount estimate, remove is release, adoptRunning no-op. New CommandReservationStore isolated CREATE_NEW immutable scoped command/episode/quality file, force file+dir, no writes to original engine, no retry; CREATED_HINT/MATCH_HINT never dispatch authorization or ACK. Same command only; distinct-key dedup, Android persistence, owner, GC, cross-process/crash tests pending. Corrected reader lock race code 1f04a506ef303e7354d8eee64f3cbcd77457e7ef; run 44429977107 pending (expected 2731 tests). Initial 44429948784 superseded, result unverified. No APK/runtime/real data. Next verify CI and add subprocess/crash tests, native idempotent preflight before Fresh121.begin and binding to exact epoch/task. Html only. CL unchanged at entry.


## جلسة 29 — verified CI
Code 1f04a506ef303e7354d8eee64f3cbcd77457e7ef; run https://github.com/alwansan/CP/actions/runs/44429977107 completed SUCCESS, job 135244563670. Logs: 8366+26+4405+934+4198+2731 = 20660 assertions; CP_COMMAND_RESERVATION_STORE_PASS 2731 (452 synthetic commands + 8-thread contention, actual Linux temp file IO). Initial run 44429948784 also success but superseded because of reader-lock race. No cross-process or actual crash/power-loss test; immutable reservation is a hint, not durable admission or permission to dispatch. Next add subprocess/interrupted-write tests and owner-side dedup before Fresh121.begin, native epoch/task binding, retention; preserve all existing runtime/UI/ART gates. No APK or Android/Room/IPC/data modifications. Html only.


## جلسة 30 — subprocess and Fresh121 read
راجع docs/HTML_FRESH_EPOCH_READ_AR.md وmemory/sessions/2026-11-19_cp-dl-epoch-process-30.md. Code ee35b410fc09db143810e8ba490541e5de006977; run 44430639883 pending. Eight independent JVM contenders + two forced kills (synthetic partial writer and actual completed reservation); not Android or power-loss. FreshEpochRead reads exact filesDir/request121/SHA256(externalId UTF-8).epoch, 38-byte writeUTF UUID twice, no directory creation, missing UNKNOWN, no ACK/authority. BatchDownload.ADmitted actual ADMITTED synchronized static per-process set; Delete94.reenqueue called BEFORE set.add, mutates delete intent with unchecked commit, JOB_LOCK process local; Fresh121.skipped logging only. Do not use reenqueue as preflight. Next verify CI then actual typed owner-side preflight including distinct-key dedup, before any mutation. No runtime/Android/Room/APK or data changes; Html only.


## جلسة 30 — verified CI
Code ee35b410fc09db143810e8ba490541e5de006977; run https://github.com/alwansan/CP/actions/runs/44430639883 completed SUCCESS, job 135246825143. CP_COMMAND_RESERVATION_PROCESS_PASS assertions=36 independentContenders=8 forcedKills=2; CP_FRESH_EPOCH_READ_PASS assertions=1820 syntheticEpisodes=452; cumulative native suite 22516 assertions. Actual Linux independent JVM and forced kill fixtures (one partial synthetic writer, one completed actual reserve). No deterministic kill inside production reserve, power loss, Android, Room/IPC, authoritative ACK or APK. Next implement owner-side arbitration/preflight including native identity and distinct command dedup before mutating delete/epoch, then bind exact epoch/task receipt; no parallel queue. Preserve old UI and ART. Html only.


## جلسة 31 — owner preflight + content claims
راجع docs/HTML_OWNER_PREFLIGHT_AR.md وmemory/sessions/2026-11-19_cp-dl-owner-preflight-31.md. Code 8fd0c0804e89acc31ab101da0490f3201e53dbbb; CI 44431539268 pending. ExistingAdmissionSource worker/main process, exact VideoModel.nb and Quality reference, bounded DAO/delete/journal/ADMITTED/active/pause/request/epoch hints; authoritative=false and resolvedVariant=false. Quality.equals compares resolution only; request presence not transport proof; absent row not orphan absence. OwnerAdmissionPreflight blocks conflicts, deletion/existing/busy/unknown/epoch change; bounded synchronized Claims blocks distinct command IDs even across scope/quality for same externalId; CLAIM_HINT not dispatch. No release/recovery/shared old UI arbitration or actual Android call yet. Expected 9514 checks. Next verify CI then exact owner identity and authoritative serialized preflight/terminal reconcile, read-only WebView transport security. No runtime/APK/real data. Html only.
