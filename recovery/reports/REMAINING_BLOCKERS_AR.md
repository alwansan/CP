# حالة استرجاع سينمانا — 29 أكتوبر 2026

## الملخص المعتمد على اختبارات GitHub Actions

- ملفات Java المسترجعة بواسطة JADX من 11 ملف DEX: **10,381** (أرشيف المصدر الكامل في Release).
- ملفات Java المختارة على الفرع: **851** (293 من حزمة Cinemana و558 من الطبقة المشوّهة Downloader).
- فحص تركيب Java (JDK JavacTask.parse): **846 ملفاً دون أخطاء صياغة، 5 ملفات تحتوي 48 خطأ تشخيصياً**.
- عدد ملفات حزمة `com.shabakaty.cinemana` التي تحتوي العلامة `Method not decompiled`: **صفر** بعد استرجاع 7 دوال ومراجعتها.
- اختبارات مستقلة لأجسام الدوال الأربعة الأخيرة: **52 ناجحة** (15+12+14+11).
- اختبار سلوك جاهزية مشغل High 10 الأصلي بعد تصحيح الأنواع: **14 ناجحاً**.
- تجميع Android Gradle لمكتبة Media3 وتنفيذ اختبارات Java: **نجح**.
- تغليف **49** مكتبة `.so` أصلية داخل AAR والتحقق من تطابقها مع الملفات الأصلية: **نجح**.

### الملفات الخمسة الباقية التي لم تجتز فحص الصياغة

| الملف | التصنيف وفق سورس JADX | المسار الآمن |
|---|---|---|
| `ca1/Episodes107.java` | منطق استرجاع الحلقات وعمل الطلبات | مراجعة Smali/REA بدقة واختبار التدفق الشبكي |
| `features/MkvExporter.java` | تصدير الفيديو وترقية سجلات التنزيل | إعادة بناء الدوال بالاعتماد على Smali، واختبار الملفات وقاعدة البيانات |
| `downloader/b35.java` | `VideosLayoutBindingImpl.java` مولّد من Data Binding | إعادة توليد الأصناف باستخدام AGP وملفات layout الأصلية |
| `downloader/gk1.java` | `FragmentSearchBindingImpl.java` مولّد من Data Binding | إعادة توليده باستخدام AndroidX Data Binding |
| `downloader/kf5.java` | مصدر متداخل يحمل وسم `com.google.mlkit:common@@17.1.1` | تحديد أصل كل وظيفة والتوافق قبل الاستبدال بمكتبات Maven |

**تحذير مهم:** فحص الصياغة لا يفحص الربط مع Android SDK ولا يحل مشكلة ازدواج أصناف المكتبات أو سلامة التشغيل. لا يُعتبر هذا مشروع APK صالحاً من سورس Java حتى ينجح بناء Android Application وتوقيعه واختباره على الجهاز.

### الإجراءات المؤكدة التالية

1. استعادة الطرق عالية الخطورة في `Episodes107` و`MkvExporter` مع اختبارات مقارنة بالسلوك الأصلي.
2. تفعيل توليد AndroidX Data Binding في مشروع Android Gradle من ملفات XML الأصلية بدلاً من النسخ المشوّهة.
3. تحديد مكونات `downloader` التي تمثل مكتبات خارجية، ثم تنزيل نسخ Maven المتوافقة بدلاً من استنساخ الكود.
4. إضافة وحدات Android Application وملفات Manifest وres وassets، وحل أخطاء الأنواع والاعتماديات بطريقة مرحلية.
5. اختبار APK نهائي على Android مع عدم تبديل مسار بناء النسخة الحالية حتى نجاح الاختبارات.

## روابط التحقق

- Source syntax 5 blockers: https://github.com/alwansan/CP/actions/runs/40910036551
- Restored Java methods: https://github.com/alwansan/CP/actions/runs/40908433364
- Renderer state regression: https://github.com/alwansan/CP/actions/runs/40909488249
- Native / Android Gradle build: https://github.com/alwansan/CP/actions/runs/40906164948

كل الملفات والتعديلات تخص `experiment/rea-source-recovery` فقط، ولا يوجد دمج مع `main` أو تغيير بالفرع الأصلي `feature/local-account`.
