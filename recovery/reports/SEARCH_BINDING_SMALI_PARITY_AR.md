# مطابقة واجهة بحث سينمانا: Smali مقابل الـSource-first

تاريخ المراجعة: 29 أكتوبر 2026. الفرع: `experiment/rea-source-recovery`.

## مصادر التحقق

- `Cinemana_PATCH252_Project/app/smali/com/shabakaty/downloader/gk1.smali`: الكلاس المولّد `FragmentSearchBindingImpl`.
- `Cinemana_PATCH252_Project/app/smali/com/shabakaty/downloader/fk1.smali`: عقد `FragmentSearchBinding` الأصلي.
- `Cinemana_PATCH252_Project/app/smali/com/shabakaty/downloader/hz3.smali`: حقول ViewModel المرصودة.
- `Cinemana_PATCH252_Project/app/smali/com/shabakaty/downloader/dz3.smali`: واجهة مستمع SearchFragment.
- `Cinemana_PATCH252_Project/app/res/layout/fragment_search.xml`: عناصر الشاشة الأصلية.
- `recovery/modernized/core-search` و`legacy-resources`: النموذج المرحلي الذي نختبره منفصلاً عن التطبيق الأصلي.

## مضاهاة الـView slots الأصلية

| slot | النوع الأصلي | الوظيفة |
|---|---|---|
| 0 | CoordinatorLayout | `search_root_coordinator` |
| 1 | AppCompat SearchView | `searchView` |
| 2 | Material TabLayout | `tabLayout` |
| 3 | MaterialButton | `search_adv_filter` |
| 4 | TextView | رسالة حالة البحث الفارغ، `binding_4` |
| 5 | ViewPager2 | `search_view_pager` |
| 6 | NestedScrollView | حاوية البحث الأخير، `binding_6` |
| 7 | WideVerticalVideosView | `search_recent_searches` |
| 8 | oz2 | `no_search_results_layout` المضمّن |
| 9 | AppBarLayout | `search_app_bar_layout` |
| 10 | AppCompatImageView | `imageView5` |

يستعمل `SearchScreenRefs` المعرّفات الثمانية المستقرة، ويستعمل `SearchScreenController` أيضاً `binding_4` و`binding_6`. لم يُستبدل slot 8 أو كود Data Binding الفعلي بعد.

## أوامر وتغيّرات مؤكدة في Smali

- `gk1.d(...)` يرسل ضغطة زر الفلترة إلى `dz3.E0()`. في المصدر المرحلي يعادلها `Actions.onFilterPressed()`، لكنه **ليس مربوطاً بعد** بتنفيذ `SearchFragment` الأصلي.
- `hz3` يملك متغيرات مراقبة `x` و`y` من نوع `mj`، و`p` و`v` من نوع `xv2`، و`z` من نوع `LiveData`، وقائمة `q`. يقرأها `gk1.i()` لتحديث واجهة البحث. تسمية هذه الحقول من Smali **لا تثبت معناها الدلالي الكامل** دون تتبع مصدر التغييرات والـDAO.
- `gk1.i()` يحدّث `WideVerticalVideosView.setVideos(...)`، ويظهر/يخفي `NestedScrollView` و`ViewPager2` و`TabLayout` والنص الفارغ. هذه الوظائف مؤقتاً ممثلة بالـ`SearchStateMachine` وبأجزاء من `render`، لا بنظام بيانات سينمانا الحقيقي.
- التهيئة الأصلية تنشئ ربط SearchManager باستخدام `HomeActivity`، وتعطّل السحب اليدوي في ViewPager2، وتربط TabLayout به. **هذه السلوكيات لم تُنقل إلى الشاشة التشخيصية** التي تستعمل أدوات Android بسيطة لتجنب تكرار مكتبات الموارد.
- منطق `gk1.i()` في ناتج JADX يتضمن `??` ومسارات أنواع متعارضة، لذا لا يجوز نسخه إلى Gradle باعتباره Java سليماً.

## ما أصبح أقوى في النموذج المرحلي

1. رمز الاستعلام يُلغى عند تغيير النص وكذلك **عند تغيير التبويب**، حتى لا تعود نتائج تبويب سابق إلى التبويب الجديد.
2. `SearchScreenController` يصدر طلباً جديداً عند تبديل التبويب مع وجود استعلام، ويحافظ على تبويب البحث الأخير إذا مُسح النص.
3. اختبار Android يعرض عدد الطلبات والتبويب الموافق لها، للتحقق من عدم إعادة استخدام الطلب القديم.

## ما يلزم قبل القول إن gk1 استُرجع فعلاً

1. تأكيد أنواع `hz3` وربط `p/q/v/x/y/z` بالـViewModel الحقيقي، مع مراجعة Smali للـcall sites.
2. موائمات متوافقة مع إصدارات AppCompat وMaterial وViewPager2 الأصلية، دون نسخ مكتبات Maven ومكتبات APKTool بشكل مزدوج.
3. تنفيذ Data Binding البديل بما فيه `oz2`، تحديثات البحث الأخير، حالات الخطأ/الفراغ، أزرار الفلترة وموائمات التبويبات.
4. اختبارات شاشة البحث الأصلية مع نفس مصادر البيانات وقياس التفاعل على Android؛ نجاح شاشة `SearchFlowActivity` الوهمية وحده غير كافٍ.
5. الحفاظ على شجرة Smali الأصلية دون تعديل؛ التحويل النهائي إلى المصدر يتم بعد إثبات التكافؤ الوظيفي.

> هذا تقرير معاينة للعقد الأصلي، وليس استعادة مثبتة لـ`gk1` ولا شهادة جاهزية سينمانا الكامل.
