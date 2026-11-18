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
