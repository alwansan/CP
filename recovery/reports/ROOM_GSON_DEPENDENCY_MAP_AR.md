# خريطة استبدال محلّل JSON المشوّش بمكتبة Gson

## أدلة Smali الأصلية

أثناء مراجعة `jt2.smali` (ترحيل AppDatabase من الإصدار 2 إلى 3)، تم التحقق مباشرة من توجيه الاستدعاءات ومن أسماء ملفات المصدر داخل Smali:

| الصنف المشوّش داخل `com.shabakaty.downloader` | `.source` الأصلي | المرشح داخل Gson |
|---|---|---|
| `ea2` | `JsonParser.java` | `com.google.gson.JsonParser` |
| `z92` | `JsonElement.java` | `com.google.gson.JsonElement` |
| `ca2` | `JsonObject.java` | `com.google.gson.JsonObject` |
| `fa2` | `JsonPrimitive.java` | `com.google.gson.JsonPrimitive` |
| `ba2` | `JsonNull.java` | `com.google.gson.JsonNull` |
| `ga2` | `JsonReader.java` | `com.google.gson.stream.JsonReader` |
| `ka2` | `JsonToken.java` | `com.google.gson.stream.JsonToken` |
| `zd4` | `Streams.java` | جزء من `com.google.gson.internal.Streams` |

هذه قرائن قوية على أن المحلّل المضمّن هو Gson (أو نسخة مُعاد تحزيمها). **لا تثبت تلقائياً رقم إصدار Gson الأصلي** أو التكافؤ التام مع آخر إصدار منشور على Maven.

`jt2` ينفذ `ea2.b(String)` ثم يفحص `instance-of ca2` ويستدعي `ca2.l(String)`، وبعدها `z92.i()` لتحويل JSON primitive إلى نص. `z92.i()` يرمي `UnsupportedOperationException` للأنواع غير المدعومة، كما هو معروف من واجهة `JsonElement.getAsString()`. دالة `ea2.b` تتأكد أيضاً من استهلاك مستند JSON بالكامل، وترمي استثناءً عند وجود بيانات لاحقة غير صالحة.

## القرار المقترح في بناء السورس

عند إضافة موائم JSON للمشروع المعاد بناؤه، استخدم **اعتماد Gson رسمي واحد** في وحدة معزولة، وافصل واجهة استخراج البيانات عن المكتبة عبر `LegacyRoomV2EpisodeMetadata`. لا تضف الصنفين المشوشين والمكتبة الرسمية إلى حزمة التطبيق نفسها على أساس أنهما بديلان تلقائيان؛ لا بد من حصر الاستدعاءات التي ما زالت تتوقع الأصناف الأصلية.

يجب التحقق من مجموعات حالات مستقلة: JSON النصي والرقمي والـboolean، القيم الناقصة والـnull، العناصر غير الكائنية والمصفوفات، المحارف العربية، أرقام الجذور الكبيرة، JSON مع بيانات زائدة أو غير سليمة، وحدود حجم/عمق JSON. وتجب مقارنة موائم Maven عند الضرورة مع نسخة Gson الأصلية المستخرجة، وليس الاكتفاء بتشابه اسم الصنف.

## الوضع الحالي

الموجود والمختبر هو إسقاط JSON من `Map` إلى `Projection`، وموائم `org.json` تشخيصي على Android، بالإضافة إلى حراسة تحديث الصفوف والمجموعات باستخدام SQLite **في الذاكرة**. لم يتم بعد تركيب Gson الرسمي أو استبدال المحلّل الأصلي أو تمرير هذه الترحيلات على قواعد المستخدمين. لا توجد هنا قراءة أو كتابة على تطبيق سينمانا المثبّت أو قواعده الفعلية.

جميع الأعمال على فرع `experiment/rea-source-recovery` فقط.

## تحديث 30 أكتوبر 2026 — اختبار الموائم الرسمي

- أضيفت وحدة Java معزولة باسم `core-json-gson` تعتمد مكتبة `com.google.code.gson:gson:2.11.0` من Maven Central، من دون نسخ أصناف `ea2/ca2` المشوّشة.
- `LegacyRoomV2GsonAdapter` يستخدم `JsonParser.parseString`، وينقل فقط حقول الحلقة المطلوبة إلى `LegacyRoomV2EpisodeMetadata`. هذا يحد من خطر تفسير الحقول غير الضرورية.
- يحظر المدخلات التي تتجاوز 262144 محرفاً أو 48 مستوى تداخل، ويعيد `REJECTED_SYNTAX` أو `REJECTED_LIMIT` من دون إسقاط قابل للتحديث.
- اختبارات JDK المضافة تفحص النص والرقم والـ boolean والـ null والـ Array/Object والمحارف العربية والحقول الناقصة والنص غير المكتمل والحدود. فحص Android التشخيصي يختبر أيضاً نموذج الحلقة مع JSON غير سليم.
- تبقى فروق الإصدارات وبنية الاستثناءات ومرونة JSON (leniency) بين Gson الرسمي والمحلّل الأصلي `ea2` بحاجة إلى فحص؛ لم يُربط أي DAO إنتاجي ولم تُفتح قواعد بيانات المستخدم.
