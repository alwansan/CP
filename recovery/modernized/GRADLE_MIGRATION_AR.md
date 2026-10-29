# مسار Android Gradle التجريبي

هذا مشروع مستقل داخل فرع الاسترجاع يحتوي:

- core-video: كود Java نظيف قابل للاختبار مشتق من منطق كشف H264 High 10.
- android-bridge: مكتبة Android تستخدم Media3 الرسمي وتستدعي core-video بواجهة Format حقيقية.

## الاختبار على Linux / GitHub Actions

```bash
cd recovery/modernized
gradle --no-daemon :core-video:check :android-bridge:assembleDebug
```

المتطلبات: JDK 17، Gradle 8.11.1 وAndroid SDK Platform 35. إعداد Android Gradle Plugin 8.9.2.

## حدود الإنجاز

- هذا بناء Android **Library**، وليس APK كاملاً ولا بديلاً لسينمانا الحالية.
- لا يتضمن الواجهة الرئيسية أو خدمات التطبيق، ولا يعتمد على رفع targetSdk للنسخة الأصلية.
- الربط بمشغل سينمانا الحقيقي يتطلب نقل بقية أصناف المشغل، وربط FFmpeg/ JNI، ثم اختبارات سلوك ومقارنة.
- APKTool/Smali ما زال المرجع العامل، ولم يتغير.
