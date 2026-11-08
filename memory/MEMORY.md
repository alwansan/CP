# ذاكرة مشروع Cinemana Pro — CP

**أُنشئت:** 2026-11-09 | **المجال:** `alwansan/CP:experiment/rea-source-recovery` | **الحالة:** استكشاف وتسليم سياق؛ انتظار وصف العطل الحالي من المالك.

هذه ذاكرة دائمة تُحدَّث بالأدلة وليست بديلاً عن قراءة الملفات الأصلية. لكل معلومة وقت إثبات؛ أي Head أو تجربة أحدث تتقدم عليها.

## هوية المشروع والحدود
- Cinemana Pro: https://github.com/alwansan/CP
- فرع التطوير المسموح لهذه الجلسات: `experiment/rea-source-recovery`. لا تعديل/دمج `main` أو `feature/local-account`.
- المصدر المرجعي: `Cinemana_PATCH252_Project/app/` (APKTool، Smali، موارد، assets، مكتبات أصلية).
- المساحة التجريبية: `recovery/generated/java/`, `recovery/modernized/`, `recovery/tests/`, `recovery/scripts/`, `recovery/reports/`.
- APK التشخيصي في `recovery/modernized/android-smoke` حزمته `com.shabakaty.cinemana.recovery.smoke`، وهو **ليس** تطبيق `com.cinemana.pro`.
- فرع إصلاح MKV التاريخي `fix/download-mkv-self-repair` وCommit `7acf44fc5bb9580b10bd4f92c92d14c8f7119199` من ذاكرة جلسات سابقة؛ **ليس دليلاً أنه مدمج في الفرع الحالي**. استخدمه فقط كمصدر مقارنة مع تحقق حديث.

## لقطة مؤكدة 2026-11-09 قبل كتابة الذاكرة
- HEAD: `21ac2a7c73b84bfb3122f413d5acc8ab15302941`، آخر Commit كانت رسالته `Accept Android Logcat output formats while matching exact diagnostic status` (2026-11-04T00:32:06Z).
- GitHub Actions على هذا الـSHA:
  - Java modules **success**: https://github.com/alwansan/CP/actions/runs/41747546214
  - Android Media3 bridge **success**: https://github.com/alwansan/CP/actions/runs/41747546178
  - Source-first smoke APK **success**: https://github.com/alwansan/CP/actions/runs/41747546217
  - Android emulator install/launch **failure**: https://github.com/alwansan/CP/actions/runs/41747546165
- نجاح بناء APK التشخيصي لا يعني نجاح تثبيته/تشغيله، ولا نجاح سينمانا الإنتاجي. لم يُعَد تشغيل الاختبارات في هذه الجولة الاستكشافية.

## إنجازات موثّقة في تقارير الاستعادة (قد تكون أقدم من HEAD)
- تحليل 11 DEX وأرشفة 10,381 ملف Java؛ منها 293 مصدر أولي و558 اعتماديات مشوشة في GitHub.
- تدقيق Java: 849 من 851 ملفاً مرحلياً صالحة نحوياً، لكن ذلك **ليس** نجاح تجميع كل الملفات مع اعتمادياتها.
- استرجاع دوال صعبة، 112 اختبار Java تاريخياً، وتجميع موارد وأصول ومكتبات أصلية (49 ملف .so) ضمن وحدات تجريبية.
- نماذج `core-downloads` للترحيل والتعويض والفشل المغلق، `core-search` لرفض نتائج البحث المتأخرة، وتجارب JSON/Room/SQLite على **بيانات مصطنعة**.
- تجربة REA الأولى أُثبتت في https://github.com/alwansan/CP/actions/runs/40898809982 و https://github.com/alwansan/CP/actions/runs/40899180403 ، لكنها لا تعيد سورس Kotlin الأصلي حرفياً.
- راجع `recovery/README.md` و`recovery/reports/REMAINING_BLOCKERS_AR.md` و`recovery/REA_READINESS_AR.md` لتفاصيل الإنجازات وحدودها.

## عوائق ومخاطر لم تُغلق
1. `recovery/generated/java/com/shabakaty/cinemana/features/MkvExporter.java`: إعادة بناء `promoteDatabase` والدمج الحقيقي مع DAO/Room، التحقق من ملكية الملفات والتراجم، Journal متين والتعويض بعد قتل العملية.
2. `recovery/generated/java/com/shabakaty/downloader/gk1.java`: Data Binding مولّد مرتبط بشاشة البحث؛ يلزم ربط AppCompat/Material وLiveData وبيانات البحث الحقيقية.
3. ترحيل Room 2→3: لا تزال المطابقة الكاملة مع Gson المشوّش والبيانات الحقيقية غير مثبتة؛ لا يوجد إذن بالتجريب على بيانات المستخدم.
4. المحاكي على SHA `21ac2a7c73b8` فشل في workflow المذكور أعلاه، رغم نجاح بناء APK التشخيصي. لا تستنتج السبب من حالة failure وحدها؛ افتح logs عند بدء الإصلاح.
5. الاستقرار على هاتف المالك، أداء الواجهة، التنزيلات والإشعارات والحساب المحلي وتبديل الجودة/الترجمات **لم تثبت جاهزيتها الإنتاجية** بواسطة المصدر المستعاد حتى لقطة التحقق.

## حقائق Room الحرجة
- `AppDatabase`: `localDatabase.db`، version 5 بحسب Smali في المشروع.
- `DownloadsDatabase`: version 2؛ في حزمة `com.cinemana.pro` الحالية اسمها `shabakaty.pro.downloads.database` (الاسم مشتق من package وليس ثابتاً دائماً).
- المفتاح في `Downloads` مركب: `(task_id,external_id)`. لا تسمح بإصلاح صف بالعنوان أو task id وحده.
- `AppDatabase_Impl` ↔ `jw0/kw0`، `DownloadsDatabase_Impl` ↔ `kz0/lz0`.
- المرجع: `recovery/reports/ROOM_MIGRATION_GRAPH_AR.md` و`recovery/reports/MKV_ROOM_DAO_CALLMAP_AR.md`.

## سجل المشكلات السابقة من الجلسات (سياق تاريخي يحتاج اختباراً حديثاً)
- تنزيلات متوقفة وملفات `.part`، ترقية/إصلاح MP4→MKV بعد التعليق، ملف MKV نهائي موجود لكن قاعدة البيانات غير محدثة، وإصلاح الاستئناف الآمن.
- تعليق فيديو H.264 High 10 أو BUFFERING بعد تبديل الجودة وتغيير الترجمة؛ تتبع FFmpeg/Surface/Renderer.
- مشاكل البحث والواجهة بعد تحديثات الأداء، والحرص على الاحتفاظ بالتحسينات دون الإضرار بالتنزيلات والإشعارات.
- إعداد وضع حساب محلي، تنظيم UI، وإصلاحات استقرار؛ هذه أهداف تاريخية وليست إثباتاً أن العطل الحالي منها.
- **لم يحدد المالك بعد المشكلة الجديدة التي يريد معالجتها بعد هذه الجولة الاستكشافية**. لا تختر سبباً أو إصلاحاً من التخمين.

## مصادر الأدلة الخارجية
- CL: https://github.com/alwansan/CL/tree/main
- عند فحص 2026-11-09: `log/tree.txt` موجود ويصف شجرة `/storage/emulated/0/Cinemana/` فيها `downloads.log`, `player_diagnostics.log`, `diagnostics.log`, `ui_performance.jsonl`, `mkv_identity.map`, وملفات أخرى؛ **محتواها الفعلي لم يُرفع كملفات منفصلة إلى CL/log**.
- مسارا https://github.com/alwansan/CL/tree/main/data و https://github.com/alwansan/CL/tree/main/Clog أعادا 404 وقت الفحص؛ يجب إعادة التحقق لاحقاً عند رفعهما.
- تفاصيل الخصوصية وخطوات استلام التجارب: `docs/CL_LOG_SOURCES_AR.md`.

## طريقة استئناف العمل
أرسل `prompt/RESTORE_SESSION_AR.md` في محادثة جديدة؛ سيقرأ العامل الملفات بالترتيب، ويتحقق من GitHub وCL مباشرة، وينشئ جلسة جديدة، ولا يعيد تشغيل اختبارات أو ينشر APK إلا بناءً على هدف المرحلة.
