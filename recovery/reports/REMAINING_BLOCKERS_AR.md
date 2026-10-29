# تقرير استرجاع سينمانا — 29 أكتوبر 2026

## النتائج المثبتة باختبارات GitHub Actions

- **10,381** ملف Java استخرجت من 11 ملف DEX؛ جميعها موجودة في أرشيف JADX الكامل.
- **851** ملف Java مرحّل داخل GitHub: 293 من حزمة `com.shabakaty.cinemana` و558 من `com.shabakaty.downloader`.
- **849/851 ملفاً** يجتاز التحليل النحوي الفعلي بواسطة JDK. ملفان فيهما **12 تشخيصاً** متعلقاً بصياغة Java. هذا لا يثبت صحة الأنواع والاعتماديات.
- علامات `Method not decompiled` في الملفات الأساسية الـ293: **صفر** بعد استرجاع سبع دوال.
- **112 اختبار Java ناجح** للدوال المسترجعة، وتشمل الفرز (15)، Coroutine (12)، تغيير أسماء الترجمات (14)، معاينة الترجمات (11)، جاهزية H.264 (14)، جلب الحلقات (17)، مراقبة MP4/MKV (14)، وفحص جداول SQLite (15).
- تجميع Gradle لكل من Media3 وموارد وأصول سينمانا والمكتبات الأصلية: **نجح**.
- **49** ملف `.so` أصلي مُضمّن في AAR، ثم في APK التشخيصي.
- APK تشخيصي مستقل جرى **بناؤه وتوقيعه وتثبيته وتشغيله على Android 10 (API 29، x86_64)**. تأكدنا من ظهور `Media3 High 10 adapter: PASS` عبر واجهة الجهاز وUIAutomator.

## آخر ملفين لا يجتازان تحليل صياغة Java

| الملف | سبب التأخير | الموقف الحالي |
|---|---|---|
| `features/MkvExporter.java` | جسم `promoteDatabase` كبير جداً، وفيه متغيرات أنواع مكسورة وتدفق استثناءات معقد من JADX | تم استرجاع `waitForCompletedVideoAndExport` واختبار 14 حالة؛ لا يُستبدل `promoteDatabase` قبل اختبارات استرجاع قواعد البيانات والذرية |
| `downloader/gk1.java` | `FragmentSearchBindingImpl` أصلاً كود Data Binding مولّد من XML/Kotlin؛ ناتج JADX يكرر المسارات ويخلط `Fragment` مع قوائم البيانات | يجب إعادة توليد Binding أو إعادة بناء تعريفاته ثم مقارنة الشاشات؛ مجرد تغيير `??` إلى نوع Java لا يضمن الصواب |

## تحديث تدريجي في واجهة البحث

أُصلحت حالة استجابة متأخرة عند تبديل التبويب في نموذج `core-search`، وأُضيفت اختبارات Java وAndroid لإثبات أن التبويب الجديد يستعمل رمز طلب جديد بدلاً من عرض بيانات التبويب القديم. يوجد الآن تقرير تفصيلي `SEARCH_BINDING_SMALI_PARITY_AR.md` يقارن `gk1/fk1/hz3/dz3` الأصلية مع ربط `SearchScreenController` المرحلي.

**لا يعني ذلك أن ملف `gk1` صار قابلاً للتجميع من Java أو أن الشاشة الأصلية مسترجعة.** ما زالت موائمات AppCompat/Material وربط `hz3` و`oz2` ومصادر البحث الحقيقية ناقصة. تجارب SQLite المنفصلة عن بيانات المستخدم تعتمد أيضاً على فحوص المحاكي للتأكد من الاسترجاع بعد `adb force-stop`.

## تحديث: استرجاع قرار اختيار صف التنزيل

تمت إضافة `LegacyDownloadIdentityResolver.java` كجزء Java مستقل وقابل للتجميع من مسؤوليات `MkvExporter.promoteDatabase`، اعتماداً على قراءة طريقة الترتيب بالنقاط الأصلية وحقول `DownloadItem.r/s/x/u/y`. هذا المصدر الجديد متعمد **أكثر تحفظاً** من الأصل: يشترط تطابق `taskId` و`externalId` والمسار الكامل وعدم وجود تنزيل آخر يتشارك المسار، ولا يغير `downloadTaskId` آلياً عند احتمال الالتباس.

ربط `OriginalRoomDiagnosticPort` وحدة الاختيار بجميع صفوف Downloads ضمن قواعد SQLite التشخيصية، مع حالة اختبار خامسة لتصادم المسارات. اختبارات Java ومنفذ الاختبار لا يعنيان استرجاع الطريقة الضخمة نفسها أو وصولها لتطبيق سينمانا. ما زال الملفان `MkvExporter.java` و`gk1.java` ضمن عوائق التحويل والترجمة.

## القيود الضرورية

1. فحص JDK `parse()` لا يعني أن ملفات Java الـ849 تتجمع سويةً. يعتمد ذلك على حل كل مراجع AndroidX والكود المشوّه وباقي التوابع.
2. APK التشخيصي يحمل package `com.shabakaty.cinemana.recovery.smoke` **وليس سينمانا**. واجهة سينمانا الأصلية ونظام الحساب والتنزيلات ما زالا غير مربوطين جميعاً في مشروع Android Gradle.
3. تشغيل APK التشخيصي على محاكي Android دليل تكامل الوحدات المُختبرة، وليس اختبار سينمانا كاملاً.
4. لا تعدّل المصدر المفكك الأصلي أو `main` أو `feature/local-account` حتى نجاح البناء الكامل واختبارات الجهاز.

## الأدلة

- 849 Java parse, 2 syntax blockers: https://github.com/alwansan/CP/actions/runs/40914976820
- 112 Java tests: https://github.com/alwansan/CP/actions/runs/40915084735
- Native/media resources APK build: https://github.com/alwansan/CP/actions/runs/40911943683
- Actual Android 10 emulator installation and screen verification: https://github.com/alwansan/CP/actions/runs/40914736533
- REA complex method details and Data Binding caveats: https://github.com/alwansan/CP/blob/experiment/rea-source-recovery/recovery/reports/REA_INDEPENDENT_DECOMPILATION_AR.md

تقتصر جميع تغييرات الاسترجاع على فرع `experiment/rea-source-recovery`.

## تقدم 30 أكتوبر 2026 — ترحيل JSON للإصدار 2→3

- أُعيد استخراج جزء اختيار الحلقات وتحويل metadata من `jt2.smali` إلى `LegacyRoomV2EpisodeMetadata.java`، وهو Java مستقل قابل للتجميع من دون Android، ويحتفظ بتمييز `kind="2"`، والحقول `nb/episodeNummer/season/rootSeries`، وتنظيف العنوان، و`rootSeries="0"`، وتجميع جذور الحلقات المميزة.
- أُضيفت اختبارات Java للحقول الناقصة وأنواع JSON الغريبة ومعرفات المجموعات والتكرارات؛ وتم التحقق منها بنجاح في CI. وأُضيف `verify_original_room_json_projection.py` لفحص ثوابت وتعليمات Smali الأصلية.
- تمت إضافة `LegacyRoomJsonProbe.java` لتجربة JSON نصي في تطبيق Android التشخيصي باستخدام `org.json` و8 حالات محلية، وفحص Emulator ينتظر `Legacy Room JSON projection: PASS (8 Android JSON fixture scenarios)`.
- **الحد الحالي:** هذا ليس بديلاً لـ`jt2` الأصلي؛ ما زال تفسير `ea2/ca2/z92` (Gson المشوّش)، وطريقة كتابة الحقول إلى DAO، وتحويلات أسماء المجموعات، ومطابقة قواعد Room التاريخية، واختبار حالات البيانات التالفة الحقيقية كلها غير منقولة بصورة كاملة. تجارب `org.json` تقارب فقط parsing الخاص بالحالات النموذجية وليست إثباتاً لتكافؤ Gson.
- بالإضافة إلى ذلك كشف فحص المصدر أن SQL ينقل `DownloadItem WHERE finished = 1` لكن حلقة فحص `videoFile` تمر على **كل** الصفوف. لذلك يجب اختبار نتائج محاولة تحديث ID لم يدخل إلى `CinemanaDownloadItem`، ومنع احتمال خلط هويات متشابهة قبل الترحيل الإنتاجي.

لم يُجر أي تعديل على مصدر Smali الأصلي، أو بيانات قاعدة مستخدم حقيقية، أو فرعي `main` و`feature/local-account`.
