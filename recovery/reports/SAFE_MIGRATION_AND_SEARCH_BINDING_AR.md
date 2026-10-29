# ترحيل قواعد البيانات وواجهة البحث — مرحلة آمنة

تاريخ التحقق: 29 أكتوبر 2026.

## لماذا لم نستبدل دالة `promoteDatabase` حتى الآن؟

التعليمات الأصلية في:
`Cinemana_PATCH252_Project/app/smali_classes3/com/shabakaty/cinemana/features/MkvExporter.smali`

تحتوي دالة `promoteDatabase` على نحو 3,098 سطراً من Smali. تشمل البحث عن سجل التنزيل المطابق، احتمال تصحيح `downloadTaskId`، تعديل مسار وحجم الملف، إعادة قراءة النتائج بعد كل تحديث، ثم استرجاع السجلات السابقة (Downloads وCinemanaDownloadItem والترجمات) عند حدوث فشل.

تحويل هذه الدالة مباشرة من ناتج JADX الحالي، الذي يتضمن أنواعاً مشوّهة `??` ومسارات استثناءات معقدة، يمكن أن يؤدي إلى فساد سجلات التنزيلات. لذلك **لم نستبدلها بعد**.

## ماذا أُنجز؟

أنشأنا وحدة Java قابلة للاختبار مستقلة:

`recovery/modernized/core-downloads`

وتحتوي `MkvPromotionPreflight.evaluate(...)`، وهي عملية **قراءة وفحص فقط** تؤكد:

- أن هويات Cinemana وDownloads والـ external ID ورقم مهمة التحميل متطابقة.
- أن مسار MP4 ومسار MKV المقترح متجانسان ولا يشيران إلى ملف `.temp`.
- أن حجم الملف مناسب على الأقل للحد المستخدم عند اكتشاف ثبات اكتمال التحميل.
- أن اسم المصدر لدى السجلين يطابق الفيديو الذي سيجري ترحيله.
- أن الصفوف الناقصة أو المختلف عليها تؤدي إلى رفض العملية بدلاً من كتابة خاطئة.

**حدود هذه الوحدة:** لا تصل إلى قاعدة بيانات حقيقية، لا تستبدل `promoteDatabase` الأصلية، ولا تدعي تغطية استرجاع المعاملات أو التزامن. رفض بعض الحالات يهدف إلى الأمان حتى نكتمل من إعادة بناء قواعد مطابقة السجلات الأصلية، ومنها تصحيح رقم المهمة بعد الفشل.

فحوص Java: **19 حالة ناجحة**.
سجل التحقق: https://github.com/alwansan/CP/actions/runs/40920074702

## ربط واجهة البحث

من `Cinemana_PATCH252_Project/app/res/layout/fragment_search.xml` استخرجنا ثمانية معرفات رئيسية:

`search_root_coordinator`، `searchView`، `tabLayout`، `search_adv_filter`، `search_view_pager`، `search_recent_searches`، `search_app_bar_layout`، `imageView5`.

قارنّا هذه العناصر مع معادلات `objArrS[0..10]` في ملف `recovery/generated/java/com/shabakaty/downloader/gk1.java`، وهو النسخة المفككة من `FragmentSearchBindingImpl`.

أنشأنا بديلاً تدريجياً باسم `SearchScreenRefs` داخل وحدة `legacy-resources`، يعتمد على `findViewById` والمعرفات الأصلية الفعلية. يفشل برسالة واضحة إذا كانت إحدى الواجهات الأساسية ناقصة.

الفحص البنيوي: **34 حالة ناجحة**؛ وتم تجميع الكلاس داخل Android Library فعلية.
سجل التحقق: https://github.com/alwansan/CP/actions/runs/40920074702

**ما زال ناقصاً:** الاستجابة إلى LiveData، الربط الديناميكي بين الـ ViewModel والواجهة، حساب dirty flags، حدث زر الفلتر، وتجميع الواجهات الخاصة. ملفات XML المفككة لا تحتوي تعابير `<layout><data>` الأصلية، فلا نستطيع إعادة توليد Binding كامل آلياً من XML وحده.

## اختبار التطبيق التشخيصي

التطبيق التشخيصي `com.shabakaty.cinemana.recovery.smoke` صار يستخدم وحدة Java الجديدة مع نفس `res` و`assets` و49 ملف `.so` وMedia3.
إضافة النصين:

`MKV promotion preflight: PASS`

`Original search layout: PASS`

لا تعني أن سينمانا الأصلي جاهز؛ هي فحوص لسلامة المكونات المسترجعة فقط.

## أمان الفروع

**لا تعدّل أو تدمج `main` أو `feature/local-account`.** كل الأعمال على `experiment/rea-source-recovery`.

## الخطوة التقنية الباقية

1. بناء الاختبارات التي تثبت استرجاع صفوف Downloads وCinemanaItem والترجمات عند فشل أي تحديث.
2. نقل منطق `promoteDatabase` بطريقة مرحلية مع مقارنة تعليمات Smali، وإبقاء الدالة الأصلية إلى أن يثبت التكافؤ.
3. استبدال `gk1` بكود ربط واجهة يُستعمل فعلياً في FragmentSearch مع ViewModel وLiveData واختبار تفاعل المستخدم على المحاكي.
4. بعدها بناء وتوقيع APK لسينمانا من سورس Java/Kotlin، لا الاكتفاء بالتطبيق التشخيصي.
