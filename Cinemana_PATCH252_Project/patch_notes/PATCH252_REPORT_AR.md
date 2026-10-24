# PATCH252 — إصلاح توقف Renderer عند تحديث الترجمة

## خلاصة سجلّات الجهاز

- [`log/ui95.log`](https://github.com/alwansan/C/blob/main/log/ui95.log) يسجل أول إخراج إطار للحلقة 115، ثم تحديثات/تغييرات لمصادر الحلقة 116 دون سجل أول إطار لها في تلك الفترة، ثم يسجل أول إطار للحلقة 117. هذا لا يثبت سببًا وحيدًا، لكنه يتوافق مع توقف مسار الفيديو قبل إنتاج إطار للحلقة 116.
- [`log/ca1_batch.jsonl`](https://github.com/alwansan/C/blob/main/log/ca1_batch.jsonl) يحتوي أحداث `subtitle_track_ready` و`subtitle_sample_retained` و`subtitle_timeline` متكررة حول تحديثات الترجمة.
- [`log/mkv_player_resolver.log`](https://github.com/alwansan/C/blob/main/log/mkv_player_resolver.log) يؤكد حل المسار المحلي للحلقة 116 مرارًا.
- هذه الملفات ليست Logcat خامًا، ولا تحتوي اسم Decoder نشطًا أو `onPlayerError`؛ لذلك لا يمكن الجزم منها وحدها إن كان FFmpeg فشل في فك إطار أم لم يصله تنسيق الفيديو.

## الخلل المرجّح في PATCH251

في `H26410SoftwareRenderer.H(Format[] ...)` كان المسار الذي لا يحتوي تنسيقات يعيّن `currentFormat=null` ويهيّئ Decoder فارغًا. وفي `o(positionUs, elapsedRealtimeUs)` كان هناك شرط عودة مبكر إذا كان `currentFormat==null`. هذا يمنع Renderer من استدعاء `readSource()`، وبالتالي قد لا يقرأ `RESULT_FORMAT_READ` الذي كان سيعيد تنسيقه وإعداد FFmpeg. النتيجة المحتملة هي `isReady=false` مع بقاء المشغّل في التحميل بدل ظهور فشل واضح.

## ما تغيّر في PATCH252

1. عند وصول تحديث بلا `Format[]`، يحتفظ Renderer بآخر `Format` معروف بدل محو معلومات الـcodec وCSD فورًا.
2. أزيل شرط العودة الذي يمنع قراءة `SampleStream` عندما يكون `currentFormat` فارغًا. إذا لم تكن هناك معلومات سابقة، يستطيع Renderer قراءة `RESULT_FORMAT_READ` الجديد ثم إعداد FFmpeg.
3. أضيفت سجلات تشخيصية: `CinemanaDecoderPolicy`، ومنها:
   - `Source refresh supplied no video formats; retaining cached Format ...`
   - `Software renderer received a new video Format from SampleStream`
   - `FFmpeg video decoder configured after stream refresh`
   - أو `FFmpeg video decoder configuration failed after stream refresh`

لم تُعدّل ميزة متابعة الترجمات أو استيراد الترجمات، ولم تتغير واجهة المشغّل أو ملفات الفيديو، وتبقى سياسة توجيه H.264 High 10 من PATCH251 كما هي.

## التحقق

- أعيد تجميع `classes10.dex` بنجاح ثم أعيد تفكيكه للتأكد من بقاء التعليمات والسجلات الجديدة.
- تحقق `zipalign` وZIP integrity بنجاح.
- تحقق توقيع APK وفق v1/v2/v3، وشهادة التوقيع مطابقة لـPATCH251.
- جميع بيانات APK غير `classes10.dex` بقيت مطابقة لنسخة PATCH251 قبل إعادة التوقيع.
- لم يتوفر جهاز Android/محاكي في بيئة البناء لتشغيل الحلقة بعد refresh فعليًا؛ نجاح الإصلاح على الهاتف ما زال يحتاج اختبارًا عمليًا.

## اختبار ما بعد التثبيت

جرّب حلقة 1080p نفسها، ثم استورد ترجمة من الملف وجرّب متابعة الترجمات. إذا بقي التحميل، صدّر Logcat مع فلتر `CinemanaDecoderPolicy` و`ExoPlayerImplInternal`؛ السجلات الجديدة ستبيّن هل وصل Format جديد، وهل نجحت تهيئة FFmpeg.
