# مشروع Cinemana PATCH252 الكامل — APKTool

هذه حزمة مشروع كاملة قابلة لإعادة البناء من صيغة APKTool، مبنية على APK إصدار PATCH252، وتشمل ملفات التطبيق المفككة وملفات Smali والموارد والأصول والمكتبات الأصلية وأداة APKTool اللازمة للبناء.

> **تنبيه مهم:** هذا مشروع APKTool مفكك، وليس نسخة المصدر الأصلية التي تحتوي على مشروع Android Studio/Gradle وملفات Java/Kotlin الأصلية. ملفات المصدر الأصلية الكاملة غير متاحة في ملفات الإدخال؛ لذلك هذه هي صيغة المشروع الكاملة التي يمكن إعادة تجميع التطبيق منها وتعديل Smali/الموارد فيها.

## محتويات الحزمة

- `app/` — شجرة التطبيق الكاملة: `AndroidManifest.xml` و`apktool.yml` و`smali/` و`smali_classes2/` حتى `smali_classes10/`، إضافة إلى `res/` و`assets/` و`lib/` وملفات APKTool الأخرى.
- `tools/apktool_2.12.1.jar` — أداة APKTool المضمنة لتجميع المشروع.
- `tools/framework/1.apk` — ملف framework المطلوب لمعالجة الموارد، مضمّن لتقليل الاعتماد على إعدادات الجهاز.
- `build.sh` — سكربت بناء على Linux/macOS.
- `build.bat` — سكربت بناء على Windows.
- `patch_notes/` — تقرير PATCH252 وحزمة فرق التعديل المصدرية.

## المتطلبات

- Java مثبت على الجهاز ومتاح بالأمر `java` (يوصى بـ JDK 17 أو إصدار متوافق مع APKTool 2.12.1).
- مساحة كافية على القرص لملفات المشروع وملف APK الناتج.
- **للتوقيع والتثبيت:** Android SDK Build-Tools التي توفر `zipalign` و`apksigner`، ومفتاح توقيع خاص بك.

## البناء على Windows

1. فك ضغط الحزمة إلى مجلد عادي.
2. ثبّت Java إن لم يكن مثبتًا.
3. شغّل `build.bat` من مستكشف الملفات أو من Command Prompt.
4. ستجد الناتج غير الموقّع هنا:

   `output\Cinemana_PATCH252_unsigned.apk`

## البناء على Linux/macOS

من داخل مجلد المشروع:

```bash
chmod +x build.sh
./build.sh
```

سيكون APK غير الموقّع هنا:

`output/Cinemana_PATCH252_unsigned.apk`

## توقيع APK الناتج

البناء ينتج APK **غير موقّع** افتراضيًا. إذا كان Android SDK Build-Tools متوفرًا في `PATH`، يمكنك تنفيذ التالي على Linux/macOS:

```bash
zipalign -f -p 4 output/Cinemana_PATCH252_unsigned.apk output/Cinemana_PATCH252_aligned.apk
apksigner sign --ks my-release-key.jks --ks-key-alias my-key-alias --out output/Cinemana_PATCH252_signed.apk output/Cinemana_PATCH252_aligned.apk
apksigner verify --verbose output/Cinemana_PATCH252_signed.apk
```

استبدل `my-release-key.jks` و`my-key-alias` بمفتاحك الفعلي. سيطلب `apksigner` كلمة مرور المفتاح عند الحاجة. يمكن تنفيذ الأوامر المكافئة باستخدام ملفات `zipalign` و`apksigner` الموجودة ضمن Android SDK على Windows.

**ملاحظة التثبيت:** لا يمكن تحديث تطبيق مثبت إذا كان توقيع APK الجديد مختلفًا عن توقيع النسخة المثبتة. عند البناء والتوقيع بمفتاح مختلف، قد تحتاج إلى إزالة النسخة المثبتة أولًا؛ وقد يؤدي ذلك إلى حذف بياناتها المحلية.

## تعديل المشروع

- تعديلات مشغل H.264 High 10 وتحديث صيغة الفيديو بعد تحديث المصدر موجودة ضمن `app/smali_classes10/com/shabakaty/cinemana/player/`، ومنها `H26410SoftwareRenderer.smali`.
- عدّل ملفات Smali أو الموارد داخل `app/`، ثم شغّل سكربت البناء من جديد.
- لا تحذف مجلد `unknown/` أو `original/` أو ملفات `assets/` و`lib/` ما لم تكن تعرف تأثير ذلك على التطبيق.

## حالة التحقق

أُعيد فك PATCH252 إلى هذا المشروع، ونُفّذ بناء تجريبي باستخدام APKTool 2.12.1 بنجاح لإنتاج APK غير موقّع. هذا يثبت أن المشروع قابل لإعادة التجميع في بيئة البناء المستخدمة، لكنه **لا يُعد اختبار تشغيل على جهاز Android** ولا يثبت وحده حل جميع مشكلات التشغيل.
