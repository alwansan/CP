# PATCH281 — مراجعة جلسة PATCH280 وقياس أسباب إعادة تخطيط Home

## مصدر القياسات
الملف: [CL/log/ui_performance.jsonl](https://github.com/alwansan/CL/blob/main/log/ui_performance.jsonl)؛ جلسة PATCH280 رقم `1793310238832`، 2,859 إطاراً. لا نعتبر الجلسات السابقة اختبار A/B متطابقاً.

- Home: 659 إطاراً، منها 26 فوق 100ms، وأعلى إطار 390.14ms، وأعلى layout/measure لإطار واحد 191.26ms.
- Details: 811 إطاراً، **صفر** فوق 100ms ضمن الجلسة، وأكبر تضخيم DataBinding للتفاصيل 53.56ms.
- أقصى تضخيم DataBinding للـHome فقط 4.19ms. في ست عودات من التفاصيل حصلت إعادة إنشاء View للرئيسية، تزامنت معها نوافذ صغيرة فيها 3 إطارات فوق 100ms لكل نافذة تقريباً.
- هذا يدعم استهداف أعمال `RecyclerView` وإعادة تخطيط الصفوف على الشاشة الرئيسية، لكنه لا يحدد View المتسبب بمفرده. Main Thread heartbeat القديم 1Hz غير كافٍ لالتقاط كل تعليق قصير.

## تغييرات PATCH281
1. `setHasFixedSize(true)` على `home_page_main_recycler` فقط: طول وعرض القائمة الرئيسية مضبوط داخل ConstraintLayout (0dp ومثبت على حواف viewport)، والتبديل بين الصفوف لا يحتاج تغيير حجم RecyclerView نفسها. لم نغيّر أبعاد الصفوف أو محتوياتها.
2. قياس `HomeMainAdapter` لكل نوع صف (slider/horizontal/ad/franchises/bottom groups) عند `onCreateViewHolder` و`onBindViewHolder` عبر `elapsedRealtimeNanos`، وتجميع عدد العمليات وأطول مدة فقط في سجلات عشر ثوانٍ. لا نسجل أسماء أعمال أو عناوين صور.
3. رفع وتيرة فحص استجابة Main Looper من مرة كل ثانية إلى 4 مرات/ثانية (من دون إنشاء طلبات متداخلة)، لمقارنة تعليقه بالـFrames.
4. دعم التقرير والتحقق من schema المختلط PATCH277—PATCH281، والاحتفاظ بالاختبارات السابقة وبناء APK موقّع ونشر مباشر من GitHub Actions.

## اختبار الهاتف
1. افتح PATCH281، وانتظر تحميل البوسترات، ثم مرر Home للأسفل والأعلى ثلاث مرات.
2. افتح تفاصيل عمل وارجع 5 مرات، وتأكد أن «أكمل المشاهدة» والبوسترات تعمل.
3. انتقل بين Home وSearch وCategories وProfile، وراجع التحميل العمودي والأفقي.
4. أرسل `CL/log/ui_performance.jsonl` بعد تشغيل السيناريو نفسه على PATCH281. اقرأ `row_*_create_max_ms`, `row_*_bind_max_ms`, `layout_max_ms`, `main_max_ms` و`over_100ms`.

لا دمج إلى `main` ولا تغيير ميزات التشغيل أو الحسابات أو التنزيل.
