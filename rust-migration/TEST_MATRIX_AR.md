# مصفوفة اختبارات Rust Core والتكافؤ مع Cinemana Pro
تاريخ: 2026-11-23. نتائج الاختبار الأولي R0 فقط: 5 Rust tests/Linux/Android ARM64 library CI نجحت؛ لا APK JNI ولا اختبار هاتف جديد.

## بوابات الاختبار
| ID | الطبقة | السيناريو | المطلوب |
|---|---|---|---|
| T01 | Rust unit | batches 0،1،35،200،400،500 | لا فقد/تكرار في logical acceptance |
| T02 | Rust property/fuzz | duplicate IDs، malformed quality، generation overflow | stable identity/no panic/no runaway buffers |
| T03 | Rust + DB synthetic | crash بعد durable commit قبل ACK وبعده | no duplicate effect، reopen ledger correct |
| T04 | Rust scheduler | blocked head item، two batches، starvation | fairness bounded + retry with reason |
| T05 | network mock | HTTP 200/206/416/ETag mismatch/partial | bytes exact، no unsafe append |
| T06 | network mock | DNS/offline/timeouts/401/403/404/429/503 | bounded retry، re-resolve only authorized sources |
| T07 | JNI/ART | wrong ABI/version، null, duplicate callback، process teardown | no JNI crash/ANR/VerifyError |
| T08 | Android emulator | load exact signed APK، open BatchDownload/laterRefresh/close | ART ClassLoad & both callback paths succeed |
| T09 | Android ABI | ARM64 + x86_64 .so, symbol availability | match installed ABI; no load failure |
| T10 | storage | pause/cancel/delete, low disk, wrong permission | no data loss; persistent correct state |
| T11 | transfer/recovery | kill before/after MP4 receipt, reopen app | exactly-once logical task completion |
| T12 | MKV | MP4 + SRT/ASS/no subtitles, invalid subtitle, kill mux | valid final MKV, no premature removal |
| T13 | cross-process | two owners, Lease115, 3 MuxSlotsDL, forced kill | no extra mux owner or stale double convert |
| T14 | DB consistency | Room WAL, collision, repeated promotion, missing table | compatible ownership, no destructive migration |
| T15 | device stress | 400–500 episodes، 2 overlapping batch dispatch | no freezes, complete ACK counts, no starvation |
| T16 | device resources | idle/navigation/playback/download/MKV-only | PSS/RSS/threads/CPU/frame stats vs source workload |
| T17 | Android behavior | background, foreground service, open after system force-stop | observed states respect OS limits |
| T18 | functional parity | account, player, subtitle, notifications, all screens | unchanged features and data after update |
| T19 | install/rollback | same package/signature, upgrade with existing DB/media | no wipe/failed incompatible downgrade |
| T20 | media integrity | source/final proof/hash/path/stream and audit journals | verified media and DB match; no false DONE |

## كيف نجمع الأدلة؟
لكل test دوّن run_id, code_sha, APK checksum/cert, device/API/ABI, fixture/workload, start/end, PASS/FAIL/NOT_RUN, observed p50/p95, peak threads, RSS/PSS, DB lock/leak warnings, sidecar counts, sanitized logs coverage, blocker.
المستخدم يفضّل تقليل التجارب اليدوية: اجمع الحالات الصغيرة في CLog تلقائياً واطلب اختبار هاتف فقط عند واجهة أو سلوك كبير؛ محاكاة GitHub Actions قبلها.

## baseline لا تختلط مع تجربة Rust
- h68 الموثق في docs/CP_DL_H68_CLOSURE_AR.md: 35 accepted خلال 3.112s، 452 MKV/452 proofs، peak threads=249، sidecars E24/E26 لم تُحسم.
- هذه عينة تاريخية وليست حد أداء رسمي أو دليل تشغيل Rust.
- قبول المهمة في الذاكرة لا يساوي ACK دائم، وFFmpeg exit0 لا يساوي DB committed، ووجود MKV باسم معروف لا يثبت تشغيله.
- أهداف صحة التشغيل: صفر فقد غير مبرر، صفر نسخ مادية مكررة من core، صفر مسح ملف غير مؤكد، صفر regression ART مثبت، جميع الطلبات لها حالة دائمة.
- الأهداف الزمنية والأداء يجب تثبيتها بعد قياس جديد متكافئ؛ لا تُخترع أرقام تحسين.

## ربط بنظام CI
Rust fmt/clippy/test/property → Android ARM64/x86_64 build → JNI load → APKTool assemble+sign+verify DEX → Android15 ART smoke → device stress/parity → release guarded.
لا تتخطى ART بسبب نقص KVM، ولا تصدر APK تجريبياً كأن ميزاته مكتملة.

## دليل R1 المحدد — 2026-11-23
- T07 **جزئي PASS** لواجهة JNI الصحيحة فقط: JNI ABI=1 loaded from signed diagnostic candidate via Android15 x86_64 ART؛ wrong version/null/teardown لم تختبر بعد.
- T08 **جزئي PASS** لفحص الشاشة: 54 class families، 2 opens، 4 laterRefresh callback paths، 2 closes، 6 backend classes وshared slot tests. ليس اختبار full application install.
- T09 **جزئي PASS** لبناء ARM64/x86_64 packaging، وليس تحميل ARM64 على جهاز حقيقي.
- Artifact 14790505739، run 45112292108، `CPRUST_R1_JNI_PASS abi=1` و`INSTRUMENTATION_CODE: -1`.
- T10–T20 وكل ضغط التحميل/التحويل الحقيقي NOT_RUN لنسخة Rust الحالية.
