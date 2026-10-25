# البناء الآلي عبر GitHub Actions

ملف سير العمل موجود في `.github/workflows/build-apk.yml` في جذر المستودع.

## تشغيل البناء

- يُشغَّل البناء تلقائيًا عند دفع تعديلات إلى `main` داخل `Cinemana_PATCH252_Project/`.
- يمكن أيضًا تشغيله يدويًا من صفحة **Actions → Build Cinemana PATCH252 APK → Run workflow**.
- يستخدم البناء Java 17 وملف APKTool المضمّن في المشروع.
- الناتج APK غير موقّع، ويتحقق سير العمل من سلامة أرشيف APK ويحسب SHA-256.
- لتنزيله: افتح تشغيل workflow الناجح، ثم نزّل artifact باسم `Cinemana-PATCH252-unsigned-APK`.

هذا البناء لا يوقّع APK بمفتاح خاص ولا يختبر تشغيل التطبيق على جهاز Android.
