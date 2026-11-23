# R1 JNI integration session 03 — 2026-11-23
Source experiment/rust-core-migration؛ مرجع source feature/download-stability ثابت c68c0d80722765409f8544d499938a656217967b.
- أضيف JNI version symbol read-only إلى rust-core/src/lib.rs، وSmali handshake منفصل إلى rust-migration/android/RustAbiProbe.smali.
- وحدة اختبار Android15 ART الموجودة عُدلت اختيارياً --rust-jni لتسحب مكتبة .so من signed APK ذاته، وتثبت من C ABI=1 قبل نافذة BatchDownload ذات opens=2 / refresh_paths=4 / closes=2.
- workflow جديد rust-r1-jni.yml يحمّل Java dependencies pinned، يبني Rust ARM64+x86_64، يدخل .so وSmali probe إلى APK في CI فقط، يوقّع ويختبر DEX ثم يشغّل emulator ART strict. لم تُبدّل طبقة native download/Room/FFmpeg أو المصدر.
- Rust Core action 45112198686 SUCCESS بعد JNI export. R1 run 45112292108 نجح fmt/clippy/tests، cross-ABI، helper tests/assemble، sign/DEX ورفع artifact 14790505739. Android15 ART كانت in_progress عند هذا commit؛ **لا ادعاء نجاحها قبل الفحص النهائي**.
- تم فحص سلسلة Smali: BatchDownload$Screen.enqueue -> reflective BatchDownload.call m، Queue110.remember/save -> Restart108.put commit، وQueue110.scanBody -> MkvExporter.getDownloadsDao. مخطط R2 موجود في rust-migration/R2_STORAGE_CONTRACT_AR.md.
- لا حاجة لاختبار مستخدم للهاتف الآن؛ الهدف خفض التجارب الصغيرة مع تسجيلها في CI، وتجربة الجهاز عند milestone كبير.
- خطوة المتابعة: احصل على نتيجة run 45112292108؛ أصلح الفشل إن وجد، ثم سجل النتيجة وحدّث الملفات الخمسة قبل العمل المقبل.
