package com.shabakaty.cinemana.ca1;

import com.liulishuo.filedownloader.BuildConfig;
import java.io.File;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
public final class CacheCleaner124 {
    static final long AUTO_INTERVAL = 21600000;
    static final long AUTO_MIN_AGE = 900000;
    static final long CRASH_AUTO_MIN_AGE = 86400000;
    static final long CRASH_MANUAL_MIN_AGE = 300000;
    static final String KEY_AUTO = "auto";
    static final String KEY_LAST = "last_auto";
    static final long LOG_AUTO_MIN_AGE = 900000;
    static final long LOG_MAX_BYTES = 1048576;
    static final long MANUAL_MIN_AGE = 120000;
    static final String PREF = "ca1_cache124";
    static final long PRESSURE_BYTES = 268435456;
    static final long PRESSURE_MIN_AGE = 300000;
    static final long UPDATE_AUTO_MIN_AGE = 1800000;
    static final long UPDATE_MANUAL_MIN_AGE = 120000;
    static volatile Object context;
    static volatile boolean started;
    static final ScheduledExecutorService worker = Executors.newSingleThreadScheduledExecutor(new ThreadFactory() { // from class: com.shabakaty.cinemana.ca1.CacheCleaner124$$ExternalSyntheticLambda0
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            return CacheCleaner124.lambda$static$0(runnable);
        }
    });
    static final AtomicBoolean cleaning = new AtomicBoolean();

    static /* synthetic */ Thread lambda$static$0(Runnable runnable) {
        Thread thread = new Thread(runnable, "cache-cleaner124");
        thread.setDaemon(true);
        return thread;
    }

    static final class Result {
        long after;
        long before;
        long deleted;
        int files;
        boolean fresco;
        long skipped;
        long userDataDeleted;
        int userFiles;

        Result() {
        }

        long freed() {
            return Math.max(0L, this.before - this.after);
        }
    }

    private CacheCleaner124() {
    }

    static Object prefs(Object obj) throws Exception {
        return Continue106.call(obj, "getSharedPreferences", PREF, 0);
    }

    public static boolean enabled(Object obj) {
        try {
            return Boolean.TRUE.equals(Continue106.call(prefs(obj), "getBoolean", KEY_AUTO, false));
        } catch (Exception e) {
            Continue106.log("cache_pref_read_error124", e);
            return false;
        }
    }

    static void setEnabled(Object obj, boolean z) {
        try {
            Object objCall = Continue106.call(prefs(obj), "edit", new Object[0]);
            Continue106.call(objCall, "putBoolean", KEY_AUTO, Boolean.valueOf(z));
            if (!Boolean.TRUE.equals(Continue106.call(objCall, "commit", new Object[0]))) {
                throw new IllegalStateException("cache preference commit failed");
            }
            trace(obj, "AUTO=" + z);
            if (z) {
                worker.execute(new Runnable() { // from class: com.shabakaty.cinemana.ca1.CacheCleaner124$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        CacheCleaner124.autoIfDue(true);
                    }
                });
            }
        } catch (Exception e) {
            Continue106.log("cache_pref_write_error124", e);
        }
    }

    static long last(Object obj) {
        try {
            return ((Number) Continue106.call(prefs(obj), "getLong", KEY_LAST, 0L)).longValue();
        } catch (Exception e) {
            return 0L;
        }
    }

    static void setLast(Object obj, long j) {
        try {
            Object objCall = Continue106.call(prefs(obj), "edit", new Object[0]);
            Continue106.call(objCall, "putLong", KEY_LAST, Long.valueOf(j));
            Continue106.call(objCall, "commit", new Object[0]);
        } catch (Exception e) {
            Continue106.log("cache_last_write_error124", e);
        }
    }

    public static synchronized void start(Object obj) {
        if (obj == null) {
            return;
        }
        try {
            context = Continue106.call(obj, "getApplicationContext", new Object[0]);
        } catch (Exception e) {
            context = obj;
        }
        if (started) {
            return;
        }
        started = true;
        ScheduledExecutorService scheduledExecutorService = worker;
        scheduledExecutorService.scheduleWithFixedDelay(new Runnable() { // from class: com.shabakaty.cinemana.ca1.CacheCleaner124$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                CacheCleaner124.autoIfDue(false);
            }
        }, 2L, 360L, TimeUnit.MINUTES);
        trace(context, "START auto=" + enabled(context));
        if (enabled(context)) {
            scheduledExecutorService.execute(new Runnable() { // from class: com.shabakaty.cinemana.ca1.CacheCleaner124$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    CacheCleaner124.autoIfDue(false);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void autoIfDue(boolean z) {
        Object obj = context;
        if (obj == null || !enabled(obj) || cleaning.get()) {
            return;
        }
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            boolean z2 = totalCache(obj) >= PRESSURE_BYTES;
            if (z || z2 || jCurrentTimeMillis - last(obj) >= AUTO_INTERVAL) {
                Result resultClean = clean(obj, true, z2);
                setLast(obj, jCurrentTimeMillis);
                trace(obj, "AUTO_DONE force=" + z + " pressure=" + z2 + " before=" + resultClean.before + " after=" + resultClean.after + " freed=" + resultClean.freed() + " files=" + resultClean.files + " skipped=" + resultClean.skipped + " fresco=" + resultClean.fresco);
            }
        } catch (Exception e) {
            Continue106.log("cache_auto_error124", e);
        }
    }

    public static void settings(Object obj) {
        try {
            Object objCall = Continue106.call(obj, "findViewWithTag", "ca1_cache_auto124");
            if (objCall == null) {
                return;
            }
            final Object objCall2 = Continue106.call(obj, "getContext", new Object[0]);
            start(objCall2);
            Continue106.call(objCall, "setChecked", Boolean.valueOf(enabled(objCall2)));
            Class<?> cls = Class.forName("android.widget.CompoundButton$OnCheckedChangeListener");
            Continue106.call(objCall, "setOnCheckedChangeListener", Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: com.shabakaty.cinemana.ca1.CacheCleaner124$$ExternalSyntheticLambda2
                @Override // java.lang.reflect.InvocationHandler
                public final Object invoke(Object obj2, Method method, Object[] objArr) {
                    return CacheCleaner124.lambda$settings$4(objCall2, obj2, method, objArr);
                }
            }));
        } catch (Exception e) {
            Continue106.log("cache_settings_error124", e);
        }
    }

    static /* synthetic */ Object lambda$settings$4(Object obj, Object obj2, Method method, Object[] objArr) throws Throwable {
        String name = method.getName();
        if (!name.equals("onCheckedChanged")) {
            if (name.equals("toString")) {
                return "CacheCleaner124Switch";
            }
            if (name.equals("hashCode")) {
                return Integer.valueOf(System.identityHashCode(obj2));
            }
            if (name.equals("equals")) {
                return Boolean.valueOf(obj2 == objArr[0]);
            }
            return null;
        }
        setEnabled(obj, Boolean.TRUE.equals(objArr[1]));
        return null;
    }

    public static void profile(Object obj) {
        try {
            final Object objCall = Continue106.call(obj, "findViewWithTag", "ca1_cache_manual124");
            final Object objCall2 = Continue106.call(obj, "findViewWithTag", "ca1_cache_manual124_title");
            if (objCall != null && objCall2 != null) {
                final Object objCall3 = Continue106.call(obj, "getContext", new Object[0]);
                start(objCall3);
                Class<?> cls = Class.forName("android.view.View$OnClickListener");
                Continue106.call(objCall, "setOnClickListener", Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: com.shabakaty.cinemana.ca1.CacheCleaner124$$ExternalSyntheticLambda3
                    @Override // java.lang.reflect.InvocationHandler
                    public final Object invoke(Object obj2, Method method, Object[] objArr) {
                        return CacheCleaner124.lambda$profile$5(objCall3, objCall, objCall2, obj2, method, objArr);
                    }
                }));
            }
        } catch (Exception e) {
            Continue106.log("cache_profile_error124", e);
        }
    }

    static /* synthetic */ Object lambda$profile$5(Object obj, Object obj2, Object obj3, Object obj4, Method method, Object[] objArr) throws Throwable {
        String name = method.getName();
        if (!name.equals("onClick")) {
            if (name.equals("toString")) {
                return "CacheCleaner124Click";
            }
            if (name.equals("hashCode")) {
                return Integer.valueOf(System.identityHashCode(obj4));
            }
            if (name.equals("equals")) {
                return Boolean.valueOf(obj4 == objArr[0]);
            }
            return null;
        }
        manual(obj, obj2, obj3);
        return null;
    }

    static void manual(final Object obj, final Object obj2, final Object obj3) {
        if (!cleaning.compareAndSet(false, true)) {
            toast(obj, I18n161.t("تنظيف الكاش جارٍ بالفعل"));
            return;
        }
        try {
            Continue106.call(obj2, "setEnabled", false);
            Continue106.call(obj3, "setText", I18n161.t("جاري تنظيف الكاش…"));
        } catch (Exception e) {
        }
        worker.execute(new Runnable() { // from class: com.shabakaty.cinemana.ca1.CacheCleaner124$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                CacheCleaner124.lambda$manual$7(obj, obj2, obj3);
            }
        });
    }

    static /* synthetic */ void lambda$manual$7(final Object obj, final Object obj2, final Object obj3) {
        final Result result;
        final Exception exc;
        try {
            try {
                Result resultCleanLocked = cleanLocked(obj, false, false);
                cleaning.set(false);
                exc = null;
                result = resultCleanLocked;
            } catch (Exception e) {
                Continue106.log("cache_manual_error124", e);
                cleaning.set(false);
                result = null;
                exc = e;
            }
            post(new Runnable() { // from class: com.shabakaty.cinemana.ca1.CacheCleaner124$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    CacheCleaner124.lambda$manual$6(obj2, obj3, exc, obj, result);
                }
            });
        } catch (Throwable th) {
            cleaning.set(false);
            throw th;
        }
    }

    static /* synthetic */ void lambda$manual$6(Object obj, Object obj2, Exception exc, Object obj3, Result result) {
        try {
            Continue106.call(obj, "setEnabled", true);
            Continue106.call(obj2, "setText", I18n161.t("تنظيف الكاش"));
        } catch (Exception e) {
        }
        if (exc == null) {
            if (result == null || result.freed() == 0) {
                toast(obj3, I18n161.t("الكاش نظيف بالفعل"));
                return;
            } else {
                toast(obj3, I18n161.t("تم تنظيف الكاش والملفات المؤقتة — تم تحرير ") + format(result.freed()));
                return;
            }
        }
        toast(obj3, I18n161.t("تعذر إكمال تنظيف الكاش"));
    }

    static Result clean(Object obj, boolean z, boolean z2) throws Exception {
        if (!cleaning.compareAndSet(false, true)) {
            return new Result();
        }
        try {
            return cleanLocked(obj, z, z2);
        } finally {
            cleaning.set(false);
        }
    }

    static Result cleanLocked(Object obj, boolean z, boolean z2) throws Exception {
        Result result = new Result();
        traceBreakdown(obj, "BEFORE");
        result.before = totalManaged(obj);
        long j = z ? z2 ? 300000L : 900000L : 120000L;
        result.fresco = clearFresco();
        File file = file(obj, "getCacheDir");
        if (file != null) {
            cleanRoot(file, j, result, result.fresco);
        }
        File file2 = file(obj, "getExternalCacheDir");
        if (file2 != null) {
            cleanRoot(file2, j, result, false);
        }
        try {
            Object objCall = Continue106.call(obj, "getExternalCacheDirs", new Object[0]);
            if (objCall instanceof Object[]) {
                for (Object obj2 : (Object[]) objCall) {
                    if ((obj2 instanceof File) && (file2 == null || !same(file2, (File) obj2))) {
                        cleanRoot((File) obj2, j, result, false);
                    }
                }
            }
        } catch (Exception e) {
        }
        cleanDisposableUserData(obj, z, result);
        result.after = totalManaged(obj);
        traceBreakdown(obj, "AFTER");
        trace(obj, (z ? "AUTO" : "MANUAL") + " before=" + result.before + " after=" + result.after + " freed=" + result.freed() + " files=" + result.files + " user_data_freed=" + result.userDataDeleted + " user_files=" + result.userFiles + " skipped=" + result.skipped + " fresco=" + result.fresco);
        return result;
    }

    static File file(Object obj, String str) {
        try {
            Object objCall = Continue106.call(obj, str, new Object[0]);
            if (objCall instanceof File) {
                return (File) objCall;
            }
            return null;
        } catch (Exception e) {
            return null;
        }
    }

    static boolean clearFresco() {
        try {
            Continue106.call(Continue106.call(Continue106.call(Class.forName("com.facebook.imagepipeline.core.ImagePipelineFactory"), "getInstance", new Object[0]), "getImagePipeline", new Object[0]), "clearDiskCaches", new Object[0]);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    static void cleanRoot(File file, long j, Result result, boolean z) throws Exception {
        if (file == null || !file.isDirectory()) {
            return;
        }
        cleanNode(file, file, file.getCanonicalPath(), System.currentTimeMillis(), j, result, z);
    }

    static boolean cleanNode(File file, File file2, String str, long j, long j2, Result result, boolean z) throws Exception {
        File[] fileArrListFiles;
        String canonicalPath = file2.getCanonicalPath();
        if (!canonicalPath.equals(str) && !canonicalPath.startsWith(str + File.separator)) {
            result.skipped++;
            return false;
        }
        boolean zEquals = canonicalPath.equals(str);
        String strSubstring = BuildConfig.FLAVOR;
        String strReplace = zEquals ? BuildConfig.FLAVOR : canonicalPath.substring(str.length() + 1).replace(File.separatorChar, '/');
        if (!strReplace.isEmpty()) {
            strSubstring = strReplace.substring(0, strReplace.indexOf(47) >= 0 ? strReplace.indexOf(47) : strReplace.length());
        }
        if (strSubstring.equals("media_cache")) {
            result.skipped++;
            return false;
        }
        if (z && strSubstring.equals("image_cache")) {
            result.skipped++;
            return false;
        }
        if (file2.isDirectory()) {
            File[] fileArrListFiles2 = file2.listFiles();
            if (fileArrListFiles2 != null) {
                for (File file3 : fileArrListFiles2) {
                    cleanNode(file, file3, str, j, j2, result, z);
                }
            }
            if (!file2.equals(file) && (fileArrListFiles = file2.listFiles()) != null && fileArrListFiles.length == 0) {
                file2.delete();
            }
            return true;
        }
        String lowerCase = file2.getName().toLowerCase(Locale.ROOT);
        if (lowerCase.startsWith("user_subtitle_")) {
            result.skipped++;
            return false;
        }
        if (lowerCase.equals("journal") || lowerCase.endsWith(".lock") || lowerCase.endsWith(".lck")) {
            result.skipped++;
            return false;
        }
        long jLastModified = file2.lastModified();
        if (jLastModified > 0 && j - jLastModified < j2) {
            result.skipped++;
            return false;
        }
        long length = file2.length();
        if (!file2.delete()) {
            result.skipped++;
            return false;
        }
        result.deleted += length;
        result.files++;
        return true;
    }

    static void cleanDisposableUserData(Object obj, boolean z, Result result) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        File file = file(obj, "getFilesDir");
        if (file != null) {
            cleanDisposableDir(new File(file, "log"), jCurrentTimeMillis, z ? 900000L : 0L, LOG_MAX_BYTES, result);
            cleanDisposableDir(new File(file, ".com.google.firebase.crashlytics"), jCurrentTimeMillis, z ? CRASH_AUTO_MIN_AGE : 300000L, Long.MAX_VALUE, result);
        }
        long j = z ? UPDATE_AUTO_MIN_AGE : 120000L;
        for (File file2 : externalFilesRoots(obj)) {
            cleanDisposableDir(new File(file2, "log"), jCurrentTimeMillis, z ? 900000L : 0L, LOG_MAX_BYTES, result);
            cleanUpdaterArtifacts(file2, jCurrentTimeMillis, j, result);
        }
    }

    static void cleanDisposableDir(File file, long j, long j2, long j3, Result result) {
        if (file == null || !file.isDirectory()) {
            return;
        }
        try {
            cleanDisposableNode(file, file, file.getCanonicalPath(), j, j2, j3, result);
        } catch (Exception e) {
            result.skipped++;
        }
    }

    static void cleanDisposableNode(File file, File file2, String str, long j, long j2, long j3, Result result) throws Exception {
        File[] fileArrListFiles;
        String canonicalPath = file2.getCanonicalPath();
        if (!canonicalPath.equals(str) && !canonicalPath.startsWith(str + File.separator)) {
            result.skipped++;
            return;
        }
        if (file2.isDirectory()) {
            File[] fileArrListFiles2 = file2.listFiles();
            if (fileArrListFiles2 != null) {
                for (File file3 : fileArrListFiles2) {
                    cleanDisposableNode(file, file3, str, j, j2, j3, result);
                }
            }
            if (file2.equals(file) || (fileArrListFiles = file2.listFiles()) == null || fileArrListFiles.length != 0) {
                return;
            }
            file2.delete();
            return;
        }
        String lowerCase = file2.getName().toLowerCase(Locale.ROOT);
        if (lowerCase.equals("journal") || lowerCase.endsWith(".lock") || lowerCase.endsWith(".lck")) {
            result.skipped++;
            return;
        }
        if ((file2.lastModified() <= 0 ? Long.MAX_VALUE : j - file2.lastModified()) >= j2 || file2.length() > j3) {
            deleteDisposable(file2, result);
        } else {
            result.skipped++;
        }
    }

    static void cleanUpdaterArtifacts(File file, long j, long j2, Result result) {
        File[] fileArrListFiles;
        if (file == null || !file.isDirectory() || (fileArrListFiles = file.listFiles()) == null) {
            return;
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isFile()) {
                String lowerCase = file2.getName().toLowerCase(Locale.ROOT);
                if (lowerCase.equals("application.apk") || lowerCase.startsWith("application.apk.") || lowerCase.startsWith("application.apk-")) {
                    if ((file2.lastModified() <= 0 ? Long.MAX_VALUE : j - file2.lastModified()) < j2) {
                        result.skipped++;
                    } else {
                        deleteDisposable(file2, result);
                    }
                }
            }
        }
    }

    static void deleteDisposable(File file, Result result) {
        long length = file.length();
        if (!file.delete()) {
            result.skipped++;
            return;
        }
        result.deleted += length;
        result.userDataDeleted += length;
        result.files++;
        result.userFiles++;
    }

    static List<File> externalFilesRoots(Object obj) {
        ArrayList arrayList = new ArrayList();
        try {
            Object objCall = Continue106.call(obj, "getExternalFilesDir", null);
            if (objCall instanceof File) {
                addUnique(arrayList, (File) objCall);
            }
        } catch (Exception e) {
        }
        try {
            Object objCall2 = Continue106.call(obj, "getExternalFilesDirs", null);
            if (objCall2 instanceof Object[]) {
                for (Object obj2 : (Object[]) objCall2) {
                    if (obj2 instanceof File) {
                        addUnique(arrayList, (File) obj2);
                    }
                }
            }
        } catch (Exception e2) {
        }
        return arrayList;
    }

    static void addUnique(List<File> list, File file) {
        if (file == null) {
            return;
        }
        Iterator<File> it = list.iterator();
        while (it.hasNext()) {
            if (same(it.next(), file)) {
                return;
            }
        }
        list.add(file);
    }

    static long totalManaged(Object obj) {
        return totalCache(obj) + transientSize(obj);
    }

    static long transientSize(Object obj) {
        File file = file(obj, "getFilesDir");
        long size = file != null ? size(new File(file, ".com.google.firebase.crashlytics"), new File(file, ".com.google.firebase.crashlytics")) + size(new File(file, "log"), new File(file, "log")) + 0 : 0L;
        for (File file2 : externalFilesRoots(obj)) {
            File file3 = new File(file2, "log");
            size += size(file3, file3);
            File[] fileArrListFiles = file2.listFiles();
            if (fileArrListFiles != null) {
                for (File file4 : fileArrListFiles) {
                    if (file4.isFile()) {
                        String lowerCase = file4.getName().toLowerCase(Locale.ROOT);
                        if (lowerCase.equals("application.apk") || lowerCase.startsWith("application.apk.") || lowerCase.startsWith("application.apk-")) {
                            size += file4.length();
                        }
                    }
                }
            }
        }
        return size;
    }

    static void traceBreakdown(Object obj, String str) {
        long size;
        long size2;
        Iterator<File> it;
        String str2;
        try {
            long j = totalCache(obj);
            File file = file(obj, "getFilesDir");
            String str3 = "log";
            long size3 = 0;
            if (file == null) {
                size = 0;
                size2 = 0;
            } else {
                File file2 = new File(file, "log");
                size = size(file2, file2);
                File file3 = new File(file, ".com.google.firebase.crashlytics");
                size2 = size(file3, file3);
            }
            Iterator<File> it2 = externalFilesRoots(obj).iterator();
            long length = 0;
            while (it2.hasNext()) {
                File next = it2.next();
                File file4 = new File(next, str3);
                size3 += size(file4, file4);
                File[] fileArrListFiles = next.listFiles();
                if (fileArrListFiles != null) {
                    int length2 = fileArrListFiles.length;
                    int i = 0;
                    while (i < length2) {
                        File file5 = fileArrListFiles[i];
                        if (!file5.isFile()) {
                            it = it2;
                            str2 = str3;
                        } else {
                            it = it2;
                            str2 = str3;
                            String lowerCase = file5.getName().toLowerCase(Locale.ROOT);
                            if (lowerCase.equals("application.apk") || lowerCase.startsWith("application.apk.") || lowerCase.startsWith("application.apk-")) {
                                length += file5.length();
                            }
                        }
                        i++;
                        it2 = it;
                        str3 = str2;
                    }
                }
                it2 = it2;
                str3 = str3;
            }
            trace(obj, "SCAN126 " + str + " cache=" + j + " private_log=" + size + " crash=" + size2 + " updater=" + length + " ext_log=" + size3);
        } catch (Exception e) {
        }
    }

    static long totalCache(Object obj) {
        File file = file(obj, "getCacheDir");
        long size = file != null ? 0 + size(file, file) : 0L;
        File file2 = file(obj, "getExternalCacheDir");
        if (file2 != null) {
            size += size(file2, file2);
        }
        try {
            Object objCall = Continue106.call(obj, "getExternalCacheDirs", new Object[0]);
            if (objCall instanceof Object[]) {
                for (Object obj2 : (Object[]) objCall) {
                    if ((obj2 instanceof File) && (file2 == null || !same(file2, (File) obj2))) {
                        size += size((File) obj2, (File) obj2);
                    }
                }
            }
        } catch (Exception e) {
        }
        return size;
    }

    static long size(File file, File file2) {
        try {
            String canonicalPath = file.getCanonicalPath();
            String canonicalPath2 = file2.getCanonicalPath();
            if (!canonicalPath2.equals(canonicalPath) && !canonicalPath2.startsWith(canonicalPath + File.separator)) {
                return 0L;
            }
            if (file2.isFile()) {
                return file2.length();
            }
            File[] fileArrListFiles = file2.listFiles();
            if (fileArrListFiles != null) {
                long size = 0;
                for (File file3 : fileArrListFiles) {
                    size += size(file, file3);
                }
                return size;
            }
            return 0L;
        } catch (Exception e) {
            return 0L;
        }
    }

    static boolean same(File file, File file2) {
        try {
            return file.getCanonicalPath().equals(file2.getCanonicalPath());
        } catch (Exception e) {
            return file.equals(file2);
        }
    }

    static void post(Runnable runnable) {
        try {
            Continue106.call(Continue106.make("android.os.Handler", Continue106.call(Class.forName("android.os.Looper"), "getMainLooper", new Object[0])), "post", runnable);
        } catch (Exception e) {
        }
    }

    static void toast(Object obj, String str) {
        try {
            Continue106.call(Continue106.call(Class.forName("android.widget.Toast"), "makeText", obj, str, 0), "show", new Object[0]);
        } catch (Exception e) {
        }
    }

    static String format(long j) {
        if (j < 1024) {
            return j + " B";
        }
        if (j < LOG_MAX_BYTES) {
            return String.format(Locale.US, "%.1f KB", Double.valueOf(j / 1024.0d));
        }
        return j < 1073741824 ? String.format(Locale.US, "%.1f MB", Double.valueOf(j / 1048576.0d)) : String.format(Locale.US, "%.2f GB", Double.valueOf(j / 1.073741824E9d));
    }

    static void trace(Object obj, String str) {
        try {
            Continue106.call(Class.forName("com.shabakaty.cinemana.features.DownloadTrace"), "log", obj, "CACHE124 " + str);
        } catch (Exception e) {
        }
    }
}
