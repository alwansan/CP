# تنفيذ R1: Rust JNI داخل APK تشخيصي — 2026-11-23

## الحالة الحالية
تمت إضافة كود حقيقي وإجراء تجميع وتوقيع وفحص بنية؛ اختبار تشغيل Android 15 ART قيد التنفيذ عند تدوين السطر. لا يعتبر ذلك تشغيل محرك التنزيل بواسطة Rust.

- Commit الكود الذي يُختبر: 5488ce967886b21891c3a4c381e39579be85cc0d.
- CI: https://github.com/alwansan/CP/actions/runs/45112292108
- APK تشخيصي موقّع داخل artifact **Cinemana-CP-Rust-R1-JNI-Diagnostic** (id 14790505739). هذا ليس Release ولا نسخة تحديث موصى بها.
- Rust fmt, Clippy، 5 unit tests، ARM64/x86_64 shared-lib cross-build، helper tests، APKTool assemble، DEX، zipalign وapksigner verify نجحت. لا تقطع حسم ART إلا من job النهائي.

## مواضع الكود
- rust-core/src/lib.rs: دالة `Java_com_shabakaty_cinemana_local_RustAbiProbe_nativeVersion` تعيد قيمة ABI 1 فقط. لا تلمس JNIEnv pointers، ولا network/storage/threads.
- rust-migration/android/RustAbiProbe.smali: method `version()I` تقوم `System.loadLibrary("cp_rust_core")` ثم `nativeVersion()I`. ليست مستدعاة من أي screen أو service أو Application في البناء الحالي.
- rust-migration/android/verify_candidate.py: يفحص lib/arm64-v8a وlib/x86_64 داخل APK signed كـELF64، ووجود classes11.dex وSmali descriptor، وعدم وجود hook في Queue110/Restart108/Application.
- scripts/cp_dl_art/Probe.java مع run.sh: marker اختياري --rust-jni؛ يقرأ `lib/x86_64/libcp_rust_core.so` من *APK نفسه الموقّع* ويستخرجه إلى مساحة instrumentation معزولة، ثم DexClassLoader nativeLibrarySearchPath وreflection للتحقق version==1؛ بعدها يحافظ على اختبار BatchDownload الأصلي (opens=2/refresh_paths=4/closes=2).
- .github/workflows/rust-r1-jni.yml: job منفصل، read-only permissions، لا ينشر Release، ولا يغيّر workflow المصدر؛ يحزم probe Smali في classes11 بعد توليد Java helpers فقط (لان build.py يمسح classes11)، ويحقن .so في مجلدات ABI أثناء CI، لا يغيّر source branch.

## الحدود
- اختبار ART المعزول يقوم بتشغيل فئات من APK داخل أداة اختبار، **لا يثبّت Cinemana كاملاً ولا يختبر تشغيل التنزيلات الحية أو خدمة :filedownloader أو ROM على جهاز المالك**.
- Rust in-memory ledger موجود لكن لا ينتقل عبر JNI هنا؛ هذا handshake version فقط، لا storage، لا pool، لا MKV.
- حارس ART الصارم يمنع اعتبار artifact ذا نتيجة نهائية إن فشل التشغيل، ولا يسمح بنشر نسخة تحديث للمستخدم.
- تحدد نتيجة ART وعملية اختبار Android على الهاتف عند milestone أكبر قبل فتح R2. إن فشل test، سجل السبب/أصلحه/أعد البناء، ولا تكتف بتجميع.
