# AGENTS: مشروع Cinemana Pro Rust Core
الهوية CP-RUST. فرع الكتابة الوحيد: alwansan/CP:experiment/rust-core-migration.
المصدر feature/download-stability ثابت للقراءة؛ لا تعدله ولا main أو Html أو CL. لا تدمج فروع UI صامتاً.

## واجب الاستعادة
1. تحقق من HEAD وActions الحيين ثم rust-migration/RESTORE_SESSION_AR.md.
2. اقرأ STATE.json وMEMORY_AR.md وPLAN_AR.md وARCHITECTURE_AUDIT_AR.md وDECISIONS_AND_RISKS_AR.md وTEST_MATRIX_AR.md وآخر سجل جلسة.
3. راجع الكود الحقيقي والتقارير ولا تعتبر التصميم إثبات عمل في الهاتف.

## تحديث تلقائي في كل جلسة وكل تقدم
بعد أي تحليل/قرار/commit/CI failure/build/phone evidence:
- حدّث rust-migration/STATE.json للمرحلة والبوابة وآخر الأدلة.
- حدّث rust-migration/MEMORY_AR.md لمعلومات المشروع المعروفة والدروس.
- حدّث rust-migration/PLAN_AR.md لتقدم R0–R7 والخطوة التالية.
- حدّث rust-migration/DECISIONS_AND_RISKS_AR.md للمخاطر والقرارات.
- حدّث rust-migration/RESTORE_SESSION_AR.md بنقطة الاستعادة الفعلية.
- أنشئ rust-migration/sessions/YYYY-MM-DD-unique-id.md أو ألحق بسجل الجلسة الحالية فقط، مع عدم الكتابة فوق جلسة أخرى.
- بعد الدفع تحقق من HEAD/CI، ولا تخزن SHA commit التوثيق نفسه داخله.
لا تدّع عملًا مجدولًا ما لم تُنشأ مهمة مستقلة.

## إجراءات الحفاظ على البيانات
لا تمسح MP4/MKV/part/sidecars/DB أو حساب المستخدم، ولا تضف محرك نقل أو FFmpeg منافساً، ولا source bypass. التغييرات خلف feature flag ومع rollback compatible. سمّ الاختبارات بوضوح static/CI/ART/device. احتفظ بتوقيع APK/الحزمة والـRoom/FFmpeg. لا تسجل روابط موقعة أو بيانات حساب. طلب الهاتف فقط عند gate مهم مع diagnostics تغطي الصغائر تلقائياً.
