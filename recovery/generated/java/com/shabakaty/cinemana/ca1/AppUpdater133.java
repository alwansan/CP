package com.shabakaty.cinemana.ca1;

import android.R;
import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import com.connectsdk.discovery.provider.ssdp.Icon;
import com.connectsdk.discovery.provider.ssdp.SSDPPacket;
import com.connectsdk.service.command.ServiceCommand;
import com.liulishuo.filedownloader.BuildConfig;
import com.liulishuo.filedownloader.model.FileDownloadStatus;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Proxy;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLDecoder;
import java.security.MessageDigest;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import zendesk.core.Constants;

/* JADX INFO: loaded from: classes6.dex */
public final class AppUpdater133 {
    static final String APK_DIR = "/storage/emulated/0/Cinemana/work/data/apk";
    static final String BUILD_CUTOFF_UTC = "2026-10-05T09:08:00Z";
    static final String MARKER = ".target_version";
    static final String PENDING = ".pending_install";
    static final String PROVIDER = "com.cinemana.pro.provider";
    static final String RELEASE_API = "https://api.github.com/repos/alwansan/C1/releases/latest";
    static final String TAG = "ca1_update_check135";
    static final String TITLE = "التحقق من تحديثات التطبيق";
    static final ExecutorService worker = Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: com.shabakaty.cinemana.ca1.AppUpdater133$$ExternalSyntheticLambda7
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            return AppUpdater133.lambda$static$0(runnable);
        }
    });
    static final AtomicBoolean busy = new AtomicBoolean(false);

    static /* synthetic */ Thread lambda$static$0(Runnable runnable) {
        Thread thread = new Thread(runnable, "app-updater135");
        thread.setDaemon(true);
        return thread;
    }

    static final class Update {
        long releaseId;
        long size;
        long versionCodeHint;
        String name = BuildConfig.FLAVOR;
        String tag = BuildConfig.FLAVOR;
        String updatedAt = BuildConfig.FLAVOR;
        String apkName = BuildConfig.FLAVOR;
        String apkUrl = BuildConfig.FLAVOR;
        String sha256 = BuildConfig.FLAVOR;

        Update() {
        }
    }

    private AppUpdater133() {
    }

    public static void profile(Object obj) {
        if (obj == null) {
            return;
        }
        try {
            cleanupAfterUpdate(obj);
            final Object objCall = Continue106.call(obj, "getContext", new Object[0]);
            final Object objCall2 = Continue106.call(obj, "findViewWithTag", TAG);
            final Object objCall3 = Continue106.call(obj, "findViewWithTag", "ca1_update_check135_title");
            if (objCall2 == null) {
                log("updater_profile_row_missing136", new IllegalStateException("static updater row missing"));
                return;
            }
            if (objCall3 != null) {
                Continue106.call(objCall3, "setText", I18n161.t(TITLE));
            }
            setClick(objCall2, new Runnable() { // from class: com.shabakaty.cinemana.ca1.AppUpdater133$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    AppUpdater133.check(objCall, objCall2, objCall3);
                }
            });
            resumePendingInstall(objCall);
        } catch (Exception e) {
            log("updater_profile_error136", e);
        }
    }

    static void setIntField(Object obj, String str, int i) throws Exception {
        if (obj == null) {
            return;
        }
        for (Class<?> superclass = obj.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
            try {
                superclass.getField(str).setInt(obj, i);
                return;
            } catch (NoSuchFieldException e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void check(final Object obj, final Object obj2, final Object obj3) {
        if (!busy.compareAndSet(false, true)) {
            toast(obj, I18n161.t("عملية التحديث جارية بالفعل"));
            return;
        }
        try {
            Continue106.call(obj2, "setEnabled", false);
            if (obj3 != null) {
                Continue106.call(obj3, "setText", I18n161.t("جاري التحقق من التحديثات…"));
            }
        } catch (Exception e) {
        }
        worker.execute(new Runnable() { // from class: com.shabakaty.cinemana.ca1.AppUpdater133$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                AppUpdater133.lambda$check$4(obj, obj2, obj3);
            }
        });
    }

    static /* synthetic */ void lambda$check$4(final Object obj, final Object obj2, final Object obj3) {
        try {
            final Update updateFetchRelease = fetchRelease();
            final boolean zIsNewRelease = isNewRelease(obj, updateFetchRelease);
            post(new Runnable() { // from class: com.shabakaty.cinemana.ca1.AppUpdater133$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AppUpdater133.lambda$check$2(obj2, obj3, zIsNewRelease, obj, updateFetchRelease);
                }
            });
        } catch (Exception e) {
            log("updater_check_error135", e);
            post(new Runnable() { // from class: com.shabakaty.cinemana.ca1.AppUpdater133$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    AppUpdater133.lambda$check$3(obj2, obj3, obj);
                }
            });
        }
    }

    static /* synthetic */ void lambda$check$2(Object obj, Object obj2, boolean z, Object obj3, Update update) {
        restoreRow(obj, obj2);
        busy.set(false);
        if (z) {
            showUpdate(obj3, update);
        } else {
            showInfo(obj3, I18n161.t("التطبيق محدث"), I18n161.t("أنت تستخدم أحدث إصدار بالفعل."));
        }
    }

    static /* synthetic */ void lambda$check$3(Object obj, Object obj2, Object obj3) {
        restoreRow(obj, obj2);
        busy.set(false);
        showInfo(obj3, I18n161.t("تعذر التحقق من التحديث"), I18n161.t("تعذر قراءة أحدث إصدار من GitHub Releases. تحقق من الإنترنت وحاول مرة أخرى."));
    }

    static void restoreRow(Object obj, Object obj2) {
        try {
            Continue106.call(obj, "setEnabled", true);
            if (obj2 != null) {
                Continue106.call(obj2, "setText", I18n161.t(TITLE));
            }
        } catch (Exception e) {
        }
    }

    static Update fetchRelease() throws Exception {
        return parseRelease(requestText("https://api.github.com/repos/alwansan/C1/releases/latest?t=" + System.currentTimeMillis()));
    }

    static Update parseRelease(String str) throws Exception {
        Update update = new Update();
        update.releaseId = longField(str, "id", 0L);
        update.tag = stringField(str, "tag_name", BuildConfig.FLAVOR);
        update.name = stringField(str, "name", update.tag);
        update.updatedAt = stringField(str, "updated_at", stringField(str, "published_at", BuildConfig.FLAVOR));
        Matcher matcher = Pattern.compile("\\\"browser_download_url\\\"\\s*:\\s*\\\"([^\\\"]+\\.apk(?:\\?[^\\\"]*)?)\\\"", 2).matcher(str);
        if (!matcher.find()) {
            throw new IOException("release has no apk asset");
        }
        update.apkUrl = unescape(matcher.group(1));
        URL url = new URL(update.apkUrl);
        if (!"https".equalsIgnoreCase(url.getProtocol()) || !allowedHost(url.getHost())) {
            throw new SecurityException("untrusted apk host");
        }
        String path = url.getPath();
        int iLastIndexOf = path.lastIndexOf(47);
        if (iLastIndexOf >= 0) {
            path = path.substring(iLastIndexOf + 1);
        }
        update.apkName = URLDecoder.decode(path, "UTF-8");
        update.versionCodeHint = versionCodeHint(update.apkName);
        String strSubstring = str.substring(Math.max(0, matcher.start() - 2600), Math.min(str.length(), matcher.end() + 100));
        update.size = lastLongField(strSubstring, "size", 0L);
        String lowerCase = lastStringField(strSubstring, "digest", BuildConfig.FLAVOR).trim().toLowerCase(Locale.ROOT);
        if (lowerCase.startsWith("sha256:")) {
            lowerCase = lowerCase.substring(7);
        }
        if (lowerCase.matches("[0-9a-f]{64}")) {
            update.sha256 = lowerCase;
        }
        if (update.releaseId <= 0 || update.apkUrl.isEmpty()) {
            throw new IOException("invalid release payload");
        }
        return update;
    }

    static boolean isNewRelease(Object obj, Update update) {
        long jLocalVersionCode = localVersionCode(obj);
        if (update.versionCodeHint > 0) {
            return update.versionCodeHint > jLocalVersionCode;
        }
        try {
            if (!update.sha256.isEmpty()) {
                String strInstalledApkSha = installedApkSha(obj);
                if (!strInstalledApkSha.isEmpty() && update.sha256.equalsIgnoreCase(strInstalledApkSha)) {
                    return false;
                }
            }
        } catch (Exception e) {
        }
        return update.updatedAt.isEmpty() || BUILD_CUTOFF_UTC.isEmpty() || update.updatedAt.compareTo(BUILD_CUTOFF_UTC) > 0;
    }

    static long versionCodeHint(String str) {
        long j = 0;
        if (str == null) {
            return 0L;
        }
        Matcher matcher = Pattern.compile("(?:^|[_.-])(\\d{5,10})(?=[_.-]|$)").matcher(str);
        while (matcher.find()) {
            try {
                j = Long.parseLong(matcher.group(1));
            } catch (Exception e) {
            }
        }
        return j;
    }

    static boolean allowedHost(String str) {
        if (str == null) {
            return false;
        }
        String lowerCase = str.toLowerCase(Locale.ROOT);
        return lowerCase.equals("github.com") || lowerCase.equals("api.github.com") || lowerCase.equals("raw.githubusercontent.com") || lowerCase.endsWith(".githubusercontent.com");
    }

    static String requestText(String str) throws Exception {
        HttpURLConnection httpURLConnectionOpen = open(str);
        httpURLConnectionOpen.setRequestMethod(ServiceCommand.TYPE_GET);
        httpURLConnectionOpen.setConnectTimeout(10000);
        httpURLConnectionOpen.setReadTimeout(15000);
        httpURLConnectionOpen.setRequestProperty(Constants.ACCEPT_HEADER, "application/vnd.github+json");
        httpURLConnectionOpen.setRequestProperty("X-GitHub-Api-Version", "2022-11-28");
        httpURLConnectionOpen.setRequestProperty("Cache-Control", "no-cache");
        httpURLConnectionOpen.setRequestProperty("User-Agent", "Cinemana-Updater/135");
        int responseCode = httpURLConnectionOpen.getResponseCode();
        if (responseCode < 200 || responseCode >= 300) {
            throw new IOException("http " + responseCode);
        }
        InputStream inputStream = httpURLConnectionOpen.getInputStream();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[RecyclerView.b0.FLAG_BOUNCED_FROM_HIDDEN_LIST];
        while (true) {
            try {
                int i = inputStream.read(bArr);
                if (i >= 0) {
                    if (i > 0) {
                        byteArrayOutputStream.write(bArr, 0, i);
                    }
                }
            } finally {
                try {
                    inputStream.close();
                } catch (Exception e) {
                }
                httpURLConnectionOpen.disconnect();
            }
        }
        return new String(byteArrayOutputStream.toByteArray(), "UTF-8");
    }

    static HttpURLConnection open(String str) throws Exception {
        URL url = new URL(str);
        if (!"https".equalsIgnoreCase(url.getProtocol())) {
            throw new SecurityException("https required");
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setInstanceFollowRedirects(true);
        return httpURLConnection;
    }

    static Pattern stringPattern(String str) {
        return Pattern.compile("\\\"" + Pattern.quote(str) + "\\\"\\s*:\\s*\\\"((?:\\\\.|[^\\\"])*)\\\"");
    }

    static String unescape(String str) {
        return str.replace("\\/", "/").replace("\\\"", "\"").replace("\\n", SSDPPacket.LF).replace("\\\\", "\\");
    }

    static String stringField(String str, String str2, String str3) {
        Matcher matcher = stringPattern(str2).matcher(str);
        return matcher.find() ? unescape(matcher.group(1)) : str3;
    }

    static String lastStringField(String str, String str2, String str3) {
        Matcher matcher = stringPattern(str2).matcher(str);
        while (matcher.find()) {
            str3 = unescape(matcher.group(1));
        }
        return str3;
    }

    static long longField(String str, String str2, long j) {
        Matcher matcher = Pattern.compile("\\\"" + Pattern.quote(str2) + "\\\"\\s*:\\s*(\\d+)").matcher(str);
        if (!matcher.find()) {
            return j;
        }
        try {
            return Long.parseLong(matcher.group(1));
        } catch (Exception e) {
            return j;
        }
    }

    static long lastLongField(String str, String str2, long j) {
        Matcher matcher = Pattern.compile("\\\"" + Pattern.quote(str2) + "\\\"\\s*:\\s*(\\d+)").matcher(str);
        while (matcher.find()) {
            try {
                j = Long.parseLong(matcher.group(1));
            } catch (Exception e) {
            }
        }
        return j;
    }

    static long localVersionCode(Object obj) {
        try {
            return ((Number) Continue106.get(Continue106.call(Continue106.call(obj, "getPackageManager", new Object[0]), "getPackageInfo", String.valueOf(Continue106.call(obj, "getPackageName", new Object[0])), 0), "versionCode")).longValue();
        } catch (Exception e) {
            return 0L;
        }
    }

    static String installedApkSha(Object obj) throws Exception {
        Object obj2 = Continue106.get(Continue106.call(obj, "getApplicationInfo", new Object[0]), "sourceDir");
        if (obj2 == null) {
            return BuildConfig.FLAVOR;
        }
        File file = new File(String.valueOf(obj2));
        return file.isFile() ? sha256(file) : BuildConfig.FLAVOR;
    }

    static void showUpdate(final Object obj, final Update update) {
        String str;
        try {
            final Object objCreateDialog = createDialog(obj);
            Object objMakeColumn = makeColumn(obj, 22, 18);
            addText(obj, objMakeColumn, I18n161.t("يتوفر تحديث جديد"), 22, true, 16);
            if (update.name.isEmpty()) {
                str = !update.tag.isEmpty() ? update.tag : update.apkName;
            } else {
                str = update.name;
            }
            addText(obj, objMakeColumn, str, 17, false, 18);
            Object objAddAction = addAction(obj, objMakeColumn, I18n161.t("إغلاق"));
            Object objAddAction2 = addAction(obj, objMakeColumn, I18n161.t("تحديث"));
            setClick(objAddAction, new Runnable() { // from class: com.shabakaty.cinemana.ca1.AppUpdater133$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    AppUpdater133.dismiss(objCreateDialog);
                }
            });
            setClick(objAddAction2, new Runnable() { // from class: com.shabakaty.cinemana.ca1.AppUpdater133$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    AppUpdater133.lambda$showUpdate$6(objCreateDialog, obj, update);
                }
            });
            showDialog(objCreateDialog, objMakeColumn);
        } catch (Exception e) {
            log("updater_dialog_error135", e);
            toast(obj, I18n161.t("يتوفر تحديث جديد"));
        }
    }

    static /* synthetic */ void lambda$showUpdate$6(Object obj, Object obj2, Update update) {
        dismiss(obj);
        download(obj2, update);
    }

    static void showInfo(Object obj, String str, String str2) {
        try {
            final Object objCreateDialog = createDialog(obj);
            Object objMakeColumn = makeColumn(obj, 22, 18);
            addText(obj, objMakeColumn, str, 21, true, 14);
            addText(obj, objMakeColumn, str2, 16, false, 18);
            setClick(addAction(obj, objMakeColumn, I18n161.t("إغلاق")), new Runnable() { // from class: com.shabakaty.cinemana.ca1.AppUpdater133$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    AppUpdater133.dismiss(objCreateDialog);
                }
            });
            showDialog(objCreateDialog, objMakeColumn);
        } catch (Exception e) {
            toast(obj, str2);
        }
    }

    static void download(final Object obj, final Update update) {
        if (!busy.compareAndSet(false, true)) {
            toast(obj, I18n161.t("عملية التحديث جارية بالفعل"));
            return;
        }
        final Object[] objArr = new Object[4];
        try {
            final Object objCreateDialog = createDialog(obj);
            Object objMakeColumn = makeColumn(obj, 22, 18);
            addText(obj, objMakeColumn, I18n161.t("جاري تجهيز التحديث"), 21, true, 14);
            Object objAddText = addText(obj, objMakeColumn, I18n161.t("جاري التحقق من الملفات…"), 18, false, 12);
            Object objMake = Continue106.make("android.widget.ProgressBar", obj, null, Integer.valueOf(R.attr.progressBarStyleHorizontal));
            Continue106.call(objMake, "setMax", 100);
            Continue106.call(objMake, "setProgress", 0);
            Object objMake2 = Continue106.make("android.widget.LinearLayout$LayoutParams", -1, Integer.valueOf(dp(obj, 18)));
            Continue106.call(objMake2, "setMargins", 0, Integer.valueOf(dp(obj, 4)), 0, Integer.valueOf(dp(obj, 16)));
            Continue106.call(objMakeColumn, "addView", objMake, objMake2);
            Object objAddAction = addAction(obj, objMakeColumn, I18n161.t("إخفاء"));
            setClick(objAddAction, new Runnable() { // from class: com.shabakaty.cinemana.ca1.AppUpdater133$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    AppUpdater133.dismiss(objCreateDialog);
                }
            });
            showDialog(objCreateDialog, objMakeColumn);
            objArr[0] = objCreateDialog;
            objArr[1] = objAddText;
            objArr[2] = objMake;
            objArr[3] = objAddAction;
        } catch (Exception e) {
            log("updater_progress_ui135", e);
        }
        worker.execute(new Runnable() { // from class: com.shabakaty.cinemana.ca1.AppUpdater133$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                AppUpdater133.lambda$download$13(obj, update, objArr);
            }
        });
    }

    static /* synthetic */ void lambda$download$13(final Object obj, Update update, final Object[] objArr) {
        try {
            final File fileReusableApk = reusableApk(obj, update);
            if (fileReusableApk != null) {
                post(new Runnable() { // from class: com.shabakaty.cinemana.ca1.AppUpdater133$$ExternalSyntheticLambda10
                    @Override // java.lang.Runnable
                    public final void run() {
                        AppUpdater133.lambda$download$9(objArr);
                    }
                });
            } else {
                post(new Runnable() { // from class: com.shabakaty.cinemana.ca1.AppUpdater133$$ExternalSyntheticLambda11
                    @Override // java.lang.Runnable
                    public final void run() {
                        AppUpdater133.lambda$download$10(objArr);
                    }
                });
                fileReusableApk = downloadApk(obj, update, objArr);
            }
            writeMarker(verifyApk(obj, fileReusableApk, update));
            post(new Runnable() { // from class: com.shabakaty.cinemana.ca1.AppUpdater133$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    AppUpdater133.lambda$download$11(objArr, obj, fileReusableApk);
                }
            });
        } catch (Exception e) {
            log("updater_download_error135", e);
            post(new Runnable() { // from class: com.shabakaty.cinemana.ca1.AppUpdater133$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    AppUpdater133.lambda$download$12(objArr, obj);
                }
            });
        }
    }

    static /* synthetic */ void lambda$download$9(Object[] objArr) {
        progress(objArr, 100);
        try {
            if (objArr[1] != null) {
                Continue106.call(objArr[1], "setText", I18n161.t("تم العثور على ملف التحديث المحمّل"));
            }
        } catch (Exception e) {
        }
    }

    static /* synthetic */ void lambda$download$10(Object[] objArr) {
        try {
            if (objArr[1] != null) {
                Continue106.call(objArr[1], "setText", "0%");
            }
        } catch (Exception e) {
        }
    }

    static /* synthetic */ void lambda$download$11(Object[] objArr, Object obj, File file) {
        busy.set(false);
        dismiss(objArr[0]);
        install(obj, file);
    }

    static /* synthetic */ void lambda$download$12(Object[] objArr, Object obj) {
        busy.set(false);
        dismiss(objArr[0]);
        showInfo(obj, I18n161.t("تعذر تجهيز التحديث"), I18n161.t("لم يكتمل تنزيل أو التحقق من ملف التحديث. حاول مرة أخرى."));
    }

    static File apkDir() {
        return new File(APK_DIR);
    }

    static String safeApkName(String str, long j) {
        if (str == null) {
            str = BuildConfig.FLAVOR;
        }
        String strTrim = str.replaceAll("[\\\\/:*?\"<>|]", "_").trim();
        if (!strTrim.toLowerCase(Locale.ROOT).endsWith(".apk")) {
            strTrim = "Cinemana-update-" + j + ".apk";
        }
        return strTrim.isEmpty() ? "Cinemana-update-" + j + ".apk" : strTrim;
    }

    static File targetFile(Update update) {
        return new File(apkDir(), safeApkName(update.apkName, update.releaseId));
    }

    static File reusableApk(Object obj, Update update) {
        File fileTargetFile = targetFile(update);
        if (!fileTargetFile.isFile()) {
            return null;
        }
        try {
            if (update.size > 0 && fileTargetFile.length() != update.size) {
                throw new IOException("cached size mismatch");
            }
            verifyApk(obj, fileTargetFile, update);
            return fileTargetFile;
        } catch (Exception e) {
            log("updater_cached_apk_invalid135", e);
            try {
                fileTargetFile.delete();
            } catch (Exception e2) {
            }
            return null;
        }
    }

    static File downloadApk(Object obj, Update update, final Object[] objArr) throws Exception {
        File fileApkDir = apkDir();
        if (!fileApkDir.exists() && !fileApkDir.mkdirs()) {
            throw new IOException("cannot create " + fileApkDir);
        }
        String strSafeApkName = safeApkName(update.apkName, update.releaseId);
        File file = new File(fileApkDir, strSafeApkName);
        File file2 = new File(fileApkDir, strSafeApkName + ".part");
        file2.delete();
        if (file.exists() && !file.delete()) {
            throw new IOException("cannot replace stale apk");
        }
        HttpURLConnection httpURLConnectionOpen = open(update.apkUrl);
        httpURLConnectionOpen.setConnectTimeout(15000);
        httpURLConnectionOpen.setReadTimeout(45000);
        httpURLConnectionOpen.setRequestProperty(Constants.ACCEPT_HEADER, "application/octet-stream");
        httpURLConnectionOpen.setRequestProperty("User-Agent", "Cinemana-Updater/135");
        int responseCode = httpURLConnectionOpen.getResponseCode();
        if (responseCode < 200 || responseCode >= 300) {
            throw new IOException("http " + responseCode);
        }
        long contentLengthLong = httpURLConnectionOpen.getContentLengthLong();
        if (contentLengthLong <= 0) {
            contentLengthLong = update.size;
        }
        InputStream inputStream = httpURLConnectionOpen.getInputStream();
        FileOutputStream fileOutputStream = new FileOutputStream(file2);
        byte[] bArr = new byte[65536];
        int i = -1;
        long j = 0;
        while (true) {
            try {
                int i2 = inputStream.read(bArr);
                if (i2 < 0) {
                    break;
                }
                if (i2 != 0) {
                    fileOutputStream.write(bArr, 0, i2);
                    j += (long) i2;
                    if (contentLengthLong > 0) {
                        long j2 = contentLengthLong;
                        final int iMin = (int) Math.min(100L, (j * 100) / contentLengthLong);
                        if (iMin != i) {
                            post(new Runnable() { // from class: com.shabakaty.cinemana.ca1.AppUpdater133$$ExternalSyntheticLambda5
                                @Override // java.lang.Runnable
                                public final void run() {
                                    AppUpdater133.progress(objArr, iMin);
                                }
                            });
                            i = iMin;
                        }
                        contentLengthLong = j2;
                    }
                }
            } catch (Throwable th) {
                try {
                    fileOutputStream.close();
                } catch (Exception e) {
                }
                try {
                    inputStream.close();
                } catch (Exception e2) {
                }
                httpURLConnectionOpen.disconnect();
                throw th;
            }
        }
        fileOutputStream.getFD().sync();
        try {
            fileOutputStream.close();
        } catch (Exception e3) {
        }
        try {
            inputStream.close();
        } catch (Exception e4) {
        }
        httpURLConnectionOpen.disconnect();
        if (update.size > 0 && file2.length() != update.size) {
            throw new IOException("size mismatch " + file2.length() + "/" + update.size);
        }
        if (!file2.renameTo(file)) {
            copy(file2, file);
            file2.delete();
        }
        post(new Runnable() { // from class: com.shabakaty.cinemana.ca1.AppUpdater133$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                AppUpdater133.progress(objArr, 100);
            }
        });
        return file;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void progress(Object[] objArr, int i) {
        try {
            if (objArr[1] != null) {
                Continue106.call(objArr[1], "setText", i + "%");
            }
            if (objArr[2] != null) {
                Continue106.call(objArr[2], "setProgress", Integer.valueOf(i));
            }
        } catch (Exception e) {
        }
    }

    static long verifyApk(Object obj, File file, Update update) throws Exception {
        if (!update.sha256.isEmpty() && !update.sha256.equalsIgnoreCase(sha256(file))) {
            throw new SecurityException("sha256 mismatch");
        }
        Object objCall = Continue106.call(Continue106.call(obj, "getPackageManager", new Object[0]), "getPackageArchiveInfo", file.getAbsolutePath(), 0);
        if (objCall == null) {
            throw new IOException("invalid apk");
        }
        if (!String.valueOf(Continue106.call(obj, "getPackageName", new Object[0])).equals(String.valueOf(Continue106.get(objCall, "packageName")))) {
            throw new SecurityException("package mismatch");
        }
        long jLongValue = ((Number) Continue106.get(objCall, "versionCode")).longValue();
        long jLocalVersionCode = localVersionCode(obj);
        if (update.versionCodeHint > 0 && jLongValue != update.versionCodeHint) {
            throw new SecurityException("version hint mismatch " + jLongValue + "/" + update.versionCodeHint);
        }
        if (jLongValue > jLocalVersionCode) {
            return jLongValue;
        }
        throw new SecurityException("release is not newer " + jLongValue + "/" + jLocalVersionCode);
    }

    static void writeMarker(long j) throws Exception {
        File fileApkDir = apkDir();
        if (!fileApkDir.exists() && !fileApkDir.mkdirs()) {
            throw new IOException("apk dir");
        }
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(new File(fileApkDir, MARKER)), "UTF-8");
        try {
            outputStreamWriter.write(Long.toString(j));
            outputStreamWriter.write(SSDPPacket.LF);
        } finally {
            outputStreamWriter.close();
        }
    }

    public static void cleanupAfterUpdate(Object obj) {
        try {
            File fileApkDir = apkDir();
            File file = new File(fileApkDir, MARKER);
            if (file.isFile()) {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), "UTF-8"));
                try {
                    String line = bufferedReader.readLine();
                    bufferedReader.close();
                    long j = Long.parseLong(line == null ? "0" : line.trim());
                    if (j > 0 && localVersionCode(obj) >= j) {
                        deleteTree(fileApkDir);
                    }
                } catch (Throwable th) {
                    bufferedReader.close();
                    throw th;
                }
            }
        } catch (Exception e) {
            log("updater_cleanup_error135", e);
        }
    }

    static void deleteTree(File file) {
        File[] fileArrListFiles;
        if (file == null || !file.exists()) {
            return;
        }
        if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                deleteTree(file2);
            }
        }
        try {
            file.delete();
        } catch (Exception e) {
        }
    }

    static String sha256(File file) throws Exception {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        FileInputStream fileInputStream = new FileInputStream(file);
        byte[] bArr = new byte[65536];
        while (true) {
            try {
                int i = fileInputStream.read(bArr);
                if (i < 0) {
                    break;
                }
                if (i > 0) {
                    messageDigest.update(bArr, 0, i);
                }
            } catch (Throwable th) {
                fileInputStream.close();
                throw th;
            }
        }
        fileInputStream.close();
        StringBuilder sb = new StringBuilder();
        for (byte b : messageDigest.digest()) {
            sb.append(String.format(Locale.ROOT, "%02x", Integer.valueOf(b & FileDownloadStatus.error)));
        }
        return sb.toString();
    }

    static void copy(File file, File file2) throws Exception {
        FileInputStream fileInputStream = new FileInputStream(file);
        FileOutputStream fileOutputStream = new FileOutputStream(file2);
        byte[] bArr = new byte[65536];
        while (true) {
            try {
                int i = fileInputStream.read(bArr);
                if (i >= 0) {
                    if (i > 0) {
                        fileOutputStream.write(bArr, 0, i);
                    }
                }
            } finally {
                try {
                    fileInputStream.close();
                } catch (Exception e) {
                }
                try {
                    fileOutputStream.close();
                } catch (Exception e2) {
                }
            }
        }
    }

    static boolean canRequestInstalls(Object obj) {
        try {
            return !Boolean.FALSE.equals(Continue106.call(Continue106.call(obj, "getPackageManager", new Object[0]), "canRequestPackageInstalls", new Object[0]));
        } catch (Exception e) {
            return true;
        }
    }

    static void install(Object obj, File file) {
        if (file != null) {
            try {
                if (file.isFile()) {
                    writePending(file);
                    if (!canRequestInstalls(obj)) {
                        openInstallPermission(obj);
                        return;
                    }
                    Object objFileProviderUri = fileProviderUri(obj, file);
                    try {
                        if (launchInstaller(obj, objFileProviderUri, "android.intent.action.VIEW")) {
                            clearPending();
                            return;
                        }
                        e = null;
                    } catch (Exception e) {
                        e = e;
                        log("updater_install_view_action138", e);
                    }
                    try {
                        if (launchInstaller(obj, objFileProviderUri, "android.intent.action.INSTALL_PACKAGE")) {
                            clearPending();
                            return;
                        }
                    } catch (Exception e2) {
                        log("updater_install_package_action138", e2);
                        if (e == null) {
                            e = e2;
                        }
                    }
                    if (e == null) {
                        e = new IOException("no package installer activity");
                    }
                    throw e;
                }
            } catch (Exception e3) {
                log("updater_install_error138", e3);
                if (file != null) {
                    writePending(file);
                }
                showInstallFailure(obj, file);
                return;
            }
        }
        throw new FileNotFoundException("update apk missing");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v8 */
    static Object fileProviderUri(Object obj, File file) throws Exception {
        Object[] objArr;
        Object obj2 = obj;
        Class<?> cls = Class.forName("androidx.core.content.FileProvider");
        int i = 2;
        int r7 = 1;
        int i2 = 0;
        try {
            return Continue106.call(cls, "getUriForFile", obj2, PROVIDER, file);
        } catch (Exception e) {
            Method[] declaredMethods = cls.getDeclaredMethods();
            int length = declaredMethods.length;
            int i3 = 0;
            Object[] objArr2 = declaredMethods;
            while (i3 < length) {
                Method method = objArr2[i3];
                try {
                    if (Modifier.isStatic(method.getModifiers())) {
                        Class<?>[] parameterTypes = method.getParameterTypes();
                        if (parameterTypes.length != i || !String.class.equals(parameterTypes[r7])) {
                            objArr = objArr2;
                        } else if (parameterTypes[i2].isInstance(obj2)) {
                            method.setAccessible(r7 != 0);
                            Object[] objArr3 = new Object[i];
                            objArr3[i2] = obj2;
                            objArr3[r7] = PROVIDER;
                            Object objInvoke = method.invoke(null, objArr3);
                            if (objInvoke == null) {
                                objArr = objArr2;
                            } else {
                                Class<?> superclass = objInvoke.getClass();
                                while (superclass != null) {
                                    Method[] declaredMethods2 = superclass.getDeclaredMethods();
                                    int length2 = declaredMethods2.length;
                                    int i4 = i2;
                                    while (i4 < length2) {
                                        objArr2 = objArr2;
                                        objArr2 = objArr2;
                                        Method method2 = declaredMethods2[i4];
                                        Class<?>[] parameterTypes2 = method2.getParameterTypes();
                                        objArr = objArr2;
                                        if (parameterTypes2.length == 1) {
                                            try {
                                                if (File.class.equals(parameterTypes2[0]) && "android.net.Uri".equals(method2.getReturnType().getName())) {
                                                    method2.setAccessible(true);
                                                    Object objInvoke2 = method2.invoke(objInvoke, file);
                                                    if (objInvoke2 != null) {
                                                        return objInvoke2;
                                                    }
                                                }
                                            } catch (Exception e2) {
                                                i3++;
                                                obj2 = obj;
                                                objArr2 = objArr;
                                                i = 2;
                                                r7 = 1;
                                                i2 = 0;
                                            }
                                        }
                                        i4++;
                                        objArr2 = objArr;
                                    }
                                    objArr2 = objArr2;
                                    objArr2 = objArr2;
                                    Object[] objArr4 = objArr2;
                                    superclass = superclass.getSuperclass();
                                    objArr2 = objArr4;
                                    i2 = 0;
                                }
                                objArr2 = objArr2;
                                objArr = objArr2;
                            }
                        } else {
                            objArr = objArr2;
                        }
                    } else {
                        objArr = objArr2;
                    }
                } catch (Exception e3) {
                }
                i3++;
                obj2 = obj;
                objArr2 = objArr;
                i = 2;
                r7 = 1;
                i2 = 0;
            }
            try {
                String canonicalPath = new File(String.valueOf(Continue106.call(Class.forName("android.os.Environment"), "getExternalStorageDirectory", new Object[0]))).getCanonicalPath();
                String canonicalPath2 = file.getCanonicalPath();
                if (canonicalPath2.startsWith(canonicalPath + File.separator)) {
                    String strSubstring = canonicalPath2.substring(canonicalPath.length() + 1);
                    String str = (String) Continue106.call(Class.forName("android.net.Uri"), "encode", ".");
                    String str2 = (String) Continue106.call(Class.forName("android.net.Uri"), "encode", strSubstring, "/");
                    Object objMake = Continue106.make("android.net.Uri$Builder", new Object[0]);
                    Continue106.call(objMake, "scheme", "content");
                    Continue106.call(objMake, "authority", PROVIDER);
                    Continue106.call(objMake, "encodedPath", str + "/" + str2);
                    Object objCall = Continue106.call(objMake, "build", new Object[0]);
                    if (objCall != null) {
                        return objCall;
                    }
                    throw e;
                }
                throw e;
            } catch (Exception e4) {
                throw e;
            }
        }
    }

    static boolean launchInstaller(Object obj, Object obj2, String str) throws Exception {
        Object objCall;
        Object objMake = Continue106.make("android.content.Intent", str);
        Continue106.call(objMake, "setDataAndType", obj2, "application/vnd.android.package-archive");
        Continue106.call(objMake, "addFlags", 268435457);
        try {
            Continue106.call(objMake, "setClipData", Continue106.call(Class.forName("android.content.ClipData"), "newRawUri", "Cinemana update", obj2));
        } catch (Exception e) {
        }
        Object objCall2 = Continue106.call(obj, "getPackageManager", new Object[0]);
        try {
            Object objCall3 = Continue106.call(objCall2, "queryIntentActivities", objMake, 65536);
            if (objCall3 instanceof Iterable) {
                Iterator it = ((Iterable) objCall3).iterator();
                while (it.hasNext()) {
                    grantInstaller(obj, it.next(), obj2);
                }
            }
        } catch (Exception e2) {
        }
        try {
            objCall = Continue106.call(objCall2, "resolveActivity", objMake, 65536);
        } catch (Exception e3) {
            objCall = null;
        }
        grantInstaller(obj, objCall, obj2);
        Continue106.call(obj, "startActivity", objMake);
        return true;
    }

    static void grantInstaller(Object obj, Object obj2, Object obj3) {
        if (obj2 == null) {
            return;
        }
        try {
            String strValueOf = String.valueOf(Continue106.get(Continue106.get(obj2, "activityInfo"), "packageName"));
            if (strValueOf == null || strValueOf.isEmpty() || "null".equals(strValueOf)) {
                return;
            }
            Continue106.call(obj, "grantUriPermission", strValueOf, obj3, 1);
        } catch (Exception e) {
        }
    }

    static void showInstallFailure(final Object obj, final File file) {
        String absolutePath = file == null ? APK_DIR : file.getAbsolutePath();
        String str = I18n161.t("تعذر فتح واجهة Android لتثبيت التحديث تلقائيًا.\n\nيمكنك تثبيت ملف APK يدويًا من المسار:\n") + absolutePath + I18n161.t("\n\nلن يُعاد تنزيل الملف عند إعادة المحاولة.");
        try {
            final Object objCreateDialog = createDialog(obj);
            Object objMakeColumn = makeColumn(obj, 22, 18);
            addText(obj, objMakeColumn, I18n161.t("تعذر فتح المثبت"), 21, true, 14);
            addText(obj, objMakeColumn, str, 16, false, 18);
            Object objAddAction = addAction(obj, objMakeColumn, I18n161.t("إعادة المحاولة"));
            Object objAddAction2 = addAction(obj, objMakeColumn, I18n161.t("إغلاق"));
            setClick(objAddAction, new Runnable() { // from class: com.shabakaty.cinemana.ca1.AppUpdater133$$ExternalSyntheticLambda17
                @Override // java.lang.Runnable
                public final void run() {
                    AppUpdater133.lambda$showInstallFailure$16(objCreateDialog, file, obj);
                }
            });
            setClick(objAddAction2, new Runnable() { // from class: com.shabakaty.cinemana.ca1.AppUpdater133$$ExternalSyntheticLambda18
                @Override // java.lang.Runnable
                public final void run() {
                    AppUpdater133.dismiss(objCreateDialog);
                }
            });
            showDialog(objCreateDialog, objMakeColumn);
        } catch (Exception e) {
            toast(obj, I18n161.t("ملف التحديث محفوظ في: ") + absolutePath);
        }
    }

    static /* synthetic */ void lambda$showInstallFailure$16(Object obj, File file, Object obj2) {
        dismiss(obj);
        if (file != null) {
            install(obj2, file);
        }
    }

    static void writePending(File file) {
        try {
            File fileApkDir = apkDir();
            if (!fileApkDir.exists()) {
                fileApkDir.mkdirs();
            }
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(new File(fileApkDir, PENDING)), "UTF-8");
            try {
                outputStreamWriter.write(file.getName());
                outputStreamWriter.write(SSDPPacket.LF);
            } finally {
                outputStreamWriter.close();
            }
        } catch (Exception e) {
            log("updater_pending_write135", e);
        }
    }

    static void clearPending() {
        try {
            new File(apkDir(), PENDING).delete();
        } catch (Exception e) {
        }
    }

    static void resumePendingInstall(Object obj) {
        try {
            File file = new File(apkDir(), PENDING);
            if (file.isFile() && canRequestInstalls(obj)) {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), "UTF-8"));
                try {
                    String line = bufferedReader.readLine();
                    bufferedReader.close();
                    if (line != null && !line.trim().isEmpty()) {
                        File file2 = new File(apkDir(), new File(line.trim()).getName());
                        if (!file2.isFile()) {
                            file.delete();
                            return;
                        }
                        Object objCall = Continue106.call(Continue106.call(obj, "getPackageManager", new Object[0]), "getPackageArchiveInfo", file2.getAbsolutePath(), 0);
                        if (objCall == null) {
                            file.delete();
                            return;
                        }
                        String strValueOf = String.valueOf(Continue106.call(obj, "getPackageName", new Object[0]));
                        String strValueOf2 = String.valueOf(Continue106.get(objCall, "packageName"));
                        long jLongValue = ((Number) Continue106.get(objCall, "versionCode")).longValue();
                        if (strValueOf.equals(strValueOf2) && jLongValue > localVersionCode(obj)) {
                            install(obj, file2);
                            return;
                        }
                        file.delete();
                        return;
                    }
                    file.delete();
                } catch (Throwable th) {
                    bufferedReader.close();
                    throw th;
                }
            }
        } catch (Exception e) {
            log("updater_resume_pending135", e);
        }
    }

    static void openInstallPermission(Object obj) {
        try {
            Object objMake = Continue106.make("android.content.Intent", "android.settings.MANAGE_UNKNOWN_APP_SOURCES", Continue106.call(Class.forName("android.net.Uri"), "parse", "package:" + String.valueOf(Continue106.call(obj, "getPackageName", new Object[0]))));
            Continue106.call(objMake, "addFlags", 268435456);
            Continue106.call(obj, "startActivity", objMake);
            toast(obj, I18n161.t("اسمح للتطبيق بتثبيت التحديثات. ملف APK محفوظ ولن يعاد تنزيله."));
        } catch (Exception e) {
            log("updater_install_permission135", e);
            showInfo(obj, I18n161.t("السماح بالتثبيت"), I18n161.t("فعّل إذن تثبيت التطبيقات غير المعروفة لتطبيق Cinemana، ثم أعد المحاولة. ملف التحديث محفوظ ولن يُنزّل من جديد."));
        }
    }

    static Object createDialog(Object obj) throws Exception {
        Object objMake = Continue106.make("android.app.Dialog", obj);
        Continue106.call(objMake, "setCancelable", true);
        return objMake;
    }

    static Object makeColumn(Object obj, int i, int i2) throws Exception {
        Object objMake = Continue106.make("android.widget.LinearLayout", obj);
        Continue106.call(objMake, "setOrientation", 1);
        Continue106.call(objMake, "setPadding", Integer.valueOf(dp(obj, i)), Integer.valueOf(dp(obj, i2)), Integer.valueOf(dp(obj, i)), Integer.valueOf(dp(obj, i2)));
        Object objMake2 = Continue106.make("android.graphics.drawable.GradientDrawable", new Object[0]);
        Continue106.call(objMake2, "setColor", Integer.valueOf(color(obj, "cardBackgroundColor", -15720921)));
        Continue106.call(objMake2, "setCornerRadius", Float.valueOf(dp(obj, 20)));
        Continue106.call(objMake, "setBackground", objMake2);
        return objMake;
    }

    static Object addText(Object obj, Object obj2, String str, int i, boolean z, int i2) throws Exception {
        Object objMake = Continue106.make("android.widget.TextView", obj);
        Continue106.call(objMake, "setText", str);
        Continue106.call(objMake, "setTextColor", Integer.valueOf(color(obj, "primaryTextColor", -723724)));
        Continue106.call(objMake, "setTextSize", Float.valueOf(i));
        Continue106.call(objMake, "setGravity", 21);
        if (z) {
            Continue106.call(objMake, "setTypeface", null, 1);
        }
        Object objMake2 = Continue106.make("android.widget.LinearLayout$LayoutParams", -1, -2);
        Continue106.call(objMake2, "setMargins", 0, 0, 0, Integer.valueOf(dp(obj, i2)));
        Continue106.call(obj2, "addView", objMake, objMake2);
        return objMake;
    }

    static Object addAction(Object obj, Object obj2, String str) throws Exception {
        Object objMake = Continue106.make("android.widget.TextView", obj);
        Continue106.call(objMake, "setText", str);
        Continue106.call(objMake, "setTextColor", Integer.valueOf(color(obj, "primaryTextColor", -723724)));
        Continue106.call(objMake, "setTextSize", Float.valueOf(18.0f));
        Continue106.call(objMake, "setGravity", 17);
        Continue106.call(objMake, "setPadding", Integer.valueOf(dp(obj, 16)), Integer.valueOf(dp(obj, 14)), Integer.valueOf(dp(obj, 16)), Integer.valueOf(dp(obj, 14)));
        Object objMake2 = Continue106.make("android.graphics.drawable.GradientDrawable", new Object[0]);
        Continue106.call(objMake2, "setColor", Integer.valueOf(color(obj, "cardBackgroundColor", -15720921)));
        Continue106.call(objMake2, "setCornerRadius", Float.valueOf(dp(obj, 16)));
        Continue106.call(objMake2, "setStroke", Integer.valueOf(dp(obj, 1)), Integer.valueOf(color(obj, "secondaryTextColor", -9338742)));
        Continue106.call(objMake, "setBackground", objMake2);
        Object objMake3 = Continue106.make("android.widget.LinearLayout$LayoutParams", -1, -2);
        Continue106.call(objMake3, "setMargins", 0, Integer.valueOf(dp(obj, 5)), 0, Integer.valueOf(dp(obj, 5)));
        Continue106.call(obj2, "addView", objMake, objMake3);
        return objMake;
    }

    static void showDialog(Object obj, Object obj2) throws Exception {
        Continue106.call(obj, "setContentView", obj2);
        Continue106.call(obj, "show", new Object[0]);
        Object objCall = Continue106.call(obj, "getWindow", new Object[0]);
        if (objCall != null) {
            Continue106.call(objCall, "setBackgroundDrawable", Continue106.make("android.graphics.drawable.ColorDrawable", 0));
            Continue106.call(objCall, "setLayout", -1, -2);
            Continue106.call(objCall, "setGravity", 80);
            Continue106.call(objCall, "setDimAmount", Float.valueOf(0.55f));
            Object objCall2 = Continue106.call(objCall, "getAttributes", new Object[0]);
            try {
                Continue106.set(objCall2, Icon.TAG_WIDTH, -1);
                Continue106.set(objCall2, Icon.TAG_HEIGHT, -2);
                Continue106.call(objCall, "setAttributes", objCall2);
            } catch (Exception e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void dismiss(Object obj) {
        if (obj != null) {
            try {
                Continue106.call(obj, "dismiss", new Object[0]);
            } catch (Exception e) {
            }
        }
    }

    static /* synthetic */ Object lambda$setClick$18(Runnable runnable, Object obj, Method method, Object[] objArr) throws Throwable {
        String name = method.getName();
        if ("onClick".equals(name)) {
            runnable.run();
            return null;
        }
        if ("toString".equals(name)) {
            return "UpdaterAction135";
        }
        if ("hashCode".equals(name)) {
            return Integer.valueOf(System.identityHashCode(obj));
        }
        if ("equals".equals(name)) {
            return Boolean.valueOf(obj == objArr[0]);
        }
        return null;
    }

    static void setClick(Object obj, final Runnable runnable) throws Exception {
        Class<?> cls = Class.forName("android.view.View$OnClickListener");
        Continue106.call(obj, "setOnClickListener", Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: com.shabakaty.cinemana.ca1.AppUpdater133$$ExternalSyntheticLambda8
            @Override // java.lang.reflect.InvocationHandler
            public final Object invoke(Object obj2, Method method, Object[] objArr) {
                return AppUpdater133.lambda$setClick$18(runnable, obj2, method, objArr);
            }
        }));
    }

    static int color(Object obj, String str, int i) {
        if (obj instanceof Context) {
            Context context = (Context) obj;
            if (ThemeEngine142.getMode(context) != 0) {
                return ThemeEngine142.updaterRole(context, str, i);
            }
        }
        try {
            Object objCall = Continue106.call(obj, "getResources", new Object[0]);
            int iIntValue = ((Number) Continue106.call(objCall, "getIdentifier", str, "color", String.valueOf(Continue106.call(obj, "getPackageName", new Object[0])))).intValue();
            if (iIntValue != 0) {
                return ((Number) Continue106.call(objCall, "getColor", Integer.valueOf(iIntValue))).intValue();
            }
        } catch (Exception e) {
        }
        return i;
    }

    static int dp(Object obj, int i) {
        try {
            return Math.max(1, Math.round(i * ((Number) Continue106.get(Continue106.call(Continue106.call(obj, "getResources", new Object[0]), "getDisplayMetrics", new Object[0]), "density")).floatValue()));
        } catch (Exception e) {
            return i;
        }
    }

    static void post(Runnable runnable) {
        try {
            Continue106.call(Continue106.make("android.os.Handler", Continue106.call(Class.forName("android.os.Looper"), "getMainLooper", new Object[0])), "post", runnable);
        } catch (Exception e) {
            try {
                runnable.run();
            } catch (Exception e2) {
            }
        }
    }

    static void toast(Object obj, String str) {
        try {
            Continue106.call(Continue106.call(Class.forName("android.widget.Toast"), "makeText", obj, str, 0), "show", new Object[0]);
        } catch (Exception e) {
        }
    }

    static void log(String str, Exception exc) {
        try {
            Continue106.call(Class.forName("com.shabakaty.cinemana.ca1.Enhancements"), "log", str, "app updater", exc);
        } catch (Exception e) {
        }
    }
}
