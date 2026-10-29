# فحص جاهزية REA لاسترجاع سورس سينمانا

تاريخ الفحص: 2026-10-29

## النتيجة

**PASS — تحليل APK وتشخيص صنف واسترجاع دالة Java بنجاح في GitHub Actions.**

هذا الفحص يثبت توفر مسار عمل أولي صالح، **ولا** يثبت إمكان استعادة 100% من ملفات Kotlin/Java الأصلية أو قابلية بناء تطبيق Android Studio كامل دون إعادة كتابة وتكييف.

## المصدر والفرع

- قاعدة العمل: `feature/local-account`
- فرع التجربة المنعزل: `experiment/rea-source-recovery`
- لم يُجرَ دمج مع `main`.

## الأدوات والإصدارات التي تم اختبارها فعلياً

- Ubuntu 24.04 على GitHub Actions (Linux x86_64)
- Node.js 24.22.2
- JDK 21 / Java compiler
- rea-agents 6.8.0
- jadx-headless-mcp 0.7.1
- SHA-256 لـ JADX: `6e5eacf500b64292bfb73c49797c1958f6ee44646e43e868039ae7feb573ff75`
- Apktool 2.12.1 المضمّن بالمشروع

## اختبارات فعلية ونتائجها

1. تشغيل REA على APK المعاد بناؤه: PASS؛ ملف JSON صالح (116249 بايت).
2. البحث عن صنف Android بواسطة REA: PASS.
3. استرجاع دالة `com.shabakaty.cinemana.player.H26410SoftwareRenderer.isHigh10`: PASS.
   - `representation: java`
   - `body_status: available`
   - `fell_back: false`
   - `source.status: complete`
4. إعادة البناء من شجرة APKTool الحالية: PASS.
   - SHA-256 لـ APK الناتج في الفحص: `f45dbb190ad2c866a681586b881e54394a42418c9af408ad1ee6108152c279bd`

التحقق الأصلي: https://github.com/alwansan/CP/actions/runs/40898809982

تحقق استرجاع Java: https://github.com/alwansan/CP/actions/runs/40899180403

## روابط تحميل رسمية عند الحاجة لتجهيز بيئة محلية

- Node.js 24.22.2 Linux x64: https://nodejs.org/dist/v24.22.2/node-v24.22.2-linux-x64.tar.gz
- JADX Headless MCP 0.7.1: https://github.com/1013503897/jadx-headless-mcp/releases/download/v0.7.1/jadx-headless-mcp-0.7.1-all.jar
- REA على npm: https://www.npmjs.com/package/rea-agents
- REA الرسمي على GitHub: https://github.com/morluto/rea

**حالياً لا داعي لرفع أي ملف خارجي لأن GitHub Actions ثبتت جميع هذه الأدوات بنجاح.** تشغيل الأدوات محلياً في بيئة المساعد تعذّر بسبب DNS وعدم استيفاء Node.js الموجود للإصدار المطلوب.

## وضع المشروع قبل التحويل

شجرة التطبيق في `Cinemana_PATCH252_Project/app` بصيغة APKTool/Smali وتتضمن manifest وres وassets وملفات `.so` وأصناف Smali عديدة. المشروع ليس سورس Android Studio أصلياً.

أمثلة مكتبات أصلية موجودة فعلاً: `libffmpeg.so`, `libavcodec.so`, `libmedia3ext.so`. توجد بيانات إصدار لحزم Firebase وGoogle Play Services داخل `app/unknown/*.properties`.

## التحويل المقترح لاحقاً

1. الحفاظ على `feature/local-account` دون تغيير واستعمال هذا الفرع المعزول للبحث والعمل.
2. استخراج Java بكميات كبيرة من DEX عبر JADX، مع REA للتحقق من الدوال وعلاقات الاعتماد، وحفظ سمات الأصل لكل ملف.
3. إعداد Android Gradle Project جديد؛ إعادة الموارد وAndroidManifest والأصول والمكتبات الأصلية.
4. ربط المكتبات المعروفة من Maven/Gradle بعد تأكيد الإصدارات والتوافق، مع تجنب دمج الكود المضمّن مع اعتماد خارجي مكرر.
5. ترحيل الوظائف على دفعات، معالجة الكود المشوه أو تعارضات الـ APIs، ومقارنة سلوك التطبيق الأصلي.
6. بناء APK موقّع واختبارات تشغيل فعلية على الجهاز؛ عدم الاستغناء عن Smali قبل نجاح البديل.

لا يوجد ضمان بتطابق سورس Kotlin/Java الأصلي بسبب obfuscation وفقدان الرموز ومعلومات المصدر، وقد تتطلب بعض الوظائف إعادة تنفيذ.
