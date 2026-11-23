# CP-RUST R2 composite worker session 06 — 2026-11-23

## فعلياً
- code commits: 916dd04713d6f564be0ae0a552c5b887a4d8e843 (pure composite events + Java worker); d1d54842db3ac559b18c50449a0c1a71c38708e8 (typed JNI and CI staging); 3044cb9bc0c09e9b18434d2e921c3b6dc2aefb57 (ART compound + queue saturation); 3ed0c052694f04fe52172435a6474053cc238f2e (rustfmt fix).
- Source read-only: Queue110.remember -> save -> Restart108.put; DownloadsDatabase_Impl$a composite PK(task_id,external_id), DAO lz0 WHERE partial selectors. No hook into user app or actual DB.
- Rust Core run 45117076600 completed SUCCESS: 24/24 tests, lint/format, Linux real SIGKILL, ARM64 library.
- Signed APK ART run 45117076689 was in progress at checkpoint; must verify final job and marker:
  CPRUST_R2_EVENTS_PASS selected=500 first=300 mirrored=100 repeated=50 stale=50 advanced=0 async=1 saturated=1 invalid_rejected=1
- No phone tests requested, preserving user's preference for fewer major-gate trials.
- Next: inspect ART, repair any failure; only then consider disabled-by-default passive source hook with no modifications to Queue110/Room semantics.

## النتيجة النهائية المؤكدة من سجلات GitHub Actions
- **Rust Core run 45117076600: SUCCESS** — cargo fmt/clippy و **24/24 Rust tests**، real SIGKILL Linux، ARM64 shared library.
- **Android diagnostic signed APK run 45117076689: SUCCESS** — جرى تجميع ARM64 وx86_64 .so، توليد classes11 Java/Smali، التوقيع وDEX verification، وAndroid15 ART فحص من APK الموقع نفسه. Artifact ID **14792057535**، `Cinemana-CP-Rust-R1-JNI-Diagnostic`، حجمه zipped **47780005 bytes**؛ diagnostic not release.
- `CPRUST_R2_EVENTS_PASS selected=500 first=300 mirrored=100 repeated=50 stale=50 advanced=0 async=1 saturated=1 invalid_rejected=1`
- `CPRUST_R2_SHADOW_PASS selected=500 new=200 existing=200 duplicates=100 invalid_rejected=1 oversized_rejected=1`
- `CPRUST_R1_JNI_PASS abi=1`
- `CPDL_ART_PASS family=54 opens=2 refresh_paths=4 closes=2 backend=6 synthetic_slots=2 lease_duplicate_rejected=1`
- `INSTRUMENTATION_CODE: -1`
- اختُبرت Java worker off-main وqueue bounded=16 وrejectedCount=1 مع deep-cloning قبل الطلب؛ نجاح هذه الأدوات التشخيصية لا يساوي تحمل queue الإنتاجية أو ضمان عدم فقد طلبات المستخدم.

**حدود الإثبات**: ART في isolated instrumentation على x86_64. لا إطلاق كامل لـCinemana على جهاز مالك، لا قراءة/كتابة DB للمستخدم، لا تنزيل/تحويل MKV على Rust، لا إثبات أن الأرقام الاصطناعية تعكس العمليات الحية.
