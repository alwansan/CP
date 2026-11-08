# Cinemana Pro — فرع استعادة المصدر

**الفرع:** `experiment/rea-source-recovery` (تجارب معزولة عن `main` و`feature/local-account`).

هذا المستودع يضم المشروع المفكك القابل لإعادة التجميع باستخدام APKTool، إضافة إلى مساحة تدريجية لاستعادة Java وتطوير وحدات Android/Gradle واختبارات التشخيص. **هذه المساحة ليست بعد نسخة Cinemana Pro كاملة مستعادة من المصدر.**

## ابدأ من هنا
- [تعليمات العمل للعوامل والجلسات](AGENTS.md)
- [رسالة استعادة الجلسة — قابلة للنسخ](prompt/RESTORE_SESSION_AR.md)
- [بروتوكول العمل والتسليم](prompt/SESSION_PROTOCOL_AR.md)
- [ذاكرة المشروع وحالته](memory/MEMORY.md) · [الحالة المختصرة](memory/STATE.json) · [جلسات العمل](memory/sessions/)
- [خريطة سجلات CL](docs/CL_LOG_SOURCES_AR.md)
- [مشروع APKTool الأساسي](Cinemana_PATCH252_Project/README_AR.md)
- [استعادة المصدر](recovery/README.md) · [الجاهزية التقنية](recovery/REA_READINESS_AR.md)
- [المشاكل المتبقية](recovery/reports/REMAINING_BLOCKERS_AR.md) · [مخطط Room](recovery/reports/ROOM_MIGRATION_GRAPH_AR.md)
- [مشروع Gradle التجريبي](recovery/modernized/GRADLE_MIGRATION_AR.md)
- [GitHub Actions](https://github.com/alwansan/CP/actions)

## مهم
الاختبارات الناجحة لوحدات Java أو APK تشخيصي ليست دليلاً على أن التطبيق الأصلي يعمل بالكامل. سجلات الهاتف المطلوبة موجودة أو ستُرفع إلى [CL](https://github.com/alwansan/CL)؛ تحقق من وجود الملفات الفعلية، ولا تفترض أن فهرس `tree.txt` يحتويها. سجّل كل نتيجة جديدة ورابط البناء وSHA قبل إعلان أي إصلاح.
