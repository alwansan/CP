# CP-DL — خريطة عمليات التحميل Native للـHTML (جلسة 22)

هذه مراجعة static من فرع Html؛ لا توجد bridge endpoints منفذة. أسماء الدوال ونتائجها موصوفة كما ظهرت في smali الحالي. لا تفترض أن ظهور method يعني أنه API عام صالح للاستدعاء من WebView.

## 1) اختيار الحلقات والدفعات
- DownloadsActivity تبني NavController/toolbar وViewPager2/TabLayout؛ الشاشة ليست مجرد list واحدة.
- Download94$State واجهة اختيار متقدمة فوق التنزيلات: begin/end، items، eligible، inSeason، works/loadWorkNames، range، selectAll102، selectAt، handle/intercept(MotionEvent)، confirm. هذا overlay لإدارة التحديد والنطاق والسحب، وليس manager للتحميل.
- BatchDownload$Screen يحوي episodes/selection/variants/metadata/sizes executors وenqueue(List,int,int). enqueue يتأكد أن الشاشة ليست closed، يحسب effective variant، يتخطى existing، يرفض بيانات الحلقة الناقصة، ويسجل accepted وenqueueFailures ويعمل refresh/toast/dismiss. التنفيذ مربوط بـScreen وDialog؛ لا يجوز استدعاؤه من JS ولا إرجاع "success" بمجرد وصول الرسالة.
- واجهة HTML يجب أن ترسل BatchPlan typed إلى Native: stable episode IDs + quality choice + exclusions + selection scope. Native يعيد plan/result لكل عنصر. يلزم فصل admission service من UI قبل ربطها.

## 2) حالة الطابور والتأكيد
- Queue110.pause(taskId): تحت synchronized lock يقرأ request:<id>، يغير intent إلى PAUSE ويحفظ request record عبر save، ثم يسجل USER_PAUSED. هذا journal state وليس مجرد تغيير لون زر.
- Restart108.paused(manager,taskId): يستدعي Queue110.pause ويحدّث restart prefs بمؤشر |PAUSE. لا تجعل JS يكتب SharedPreferences أو يقرر أن pause اكتمل.
- Queue110.submitted(task): يتحقق من manager/task id/URL، يضع المهمة في live map، يسجل NATIVE_SUBMIT، ينفذ bind ويوقظ Restart108. هذه مرحلة إرسال/إعادة ربط، وليست durable completion.
- Queue110.terminal(task,result): يسجل TERMINAL_* ويزيل نفس task object من live map. يستدعي committed فقط عند DB_COMMITTED، أو COMPLETED لمهمة subtitle فقط (وهو إيصال نقل subtitle لا اكتمال فيديو).
- Queue110.committed(task,id): يسترجع request:<id>، يقرأ path/url/large-file size من Native task، ثم يتحقق من receipt/file metadata ويكتب done record. لا تعرض path أو URL أو signed URL على JavaScript.
- لذلك API response يجب أن يميز ACCEPTED وPAUSED_REQUESTED/PAUSED_CONFIRMED وDB_COMMITTED وTERMINAL/FAILED. لا توجد في الواجهة الحالية proof أن PAUSED_REQUESTED يساوي توقف النقل فعلياً؛ نحتاج state callback/DAO snapshot.

## 3) الحذف والإلغاء الآمن
- Delete94.delete يأخذ MkvExporter.JOB_LOCK، يتحقق من ACTIVE_JOB_KEYS، يقرأ DB عبر readCombinedById، يقارن المسار مع الملف المتوقع ويتحقق من candidate قبل متابعة الحذف. عند اختلاف المسار يمر بفحوص MkvCancel262.
- MkvCancel262.prepareDelete يكتب ca1_delete_intent باستخدام SharedPreferences.commit قبل الإلغاء. عند وجود task id نشط يستدعي FileDownloader.pause، ويتعامل مع عملية MKV عبر ownership maps/worker registration. هذا intent ضروري لمنع إفساد ملف التحويل.
- Delete94.run يقبل قائمة، يصنع Snapshot لكل عنصر، ويشغل worker واحداً مع Result callback. عند busy يؤجل نتيجة/محاولة بدلاً من تنفيذ حذف متزامن.
- Delete94.reenqueue لا يزيل delete intent إذا كان ca1_delete_journal لا يزال يحتوي على السجل؛ يرفض حتى تنتهي عملية الحذف. لا تسمح للـUI بتكرار delete أو reenqueue دون native result.
- الواجهة لا تملك raw file path. ترسل opaque item id، وNative يقرر إن كان الحذف مسموحاً وما إذا كان الملف قيد التحويل أو الاسترداد.

## 4) ما لم يُحسم بعد
- المسار الكامل لزر Resume من UI إلى Restart108.start/wake وإزالة PAUSE marker لم يكتمل رسمه؛ لا تنشئ resume endpoint حتى نقرأ جميع callers ونتائج manager.
- DAO snapshot النهائي لحالات التنزيل والمجموعات والترتيب/الحجم غير معروف بالكامل بعد.
- Delete94 يغطي مسار حذف خاصاً مع recovery journal، لكن لا يثبت وحده تغطية كل أنواع الحذف/المجموعات.
- queue admission العام من دون BatchDownload$Screen غير مستخرج بعد.
- لا نعرف بعد هل توجد callbacks Native موحدة يمكن أن تعطي sequence/revision delta؛ يلزم تصميم observer دون polling كثيف.

## 5) خطة facade قبل bridge
1. Extract pure batch planner/validator من Download94$State وBatchDownload$Screen؛ لا Android View/Toast/Adapter/Dialog في الطبقة.
2. Extract Native DownloadCommandService على executor مع idempotency وper-item result؛ لا يغير semantics الحالية.
3. Define DownloadSnapshot من DAO + Queue110 + Restart108 + MkvExporter/MkvReconciler مع state precedence موثقة، خصوصاً converting/deleting/recovering/DB_COMMITTED.
4. Implement pause/resume/cancel/remove through exact Native call graph; durable ACK and state callback only.
5. Run existing h68 tests and 452 MKV + 3 workers + force-stop recovery; verify no duplicates/loss and no orphaned delete intents.
6. Only then expose allowlisted typed actions through WebMessageListener and test renderer death/reattach.

## Sources inside repo
- Cinemana_PATCH252_Project/app/smali/com/shabakaty/cinemana/ui/downloads/DownloadsActivity.smali
- Cinemana_PATCH252_Project/app/smali_classes6/com/shabakaty/cinemana/ca1/Download94$State.smali
- Cinemana_PATCH252_Project/app/smali_classes6/com/shabakaty/cinemana/ca1/BatchDownload$Screen.smali
- Cinemana_PATCH252_Project/app/smali_classes6/com/shabakaty/cinemana/ca1/Queue110.smali
- Cinemana_PATCH252_Project/app/smali_classes6/com/shabakaty/cinemana/ca1/Restart108.smali
- Cinemana_PATCH252_Project/app/smali_classes6/com/shabakaty/cinemana/ca1/Delete94.smali
- Cinemana_PATCH252_Project/app/smali_classes6/com/shabakaty/cinemana/ca1/MkvCancel262.smali


## نتيجة تعميق التتبع
المسار الذي تأكد الآن: ey0.d(taskId) = pause، ويستدعي Restart108.paused ثم Queue110.pause ويوقف FileDownloader؛ ey0.i(taskId) = retry، يمر عبر ExpiredLink269 ثم DAO readDownloadsByTaskId ويعيد بناء composer. DownloaderService coroutine yy0 تجمع download repository وتنفذ Restart108.canRetry قبل retry. canRetry يمنع |PAUSE وQueue110.isPaused ويتطلب DB row وعدم delete intent. Restart108.attach يربط manager/context ثم wake scan/recovery. لا يوجد ResumeDownloadBR في Manifest. Dependencies112/Inputs114 فيها resume خاص باعتماد subtitle فقط. لم نثبت بعد clear PAUSE + resume UI caller؛ لا API resume.


## 7) مرشح إزالة PAUSE وإعادة القبول
- Queue110.isPaused(taskId) يقرأ request:<id> ويتحقق أن intent == PAUSE. Queue110.remember(task,manager) يكتب request جديداً intent=RUN وphase=NATIVE_ADMITTED، لذلك يعيد المهمة إلى حالة admitted ويزيل paused bit من سجل Queue110.
- Restart108.admitted(manager,composer) يكتب intent:<id> = external|RUN في restart prefs ثم يستدعي Queue110.remember. وهذا يزيل suffix |PAUSE الذي يمنع canRetry.
- ey0.l(manager,taskId) يعثر على composer الحي، يعيد بناءه من URL/filename/metadata، ثم يستدعي q(composer,true). q يصل إلى dlStart مع reuse=true، وdlStart يمر عبر Restart108.admitted قبل إعادة استخدام DownloadTask. ميكانيكياً هذا مرشح قوي لمسار إعادة القبول بعد pause، لكنه لا يثبت وحده أن زر Resume في واجهة المستخدم يستدعيه؛ لم نعثر بعد على caller UI موثوق له.
- لذلك صنّفناه Resume/Re-admit candidate فقط. قبل API: تتبع caller، تحقق من حالة task/bytes/file، ومنع duplicate start، وتأكد من ACK بعد Queue110.remember + FileDownloader state. لا تستدع ey0.l من JS مباشرة.


## 8) WorkManager / force-stop recovery
- CheckDownloadsStatusWorker extends androidx.work.Worker. Its logs include starting check downloads worker, no active downloads, found active downloads/starting service, stopped downloads found, updating stopped downloads. It reads downloadsRepo and composersMap, reconstructs composer with ey0.n, and calls ey0.q. This is background stopped-task reconciliation, not UI navigation.
- jy0 is the downloader-manager attach/restore coroutine: it calls Restart108.start(manager), checks DB has download items, then Restart108.canRestore(manager,row) before rebuilding/reusing a DownloadTask through ey0.o + ey0.q. Thus restore is explicitly gated by pause/delete intent and DAO evidence.
- ey0$e is a startDownload wrapper that creates a Composer via ey0.c and calls q; treat as admission/start path, not a public API until its callers and validation are mapped.
- These findings reinforce: WorkManager/DownloaderService own recovery; WebView only subscribes to snapshots/events. Renderer recreation must not start another worker or restart a download.


## 9) Concrete DAO/transport facts and isolated model
xc4 enum contains PENDING/STARTED/PROGRESS/RETRY/ERROR/PAUSED/COMPLETED/WARN/UNKNOWN and pw0.z carries it. ey0.f -> ey0$f -> uz0.a -> kz0.b for list; ey0$k reads uz0.e(taskId), reconstructs via ey0.m/q, updates uz0.i(pw0); ey0$l reads uz0.e for subscribing/callback. DownloadStore263.appDao and combined/readCombinedById provide app identity; CinemanaDownloadItem fields include id, downloadTaskId, collectionID, title, qualityName, sizeMB and path (never expose path). Actual coherent snapshot and resume caller unproven. See docs/HTML_NATIVE_MODEL_AR.md.


## جلسة 25 — bounded DAO candidate
راجع docs/HTML_BOUNDED_DAO_AR.md وmemory/sessions/2026-11-19_cp-dl-bounded-dao-25.md. أضيف BoundedDownloadRead وExistingDaoSource (isolated, 64 item cap, A→transport→A, 192 point reads worst case; no full scan, no writes, no ACK, no playback proof). Existing helper descriptors verified statically; actual Android/Room execution not tested. CI pending; static resume caller scan added, not yet a verified UI caller. Next: verify CI and callers, proof/journal readers and typed admission. Html only; no APK or old UI changes.


## جلسة 25 — CI verified + resume candidate narrowed
Code 61cbaac4f3c8f86dc659d0b388829fe6cb2c1c77, run https://github.com/alwansan/CP/actions/runs/44425947999 SUCCESS (8366 existing model +26 bounded read assertions; source scanner 2 exact invoke callers). Both callers of ey0.l are missing-DB-row fallbacks: ey0$i (DownloadManager$pauseInDatabase$1, enclosing ey0.p) line424 calls l then d(pause); ey0$k (DownloadManager$retryDownload$1, enclosing ey0.i) line353 calls l only when no DAO row. This refutes interpreting l as a direct dedicated UI resume path. Do not expose l or retry as resume; next trace actual screen action callers of d/i and whether retry explicitly clears PAUSE for existing rows, then verify journals and ownership. Bounded adapter JVM/fixtures only, not Android Room or globally consistent snapshot; no proof of media/ACK/real device, no APK or runtime changes. CL unchanged. Future work: native evidence/journal read mapping and typed admission before bridge.


## جلسة 26 — native evidence gate
راجع docs/HTML_NATIVE_EVIDENCE_AR.md وmemory/sessions/2026-11-19_cp-dl-native-evidence-26.md. NativeEvidenceGate + ExistingControlSource isolated. Actual control descriptors audited; local prefs/active owner are hints only (authoritative=false), no READY from them. Epoch/path/quality/receipt/DB and changing controls checked; unknown fails closed. Final100 only bytes+EBML, Commit105.isPromoted transfer row not full proof. CI pending; scan proof writer/readers and d/i callers then implement bounded authoritative producer; no runtime/APK/device/real DB/ACK. Html only.


## جلسة 26 — verified CI and exact proof format
Code 18894a719ab5a799ab9d6c84a127966d75d5caef; run https://github.com/alwansan/CP/actions/runs/44427230592 SUCCESS (8366 +26 +4405 = 12797 synthetic assertions). Scanner: StorageMaintenance152 is .path writer/reader, EpisodeSidecarCleanup retires proof on delete. Read exact methods: ROOT=/storage/emulated/0/Cinemana, PROOFS=work/data/mkv-proofs; safeToken strips [cnm- and ] then removes non ASCII alnum/_/-; writeProof validates final root (outside work/legacy), .mkv and size>1024, writes canonical path newline + timestamp newline via tmp rename/copy. readProof reads first line, resolveFinalMkv then validFinalMkv; it may scan and is not sufficient evidence of identity, size, epoch or playable bytes. recordSuccess derives marker from first input file with marker then writes proof and schedules scanSoon; importLegacyProofs can import log records; no direct call from bridge. Design next bounded exact token file read with strict token validation (no lossy normalization), path equality to current verified DB, max bytes, reject changed/truncated record, no scan, and treat as hint only. ProofCameFromLog scans directories; avoid per item. Scanner direct invokes d: iy0 pauseAll, ey0$i fallback, PauseDownloadBR; i: yy0 automatic retry. No direct UI resume proven; may be interface/reflection caller, trace before action. ExistingControlSource stays non-authoritative; Android proof producer, real Room/IPC consistency, recovery zero-task and transport conflict policy remain open. No APK, runtime or data modification. Next: implement bounded path hint, actual evidence producer + typed native admission; preserve old UI and ART gates.
