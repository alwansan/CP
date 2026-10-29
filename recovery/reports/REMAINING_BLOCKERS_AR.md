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
