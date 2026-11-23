# Cinemana Pro — تجربة Rust Core
التأسيس بتاريخ 2026-11-23. فرع العمل الوحيد: experiment/rust-core-migration، مشتق مباشرة من feature/download-stability عند c68c0d80722765409f8544d499938a656217967b. لا تعدل الأساس أو main أو فرع Html.
الفرع الأصلي APKTool/Smali مع Java helpers ومكتبات Android قائمة. Rust هنا تجربة جديدة منفصلة، وليس ترجمة تلقائية للتطبيق أو APK جديداً.

## ماذا نملك الآن؟
- rust-core: وحدة Rust قياسية بلا اعتماديات خارجية؛ نمذجة هوية مهمة ثابتة، استقبال الدفعات idempotent في الذاكرة، كشف إعادة استعمال batch ID بشكل متضارب، أجيال callbacks، ورفض القفز فوق حالات التحقق.
- CI مستقل لفحص التنسيق وClippy واختبارات Rust وبناء مكتبة Linux.
- رمز C ABI للفحص فقط؛ لم تربط المكتبة بواجهة Android أو Smali بعد، ولا تتعامل مع أي شبكة أو قاعدة بيانات أو ملفات أو FFmpeg.
- لا تعتبر قبول الدفعة في الذاكرة durable acknowledgment. الديمومة وإدارة العمليات بين Android processes تحتاج تصميم ومعاملة تخزين واختبار.

## المقاربة المعتمدة
ابقِ التطبيق العامل والواجهة وAndroid services والإشعارات والمشغل والحسابات وRoom وFFmpeg كما هي حتى ظهور دليل تكافؤ وظيفي. انقل منطق استقبال دفعات التحميل وتنظيم العمل والاسترداد تدريجياً باستخدام Rust، لكن لا تنشئ محرك تنزيل أو تحويل منافس للمحرك الأصلي. تجنب أي تنظيف للملفات الأصلية أو تغيير للـ database schema بدون migrations واختبارات.
JNI (Rust .so + Android layer) مسار الدمج اللاحق؛ يسبق ذلك بناء ARM64 وتجربة smoketest للـ ABI وعزل العمل عن main thread.
المعيار: تنزيل 400+ حلقة، قبول دفعات متكررة، استئناف بعد process death، اكتمال MKV، العمل بالخلفية، أداء الواجهة، الحساب والمشغل والترجمات، وعدم خسارة المستخدم لبياناته.
مصادر Android NDK: https://developer.android.com/ndk/guides وRust cargo-ndk: https://docs.rs/crate/cargo-ndk/latest .
