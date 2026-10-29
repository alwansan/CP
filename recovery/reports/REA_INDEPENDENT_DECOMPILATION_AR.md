# تحليل مستقل للدوال المعقدة عبر REA — 29 أكتوبر 2026

## مصادر الدليل

تشغيل REA الناجح: https://github.com/alwansan/CP/actions/runs/40910608691

الملفات التفصيلية للنتائج موجودة في artifact باسم `rea-complex-method-evidence`، ويتضمن نص Java الكامل لكل دالة، وتقرير JSON.

أظهرت REA باستخدام `jadx-headless-mcp@0.7.1` لكل دالة:

- `representation=java`
- `body_status=available`
- `source.status=complete`
- `fell_back=false`

**لكن فحص نص Java نفسه كشف أخطاء استنتاج أنواع غير محلولة من JADX (`??`). لذلك هذا إثبات أن الدالة استُخرجت، وليس إثباتاً أن ناتجها قابل للتجميع.**

| الدالة | الملف | عدد علامات `??` في نص REA | التوصية |
|---|---|---:|---|
| `remote` | `ca1/Episodes107.java` | 4 | إعادة بناء تدفق الاستجابة وإلغاء الاشتراك من Smali، مع اختبارات تزامن |
| `waitForCompletedVideoAndExport` | `features/MkvExporter.java` | 6 | لا تغيّر منطق مراقبة اكتمال MP4/MKV من دون اختبار الملفات/التوقيت |
| `promoteDatabase` | `features/MkvExporter.java` | 3 | لا تغيّر عملية ترقية قاعدة البيانات قبل اختبارات معاملات/استرجاع |
| `i` | `downloader/gk1.java` | 1 | صنف Data Binding المولّد من `FragmentSearchBindingImpl`، يحتاج إعادة التوليد من مخطط الواجهة |
| `i` | `downloader/b35.java` | 1 | صنف Data Binding المولّد من `VideosLayoutBindingImpl`؛ أصلحت حالات `AccessibilityLiveRegion` الواضحة في Java الممرحلة |

## ملاحظة مهمة عن Data Binding

ملفات `res/layout/fragment_search.xml` و`res/layout/videos_layout.xml` المفككة تتضمن علامات `layout/fragment_search_0` و`binding_1` وغيرها، **لكنها لا تتضمن تعريفات `<layout><data>...</data>...` الأصلية**؛ فقد ضاعت أثناء تجميع التطبيق إلى APK. تفعيل Data Binding في Gradle وحده لا يكفي لاسترجاع الخصائص والتعابير الأصلية. يلزم إعادة بناء تعريفات الربط أو استعمال طبقة Java مؤقتة مع مقارنة بسلوك الأصل.

## الخطة التقنية

1. الاحتفاظ بملفات Smali وAPK الأصلي كمرجع.
2. إعادة البناء التدريجي للواجهات والفئات المرتبطة بالاعتماديات بالرجوع إلى Smali والموارد وفحوص الواجهة.
3. تجنب النقل المباشر لدوال REA ذات `??` إلى Gradle، خصوصاً منطق MKV وعمليات قاعدة البيانات.
4. تشغيل فحص صياغة Java بشكل مستمر إلى جانب اختبارات التجميع والفحص على Android.
5. لا ندمج أي شيء مع `main` أو `feature/local-account`.
