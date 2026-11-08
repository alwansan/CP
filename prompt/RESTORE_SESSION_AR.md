# رسالة استعادة جلسة Cinemana Pro — انسخها كاملة إلى محادثة جديدة

اسم المشروع: **Cinemana Pro / CP — استعادة المصدر وإصلاح الاستقرار**.

ابق في هذه المحادثة وأكمل العمل هنا. المستودع:
https://github.com/alwansan/CP

**فرع الكتابة الوحيد لهذا المسار:**
`experiment/rea-source-recovery`

لا تعدّل ولا تدمج `main` أو `feature/local-account` أو أي فرع آخر، ولا تُعدّل بيانات مستخدم حقيقية أو قواعد Room الإنتاجية بدون خطة حماية مثبتة وإذن المالك.

## المطلوب أولاً — استعادة العمل وليس التخمين
1. اقرأ التعليمات الحية:
   https://github.com/alwansan/CP/blob/experiment/rea-source-recovery/AGENTS.md
2. اقرأ ذاكرة المشروع:
   https://github.com/alwansan/CP/blob/experiment/rea-source-recovery/memory/MEMORY.md
   والحالة:
   https://github.com/alwansan/CP/blob/experiment/rea-source-recovery/memory/STATE.json
3. افحص أحدث ملف جلسة في:
   https://github.com/alwansan/CP/tree/experiment/rea-source-recovery/memory/sessions
   والتزم ببروتوكولها:
   https://github.com/alwansan/CP/blob/experiment/rea-source-recovery/prompt/SESSION_PROTOCOL_AR.md
4. اقرأ `recovery/README.md` و`recovery/reports/REMAINING_BLOCKERS_AR.md` وتقارير Room وMKV وSearch وREA المرتبطة بمسار العمل.
5. تحقق من HEAD الحالي، وسجل commits، وGitHub Actions المرتبطة بالـSHA **قبل** الاعتماد على نتيجة قديمة. لا تُعد نتائج المحاكي الفاشلة نجاحاً.
6. افحص مستودع سجلات المالك:
   https://github.com/alwansan/CL/tree/main/log
   https://github.com/alwansan/CL/tree/main/data
   https://github.com/alwansan/CL/tree/main/Clog
   واقرأ:
   https://github.com/alwansan/CP/blob/experiment/rea-source-recovery/docs/CL_LOG_SOURCES_AR.md
   قد تكون مجلدات data وClog غير مرفوعة بعد؛ `log/tree.txt` فهرس وليس السجلات الفعلية.

## آخر نقطة تسليم محفوظة عند إنشاء الرسالة — 9 نوفمبر 2026
- قبل إضافة وثائق الاستعادة، كان HEAD `21ac2a7c73b84bfb3122f413d5acc8ab15302941` (4 نوفمبر 2026).
- Java tests, Media3 bridge build, diagnostic smoke APK build: **نجحت**؛ emulator install/launch: **فشل** على SHA نفسه.
- معوقات استعادة المصدر: `MkvExporter.promoteDatabase`، `gk1` Data Binding، ومطابقة ترحيل Room مع JSON/DAO وJournal.
- APK التشخيصي ليس سينمانا الحقيقي؛ لا تدّع نجاح التطبيق أو انتهاء الإصلاحات بناءً عليه.
- هناك تاريخ إصلاحات في فروع أخرى للتنزيلات وMKV وملفات `.part` ومشغل High10 والبحث؛ **لا تفترض أنها مدمجة** أو أنها المشكلة الحالية إلا بعد فحص المالك والسجلات.
- الجولة السابقة أسست التوثيق فقط، ولم تُعدّل سلوك التطبيق ولم تنفذ بناء جديد.

## بعد الاستعادة
أنشئ `session_id` جديداً وملف جلسة مستقل تحت `memory/sessions/`، وسجّل `origin=chat` وHEAD وأهداف هذه الجولة وما تم إثباته. إذا كانت المشكلة الجديدة لم تُوصف بعد، استوعب المستودع واستعد للتحقيق دون تخمين إصلاح أو تشغيل أعمال مدمرة.

**توجيه المالك لهذه المرحلة:** سأصف لك المشكلة الحالية وأرفع السجلات لاحقاً. عندما أفعل، راجع أحدث الأدلة أولاً، وحدّد السبب الأقرب باختبارات صغيرة آمنة، ثم أصلح على فرع العمل فقط، وحدّث ملفات الذاكرة والاستعادة وسجل الجلسة بكل تقدم.

أجب باللغة العربية الواضحة، وميّز بين الحقائق الموثقة والفرضيات.
