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

## نتائج CI
- 44393863885: فشل syntax أولي بسبب قوس زائد في bindLongPress؛ أصلحناه.
- 44394027250: SUCCESS، 34 Chromium assertions، artifact screenshot.
- 44394539721: regression يضيف header actions وcategory filters، pending عند آخر قراءة؛ لا تدّع PASS قبل النتيجة.
- app.js آخر تعديل يجعل no-motion scrolling behavior=auto ويحتاج run لاحقاً.
- bridge contract في docs/HTML_BRIDGE_CONTRACT_AR.md؛ لا Android bridge بعد.


## عميل البروتوكول JS (جلسة 23)
أضيف docs/fixtures/html-shell-lab/bridge-protocol.js وtest-bridge.cjs. هذه طبقة transport-independent غير موصولة بالـHTML أو Android. allowlist للأوامر والأحداث، idempotency keys للأوامر destructive، حد payload، رفض حقول token/cookie/session/path/url، correlation/timeout، event seq gap → resync-required، close يرفض pending. يجب أن يتحقق Native من exact origin وmain frame قبل إرسال أي رد/حدث؛ فحص JS ليس security boundary. CI سيشغّل unit tests قبل Chromium.


## Regression 44396266955
Browser regression reached the long-press/context-menu phase but test attempted to find Continue cards after navigating to Account. This was a test-order bug, not an application route bug. Test now returns to Home before removing all three Continue items; rerun with bridge protocol unit checks pending.


## CI 44397348530
Protocol unit checks and JS syntax all passed. Chromium browser install passed, but test runner failed at require('playwright') because the cache optimization had omitted npm package installation. Workflow now restores explicit pinned npm install before Chromium cache/install; shell test route fix is included in commit a80331d.


## نتيجة الاختبار النهائي للدفعة
run 44397753290 SUCCESS على HEAD e3b00bce2debdb0f5c7c4eb44888e4e6b803514d. CP_BRIDGE_PROTOCOL_PASS assertions=21 وCP_SHELL_BROWSER_PASS assertions=40. Artifact 14472026955 (shell-preview.png) تمت مراجعته بصرياً. الواجهة ما زالت synthetic/mock ولا Native bridge.


## جلسة 32 — standalone Android preview
راجع docs/HTML_ANDROID_PREVIEW_AR.md وmemory/sessions/2026-11-19_cp-dl-html-preview-32.md. Owner permits experimental APK when ready. Code e484daa569d2bbddb889f6b05e5805b697a16fcb; run https://github.com/alwansan/CP/actions/runs/44432508382 in progress at check. First separate package com.alwansan.cinemana.htmlpreview v0.1, no permission, synthetic data, WebView exact local HTTPS allowlist/CSP + platform main-frame transferred message port; app.bootstrap only, no mutation/real account/Room/downloads. Original APK and old UI untouched. CI builds signed separate main/test APK and requires actual API35 instrumentation (bootstrap/5 tabs/disclosure) BEFORE artifact/release tag cp-html-preview-1; no APK delivery claim until success and release checked. Existing signed production ART gate mandatory for integrated CP later. Next monitor run/fix failures, verify actual release, owner phone visual tests, negative security/lifecycle cases and read-only native source integration. Html only.
