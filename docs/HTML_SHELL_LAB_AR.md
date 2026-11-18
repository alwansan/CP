# CP-DL — Unified HTML Shell Lab (جلسة 22)

## الهدف
تجميع ما سبق في نموذج واحد: التبويبات الخمسة بالترتيب RTL (الرئيسية، الأقسام، البحث المركزي، التحميلات، الحساب)، صفحات فرعية، تخصيص الشريط، حركة الملصقات والقوائم، وثلاثة أنماط لمتابعة المشاهدة.

## ما تم بناؤه
- docs/fixtures/html-shell-lab/{index.html,style.css,app.js,test-browser.cjs,README_AR.md}
- Home: hero، دوائر/اختيارات، متابعة مشاهدة مخفية إذا فارغة، أدراج ومجموعات.
- Categories: شبكة الأنواع وفلاتر سريعة.
- Search: بحث نصي وفصل أفلام/مسلسلات/الكل ونتائج empty.
- Downloads: عناصر ومجموعات، حالات download/convert/completed وتمثيل pause/resume.
- Account: صفحة محلية وصفحات مظهر وترجمة وتحميل ونسخ احتياطي وإشعارات ومعلومات.
- Appearance: Dark/Light/OLED، accent، شكل/حجم dock، glass، motion، card/wide/poster.
- Poster details/context menu, RTL, focus-visible, reduced-motion CSS, responsive shell.

## سلامة النموذج
كل المحتوى والعمليات بيانات وهمية معلّمة. لا bridge، لا DB، لا طلب شبكة، لا ملف مستخدم، لا native service، ولا تغيير في APK. localStorage للمظهر التجريبي فقط. لا تُستبدل واجهات HomeActivity/DownloadsActivity أو غيرها بهذا النموذج بعد.

## البوابة التالية
Chromium Playwright CI ثم مراجعة بصريّة للـartifact؛ إصلاح كل فشل؛ اختبار WebView على Android API35 (touch/back/IME/insets/rotation/process death/perf)؛ بعدها تعريف contracts وnative adapter لكل شاشة. يجب أن يبقى DownloaderService وQueue110 وMkvExporter/MkvReconciler وRestart108/RecoveryCapsule/Lease115 وLocalAccountStore مصادر الحقيقة. Durable ACK بعد commit native، لا قبل. حافظ على lifecycle/deep links/notifications/player/permissions/backup. لا تقلّص parity إلى نموذج الواجهة.

## known gaps
المحتوى الحقيقي، تفاصيل المواسم والحلقات، multi-select/range download، كل فلاتر المكتبة، إدارة القوائم، account edits/backup، subtitle preview، real queue and recovery states، native player/cast، localization EN، talkback/IME، حفظ scroll/filter، navigation state restoration، virtualized lists/performance، bridge security/CSP وWebViewAssetLoader كلها غير مربوطة بعد.