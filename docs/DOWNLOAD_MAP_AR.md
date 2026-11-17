# خريطة هندسية أولية — التحميل والتحويل
هذه خريطة مبنية على قراءة التقارير وبنية الفرع، وليست call graph مكتملة. استخرج مسارات Smali الفعلية قبل كل تعديل.
- Cinemana_PATCH252_Project/app/: Manifest، smali*، res، assets، lib. لا تفترض أن أسماء المجلد PATCH252 تعكس إصدار APK (الحالي PATCH274).
- patches/local-account/: PATCH268–274، PLAN_AR.md، VALIDATION.txt، src، tests، build.py، patch_android.py، run_tests.py، validate.py.
- scripts/: validate_recovery.py، test_recovery_flow.py، test_reference_guards.py، verify_apk_dex.py، test_apk_dex.py.
- patch_notes/PATCH258_REPORT_AR.md: Queue110 وMkvReconciler وRestart108؛ DNS مقابل DB promotion.
- patch_notes/PATCH260_REPORT_AR.md وPATCH261_REPORT_AR.md: recovery JSON وكبسولات تاريخية، MP4، FileObserver، حراسة التحويل، ownership.
- patch_notes/PATCH262_REPORT_AR.md: حذف آمن، epoch، إلغاء FFmpeg، تحقق الصلاحيات.
- patches/local-account/PATCH268_AR.md وPATCH273_AR.md وPATCH274_AR.md: حماية الحساب، foreground scan، الإشعارات.
- التقارير تحت Cinemana_PATCH252_Project/patch_notes/؛ README_AR.md وCI_BUILD.md مراجع تاريخية.
- البحث التالي في الكود: قبول مهمة/هوية، resolver والـURL، file downloader callback، .part/MP4، queue، journal/JSON، MkvExporter/MkvReconciler، DAO، FFmpeg، الترجمة، إلغاء وتنظيف. لا تفترض مطابقة تنفيذ فرع REA.
- .github/workflows/local-account.yml: CI baseline، push خاص بالفرع الأصلي، نشر tags محلية؛ افصل نشر الإصلاحات لاحقاً. لا نشر أو build في التأسيس.
