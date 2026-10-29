# الاحتفاظ بالمكتبات الأصلية

هذه الوحدة تغلّف مكتبات Android الأصلية (.so) من مجلد التطبيق المفكك الموجود في نفس الفرع:

Cinemana_PATCH252_Project/app/lib

- لا تعيد تجميع FFmpeg أو Media3-native أو libavcodec.
- لا تغيّر ملفات APKTool/Smali الأصلية.
- تحتفظ بمعماريات arm64-v8a وarmeabi-v7a وx86 وx86_64 حسب الموجود فعلاً.
- بعض المكتبات لا تتوفر لكل ABI. خصوصاً libffmpeg.so يتوفر في arm64-v8a فقط في نسخة الإدخال.
- هي مكتبة AAR للتجميع والتحقق، وليست APK جاهزاً للتثبيت.
- يحتاج ربط Java/JNI في مشروع سينمانا النهائي إلى مراجعة التحميل والأسماء والتوافق.

البناء:

```bash
cd recovery/modernized
gradle :legacy-native:assembleDebug
```
