# البناء الآلي عبر GitHub Actions

ملف سير العمل موجود في `.github/workflows/build-apk.yml` في جذر المستودع.

## تشغيل البناء

- يُشغَّل البناء تلقائيًا عند دفع تعديلات إلى `main` داخل `Cinemana_PATCH252_Project/`.
- يمكن أيضًا تشغيله يدويًا من صفحة **Actions → Build Cinemana PATCH252 APK → Run workflow**.
- يستخدم البناء Java 17 وملف APKTool المضمّن في المشروع.
- يتحقق من سلامة APK ويحسب بصمة SHA-256.
- بعد نجاح البناء، ينشر APK كملف مستقل ضمن GitHub Releases، وليس داخل ZIP Artifact الخاص بـ Actions.
- رابط تنزيل أحدث APK مباشرة:
  https://github.com/alwansan/CP/releases/latest/download/Cinemana_PATCH252_unsigned.apk
- صفحة الإصدارات وسجل ملفات البناء:
  https://github.com/alwansan/CP/releases

يمكن تنزيل APK الخام من رابط الإصدار مباشرة. يحتوي الملف على APK غير موقّع؛ يجب توقيعه بمفتاحك قبل تثبيته. لا يختبر البناء تشغيل التطبيق على جهاز Android.
