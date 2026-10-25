# تقرير PATCH253 — استعادة H.264 High 10 بعد تحديث الترجمة

## تتبّع المسار

تم تتبّع مساري الترجمة حتى التقائهما في مسار مشترك:

1. **استيراد يدوي:** `SubtitleImportCallback.a(Uri)` يحفظ/يحضر الملف من خلال `SubtitleImportFile.a(Context, Uri)`، ثم يمرره إلى `cu.a(Uri)`.
2. **متابعة الترجمات:** `SequentialSubtitleManager.importSubtitle(Context, Uri)` يستعمل انعكاسًا لاستدعاء المسار نفسه `SubtitleImportFile` ثم `cu.a(Uri)`.
3. **تحديث MediaItem المشترك:** `cu.a(Uri)` يحدّث نموذج الترجمة ويطلق `CinemanaVideoPlayerViewModel$setSubtitleFromFile$3` في `y10.smali`. بعد تأخير 1 ثانية، يضيف الـ `Subtitle` إلى النموذج، يبني `MediaItem` مع SubtitleConfigurations، ثم ينفذ `s64.o(singletonList(mediaItem), false)` لإعادة تجهيز المصدر/المسار.
4. **سياسة الديكودر:** `so2.a(Format)` هو فحص دعم MediaCodec، و`H26410SoftwareRenderer.a(Format)` فحص دعم renderer البرمجي. كلاهما يستعمل سياسة مشتركة جديدة لمعرفة متى يجب اختيار FFmpeg.
5. **دورة حياة renderer:** `H26410SoftwareRenderer.H(Format[], ...)` وقراءة `RESULT_FORMAT_READ` من `o(positionUs, elapsedRealtimeUs)` هما موضعا إعادة استقبال Format وإعداد FFmpeg بعد تحديث المصدر.

## التغيير في PATCH253

- يلتقط renderer آخر `Format` جرى التحقق من أنه H.264 High 10.
- قبل أن يستبدل مسار الترجمة عنصر `MediaItem`، يستدعي `markSubtitleRefresh()`. لا تفعّل هذه العلامة إلا إذا كان هناك Format سابق High 10، بدون DRM، ومكتبة H.264 في FFmpeg متاحة.
- إذا أُعيد إنشاء المصدر وظهر تنسيق AVC غامض بلا codec string وبلا initialization data، ترفض سياسة MediaCodec هذا التنسيق أثناء التحديث، ويُبقي renderer البرمجي على Format السابق المعروف لتكوين FFmpeg. هذا يمنع فقدان هوية High 10 عند إعادة بناء المصدر.
- لا يفرض fallback على أي Format غير High 10 إذا بقي codec string أو initialization data واضحين؛ تُمسح علامة التحديث في هذه الحالة.
- يتم استهلاك العلامة عند حل Format، وتُلغى حالة الاحتفاظ بعد ظهور إطار. إذا استهلك FFmpeg 120 عينة دون إخراج إطار، يكتب سجل تشخيص واحد في `CinemanaDecoderPolicy` بدل إغراق Logcat.
- بعد مراجعة فشل PATCH253 على الجهاز، لم يعد `H(Format[], ...)` يعيد استخدام Format قديم عندما تصل قائمة Formats فارغة أثناء تبديل الـStream. في هذه الحالة يُحرر decoder ويؤجل التهيئة إلى أن يقرأ `SampleStream` نتيجة `RESULT_FORMAT_READ` الفعلية، حتى لا يُستخدم CSD من Stream سابق مع عينات Stream جديد.

## الملفات المعدلة

- `app/smali_classes10/com/shabakaty/cinemana/player/H26410SoftwareRenderer.smali`
- `app/smali/com/shabakaty/downloader/so2.smali`
- `app/smali/com/shabakaty/downloader/y10.smali`
- `patch_notes/PATCH253_HIGH10_REFRESH_REPORT_AR.md`

## ما يجب اختباره على الجهاز

1. تشغيل ملف MKV H.264 High 10 معروف أنه كان يعمل قبل تغيير الترجمة.
2. استيراد ترجمة بـ «من الملف» والتأكد أن الفيديو يستأنف ويظهر أول إطار.
3. تجربة «متابعة الترجمات» مع انتقال الحلقة/تغيير ملف الترجمة.
4. تكرار الاختبار على ملف H.264 8-bit.
5. إذا بقي التحميل، جمع Logcat حول `CinemanaDecoderPolicy` و`ExoPlayerImplInternal`. سجلات `FFmpeg video decoder configured for refreshed stream` و`ambiguous H.264 format` و`consumed 120 video samples without producing a frame` تميّز حالات اختيار Format وإعداده وإخراج الإطارات.

## حدود الثقة

هذا تعديل موجّه إلى دورة حياة `H26410SoftwareRenderer` عند تبديل Stream، وبالأخص منع إعادة تهيئة FFmpeg بتهيئة CSD قديمة قبل وصول Format الجديد. نجاح البناء يثبت صحة تجميع Smali فقط؛ لم يتوفر جهاز Android أو Logcat خام في هذه البيئة، لذلك لا يمكن ادعاء تحقق التشغيل النهائي. لا يتم دمج هذا الفرع في `main` تلقائيًا.
