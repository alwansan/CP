# CP-DL A2
Owner A1 phone test: 0 SQLite leak / ANR markers, peak 447 threads, 42 unique MKV DB successes/183 total, 120s wait timeout, UI oscillation. CL 0a9ff937794376130b07691b9a2f48398fbd7f79, ZIP analyzed. Implement A2 scoped mitigation as docs/CP_DL_A2_AR.md. CI pending at commit. Do not claim full fix.
## أول محاولة CI لـA2
Run 44149109180 فشل في test_recovery_flow.py بسبب Unmodeled instruction: if-lez v2, :ordered_done؛ المحاكي لم يدعم شروط/حقل cursor الجديدة. وسّع المحاكي لدعم sget/sput AUDIT_CURSOR, if-lez/ltz, if-ge/lt؛ اختبار 25 ملفات يثبت أول 24 بالترتيب ضمن 8/دورة ووصول 25، واختبار تقلص المجلد وإعادة المؤشر؛ لا تعطيل أو تخفيض اختبارات التحقق. البناء الجديد مطلوب.
