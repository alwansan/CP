# البناء والتوقيع الآلي عبر GitHub Actions

ملف سير العمل موجود في `.github/workflows/build-apk.yml` في جذر المستودع.

## ماذا يحدث عند كل بناء؟

1. يفك GitHub المشروع ويعيد تجميعه باستخدام Java 17 وAPKTool المضمّن.
2. يضبط Android SDK Build Tools.
3. يطبّق `zipalign` قبل التوقيع، ثم يوقّع APK باستخدام `signing/checkpoint145-debug.keystore`.
4. يتحقق من التوقيع باستخدام `apksigner verify`، ويفحص أرشيف APK، ويحسب SHA-256.
5. ينشر ملف APK الموقّع كملف مستقل في GitHub Releases.

## تنزيل أحدث APK موقّع مباشرة

https://github.com/alwansan/CP/releases/latest/download/Cinemana_PATCH252_signed.apk

صفحة الإصدارات:
https://github.com/alwansan/CP/releases

سجل عمليات البناء:
https://github.com/alwansan/CP/actions

## بيانات المفتاح

إذا كانت بيانات المفتاح هي إعدادات Android debug الافتراضية، يستخدم سير العمل كلمة المرور `android` والاسم `androiddebugkey`. لتجاوز القيم الافتراضية، أضف أسرار مستودع GitHub التالية من **Settings → Secrets and variables → Actions**:

- `CINEMANA_KEYSTORE_PASSWORD`: كلمة مرور ملف keystore.
- `CINEMANA_KEY_PASSWORD`: كلمة مرور المفتاح، إذا كانت مختلفة عن كلمة مرور الملف.
- `CINEMANA_KEY_ALIAS`: أضفه كـ **Repository variable** إذا كان الاسم المستعار مختلفًا عن `androiddebugkey`.

## تحذير أمني مهم

المستودع عام والملف `signing/checkpoint145-debug.keystore` موجود فيه، لذلك يمكن للآخرين تنزيل ملف المفتاح ومحاولة التوقيع به. كلمة المرور في GitHub Actions Secret وحدها لا تعيد سرية الملف إذا كان ملف keystore منشورًا في المستودع.

هذا مناسب للتجارب الشخصية فقط، وليس لتوقيع إصدار موثوق للتوزيع العام. للاستخدام طويل الأمد، انقل ملف keystore خارج المستودع إلى GitHub Actions Secret مشفّر بصيغة Base64، ثم احذفه من المستودع وتاريخه إن كان ذلك مطلوبًا. لا تستخدم مفتاح debug مكشوفًا بوصفه مفتاح إصدار خاصًا.

نجاح البناء والتحقق من التوقيع لا يُثبت أن التطبيق يعمل على جهاز Android؛ يجب إجراء اختبار تشغيل منفصل.
