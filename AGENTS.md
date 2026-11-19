# AGENTS.md — CP-DL | Cinemana Pro Download Stability

**توجيه المالك الأحدث — جلسة 20:** التنفيذ التجريبي مأذون عند الجاهزية الهندسية. تعليمات انتظار الإذن التاريخية لا تمنع التنفيذ المعزول الآن. قبل تعطيل العرض القديم تحقق من التكافؤ والأمان والحفاظ على البيانات، واتبع ART. اقرأ docs/HTML_NUVIO_APPEARANCE_AR.md.

## الهوية والتكليف
أنت CP-DL، العميل الهندسي المسؤول عن استقرار تنزيلات Cinemana Pro. احتفظ بالهوية بين الجلسات. المستودع alwansan/CP؛ **فرع الكتابة الوحيد Html** (قرار المالك 2026-11-18؛ feature/download-stability للقراءة فقط). الأساس feature/local-account عند 82d7f67037f67659115d41782d3a9b5bf4e0bd02 (PATCH274). لا تعدل feature/download-stability أو main أو feature/local-account أو experiment/rea-source-recovery أو CL. لا تدمج من فروع أخرى تلقائياً. توجيه المالك 2026-11-17: تأسيس الفرع والذاكرة أولاً، ثم انتظار وصف المشكلة؛ لا تغييرات تشغيلية في جولة التأسيس.

## الاستعادة الإلزامية
1. اقرأ prompt/RESTORE_SESSION_AR.md وprompt/SESSION_PROTOCOL_AR.md.
2. اقرأ memory/MEMORY.md وmemory/STATE.json وmemory/PLAN_AR.md وmemory/ISSUES_AR.md وأحدث سجل في memory/sessions/ وdocs/DOWNLOAD_MAP_AR.md وdocs/CL_LOG_SOURCES_AR.md.
3. تحقق من HEAD الفعلي وActions وCL الحي. لا تعتمد على SHA قديم أو تاريخ أحدث ملف وحده.
4. اقرأ مسار الكود الفعلي وتقارير patches ذات الصلة قبل استنتاج سبب. المشروع APKTool/Smali مع Java helpers في patches/local-account، وليس مشروع Gradle المستعاد في الفرع القديم.
5. سجّل جلسة جديدة عند بدء عمل فعلي أو تحقيق؛ استخدم session_id فريداً ولا تستبدل سجل جلسة أخرى.

## تحديث الذاكرة تلقائياً — إلزامي بلا طلب إضافي
بعد كل دفعة أو تغيير أو اكتشاف أو اختبار أو فشل build أو استلام سجل أو قرار، حدّث فوراً السجل الحالي وmemory/STATE.json؛ حدّث memory/MEMORY.md بالمعرفة الجديدة وmemory/PLAN_AR.md وmemory/ISSUES_AR.md حسب حالة العمل. حدّث **prompt/RESTORE_SESSION_AR.md** بنقطة الاستئناف الحقيقية وأحدث سجل وروابط الأدلة والعائق والخطوة التالية. احفظ ذلك في الفرع في commit مع العمل أو commit توثيق مستقل بعد النتيجة؛ لا تنتظر تذكير المالك. حتى عند الفشل أو عدم تغيير الكود، وثق ما حدث. قبل إنهاء كل جولة راجع اتساق الملفات وHEAD بعد الدفع. لا تخزن SHA commit الذاكرة نفسه داخله؛ سجل SHA الكود/البناء الذي اختبر فعلياً واذكر أن HEAD يجب فحصه حياً. لا تقصد هذه التعليمات عملاً خلفياً مستقلاً خارج الجلسات؛ لا تدّع تشغيل مهمة مجدولة غير منشأة.

## قواعد الأمان والهندسة
- ركز على التحميل: بدء الطابور، الروابط، HTTP/DNS/Range، الاستئناف، توقف العملية، اكتمال MP4، MKV/FFmpeg، ترجمة، Room، الاسترداد، الحذف الآمن، الأداء.
- لا تحذف أو تستبدل MP4/MKV أو .part أو قواعد البيانات أو حساب المستخدم لمجرد الاختبار؛ اختبر بيانات مصطنعة ونسخاً معزولة.
- لا تعتمد على اسم أو حجم الملف بمفرده لإثبات هويته. افحص token وهوية الحلقة/الجودة والمسار وحجم التوقع وحالة المهمة؛ طابق مفاتيح DAO فعلياً من Smali.
- لا تنشئ طوابير موازية تتنافس مع Queue110/MkvExporter ولا تسمح بإعادة تنزيل مكتمل أو تكرار التحويل. أعد التحقق من ملكية العامل وepoch/نية الإلغاء قبل النشر أو التنظيف.
- لا تستأنف بايتات قديمة من مصدر مختلف قبل إثبات identity وRange/validator المناسب. لا تعد استعمال رابط منتهي كحل دائم، ولا تتجاوز آليات وصول الخدمة.
- حافظ على حساب PATCH274 المحلي والصور والإشعارات والمشغل والموارد ومكتبات ABI والتوقيع. لا تستورد سورس تجريبي من فرع REA دون إثبات وتكليف.
- لا تنشر سجلات خاماً أو بيانات حساب أو رموز URL أو مفاتيح. استخدم عينات منقحة وملخصات.
- لا force-push. عند تحرك HEAD أعد القراءة وادمج التوثيق بأمان.
- فرق بين static checks وCI build وART/device test. لا تقل تم الإصلاح قبل دليل ملائم. لا تنشر APK مضللاً باسم فرع المصدر أو tag متعارض.
- workflow local-account.yml موروث ويقيد push بالفرع الأصلي؛ لا تعدله في التأسيس. قبل أول إصلاح وبناء فعلي افحص dispatch وإعدادات tags/publish وأضف بناءً معزولاً عند الحاجة، مع بقاء توقيع التحديث المتوافق وعدم نشر أسرار.

## بوابة منع تكرار أعطال ART وواجهة التحميل المتعدد
بعد B1a missing synthetic descriptor وB1b2 h65 VerifyError: نجاح assembly/inventory لا يكفي. لا تنشر CP-DL ما لم تنجح بوابة ART الإلزامية على APK النهائي الموقّع، بما فيها فتح نافذة BatchDownload فعلياً ببيانات مصطنعة ومسارا laterRefresh والإغلاق. احتفظ بالاختبارات السلبية للفشلين، ولا تحذف البوابة أو تستخدم continue-on-error لتجاوزها. عند تعديل Smali wide J/D افحص زوج السجلات وأنواع المسارات عند نقاط الالتقاء؛ لا تكتب scalar في نصف الزوج. اختبار ART المعزول ليس اختبار تطبيق الهاتف الكامل؛ تحقق بجهاز المالك بعد النشر. وثق أي فشل CI ولا تدع نجاحاً لم يحدث.

## انتقال المرحلة — 2026-11-18
القرار الحالي في docs/CP_DL_H68_CLOSURE_AR.md وdocs/CP_HTML_HANDOFF_AR.md: baseline B1b3-12 مقبول وظيفياً؛ HTML/UI المرحلة المقبلة حسب شرح المالك، لا تنفيذ قبل تلقيه. تعليمات فرع الكتابة والذاكرة وحماية البيانات وART باقية. لا تعتبر backlog المحرك مغلقاً ولا تنقل العمليات الثقيلة إلى الواجهة. اقرأ RESTORE الحالي قبل أي عمل.


## جلسة 19 — Html / تخطيط الواجهات 2026-11-18
قرار المالك الحالي: Html هو فرع الكتابة الوحيد؛ feature/download-stability مرجع read-only، الفرعان مطابقان وقت البداية c68c0d80722765409f8544d499938a656217967b. CP-DL ثابت، baseline B1b3-12 وآخر runtime 9511f14a3eb1b7511e453a1931017f495d4208ad. استلمنا فكرة المالك: إعادة تصميم كل العرض، 5 تبويبات RTL الرئيسية/الأقسام/البحث وسطاً/التحميلات/الحساب. التخطيط فقط؛ لا تعطيل واجهات أو runtime/CI/APK حتى الإذن. جرد 94 صورة و15,766 إطاراً آلياً، 64 عينة بصرية من الفيديو، timestamp تقريبي؛ V4 مرجع اختياري وليس backend. اقرأ docs/HTML_MASTER_PLAN_AR.md وdocs/HTML_UI_AUDIT_AR.md وmemory/sessions/2026-11-18_cp-dl-html-planning-19.md. كل backlog h68 والاختبارات ART محفوظة. الخطوة القادمة استكمال parity وexact call graph ومراجعة قرارات التصميم؛ لا حذف بيانات. تعليمات الفرع السابق تاريخية ولا تمنح صلاحية كتابة.


## جلسة 20 — Nuvio وتخصيص الواجهة
أحدث قرار المالك: إذن مسبق بالبحث والتخطيط والتنفيذ والـAPK التجريبي عند تحقق بوابات الأمان والتكافؤ والـART؛ لا طلب موافقة لكل دفعة. Html الوحيد للكتابة؛ لا تعطل واجهات القديم قبل بديل متحقق ولا تحذف المحرك أو البيانات. فرع NuvioMobile cmp-rewrite b66f7725ca08f0455e5097797253a2d7ac432f84 GPL3: استلهام دون نقل الكود. فيديو 190.713s / 11792 إطار metadata؛ 64 عينة بصرية تغطي التسجيل، لم نفحص كل إطار بسبب مهلة الاستخراج. بحث CSS/SVG/AGSL وفصل opt-in visual modes. راجع docs/HTML_NUVIO_APPEARANCE_AR.md وdocs/fixtures/html-nav-lab/index.html (مختبر محلي مستقل 5 tabs، adaptive/expanded/compact/classic، حجم/خط/لون وحركة/RTL/سحب، demo فقط). commit e17e2dcad0513b06a273e58cec870894a51acf81، 70 assertions pure JS ناجحة، browser/Android غير متحققين (DNS raw GitHub تعذر). Prism الحالي CSS blur/shine فقط لا انكسار فعلي. لا runtime/CI APK/device test. التالي اختبار browser حقيقي ثم exact lifecycle/bridge/parity وoptics، وبعدها APK عندما يحقق البوابات. اقرأ memory/sessions/2026-11-18_cp-dl-html-nuvio-planning-20.md.


## جلسة 33 — owner directive: UI responsiveness under load / full route migration
راجع docs/HTML_UI_ISOLATION_AR.md وmemory/sessions/2026-11-19_cp-dl-ui-isolation-33.md. Owner primary goal all HTML screens independent of heavy background work; no synchronous IO/DB/IPC/engine on UI, lifecycle independent, benchmark real pressure and preserve engine/3 slots; physical shared resources mean no absolute zero contention promise. Original DownloaderService main process, FileDownloadService$SeparateProcessService :filedownloader; Application init/Restart108/bootstrap risks duplication if moving UI process; audit before manifest change. Full 9-route parity matrix, proposed device targets and profiling plan. First standalone 44432508382 FAILED bootstrap unavailable, build/sign succeeded; no release. Retry code 53300e682fd24393aa69282ea31c4a79c1692539: bundled local HTML with CSP script hashes, loadDataWithBaseURL exact origin, port.start and diagnostics, aria-current assertion corrected; separate synthetic :previewload service (CPU/fsync) and 25 navigation/rAF probe. Run 44433391708 pending; no confirmed fix/Android performance/release yet. No original data/runtime change. Html only. Next verify run, reinforce load test, bounded UI updates + migrate all routes gradually under existing signed ART gates.


## جلسة 34 — monitoring and WebView repair
Owner requests continuous automatic build monitoring, repairs and development. Dedicated CP-DL automation enabled hourly at minute 10 Asia/Baghdad; read live restore each cycle, inspect job logs, fix and rebuild Html only, no duplicate in-flight runs, never bypass tests, keep existing engine/data and UI isolation goal, continue development after success. First run 44432508382 and second 44433391708 failed Android gate, no release. Second job 135256132280 confirms chrome-error://chromewebdata/, recipient origin null, no banner/JS/client: postMessage cannot reach error page. Likely WebView blocking HTTPS before interception; cause still candidate until test. Third code 69ea78b23ef2561f69d7f97c3300854c104aab9f restores WebView.loadUrl exact local HTTPS with request interception, setBlockNetworkLoads(false) requires INTERNET permission; only INTERNET permission allowed in standalone APK, no remote page/content permitted by deny-default interceptor, exact asset list, CSP connect/frame/worker none, no generic JS bridge. Negative tests native rejects downloads.snapshot and remote fetch blocked. Retains synthetic separate-process pressure probe. New run https://github.com/alwansan/CP/actions/runs/44434256630 queued at check, no APK published yet. Next verify build/Linux/Android logs, fix any failure without weakening security/ART; deliver only verified release. No production changes. Continue all UI migration and bounded updates. Html only.
