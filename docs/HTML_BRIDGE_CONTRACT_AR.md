# CP-DL — عقد واجهة HTML ↔ Android Native (جلسة 22)

> وثيقة تصميم وتحليل، وليست bridge منفذاً. لا يوجد حتى الآن Android WebView داخل APK ولا JS API متاح من HTML. كل endpoint أدناه مقترح إلى أن يربط بمصدر Native فعلي ويجتاز الاختبارات.

## 1) ما أثبته فحص الكود الحالي
- LocalRuntime.wrap(Object) يلف واجهة API الداخلية k9 عبر Proxy. ليست JavaScript bridge ولا WebView. عمليات الكتالوج/التفاصيل/الحلقات تستدعي الـremote API الأصلي مع capture/metadata hooks؛ بيانات الحساب الشخصية محلية.
- LocalRuntime operation mapping داخل Java: a=status؛ t/d=إضافة/إزالة قائمة؛ e=صفحات القوائم بحد 30؛ p=الاشتراكات؛ q=inbox؛ v/y=الاشتراك/إلغاؤه؛ C=تقييم محلي؛ l=معرّفات watched/highlight. الإعدادات I/j/m تقرأ إعدادات المستخدم/الرقابة/الترجمة. يجب عدم كشف هذه المفاتيح المبهمة إلى JavaScript؛ ابنِ facade typed مستقلاً.
- LocalAccountStore يصرح بأن كل الاستدعاءات على instance واحدة وserial executor واحد، ولا تستدعَ من UI thread. يحوي commit وbackup/export/import وقوائم محلية. لا تجعل JS/localStorage مصدراً للحقيقة.
- DownloaderService خدمة Native ذات دورة حياة مستقلة؛ أبقها. BatchDownload$Screen.enqueue(List,II) حلقة UI: effective variant، تحقق episode/model/existing، عدّ failures، refresh/toast/dismiss. لا يمكن أن تكون API مباشرة لـJS لأنها مربوطة بـScreen/Dialog.
- Queue110.submitted(task) يتحقق من manager/id/url، يسجل NATIVE_SUBMIT، يضيف live binding ويوقظ Restart108. لا تساوِ هذا وحده بقبول دائم أو اكتمال. Queue110.terminal يسجل TERMINAL؛ استدعاء committed مشروط بـDB_COMMITTED (أو COMPLETED لمهمة subtitle فقط). هذا الفصل أساسي لعقد ACK.
- Queue110.committed يسترجع request record ويقرأ task path/url/size، ويكتب إيصال done بعد فحصه؛ لا ترفع URL أو المسار إلى WebView.
- HomeActivity onCreate/onNewIntent/onResume/onStart/onStop/onDestroy يحتوي bootstrap وprofile/event/deep-link wiring. DownloadsActivity مستقلة حالياً. لا تستبدل HomeActivity أو service lifecycle قبل استخراج كامل التبعيات.
- فحص شجرة APK الحالية لم يعثر على androidx.webkit أو WebMessageListener أو @JavascriptInterface. build.sh يعيد تجميع Apktool smali فقط. helpers الحالية تُترجم بـjavac+D8 ثم smali، ولا يوجد Gradle wrapper. إضافة AndroidX WebKit تتطلب dependency pin + SHA verification + D8/dex placement + method-count/dex verification، لا مجرد import.

## 2) النقل الآمن المقترح
1. ملفات HTML/CSS/JS محلية داخل APK assets، origin HTTPS محلي ثابت عبر WebViewAssetLoader (https://appassets.androidplatform.net/assets/)، وليس file:// أو CDN.
2. WebViewClient يسمح فقط بالـorigin المحلي وملفات assets المعروفة؛ كل external link يخرج إلى المتصفح بعد scheme/host allowlist. CSP محلي مبدئي: default-src 'self'; img-src 'self' data:; style-src 'self'; script-src 'self'; connect-src 'none' إلى أن تحدد احتياجات API؛ لا inline eval أو remote scripts.
3. الخيار المفضل WebViewCompat.addWebMessageListener مع allowedOriginRules دقيقة، feature detection، وفحص isMainFrame == true وsourceOrigin في كل رسالة؛ API يحقن object في frames المطابقة لذلك لا يكفي origin وحده. لا تستخدم addJavascriptInterface العام كاختصار.
4. بديل API 23+ هو WebMessageChannel/WebMessagePort مع handshake محدود من main frame وtargetOrigin محدد. على API21–22 أو أي WebView لا يدعم الميزة: fallback إلى الواجهة Native، لا fallback إلى bridge غير مقيد.
5. WebView renderer recreation يعيد snapshot/subscribe فقط؛ لا يعيد تشغيل أمر سابق تلقائياً ولا يلغي DownloadService أو FFmpeg jobs.

## 3) Envelope v1 المقترح
طلب واحد:
    {"v":1,"id":"uuid","action":"catalog.search","args":{"query":"...","kind":"all","cursor":null}}
رد:
    {"v":1,"id":"uuid","ok":true,"status":"RESULT","revision":{"epoch":"...","value":12},"data":{}}
حدث Native:
    {"v":1,"event":"downloads.delta","epoch":"...","seq":44,"baseRevision":12,"revision":13,"data":{}}

- IDs فريدة، payload JSON محدود (اقتراح أولي 64 KiB)، allowlist للأفعال والحقول والأنواع، validation للـIDs والأرقام والنطاقات، rate limit، رفض unknown keys/actions، لا تنفيذ arbitrary reflection/class/method.
- ACCEPTED يعني أن Native أدخل الأمر في مساره وأعطى requestId، وليس COMMITTED. COMMITTED فقط بعد durable queue/database receipt. PROGRESS وTERMINAL وFAILED أحداث منفصلة. في batch: نتيجة لكل عنصر مع accepted/failed/duplicate/skip، ولا تخفِ partial failures.
- أوامر متكررة بنفس idempotency key لا تنشئ duplicate tasks؛ الأمر المكرر يعيد receipt الأصلي. JS لا يقرر retries تلقائياً لعمليات destructive.
- Snapshot يحمل epoch/revision. Delta يحمل seq/baseRevision؛ عند gap أو epoch change يطلب JS snapshot جديداً بدلاً من تطبيق تحديثات ناقصة. الأحداث تُجمّع 100–250ms مبدئياً ويُقاس أثرها.

## 4) Facade المقترحة (غير موصولة بعد)
| Action | المالك الأصلي / ما يجب التحقق منه |
|---|---|
| app.bootstrap | قراءة نسخة bridge وcapabilities والـlocale وحالة Native؛ لا ينشئ خدمة ثانية |
| home.snapshot | الكتالوج/الأدراج وcontinue من repository الحقيقي، paging |
| catalog.search/categories/detail/episodes | واجهة API الداخلية الحالية وmetadata capture، مع cancellation وstale request suppression |
| account.snapshot/list/mutate/profile | LocalRuntime/LocalAccountStore؛ typed enum بدل operation codes |
| settings.snapshot/update | SharedPreferences/LocalAccountStore، حفظ durable ACK |
| downloads.snapshot/subscribe | قراءة حقيقية من manager/DAO + Queue110؛ تعريف جميع الحالات ومصدرها أولاً |
| downloads.planBatch | validation/read-only plan؛ تحديد quality/episode/range/duplicates/size unknown |
| downloads.enqueueBatch | Native admission service مستخرجة من UI-coupled BatchDownload، لا استدعاء Screen.enqueue من JS |
| downloads.pause/resume/cancel/remove | mapping إلى API الأصلي لكل حالة؛ لا توحي نجاحاً قبل نتيجة Native |
| downloads.collections | اكتشاف DAO/owner والعمليات الفعلية قبل تحديد API |
| account.backup.export/import | Android Storage Access Framework؛ native streams/validation/staging؛ لا تسليم raw paths إلى JS |

## 5) قواعد التنفيذ والاختبار
- لا DB/HTTP/FFmpeg/zip/scan/recovery أو serialization ثقيل على main thread أو WebView renderer. JS يعرض snapshot/command response فقط.
- لا token/session/cookie/signed media URL/private file path/raw DB row في JS. لا تخزين account/queue في localStorage. localStorage مسموح فقط لتفضيلات شكل غير حساسة وبعد تعريف سياسة مزامنتها.
- تأكيدات destructive في UI؛ remove/clear لا تحذف تلقائياً بعد انتهاء animation. native transaction ثم ACK ثم delta.
- اختبار main-frame only، origin mismatch، iframe، oversized/malformed JSON، replay، duplicate id، seq gap، renderer kill، rotation، Activity stop/start، process death، offline، storage full، batch partial failure، three-slot cap، pause/cancel during MKV، h68 452-MKV regression وART/API35.
- fallback القديم يبقى متاحاً feature flag. لا إزالة layout/resources ولا تعديل الحساب المحلي أو Queue110/Restart108/MkvExporter/MkvReconciler/RecoveryCapsule/Lease115.

## 6) مراجع Android الرسمية
- WebViewAssetLoader/local HTTPS origin: https://developer.android.com/develop/ui/views/layout/webapps/load-local-content
- addWebMessageListener/origin allow rules: https://developer.android.com/reference/androidx/webkit/WebViewCompat
- bridge security and untrusted frames: https://developer.android.com/develop/ui/views/layout/webapps/native-api-access-jsbridge
- WebView JavaScript bridge security: https://developer.android.com/privacy-and-security/risks/insecure-webview-native-bridges


## خريطة التحميل Native التفصيلية
راجع docs/HTML_DOWNLOAD_NATIVE_MAP_AR.md للتفاصيل المثبتة من Download94$State وBatchDownload$Screen وQueue110.pause/terminal وRestart108.paused وDelete94/MkvCancel262. أهم نتيجة: pause يكتب PAUSE intent وUSER_PAUSED؛ الحذف يكتب ca1_delete_intent قبل إيقاف FileDownloader/FFmpeg، ثم Delete94 worker/journal. مسار resume والـDAO snapshot الكامل ما زالا غير محسومين. لا تعرض نجاح pause/delete قبل Native result.


## عميل البروتوكول JS (جلسة 23)
أضيف docs/fixtures/html-shell-lab/bridge-protocol.js وtest-bridge.cjs. هذه طبقة transport-independent غير موصولة بالـHTML أو Android. allowlist للأوامر والأحداث، idempotency keys للأوامر destructive، حد payload، رفض حقول token/cookie/session/path/url، correlation/timeout، event seq gap → resync-required، close يرفض pending. يجب أن يتحقق Native من exact origin وmain frame قبل إرسال أي رد/حدث؛ فحص JS ليس security boundary. CI سيشغّل unit tests قبل Chromium.


## تحقق عميل البروتوكول
run 44397753290 شغّل bridge-protocol.js + test-bridge.cjs ونجح بـ21 assertions. client transport-independent فقط؛ لم يتم ربطه في app.js أو Android. لا تستنتج من نجاحه وجود WebMessageListener أو native facade.


## Resume gap — لا تخمّن
المسار المثبت ey0.d = pause وey0.i = retry. yy0 auto retry يمر عبر Restart108.canRetry الذي يمنع |PAUSE/Queue110.isPaused ويتحقق من DAO/delete intent. Restart108.attach → wake scan. لا ResumeDownloadBR في Manifest. Dependencies112/Inputs114 resume خاص بترجمة/subtitle. راجع docs/HTML_DOWNLOAD_NATIVE_MAP_AR.md؛ generic video resume/clear PAUSE لم يثبت بعد، فلا تنشئ endpoint باسم resume أو تربط retry به.


## تحديث Resume candidate
Queue110.isPaused يقرأ request intent=PAUSE؛ Queue110.remember يكتب RUN/NATIVE_ADMITTED. Restart108.admitted يكتب external|RUN ثم Queue110.remember. ey0.l(manager,id) يعيد بناء composer ثم q(...,true) → dlStart(reuse) → Restart108.admitted. هذا مرشح ميكانيكي قوي لإعادة القبول بعد pause، لكن UI caller لم يثبت؛ لا تعرض endpoint resume قبل tracing caller والتحقق من عدم تكرار المهمة وACK.


## WorkManager recovery findings
CheckDownloadsStatusWorker is androidx.work.Worker; it scans downloadsRepo, detects stopped tasks, starts DownloaderService and rebuilds/restarts through ey0.n/q. jy0 attaches manager, calls Restart108.start, checks DAO rows and Restart108.canRestore before ey0.o/q. This is recovery, not a WebView action. Renderer reattach must subscribe only, never launch recovery again. See docs/HTML_DOWNLOAD_NATIVE_MAP_AR.md.


## Gap hardening (جلسة 24)
A delta requires initialized snapshot cursor (epoch, seq, revision). Duplicate/out-of-order older seq ignored. Missing seq, epoch change, wrong baseRevision or nonincreasing revision blocks stream until a matching snapshot reaches the highest observed seq. setCursor returns false for stale snapshots; a native adapter must re-fetch if false. RPC replies reject PROGRESS/TERMINAL and inconsistent ok/FAILED; progression is separate events. Incoming sensitive fields are rejected by key, not full data sanitization. Native origin/main-frame checks remain mandatory. No transport implemented.
