# CP-DL — نقاط الفصل الفعلية للواجهة القديمة (جلسة 20)
مراجعة static، ليست اختباراً تشغيلياً، من فرع Html المطابق لكود B1b3-12 قبل إضافة مختبر واجهة مستقل. رقم السطر للإصدار الحي عند بدء التدقيق؛ راجع عند تغير SHA.
## HomeActivity
- app/smali/com/shabakaty/cinemana/ui/home_activity/HomeActivity.smali: onCreate 1413–1688 يستدعي super ثم i1(Intent) وE1(Intent)، ينشئ vb وAsyncTask، يسجل OneSignal، يضيف global layout listener، يستدعي J0، ويفحص ConnectSDK/FAB. لا تستبدل onCreate بالكامل أو تخف layout القديمة مع افتراض أن بقية الأنشطة ستعمل تلقائياً.
- onNewIntent 1705+ يعيد i1/E1، setIntent وقراءة/تعديل selectedItemId وFragmentManager. نحتاج router adapter للإشعارات/deep links وتحديد semantics من كل method قبل التغيير.
- onResume 2026–2093 يستدعي UserManagement.isLoggedIn وLocalRuntime.profileResume عند 2090. onStart 2094+ يستدعي LocalRuntime.foreground عند 2100، يسجل j51.k؛ onStop 2112+ وonDestroy 1689+ يزيلان التسجيل j51.m. لا تعطيل لمسارات الحساب ودورة الحياة.
## فصل المحرك وليس نسخه
- CinemanaApplication.onCreate 529+: LocalRuntime.init عند 547، Restart108.bootstrap عند 1402؛ هاتان نقطتان مؤكدتان من التطبيق نفسه دون الحاجة إلى صفحة HTML، لكن لا تعنيان أن كل عمليات recovery مستقلة بعد.
- DownloaderService.onCreate 399+، onDestroy 492+، onStartCommand 540+ يستدعي superclass th2 ثم مسارات خدمة/عمل native. أبقِ الخدمة وملكية حالة التنزيل والـnotification.
- DownloadsActivity.onCreate 109–193 ينشئ NavController graph ويضبط toolbar، onResume 194–222 قد يستدعي recreate. استبدل presentation route واضمن state reconnection بدلاً من إعادة تحميل الملف كله.
- BatchDownload$Screen.enqueue(List,II) عند 702 يشارك refresh/toast/dialog.dismiss ويقرأ effective variant؛ lambda begin→enqueue عند 1383 وlambda enqueue→enqueue عند 1537؛ refresh 4911 ينادي notifyDataSetChanged. هذه نقطة فصل حرجة: استخرج نموذج اختيار وطلب دفعي مستقل عن dialog، ولا تستبدل الشاشة بزر JS يستدعي adapter القديم أو ينشئ طابوراً جديداً.
- Queue110 committed(Object,I) عند 493+ يقرأ ويكتب حالة عبر pref/encode/decode ويغير phase؛ submitted عند 4053. يجب فهم ACK الدائم بدقة وعدم الادعاء أن مجرد قبول واجهة يعني commit.
## خطة اختبار بوابات الانتقال
1. رسم call graph كامل i1/E1/J0 وsuperclasses، action handlers، profileResume/foreground، event bus، notification/deep link، batch dispatch ومنافذ الإلغاء/الاستئناف.
2. عقود read-only catalog/search/detail وqueue snapshot/delta بنماذج مستقرة، ثم commands وdurable ACK؛ لا expose URL مفتاح أو حساب أو أمراً عاماً.
3. WebView local origin + CSP + validation/main-frame، fallback native/feature flag، إعادة اتصال عند renderer recreation.
4. اختبارات parity لكل وظيفة وh68 backend regression، signed dex ART API35. لا تغيير runtime أو APK في هذه الدفعة؛ المختبر المستقل لا يثبت نجاح التطبيق.
