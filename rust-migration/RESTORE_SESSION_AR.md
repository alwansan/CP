# رسالة استعادة CP-RUST — 2026-11-23
اسم العميل CP-RUST. المستودع alwansan/CP وفرع الكتابة **experiment/rust-core-migration فقط**. المصدر feature/download-stability عند c68c0d80722765409f8544d499938a656217967b، للقراءة فقط. لا تعدّل main أو feature/download-stability أو Html أو feature/local-account أو CL. حافظ على بيانات user/signature/package/FFmpeg.
لا تخلط هذه الرسالة مع prompt/RESTORE_SESSION_AR.md الأصلي الخاص بـCP-DL.

## ابدأ مباشرة
1. تحقق من HEAD وGitHub Actions للفرع وHEAD المصدر الحيين.
2. اقرأ rust-migration/AGENTS.md وrust-migration/STATE.json وrust-migration/MEMORY_AR.md.
3. اقرأ rust-migration/PLAN_AR.md وrust-migration/ARCHITECTURE_AUDIT_AR.md وrust-migration/DECISIONS_AND_RISKS_AR.md وrust-migration/TEST_MATRIX_AR.md.
4. اقرأ أحدث rust-migration/sessions/2026-11-23-r1-planning-02.md ثم تقارير source: docs/DOWNLOAD_EXECUTION_DESIGN_AR.md وdocs/CP_DL_H68_CLOSURE_AR.md وdocs/CP_DL_B1B2_ART_HOTFIX_AR.md.
5. افحص Smali/Java/Manifest فعلياً قبل تعديل runtime. حدّث HEAD بعد كل commit.

## هدف المالك (مؤكد)
Rust: محرك تحميل الحلقات، إدارة مئات المهام والطوابير، threads/resources، resume بعد انقطاع، إدارة الملفات وحالة MKV، مع الإبقاء على FFmpeg الأصلي. أي UI/native Android features تبقى متوافقة؛ no data loss, no double downloading. تاريخ الانتهاء لا يُعتمد إلا على gates.

## ما أُنجز
- R0: نسخة branch مستقلة، rust-core in-memory task ledger و5 tests، ABI smoke C function.
- نجاح CI Linux 45110102602؛ نجاح CI Android ARM64 shared library 45110176247، artifact 14788429301؛ لا APK، ولا JNI/ART/Device proof.
- جلسة 2026-11-23 التخطيط: تدقيق معماري مستهدف، خطة R0–R7 كاملة، register للمخاطر والقرارات، test matrix T01–T20، AGENTS لانتظام التوثيق، MEMORY/STATE. لا تغييرات production downloader أو DB/FFmpeg. source branch unchanged عند آخر فحص.
- Baseline B1b3-12 H68 مقبول وظيفياً لكن E24/E26 sidecars وDB promotion وغيرها غير مغلقة. لا تقول كل المشاكل انحلت.

## الخطوة التالية الحقيقية R1
1. خريطة call graph ومسارات JNI/Java/Smali وملكية Room عبر main و:filedownloader.
2. ABI/JNI read-only probe + Android x86_64 وarm64 targets حسب test; package .so in isolated signed APK، verify symbol, exact ART load + BatchDownload dialog open.
3. لا تحويل لطلبات تنزيل حقيقية داخل Rust قبل durable ACK/schema mapping/shadow R2 وsingle owner.
4. إذا فشل CI، أصلح وكرر ولا تتجاوز ART أو signing. اطلب اختبار هاتف فقط عند milestone كبير مع logs diagnostics تلقائية.

## إلزام تحديث مستمر
عند كل نتيجة/فشل/قرار/اختبار: حدّث rust-migration/STATE.json، MEMORY_AR.md، PLAN_AR.md، DECISIONS_AND_RISKS_AR.md، هذه الرسالة، وسجل جلسة مستقل. تحقق من HEAD/Actions عند الانتهاء. لا تدّع تشغيل عمل في الخلفية لمجرد كتابة خطة.

## نقطة التقدم الإضافية — جلسة R1 JNI 03 (2026-11-23)
- تابع commit الكود 5488ce967886b21891c3a4c381e39579be85cc0d ومسار .github/workflows/rust-r1-jni.yml.
- مكتبة Rust تصدر رمز JNI version=1، Smali bridge معزول، وCI بنا المكتبات ARM64/x86_64 ثم حزم APK تشخيصي موقّع ونجحت فحوص DEX. Run 45112292108 / artifact 14790505739. لا يوجد Release.
- عند كتابة هذا التحديث، Android15 emulator ART ما زال in_progress؛ تحقق من نتيجة الخطوة وخذ logs قبل أي إعلان كامل. `scripts/cp_dl_art/run.sh ... --rust-jni` هو حارس ART.
- اقرأ rust-migration/R1_JNI_REPORT_AR.md وR2_STORAGE_CONTRACT_AR.md. الثانية تثبت Queue110.remember → save → Restart108.put (SharedPreferences commit per task) وBatchDownload native dispatch؛ لا تحسبه batch atomic ACK.
- أي تعديل لاحق يجب أن يحدث STATE/MEMORY/PLAN/هذه الرسالة وآخر سجل. التفعيل الفعلي لطابور Rust مؤجل إلى إثبات R2.

## نتيجة RUN نهائية — R1 JNI
تأكد بتاريخ 2026-11-23 من run https://github.com/alwansan/CP/actions/runs/45112292108: **COMPLETED / SUCCESS**. 
اختبار Android 15 isolated instrumentation من signed candidate أصدر:
`CPRUST_R1_JNI_PASS abi=1`
`CPDL_ART_PASS family=54 opens=2 refresh_paths=4 closes=2 backend=6 synthetic_slots=2 lease_duplicate_rejected=1`
`INSTRUMENTATION_CODE: -1`.
Artifact 14790505739 اسمه Cinemana-CP-Rust-R1-JNI-Diagnostic؛ diagnostic only لا release ولا يثبت تطبيق كامل/هاتف/تحميلات real.
الخطوة: استكمل owner mapping لقاعدة البيانات وBatchDownload native m وحضّر Rust durable batch tests synthetic، مع بقاء FileDownloader/FFmpeg/Room كما هي. أعد الفحص المباشر لـHEAD/Actions عند الاستئناف، وحدّث الملفات باستمرار.

## استعادة أحدث: R2 durable synthetic fixture — 2026-11-23
- code commit `1b712bb0c347eef4b68700c91a500f588e7759a9`: `rust-core/src/durable_fixture.rs` وTaskKey Ord؛ snapshot atomic rename/fsync وflock advisory single owner، exact-batch ID replay، corrupt fail-closed، حقن fault قبل/بعد rename، بدون dependencies.
- Run https://github.com/alwansan/CP/actions/runs/45113493256 **SUCCESS**: fmt/clippy، 14/14 tests، Linux library، ARM64 shared lib؛ 9 اختبارات R2 الجديدة. R1 signed APK ART run 45112292108 سابقاً PASS.
- هذا محرك mock Rust محلي فقط ولا توجد صلة بقاعدة بيانات المستخدم وJNI runtime أو FileDownloader/FFmpeg. اختبار real SIGKILL/Android process ownership لم يحدث بعد.
- تأكد من أحدث HEAD وCI قبل متابعة. اقرأ rust-migration/R2_DURABLE_FIXTURE_REPORT_AR.md وR2_STORAGE_CONTRACT_AR.md.
- الخطوة: trace owner/schema/Room وBatchDownload.submit، اختبار kill حقيقي، تصميم shadow-only JNI/DB integration، ثم production receipt gate. استمر بتحديث STATE/MEMORY/PLAN/RISKS/RESTORE/session بعد كل خطوة.

## آخر تقدم مؤكد R2 — Linux SIGKILL subprocess
- Killed actual child processes in synthetic fixture tests: rust-core/src/bin/r2_fixture_worker.rs + rust-migration/tests/test_sigkill.py.
- Run https://github.com/alwansan/CP/actions/runs/45113795022 **COMPLETED/SUCCESS**: 14/14 unit، fmt/clippy، Linux and arm64 .so، `CP_R2_SIGKILL_PASS before_commit=0 after_commit=500 lock_released=1 replay=1`.
- Code commit 40837af4e89a4c5463305885f488943022c03702. وثائق التخزين: R2_DURABLE_FIXTURE_REPORT_AR.md، R2_STORAGE_CONTRACT_AR.md.
- R1 signed candidate rebuilt SUCCESS في run 45113493277 بعد Rust module، لكن rerun جديد 45113795068 كان in_progress أثناء هذا التحديث؛ اقرأ نتيجة workflow عند الاستئناف.
- لا تعلن R2 production أو أي APK متكامل: لم يُربط Rust بRoom/Queue110، ولم يجر أي اختبار نقل حقيقي/هاتف. التالي owner mapping وshadow-only Android bridge، بلا تغير مستخدم.

## آخر ملاحظة schema R2 — 2026-11-23
- اقرأ rust-migration/R2_ROOM_SCHEMA_AUDIT_AR.md. فُحص DownloadsDatabase_Impl$a وDownloadsDatabase/DAOImpl/kz0 وut3 وDownloadActionsHandlerScope وNativeBatchScope.
- الجدول `Downloads` يملك PK `(task_id,external_id)` **لا batch_id**؛ لا تعِد استخدام snapshot fixture كDB المستخدم أو تكتب Rust مباشرة لـRoom.
- `BatchDownload.call(scope,"m")` يعبر NativeBatchScope -> DownloadActionsHandlerScope.m مع i44/FFmpeg plan/coroutine، وهو ليس commit ack.
- R2 Linux SIGKILL run 45113795022 SUCCESS، لكن Room/Android runtime غير مدمجين. التالي mapper للtask_id والـDAO وكيف يصل ACK إلى queue owner.

## إعادة تحقق R1 مع كود R2 الأخير — 2026-11-23
- `run 45113795068` **SUCCESS** على code SHA `40837af4e89a4c5463305885f488943022c03702`: Rust 14 tests، signed APK DEX، ART Android15 isolated.
- Log: `CPRUST_R1_JNI_PASS abi=1`؛ `CPDL_ART_PASS family=54 opens=2 refresh_paths=4 closes=2 backend=6 synthetic_slots=2 lease_duplicate_rejected=1`؛ `INSTRUMENTATION_CODE: -1`.
- Artifact 14791210489 `Cinemana-CP-Rust-R1-JNI-Diagnostic`؛ لا تثبت نسخة تشغيل كاملة أو هاتف أو actual download Rust.
- `run 45113795022` Rust Core SUCCESS: 14/14 + SIGKILL Linux + ARM64 .so.

## جلسة R2 Shadow JNI — 2026-11-23 (الأحدث)
- اقرأ `rust-migration/R2_SHADOW_JNI_REPORT_AR.md` و`rust-migration/sessions/2026-11-23-r2-shadow-jni-05.md`.
- Rust `shadow_audit.rs` و`jni_shadow.rs` + `RustAbiProbe.smali` صاروا يقبلون Arrays synthetic ID من Android ويحسبون counts جديدة/موجودة/مكررة بحدود صارمة؛ لا كتابة ولا تنزيل، لا إنتاج.
- CI 45115514740 **SUCCESS**: 19/19 tests، fmt/clippy، Linux SIGKILL، ARM64 library. Code SHA 4534e7dea2bb595e0036dbf789202c493fd08064.
- signed APK Android15 JNI ART run 45115514777 كان in_progress؛ **افحص نتيجته والـlog** قبل أي إعلان أو تفعيل. يجب أن يحتوي `CPRUST_R2_SHADOW_PASS selected=500 new=200 existing=200 duplicates=100 invalid_rejected=1 oversized_rejected=1`.
- source baseline feature/download-stability ممنوع تعديله. لا Room أو APP full startup أو real Rust downloading؛ استكمل تتبع owner وtask IDs بعد انتهاء فحص ART، ولا تطلب اختبار صاحب الهاتف لخطوة صغيرة.

## R2 Shadow JNI confirmed on Android 15 — 2026-11-23

GitHub Actions run 45115514777 completed SUCCESS on code SHA 4534e7dea2bb595e0036dbf789202c493fd08064. Signed APK DEX checks, ARM64 and x86_64 Rust native builds, and isolated x86_64 ART instrumentation passed. Artifact 14791611443 (Cinemana-CP-Rust-R1-JNI-Diagnostic).

Exact log markers:
- CPRUST_R2_SHADOW_PASS selected=500 new=200 existing=200 duplicates=100 invalid_rejected=1 oversized_rejected=1
- CPRUST_R1_JNI_PASS abi=1
- CPDL_ART_PASS family=54 opens=2 refresh_paths=4 closes=2 backend=6 synthetic_slots=2 lease_duplicate_rejected=1
- INSTRUMENTATION_CODE: -1

Rust host run 45115514740 also completed SUCCESS: 19/19 unit tests, Clippy, fmt, real Linux SIGKILL regression fixture, Linux/Android ARM64 builds.

SCOPE: Arrays are synthetic. Signed APK was loaded in isolated ART instrumentation, not as the installed Cinemana app on a phone. No production Room, Queue110, network/FFmpeg data flow, real durable ACK, or live downloader integration has been validated. Do not release as production.

## Room migration code inspection — 2026-11-23

The real APK Smali file app/smali/com/shabakaty/downloader/data/db/DownloadsDatabase_Impl.smali passes schema version 2 into DownloadsDatabase_Impl$a. The source file app/smali/com/shabakaty/downloader/data/db/a.smali is DownloadsDatabase_AutoMigration_1_2_Impl, explicitly mapping migration 1 to 2. It rebuilds _new_Downloads, copies existing columns via INSERT SELECT, drops the old table, renames, and restores the unique index on task_id + external_id. The Downloads table has no batch_id. Do not modify Room schema version 2 or this migration in the Rust diagnostic phase. Any real batch-header migration requires separate compatibility validation.
RESTORE NEXT: Map native task_id + external_id + stable episode source, Android service ownership and bounded passive-only event bridge; do not write/download from Rust.
