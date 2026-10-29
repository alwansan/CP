package com.shabakaty.cinemana.ca1;

import com.connectsdk.R;
import com.liulishuo.filedownloader.BuildConfig;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import com.liulishuo.filedownloader.model.FileDownloadStatus;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
public final class Restart108 {
    static final String EXP = "com.shabakaty.cinemana.features.MkvExporter";
    static final String MAN = "com.shabakaty.cinemana.features.MkvManifestStore";
    static volatile Object context;
    static boolean dirty;
    static int generation;
    static volatile Object manager;
    static ScheduledFuture<?> next;
    static int pass;
    static volatile boolean populated;
    static boolean scanning;
    static long serviceRequested;
    static boolean started;
    static final ScheduledExecutorService worker = Executors.newSingleThreadScheduledExecutor(new ThreadFactory() { // from class: com.shabakaty.cinemana.ca1.Restart108$$ExternalSyntheticLambda0
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            return Restart108.lambda$static$0(runnable);
        }
    });
    static final Map<String, String> observations = new HashMap();
    static final Map<Integer, Long> mkvChecked = new ConcurrentHashMap();
    static final Map<Integer, Long> attempted = new ConcurrentHashMap();
    static final Map<String, Long> repairAttempted = new HashMap();
    static final Map<String, String> settled = new HashMap();

    private static File exactVideoByItemId(Object obj, String str) {
        String str2;
        File file;
        if (obj != null && str != null) {
            try {
                List list = (List) exp("readAllDownloads", exp("getDownloadsDao", obj, obj));
                if (list != null) {
                    File file2 = null;
                    for (Object obj2 : list) {
                        if (obj2 != null && str.equals(str(obj2, "s")) && (str2 = str(obj2, "x")) != null && (file = (File) exp("resolvePath", str2)) != null && mp4Complete(obj2, file)) {
                            if (file2 != null) {
                                return null;
                            }
                            file2 = file;
                        }
                    }
                    return file2;
                }
            } catch (Throwable th) {
                return null;
            }
        }
        return null;
    }

    static /* synthetic */ Thread lambda$static$0(Runnable runnable) {
        Thread thread = new Thread(runnable, "restart108");
        thread.setDaemon(true);
        return thread;
    }

    static Object cls(String str) throws Exception {
        return Class.forName(str);
    }

    static Object call(Object obj, String str, Object... objArr) throws Exception {
        return Continue106.call(obj, str, objArr);
    }

    public static Object get(Object obj, String str) throws Exception {
        return Continue106.get(obj, str);
    }

    static void set(Object obj, String str, Object obj2) throws Exception {
        Continue106.set(obj, str, obj2);
    }

    public static String str(Object obj, String str) throws Exception {
        Object obj2 = get(obj, str);
        return obj2 == null ? BuildConfig.FLAVOR : obj2.toString();
    }

    static long number(Object obj, String str) throws Exception {
        return ((Number) get(obj, str)).longValue();
    }

    public static Object exp(String str, Object... objArr) throws Exception {
        return call(cls(EXP), str, objArr);
    }

    static Object prefs(Object obj, String str) throws Exception {
        return call(obj, "getSharedPreferences", str, 0);
    }

    static void put(Object obj, String str, String str2) throws Exception {
        String str3 = (String) call(obj, "getString", str, BuildConfig.FLAVOR);
        if (str2 == null || !str2.equals(str3)) {
            if (str2 == null && str3.isEmpty()) {
                return;
            }
            Object objCall = call(obj, "edit", new Object[0]);
            if (str2 == null) {
                call(objCall, "remove", str);
            } else {
                call(objCall, "putString", str, str2);
            }
            if (!Boolean.TRUE.equals(call(objCall, "commit", new Object[0]))) {
                throw new IOException("durable write failed");
            }
        }
    }

    static void trace(String str) {
        try {
            if (context != null) {
                call(cls("com.shabakaty.cinemana.features.DownloadTrace"), "log", context, "RECOVERY119 " + str);
            }
        } catch (Exception e) {
        }
    }

    static void log(String str, Exception exc) {
        Throwable cause = exc;
        while (cause != null && cause.getCause() != null) {
            cause = cause.getCause();
        }
        trace(str + (cause == null ? BuildConfig.FLAVOR : " error=" + cause.getClass().getSimpleName() + " message=" + cause.getMessage()));
        if (exc != null) {
            Continue106.log(str, exc);
        }
    }

    static void observe(Object obj, String str) throws Exception {
        String str2 = str(obj, "s");
        String string = Long.toString(number(obj, "r"));
        String str3 = str + " state=" + status(obj);
        if (str3.equals(observations.put(string, str3))) {
            return;
        }
        trace("item=" + str2 + " task=" + string + " phase=" + str3);
    }

    public static synchronized void wake() {
        started = true;
        pass = 0;
        if (scanning) {
            dirty = true;
            return;
        }
        ScheduledFuture<?> scheduledFuture = next;
        if (scheduledFuture == null || scheduledFuture.isDone() || next.getDelay(TimeUnit.MILLISECONDS) > 250) {
            ScheduledFuture<?> scheduledFuture2 = next;
            if (scheduledFuture2 != null) {
                scheduledFuture2.cancel(false);
            }
            final int i = generation + 1;
            generation = i;
            next = worker.schedule(new Runnable() { // from class: com.shabakaty.cinemana.ca1.Restart108$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    Restart108.tick(i);
                }
            }, 250L, TimeUnit.MILLISECONDS);
        }
    }

    public static void bootstrap(Object obj) {
        try {
            if (main(obj)) {
                context = call(obj, "getApplicationContext", new Object[0]);
                trace("BOOT_READY");
                Performance116.start();
                CacheCleaner124.start(context);
                AppUpdater133.cleanupAfterUpdate(context);
                Persistence123.start(context);
                wake();
            }
        } catch (Exception e) {
            log("boot_error", e);
        }
    }

    static /* synthetic */ void lambda$service$2() {
        try {
            call(get(cls("com.shabakaty.downloader.services.DownloaderService"), "x"), "a", context);
            trace("NATIVE_SERVICE_REQUESTED");
        } catch (Exception e) {
            log("service_error", e);
        }
    }

    static void service() throws Exception {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - serviceRequested < 30000) {
            return;
        }
        serviceRequested = jCurrentTimeMillis;
        call(Continue106.make("android.os.Handler", call(cls("android.os.Looper"), "getMainLooper", new Object[0])), "post", new Runnable() { // from class: com.shabakaty.cinemana.ca1.Restart108$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                Restart108.lambda$service$2();
            }
        });
    }

    static String token(String str) throws Exception {
        return (String) call(cls(MAN), "tokenFromPath", str);
    }

    public static String identityToken(Object obj) {
        Object objExp;
        try {
            String str = str(obj, FileDownloadModel.PATH);
            String str2 = str(obj, "id");
            int iNumber = (int) number(obj, "downloadTaskId");
            Object objApp = context;
            if (objApp == null) {
                objApp = Continue106.app();
            }
            if (objApp != null && iNumber != 0 && (objExp = exp("readDownloadsByTaskId", exp("getDownloadsDao", objApp, objApp), Integer.valueOf(iNumber))) != null && str2.equals(str(objExp, "s"))) {
                String str3 = token(str(objExp, "x"));
                if (!str3.isEmpty()) {
                    return str3;
                }
                String str4 = (String) call(prefs(objApp, "ca1_restart108"), "getString", "token:" + str2 + ":" + iNumber, BuildConfig.FLAVOR);
                if (!str4.isEmpty()) {
                    return str4;
                }
            }
            return token(str);
        } catch (Exception e) {
            return BuildConfig.FLAVOR;
        }
    }

    public static File exactVideo(Object obj, Object obj2) {
        try {
            String str = str(obj2, "id");
            int iNumber = (int) number(obj2, "downloadTaskId");
            Object obj3 = null;
            for (Object obj4 : (List) exp("readAllDownloads", exp("getDownloadsDao", obj, obj))) {
                if (str.equals(str(obj4, "s")) && (iNumber == 0 || iNumber == number(obj4, "r"))) {
                    File file = (File) exp("resolvePath", str(obj4, "x"));
                    if (file != null && mp4Complete(obj4, file)) {
                        if (obj3 != null) {
                            return null;
                        }
                        obj3 = obj4;
                    }
                }
            }
            if (obj3 != null) {
                return (File) exp("resolvePath", str(obj3, "x"));
            }
            File fileExactVideoByItemId = exactVideoByItemId(obj, str);
            if (fileExactVideoByItemId != null) {
                return fileExactVideoByItemId;
            }
            return null;
        } catch (Exception e) {
            log("exact_video_error", e);
            return null;
        }
    }

    static boolean deleted(String str) throws Exception {
        return Boolean.TRUE.equals(call(prefs(context, "ca1_delete_intent"), "getBoolean", str, false));
    }

    static boolean main(Object obj) throws Exception {
        try {
            Object objCall = call(cls("android.app.Application"), "getProcessName", new Object[0]);
            if (objCall != null && !objCall.toString().isEmpty()) {
                return objCall.equals(call(obj, "getPackageName", new Object[0]));
            }
        } catch (ClassNotFoundException e) {
        } catch (NoSuchMethodException e2) {
        }
        return !Boolean.TRUE.equals(call(cls("com.liulishuo.filedownloader.util.FileDownloadUtils"), "isDownloaderProcess", obj));
    }

    public static synchronized void attach(Object obj) {
        try {
            Object obj2 = get(obj, "a");
            if (main(obj2)) {
                context = call(obj2, "getApplicationContext", new Object[0]);
                manager = obj;
                trace("MANAGER_ATTACHED");
                wake();
            }
        } catch (Exception e) {
            log("restart_init_error108", e);
        }
    }

    public static synchronized void start(Object obj) {
        populated = true;
        attach(obj);
    }

    public static boolean canRestore(Object obj, Object obj2) {
        try {
            Object obj3 = get(obj, "a");
            return main(obj3) && canRetry(obj, ((Number) call(get(obj2, "a"), "getId", new Object[0])).intValue()) && !Boolean.TRUE.equals(call(prefs(obj3, "ca1_delete_intent"), "getBoolean", str(obj2, "e"), false));
        } catch (Exception e) {
            log("restore_gate_error", e);
            return false;
        }
    }

    public static boolean canRetry(Object obj, int i) {
        try {
            Object obj2 = get(obj, "a");
            if (main(obj2) && !((String) call(prefs(obj2, "ca1_restart108"), "getString", "intent:" + i, BuildConfig.FLAVOR)).endsWith("|PAUSE") && !Queue110.isPaused(i)) {
                Object objExp = exp("readDownloadsByTaskId", exp("getDownloadsDao", obj2, obj2), Integer.valueOf(i));
                return objExp == null || !Boolean.TRUE.equals(call(prefs(obj2, "ca1_delete_intent"), "getBoolean", str(objExp, "s"), false));
            }
            return false;
        } catch (Exception e) {
            log("retry_gate_error", e);
            return false;
        }
    }

    public static boolean admitted(Object obj, Object obj2) {
        try {
            Object obj3 = get(obj, "a");
            context = call(obj3, "getApplicationContext", new Object[0]);
            if (!main(obj3)) {
                return true;
            }
            Object obj4 = get(obj2, "a");
            int iIntValue = ((Number) call(obj4, "getId", new Object[0])).intValue();
            if (iIntValue == 0) {
                return false;
            }
            String str = str(obj2, "e");
            context = call(obj3, "getApplicationContext", new Object[0]);
            manager = obj;
            Queue110.remember(obj, obj2);
            Object objCall = call(prefs(obj3, "ca1_restart108"), "edit", new Object[0]);
            call(objCall, "putString", "intent:" + iIntValue, str + "|RUN");
            String str2 = token((String) call(obj4, "getPath", new Object[0]));
            if (!str2.isEmpty()) {
                call(objCall, "putString", "token:" + str + ":" + iIntValue, str2);
            }
            if (!Boolean.TRUE.equals(call(objCall, "commit", new Object[0]))) {
                throw new IOException("durable intent write failed");
            }
            wake();
            return true;
        } catch (Exception e) {
            log("restart_intent_error108", e);
            return false;
        }
    }

    public static void paused(Object obj, int i) {
        String strSubstring = BuildConfig.FLAVOR;
        try {
            Object obj2 = get(obj, "a");
            if (main(obj2)) {
                Queue110.pause(i);
                Object objPrefs = prefs(obj2, "ca1_restart108");
                String str = (String) call(objPrefs, "getString", "intent:" + i, BuildConfig.FLAVOR);
                int iLastIndexOf = str.lastIndexOf(R.styleable.AppCompatTheme_windowMinWidthMajor);
                String str2 = "intent:" + i;
                StringBuilder sb = new StringBuilder();
                if (iLastIndexOf >= 0) {
                    strSubstring = str.substring(0, iLastIndexOf);
                }
                put(objPrefs, str2, sb.append(strSubstring).append("|PAUSE").toString());
            }
        } catch (Exception e) {
            log("restart_pause_error108", e);
        }
    }

    static boolean wanted(String str, String str2, String str3, String str4) {
        if (str.endsWith("|PAUSE")) {
            return false;
        }
        if (str.equals(str2 + "|RUN")) {
            return true;
        }
        if (str.isEmpty() && !"PAUSED".equals(str4)) {
            return "PAUSED".equals(str3) ? Arrays.asList("PENDING", "STARTED", "PROGRESS", "RETRY", "REGISTERED").contains(str4) : Arrays.asList("PENDING", "STARTED", "PROGRESS", "RETRY", "ERROR", "WARN").contains(str3);
        }
        return false;
    }

    static String status(Object obj) throws Exception {
        Object obj2 = get(obj, "z");
        return obj2 instanceof Enum ? ((Enum) obj2).name() : obj2.toString();
    }

    static boolean active(int i) throws Exception {
        Object objCall = call(call(cls("com.liulishuo.filedownloader.FileDownloadList"), "getImpl", new Object[0]), "get", Integer.valueOf(i));
        return objCall != null && Boolean.TRUE.equals(call(call(objCall, "getOrigin", new Object[0]), "isRunning", new Object[0]));
    }

    static boolean converting(String str) throws Exception {
        boolean zContains;
        Set set = (Set) get(cls(EXP), "ACTIVE_JOB_KEYS");
        synchronized (get(cls(EXP), "JOB_LOCK")) {
            zContains = set.contains("item:" + str);
        }
        return zContains;
    }

    static String legacy(Object obj) throws Exception {
        String str = str(obj, "x");
        return (String) call(prefs(context, "cnm_mkv_manifest_v66"), "getString", (String) call(cls(MAN), "taskStateKey", (String) call(cls(MAN), "tokenFromPath", str), str), BuildConfig.FLAVOR);
    }

    public static boolean mp4Complete(Object obj, File file) throws Exception {
        if (!file.isFile() || file.length() < 1024 || !file.getName().toLowerCase(Locale.ROOT).endsWith(".mp4")) {
            return false;
        }
        long jNumber = number(obj, "y");
        if (jNumber <= 0 || file.length() != jNumber) {
            return false;
        }
        if ("COMPLETED".equals(status(obj))) {
            return true;
        }
        String str = (String) call(cls(MAN), "tokenFromPath", file.getPath());
        Object objPrefs = prefs(context, "cnm_mkv_manifest_v66");
        return number(obj, "t") >= jNumber && "COMPLETED_VERIFIED".equals((String) call(objPrefs, "getString", call(cls(MAN), "videoStateKey", str), BuildConfig.FLAVOR)) && file.getCanonicalPath().equals(new File((String) call(objPrefs, "getString", call(cls(MAN), "videoPathKey", str), BuildConfig.FLAVOR)).getCanonicalPath());
    }

    static File root() throws Exception {
        return new File((File) call(cls("android.os.Environment"), "getExternalStorageDirectory", new Object[0]), "Cinemana").getCanonicalFile();
    }

    static boolean safe(File file) throws Exception {
        return file.getCanonicalPath().startsWith(root().getPath() + File.separator);
    }

    static boolean valid(File file, long j) throws Exception {
        return Boolean.TRUE.equals(call(cls("com.shabakaty.cinemana.ca1.Final100"), "valid", file, Long.valueOf(j)));
    }

    static String digest(File file) throws Exception {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            byte[] bArr = new byte[65536];
            while (true) {
                int i = fileInputStream.read(bArr);
                if (i == -1) {
                    break;
                }
                messageDigest.update(bArr, 0, i);
            }
            fileInputStream.close();
            StringBuilder sb = new StringBuilder();
            for (byte b : messageDigest.digest()) {
                sb.append(String.format(Locale.ROOT, "%02x", Integer.valueOf(b & FileDownloadStatus.error)));
            }
            return sb.toString();
        } catch (Throwable th) {
            try {
                fileInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static String encode(Properties properties) throws Exception {
        StringWriter stringWriter = new StringWriter();
        properties.store(stringWriter, (String) null);
        return stringWriter.toString();
    }

    static Properties decode(String str) throws Exception {
        Properties properties = new Properties();
        properties.load(new StringReader(str));
        return properties;
    }

    static String key(String str) {
        return "journal:" + str;
    }

    static Object journalPrefs() throws Exception {
        return prefs(context, "ca1_restart108");
    }

    static Properties journal(String str) throws Exception {
        String str2 = (String) call(journalPrefs(), "getString", key(str), BuildConfig.FLAVOR);
        if (str2.isEmpty()) {
            return null;
        }
        return decode(str2);
    }

    static int taskFor(Object obj) throws Exception {
        int iNumber = (int) number(obj, "downloadTaskId");
        String str = str(obj, "id");
        int iNumber2 = 0;
        Object objExp = exp("getDownloadsDao", context, context);
        if (iNumber != 0) {
            Object objExp2 = exp("readDownloadsByTaskId", objExp, Integer.valueOf(iNumber));
            if (objExp2 == null || !str.equals(str(objExp2, "s"))) {
                throw new IOException("task identity mismatch");
            }
            return iNumber;
        }
        for (Object obj2 : (List) exp("readAllDownloads", objExp)) {
            if (str.equals(str(obj2, "s")) && str(obj2, "x").toLowerCase(Locale.ROOT).endsWith(".mp4")) {
                if (iNumber2 != 0) {
                    throw new IOException("ambiguous task");
                }
                iNumber2 = (int) number(obj2, "r");
            }
        }
        if (iNumber2 == 0) {
            throw new IOException("missing task");
        }
        set(obj, "downloadTaskId", Integer.valueOf(iNumber2));
        return iNumber2;
    }

    public static void ready(Object obj, Object obj2, File file) {
        try {
            context = call(obj, "getApplicationContext", new Object[0]);
            Fresh121.validate(context, obj2);
            String str = str(obj2, "id");
            if (deleted(str)) {
                throw new IOException("deleted item");
            }
            int iTaskFor = taskFor(obj2);
            if (!safe(file) || !valid(file, file.length())) {
                throw new IOException("invalid final output");
            }
            Properties properties = new Properties();
            properties.setProperty("id", str);
            properties.setProperty("task", Integer.toString(iTaskFor));
            properties.setProperty("phase", "READY");
            properties.setProperty("source", file.getCanonicalPath());
            properties.setProperty("size", Long.toString(file.length()));
            properties.setProperty("sha256", digest(file));
            Object objExp = exp("readDownloadsByTaskId", exp("getDownloadsDao", context, context), Integer.valueOf(iTaskFor));
            File file2 = new File(str(objExp, "x"));
            if (safe(file2) && mp4Complete(objExp, file2)) {
                properties.setProperty("input", file2.getCanonicalPath());
                properties.setProperty("inputSize", Long.toString(file2.length()));
            }
            Fresh121.validate(context, obj2);
            Lease115.Lease lease = Lease115.current.get();
            if (lease != null && lease.requestEpoch != null) {
                properties.setProperty("requestEpoch", lease.requestEpoch);
            }
            put(journalPrefs(), key(str), encode(properties));
        } catch (Exception e) {
            log("restart_ready_error108", e);
            throw new IllegalStateException("MKV checkpoint failed", e);
        }
    }

    public static void moving(Object obj, File file, File file2) {
        try {
            Fresh121.validate(context, obj);
            String str = str(obj, "id");
            Properties propertiesJournal = journal(str);
            if (propertiesJournal == null) {
                throw new IOException("missing ready checkpoint");
            }
            if (!safe(file2) || !file.getCanonicalPath().equals(propertiesJournal.getProperty("source")) || !Integer.toString(taskFor(obj)).equals(propertiesJournal.getProperty("task"))) {
                throw new IOException("move identity mismatch");
            }
            propertiesJournal.setProperty("target", file2.getCanonicalPath());
            propertiesJournal.setProperty("phase", "MOVING");
            put(journalPrefs(), key(str), encode(propertiesJournal));
        } catch (Exception e) {
            log("restart_move_error108", e);
            throw new IllegalStateException("MKV move checkpoint failed", e);
        }
    }

    static boolean matches(File file, Properties properties) throws Exception {
        return valid(file, Long.parseLong(properties.getProperty("size"))) && digest(file).equals(properties.getProperty("sha256"));
    }

    static boolean repair(Object obj, Object obj2, Object obj3, Object obj4) throws Exception {
        Object objExp;
        String str = str(obj, "id");
        Properties propertiesJournal = journal(str);
        if (propertiesJournal == null) {
            return false;
        }
        if (propertiesJournal.getProperty("requestEpoch") != null && !propertiesJournal.getProperty("requestEpoch").equals(Fresh121.epoch(context, str))) {
            return false;
        }
        if (!str.equals(propertiesJournal.getProperty("id")) || !Long.toString(number(obj2, "r")).equals(propertiesJournal.getProperty("task"))) {
            throw new IOException("journal identity mismatch");
        }
        if (converting(str) || active((int) number(obj2, "r"))) {
            return true;
        }
        File file = new File(propertiesJournal.getProperty("source"));
        File file2 = new File(propertiesJournal.getProperty("target", propertiesJournal.getProperty("source")));
        if (!safe(file) || !safe(file2)) {
            throw new IOException("unsafe checkpoint path");
        }
        if (!matches(file2, propertiesJournal)) {
            file2 = matches(file, propertiesJournal) ? file : null;
        }
        if (file2 == null) {
            return false;
        }
        if (deleted(str)) {
            return true;
        }
        File file3 = new File((File) exp("ensureLogDir", new Object[0]), "restart108.log");
        if ((file2.getCanonicalPath().contains("/work/") && ((objExp = exp("organizeMkv", context, file2, obj, file3)) == null || (file2 = (File) get(objExp, "finalFile")) == null || !safe(file2) || !matches(file2, propertiesJournal))) || deleted(str) || !Boolean.TRUE.equals(exp("promoteDatabaseWithRetry", context, obj, file2, file3))) {
            return true;
        }
        Object objExp2 = exp("readDownloadsByTaskId", obj4, Integer.valueOf((int) number(obj2, "r")));
        Object obj5 = get(exp("readCombinedById", obj3, str), "cinemanaDownloadItem");
        if (file2.getCanonicalPath().equals(str(objExp2, "x")) && file2.getCanonicalPath().equals(str(obj5, FileDownloadModel.PATH)) && number(objExp2, "y") == file2.length()) {
            long jNumber = number(obj5, "downloadTaskId");
            if (jNumber != number(obj2, "r")) {
                if (jNumber == 0) {
                    trace("RECOVERY_ACCEPT_ZERO_TASK_AFTER_PATH_SIZE_CHECK");
                }
            }
            exp("writeIdentityRecord", context, obj5, file2, exp("hasNoSubPrefix", file2.getName()));
            call(cls("com.shabakaty.cinemana.features.MkvStateStore"), "setBusy", context, obj5, false, "READY");
            call(cls("com.shabakaty.cinemana.ca1.Commit105"), "completed", context, obj5, file2);
            String property = propertiesJournal.getProperty("input", BuildConfig.FLAVOR);
            if (!property.isEmpty()) {
                File file4 = new File(property);
                if (safe(file4) && file4.getName().toLowerCase(Locale.ROOT).endsWith(".mp4") && file4.length() == Long.parseLong(propertiesJournal.getProperty("inputSize"))) {
                    file4.delete();
                }
            }
            if (file.isFile() && !file.getCanonicalPath().equals(file2.getCanonicalPath()) && matches(file, propertiesJournal)) {
                file.delete();
            }
            put(journalPrefs(), key(str), null);
            log("restart_committed108", null);
            return true;
        }
        throw new IOException("database commit incomplete target=" + file2 + " downloads=" + str(objExp2, "x") + " primary=" + str(obj5, FileDownloadModel.PATH) + " size=" + number(objExp2, "y") + " expected=" + file2.length() + " task=" + number(obj5, "downloadTaskId") + " expectedTask=" + number(obj2, "r"));
    }

    /* JADX WARN: Code duplicated, block: B:111:0x02df A[Catch: Exception -> 0x0604, TryCatch #17 {Exception -> 0x0604, blocks: (B:86:0x0243, B:90:0x0260, B:92:0x0284, B:94:0x028f, B:96:0x029b, B:98:0x02a5, B:107:0x02ca, B:109:0x02db, B:111:0x02df, B:113:0x02f6, B:114:0x030d, B:118:0x0325, B:120:0x032b, B:122:0x0331, B:123:0x0345, B:125:0x0357, B:127:0x0361, B:128:0x0375, B:130:0x0388, B:131:0x039c, B:132:0x03d9), top: B:274:0x0243 }] */
    /* JADX WARN: Code duplicated, block: B:114:0x030d A[Catch: Exception -> 0x0604, TryCatch #17 {Exception -> 0x0604, blocks: (B:86:0x0243, B:90:0x0260, B:92:0x0284, B:94:0x028f, B:96:0x029b, B:98:0x02a5, B:107:0x02ca, B:109:0x02db, B:111:0x02df, B:113:0x02f6, B:114:0x030d, B:118:0x0325, B:120:0x032b, B:122:0x0331, B:123:0x0345, B:125:0x0357, B:127:0x0361, B:128:0x0375, B:130:0x0388, B:131:0x039c, B:132:0x03d9), top: B:274:0x0243 }] */
    /* JADX WARN: Code duplicated, block: B:118:0x0325 A[Catch: Exception -> 0x0604, TryCatch #17 {Exception -> 0x0604, blocks: (B:86:0x0243, B:90:0x0260, B:92:0x0284, B:94:0x028f, B:96:0x029b, B:98:0x02a5, B:107:0x02ca, B:109:0x02db, B:111:0x02df, B:113:0x02f6, B:114:0x030d, B:118:0x0325, B:120:0x032b, B:122:0x0331, B:123:0x0345, B:125:0x0357, B:127:0x0361, B:128:0x0375, B:130:0x0388, B:131:0x039c, B:132:0x03d9), top: B:274:0x0243 }] */
    /* JADX WARN: Code duplicated, block: B:140:0x0429 A[Catch: Exception -> 0x0600, TryCatch #10 {Exception -> 0x0600, blocks: (B:138:0x0407, B:140:0x0429, B:142:0x0437, B:144:0x043d, B:146:0x0443, B:148:0x0449, B:150:0x0453, B:152:0x045b, B:154:0x0467, B:156:0x046d, B:158:0x0484, B:160:0x0488, B:162:0x048c, B:164:0x0492, B:166:0x04a4, B:168:0x04b1, B:169:0x04d1, B:173:0x04e9, B:175:0x0511, B:178:0x0525, B:180:0x0529, B:183:0x0533), top: B:260:0x0407 }] */
    /* JADX WARN: Code duplicated, block: B:169:0x04d1 A[Catch: Exception -> 0x0600, TryCatch #10 {Exception -> 0x0600, blocks: (B:138:0x0407, B:140:0x0429, B:142:0x0437, B:144:0x043d, B:146:0x0443, B:148:0x0449, B:150:0x0453, B:152:0x045b, B:154:0x0467, B:156:0x046d, B:158:0x0484, B:160:0x0488, B:162:0x048c, B:164:0x0492, B:166:0x04a4, B:168:0x04b1, B:169:0x04d1, B:173:0x04e9, B:175:0x0511, B:178:0x0525, B:180:0x0529, B:183:0x0533), top: B:260:0x0407 }] */
    /* JADX WARN: Code duplicated, block: B:175:0x0511 A[Catch: Exception -> 0x0600, TryCatch #10 {Exception -> 0x0600, blocks: (B:138:0x0407, B:140:0x0429, B:142:0x0437, B:144:0x043d, B:146:0x0443, B:148:0x0449, B:150:0x0453, B:152:0x045b, B:154:0x0467, B:156:0x046d, B:158:0x0484, B:160:0x0488, B:162:0x048c, B:164:0x0492, B:166:0x04a4, B:168:0x04b1, B:169:0x04d1, B:173:0x04e9, B:175:0x0511, B:178:0x0525, B:180:0x0529, B:183:0x0533), top: B:260:0x0407 }] */
    /* JADX WARN: Code duplicated, block: B:244:0x01fd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:258:0x01d0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:262:0x01cc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:285:0x02ca A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:287:0x02ad A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:288:0x0209 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:289:0x025a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:291:0x02db A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:298:0x03d9 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:307:0x04e9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:308:0x03eb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:310:0x05e5 A[ADDED_TO_REGION, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:313:0x0321 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:50:0x0151  */
    /* JADX WARN: Code duplicated, block: B:51:0x015c A[Catch: Exception -> 0x0615, TRY_ENTER, TRY_LEAVE, TryCatch #8 {Exception -> 0x0615, blocks: (B:41:0x010b, B:43:0x0111, B:47:0x011f, B:51:0x015c), top: B:256:0x010b }] */
    /* JADX WARN: Code duplicated, block: B:60:0x01c0 A[Catch: Exception -> 0x060a, TRY_LEAVE, TryCatch #4 {Exception -> 0x060a, blocks: (B:54:0x0181, B:56:0x01a7, B:58:0x01b3, B:60:0x01c0, B:53:0x0167), top: B:248:0x0181 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:80:0x0219 A[Catch: Exception -> 0x02ab, TRY_ENTER, TryCatch #2 {Exception -> 0x02ab, blocks: (B:76:0x01fd, B:80:0x0219, B:82:0x0227), top: B:244:0x01fd }] */
    /* JADX WARN: Code duplicated, block: B:82:0x0227 A[Catch: Exception -> 0x02ab, TRY_LEAVE, TryCatch #2 {Exception -> 0x02ab, blocks: (B:76:0x01fd, B:80:0x0219, B:82:0x0227), top: B:244:0x01fd }] */
    /* JADX WARN: Code duplicated, block: B:92:0x0284 A[Catch: Exception -> 0x0604, TryCatch #17 {Exception -> 0x0604, blocks: (B:86:0x0243, B:90:0x0260, B:92:0x0284, B:94:0x028f, B:96:0x029b, B:98:0x02a5, B:107:0x02ca, B:109:0x02db, B:111:0x02df, B:113:0x02f6, B:114:0x030d, B:118:0x0325, B:120:0x032b, B:122:0x0331, B:123:0x0345, B:125:0x0357, B:127:0x0361, B:128:0x0375, B:130:0x0388, B:131:0x039c, B:132:0x03d9), top: B:274:0x0243 }] */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    static void reconcile() throws Exception {
        Object obj;
        Object obj2;
        Object obj3;
        Exception exc;
        Object obj4;
        Object obj5;
        File file;
        Object obj6;
        Object obj7;
        String str;
        String string;
        Object obj8;
        Object obj9;
        String str2;
        String str3 = "b";
        String str4 = "y";
        String str5 = "|";
        int i = 2;
        char c = 0;
        Object objExp = exp("getDownloadsDao", context, context);
        Object objCall = call(context, "h", new Object[0]);
        List list = (List) exp("readAllDownloads", objExp);
        Object objJournalPrefs = journalPrefs();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Object next2 = it.next();
            try {
                String str6 = str(next2, "s");
                String str7 = str(next2, "x");
                int iNumber = (int) number(next2, "r");
                if (deleted(str6)) {
                    observe(next2, "DELETED");
                } else {
                    String str8 = token(str7);
                    if (!str8.isEmpty()) {
                        put(objJournalPrefs, "token:" + str6 + ":" + iNumber, str8);
                    }
                    Object[] objArr = new Object[i];
                    objArr[c] = objCall;
                    objArr[1] = str6;
                    Object objExp2 = exp("readCombinedById", objArr);
                    Object obj10 = objExp2 == null ? null : get(objExp2, "cinemanaDownloadItem");
                    if (obj10 != null) {
                        obj4 = objExp;
                        try {
                            int iNumber2 = (int) number(obj10, "downloadTaskId");
                            if (iNumber2 != 0 && iNumber2 != iNumber) {
                                observe(next2, "FOREIGN_TASK");
                                objExp = obj4;
                                i = 2;
                            } else if (iNumber2 == 0) {
                                set(obj10, "downloadTaskId", Integer.valueOf(iNumber));
                            }
                        } catch (Exception e) {
                            e = e;
                            str3 = str3;
                            str4 = str4;
                            str5 = str5;
                            obj2 = objCall;
                            obj3 = objJournalPrefs;
                            it = it;
                            obj = obj4;
                        }
                    } else {
                        obj4 = objExp;
                    }
                    try {
                        if (obj10 != null) {
                            try {
                                if (journal(str6) != null) {
                                    long jCurrentTimeMillis = System.currentTimeMillis();
                                    Map<String, Long> map = repairAttempted;
                                    Long l = map.get(str6);
                                    if (l == null || jCurrentTimeMillis - l.longValue() >= 20000) {
                                        map.put(str6, Long.valueOf(jCurrentTimeMillis));
                                        obj5 = obj4;
                                        try {
                                            if (repair(obj10, next2, objCall, obj5)) {
                                                observe(next2, "TRANSACTION_RECONCILED_OR_ACTIVE");
                                                objExp = obj5;
                                            } else {
                                                file = new File(str7);
                                                obj6 = obj10;
                                                StringBuilder sbAppend = new StringBuilder().append(str7).append(str5).append(number(next2, str4)).append(str5).append(status(next2)).append(str5);
                                                if (obj6 == null) {
                                                    obj7 = obj6;
                                                    str = BuildConfig.FLAVOR;
                                                } else {
                                                    obj7 = obj6;
                                                    str = str(obj7, FileDownloadModel.PATH) + str5 + number(obj7, "downloadTaskId");
                                                }
                                                string = sbAppend.append(str).append(str5).append(file.length()).append(str5).append(file.lastModified()).toString();
                                                if (file.isFile() || !string.equals(settled.get(str6))) {
                                                    try {
                                                        if (valid(file, number(next2, str4))) {
                                                            try {
                                                                if (manager != null) {
                                                                    try {
                                                                        str5 = str5;
                                                                        try {
                                                                            str2 = "COMPLETED";
                                                                            call(cls("com.shabakaty.cinemana.ca1.Final100"), "restore", manager, next2);
                                                                        } catch (Exception e2) {
                                                                            e = e2;
                                                                            obj = obj5;
                                                                            obj2 = objCall;
                                                                            obj3 = objJournalPrefs;
                                                                            exc = e;
                                                                            observe(next2, "ERROR_" + exc.getClass().getSimpleName());
                                                                            log("restart_item_error108", exc);
                                                                            objJournalPrefs = obj3;
                                                                            str3 = str3;
                                                                            str4 = str4;
                                                                            it = it;
                                                                            str5 = str5;
                                                                            objExp = obj;
                                                                            objCall = obj2;
                                                                            i = 2;
                                                                            c = 0;
                                                                        }
                                                                    } catch (Exception e3) {
                                                                        e = e3;
                                                                        str5 = str5;
                                                                    }
                                                                } else {
                                                                    str5 = str5;
                                                                    str2 = "COMPLETED";
                                                                }
                                                                if (obj7 != null) {
                                                                    try {
                                                                        if (file.getCanonicalPath().contains("/work/")) {
                                                                            ready(context, obj7, file);
                                                                            repair(obj7, next2, objCall, obj5);
                                                                            obj = obj5;
                                                                            obj2 = objCall;
                                                                            obj9 = objJournalPrefs;
                                                                        } else {
                                                                            if (file.getCanonicalPath().equals(str(obj7, FileDownloadModel.PATH))) {
                                                                                obj = obj5;
                                                                                obj2 = objCall;
                                                                                obj9 = objJournalPrefs;
                                                                            } else {
                                                                                Object[] objArr2 = new Object[4];
                                                                                objArr2[0] = context;
                                                                                objArr2[1] = obj7;
                                                                                objArr2[2] = file;
                                                                                obj = obj5;
                                                                                obj2 = objCall;
                                                                                obj9 = objJournalPrefs;
                                                                                try {
                                                                                    objArr2[3] = new File((File) exp("ensureLogDir", new Object[0]), "restart108.log");
                                                                                    exp("promoteDatabaseWithRetry", objArr2);
                                                                                } catch (Exception e4) {
                                                                                    e = e4;
                                                                                    str3 = str3;
                                                                                    str4 = str4;
                                                                                    obj3 = obj9;
                                                                                    exc = e;
                                                                                    observe(next2, "ERROR_" + exc.getClass().getSimpleName());
                                                                                    log("restart_item_error108", exc);
                                                                                    objJournalPrefs = obj3;
                                                                                    str3 = str3;
                                                                                    str4 = str4;
                                                                                    it = it;
                                                                                    str5 = str5;
                                                                                    objExp = obj;
                                                                                    objCall = obj2;
                                                                                    i = 2;
                                                                                    c = 0;
                                                                                }
                                                                            }
                                                                            call(cls("com.shabakaty.cinemana.ca1.Commit105"), "repair", context, obj7);
                                                                            if (file.getCanonicalPath().equals(str(obj7, FileDownloadModel.PATH)) && number(obj7, "downloadTaskId") == iNumber && number(next2, str4) == file.length() && str2.equals(status(next2))) {
                                                                                settled.put(str6, string);
                                                                            }
                                                                        }
                                                                    } catch (Exception e5) {
                                                                        e = e5;
                                                                        obj = obj5;
                                                                        obj2 = objCall;
                                                                        obj9 = objJournalPrefs;
                                                                        str3 = str3;
                                                                        str4 = str4;
                                                                        obj3 = obj9;
                                                                        exc = e;
                                                                        observe(next2, "ERROR_" + exc.getClass().getSimpleName());
                                                                        log("restart_item_error108", exc);
                                                                        objJournalPrefs = obj3;
                                                                        str3 = str3;
                                                                        str4 = str4;
                                                                        it = it;
                                                                        str5 = str5;
                                                                        objExp = obj;
                                                                        objCall = obj2;
                                                                        i = 2;
                                                                        c = 0;
                                                                    }
                                                                } else {
                                                                    obj = obj5;
                                                                    obj2 = objCall;
                                                                    obj9 = objJournalPrefs;
                                                                }
                                                                str5 = str5;
                                                                objExp = obj;
                                                                objCall = obj2;
                                                                objJournalPrefs = obj9;
                                                            } catch (Exception e6) {
                                                                e = e6;
                                                                str5 = str5;
                                                            }
                                                        } else {
                                                            str5 = str5;
                                                            obj = obj5;
                                                            obj2 = objCall;
                                                            obj8 = objJournalPrefs;
                                                            if (active(iNumber)) {
                                                                if (manager != null || Boolean.TRUE.equals(call(get(manager, str3), "isServiceConnected", new Object[0]))) {
                                                                    observe(next2, "NATIVE_ACTIVE");
                                                                } else {
                                                                    observe(next2, "WAIT_NATIVE_SERVICE");
                                                                    call(get(manager, str3), "bindService", new Object[0]);
                                                                    service();
                                                                }
                                                                it = it;
                                                                str5 = str5;
                                                                objExp = obj;
                                                                objCall = obj2;
                                                                objJournalPrefs = obj8;
                                                                i = 2;
                                                                c = 0;
                                                            } else if (obj7 == null && mp4Complete(next2, file)) {
                                                                if (converting(str6)) {
                                                                    observe(next2, "MKV_NATIVE_ACTIVE");
                                                                    it = it;
                                                                    str5 = str5;
                                                                    objExp = obj;
                                                                    objCall = obj2;
                                                                    objJournalPrefs = obj8;
                                                                    i = 2;
                                                                    c = 0;
                                                                } else {
                                                                    long jCurrentTimeMillis2 = System.currentTimeMillis();
                                                                    Map<Integer, Long> map2 = mkvChecked;
                                                                    Long l2 = map2.get(Integer.valueOf(iNumber));
                                                                    if (l2 == null || jCurrentTimeMillis2 - l2.longValue() >= 10000) {
                                                                        map2.put(Integer.valueOf(iNumber), Long.valueOf(jCurrentTimeMillis2));
                                                                        if (Inputs114.verified(context, file) == null) {
                                                                            observe(next2, "MKV_WAIT_COMMITTED_INPUTS");
                                                                            it = it;
                                                                            str5 = str5;
                                                                            objExp = obj;
                                                                            objCall = obj2;
                                                                            objJournalPrefs = obj8;
                                                                            i = 2;
                                                                            c = 0;
                                                                        } else {
                                                                            observe(next2, "MP4_COMPLETE_REQUEUE_MKV");
                                                                            call(cls("com.shabakaty.cinemana.features.MkvReconciler"), "register", context, obj7);
                                                                            exp("onVideoCompleted", context, obj7, obj7);
                                                                            it = it;
                                                                            str5 = str5;
                                                                            objExp = obj;
                                                                            objCall = obj2;
                                                                            objJournalPrefs = obj8;
                                                                            i = 2;
                                                                            c = 0;
                                                                        }
                                                                    } else {
                                                                        observe(next2, "MKV_INPUT_RECHECK_COOLDOWN");
                                                                        it = it;
                                                                        str5 = str5;
                                                                        objExp = obj;
                                                                        objCall = obj2;
                                                                        objJournalPrefs = obj8;
                                                                        i = 2;
                                                                        c = 0;
                                                                    }
                                                                }
                                                            } else if ("COMPLETED".equals(status(next2))) {
                                                                try {
                                                                    obj3 = obj8;
                                                                    try {
                                                                        String str9 = (String) call(obj3, "getString", "intent:" + iNumber, BuildConfig.FLAVOR);
                                                                        File file2 = new File(str7 + ".temp");
                                                                        if (obj7 != null || !str7.toLowerCase(Locale.ROOT).endsWith(".mp4") || file.exists() || !safe(file2) || !file2.isFile() || file2.length() <= 0 || number(next2, str4) <= 0 || file2.length() > number(next2, str4) || Queue110.isPaused(iNumber) || !str9.equals(str6 + "|RUN") || manager == null || !populated || converting(str6)) {
                                                                            observe(next2, "COMPLETED_SOURCE_MISSING_OR_NOT_VIDEO");
                                                                        } else {
                                                                            Map<Integer, Long> map3 = attempted;
                                                                            Long l3 = map3.get(Integer.valueOf(iNumber));
                                                                            long jCurrentTimeMillis3 = System.currentTimeMillis();
                                                                            if (l3 == null || jCurrentTimeMillis3 - l3.longValue() >= 60000) {
                                                                                map3.put(Integer.valueOf(iNumber), Long.valueOf(jCurrentTimeMillis3));
                                                                                call(manager, "i", Integer.valueOf(iNumber));
                                                                                observe(next2, "COMPLETED_TEMP_NATIVE_RECONCILE");
                                                                            }
                                                                        }
                                                                        objJournalPrefs = obj3;
                                                                        it = it;
                                                                        str5 = str5;
                                                                        objExp = obj;
                                                                        objCall = obj2;
                                                                        i = 2;
                                                                        c = 0;
                                                                    } catch (Exception e7) {
                                                                        e = e7;
                                                                        str3 = str3;
                                                                        str4 = str4;
                                                                        exc = e;
                                                                        observe(next2, "ERROR_" + exc.getClass().getSimpleName());
                                                                        log("restart_item_error108", exc);
                                                                        objJournalPrefs = obj3;
                                                                        str3 = str3;
                                                                        str4 = str4;
                                                                        it = it;
                                                                        str5 = str5;
                                                                        objExp = obj;
                                                                        objCall = obj2;
                                                                        i = 2;
                                                                        c = 0;
                                                                    }
                                                                } catch (Exception e8) {
                                                                    e = e8;
                                                                    obj3 = obj8;
                                                                }
                                                            } else {
                                                                obj3 = obj8;
                                                                String str10 = (String) call(obj3, "getString", "intent:" + iNumber, BuildConfig.FLAVOR);
                                                                if (!Queue110.isPaused(iNumber) || !wanted(str10, str6, status(next2), legacy(next2))) {
                                                                    try {
                                                                        observe(next2, "PAUSED_OR_NO_RUN_INTENT");
                                                                    } catch (Exception e9) {
                                                                        e = e9;
                                                                        exc = e;
                                                                        observe(next2, "ERROR_" + exc.getClass().getSimpleName());
                                                                        log("restart_item_error108", exc);
                                                                        objJournalPrefs = obj3;
                                                                        str3 = str3;
                                                                        str4 = str4;
                                                                        it = it;
                                                                        str5 = str5;
                                                                        objExp = obj;
                                                                        objCall = obj2;
                                                                        i = 2;
                                                                        c = 0;
                                                                    }
                                                                } else if (manager == null || !populated) {
                                                                    observe(next2, manager == null ? "WAIT_NATIVE_MANAGER" : "WAIT_MANAGER_MAP");
                                                                    if (manager == null) {
                                                                        service();
                                                                    }
                                                                } else {
                                                                    long jCurrentTimeMillis4 = System.currentTimeMillis();
                                                                    Map<Integer, Long> map4 = attempted;
                                                                    Long l4 = map4.get(Integer.valueOf(iNumber));
                                                                    if (l4 != null) {
                                                                        try {
                                                                            long jLongValue = jCurrentTimeMillis4 - l4.longValue();
                                                                            str3 = str3;
                                                                            str4 = str4;
                                                                            try {
                                                                                if (jLongValue < Math.min(300000L, (1 << Math.min(pass, 5)) * 10000)) {
                                                                                    objJournalPrefs = obj3;
                                                                                    str3 = str3;
                                                                                    str4 = str4;
                                                                                    it = it;
                                                                                    str5 = str5;
                                                                                    objExp = obj;
                                                                                    objCall = obj2;
                                                                                    i = 2;
                                                                                    c = 0;
                                                                                }
                                                                            } catch (Exception e10) {
                                                                                e = e10;
                                                                                exc = e;
                                                                                observe(next2, "ERROR_" + exc.getClass().getSimpleName());
                                                                                log("restart_item_error108", exc);
                                                                            }
                                                                        } catch (Exception e11) {
                                                                            e = e11;
                                                                            str3 = str3;
                                                                            str4 = str4;
                                                                        }
                                                                    } else {
                                                                        str3 = str3;
                                                                        str4 = str4;
                                                                    }
                                                                    try {
                                                                        put(obj3, "intent:" + iNumber, str6 + "|RUN");
                                                                        map4.put(Integer.valueOf(iNumber), Long.valueOf(jCurrentTimeMillis4));
                                                                        Object obj11 = manager;
                                                                        try {
                                                                            Object[] objArr3 = new Object[1];
                                                                            objArr3[0] = Integer.valueOf(iNumber);
                                                                            call(obj11, "i", objArr3);
                                                                            observe(next2, "NATIVE_RESUME_SUBMITTED");
                                                                        } catch (Exception e12) {
                                                                            e = e12;
                                                                            exc = e;
                                                                            observe(next2, "ERROR_" + exc.getClass().getSimpleName());
                                                                            log("restart_item_error108", exc);
                                                                        }
                                                                    } catch (Exception e13) {
                                                                        e = e13;
                                                                    }
                                                                    objJournalPrefs = obj3;
                                                                    str3 = str3;
                                                                    str4 = str4;
                                                                    it = it;
                                                                    str5 = str5;
                                                                    objExp = obj;
                                                                    objCall = obj2;
                                                                    i = 2;
                                                                    c = 0;
                                                                }
                                                                objJournalPrefs = obj3;
                                                                str3 = str3;
                                                                str4 = str4;
                                                                it = it;
                                                                str5 = str5;
                                                                objExp = obj;
                                                                objCall = obj2;
                                                                i = 2;
                                                                c = 0;
                                                            }
                                                        }
                                                        observe(next2, "ERROR_" + exc.getClass().getSimpleName());
                                                    } catch (Exception e14) {
                                                    }
                                                    exc = e;
                                                    log("restart_item_error108", exc);
                                                    objJournalPrefs = obj3;
                                                    str3 = str3;
                                                    str4 = str4;
                                                    it = it;
                                                    str5 = str5;
                                                    objExp = obj;
                                                    objCall = obj2;
                                                    i = 2;
                                                    c = 0;
                                                } else {
                                                    observe(next2, "FINAL_COMMIT_UNCHANGED");
                                                    objExp = obj5;
                                                }
                                                i = 2;
                                                c = 0;
                                            }
                                        } catch (Exception e15) {
                                            e = e15;
                                            obj = obj5;
                                            obj2 = objCall;
                                            obj3 = objJournalPrefs;
                                            it = it;
                                        }
                                    } else {
                                        observe(next2, "TRANSACTION_RETRY_COOLDOWN");
                                        objExp = obj4;
                                    }
                                    i = 2;
                                }
                            } catch (Exception e16) {
                                e = e16;
                                obj5 = obj4;
                            }
                        }
                        string = sbAppend.append(str).append(str5).append(file.length()).append(str5).append(file.lastModified()).toString();
                        if (file.isFile()) {
                            if (valid(file, number(next2, str4))) {
                                if (manager != null) {
                                    str5 = str5;
                                    str2 = "COMPLETED";
                                    call(cls("com.shabakaty.cinemana.ca1.Final100"), "restore", manager, next2);
                                } else {
                                    str5 = str5;
                                    str2 = "COMPLETED";
                                }
                                if (obj7 != null) {
                                    obj = obj5;
                                    obj2 = objCall;
                                    obj9 = objJournalPrefs;
                                } else if (file.getCanonicalPath().contains("/work/")) {
                                    ready(context, obj7, file);
                                    repair(obj7, next2, objCall, obj5);
                                    obj = obj5;
                                    obj2 = objCall;
                                    obj9 = objJournalPrefs;
                                } else {
                                    if (file.getCanonicalPath().equals(str(obj7, FileDownloadModel.PATH))) {
                                        Object[] objArr4 = new Object[4];
                                        objArr4[0] = context;
                                        objArr4[1] = obj7;
                                        objArr4[2] = file;
                                        obj = obj5;
                                        obj2 = objCall;
                                        obj9 = objJournalPrefs;
                                        objArr4[3] = new File((File) exp("ensureLogDir", new Object[0]), "restart108.log");
                                        exp("promoteDatabaseWithRetry", objArr4);
                                    } else {
                                        obj = obj5;
                                        obj2 = objCall;
                                        obj9 = objJournalPrefs;
                                    }
                                    call(cls("com.shabakaty.cinemana.ca1.Commit105"), "repair", context, obj7);
                                    if (file.getCanonicalPath().equals(str(obj7, FileDownloadModel.PATH))) {
                                        settled.put(str6, string);
                                    }
                                }
                                str5 = str5;
                                objExp = obj;
                                objCall = obj2;
                                objJournalPrefs = obj9;
                                i = 2;
                                c = 0;
                            } else {
                                str5 = str5;
                                obj = obj5;
                                obj2 = objCall;
                                obj8 = objJournalPrefs;
                                if (active(iNumber)) {
                                    if (manager != null) {
                                        observe(next2, "NATIVE_ACTIVE");
                                    } else {
                                        observe(next2, "NATIVE_ACTIVE");
                                    }
                                    it = it;
                                    str5 = str5;
                                    objExp = obj;
                                    objCall = obj2;
                                    objJournalPrefs = obj8;
                                    i = 2;
                                    c = 0;
                                } else {
                                    if (obj7 == null) {
                                    }
                                    if ("COMPLETED".equals(status(next2))) {
                                        obj3 = obj8;
                                        String str11 = (String) call(obj3, "getString", "intent:" + iNumber, BuildConfig.FLAVOR);
                                        File file3 = new File(str7 + ".temp");
                                        if (obj7 != null) {
                                            observe(next2, "COMPLETED_SOURCE_MISSING_OR_NOT_VIDEO");
                                        } else {
                                            observe(next2, "COMPLETED_SOURCE_MISSING_OR_NOT_VIDEO");
                                        }
                                        objJournalPrefs = obj3;
                                        it = it;
                                        str5 = str5;
                                        objExp = obj;
                                        objCall = obj2;
                                        i = 2;
                                        c = 0;
                                    } else {
                                        obj3 = obj8;
                                        String str12 = (String) call(obj3, "getString", "intent:" + iNumber, BuildConfig.FLAVOR);
                                        if (!Queue110.isPaused(iNumber)) {
                                        }
                                        observe(next2, "PAUSED_OR_NO_RUN_INTENT");
                                        objJournalPrefs = obj3;
                                        str3 = str3;
                                        str4 = str4;
                                        it = it;
                                        str5 = str5;
                                        objExp = obj;
                                        objCall = obj2;
                                        i = 2;
                                        c = 0;
                                    }
                                }
                            }
                            exc = e;
                            observe(next2, "ERROR_" + exc.getClass().getSimpleName());
                            log("restart_item_error108", exc);
                            objJournalPrefs = obj3;
                            str3 = str3;
                            str4 = str4;
                            it = it;
                            str5 = str5;
                            objExp = obj;
                            objCall = obj2;
                            i = 2;
                            c = 0;
                        } else {
                            if (valid(file, number(next2, str4))) {
                                if (manager != null) {
                                    str5 = str5;
                                    str2 = "COMPLETED";
                                    call(cls("com.shabakaty.cinemana.ca1.Final100"), "restore", manager, next2);
                                } else {
                                    str5 = str5;
                                    str2 = "COMPLETED";
                                }
                                if (obj7 != null) {
                                    obj = obj5;
                                    obj2 = objCall;
                                    obj9 = objJournalPrefs;
                                } else if (file.getCanonicalPath().contains("/work/")) {
                                    ready(context, obj7, file);
                                    repair(obj7, next2, objCall, obj5);
                                    obj = obj5;
                                    obj2 = objCall;
                                    obj9 = objJournalPrefs;
                                } else {
                                    if (file.getCanonicalPath().equals(str(obj7, FileDownloadModel.PATH))) {
                                        Object[] objArr5 = new Object[4];
                                        objArr5[0] = context;
                                        objArr5[1] = obj7;
                                        objArr5[2] = file;
                                        obj = obj5;
                                        obj2 = objCall;
                                        obj9 = objJournalPrefs;
                                        objArr5[3] = new File((File) exp("ensureLogDir", new Object[0]), "restart108.log");
                                        exp("promoteDatabaseWithRetry", objArr5);
                                    } else {
                                        obj = obj5;
                                        obj2 = objCall;
                                        obj9 = objJournalPrefs;
                                    }
                                    call(cls("com.shabakaty.cinemana.ca1.Commit105"), "repair", context, obj7);
                                    if (file.getCanonicalPath().equals(str(obj7, FileDownloadModel.PATH))) {
                                        settled.put(str6, string);
                                    }
                                }
                                str5 = str5;
                                objExp = obj;
                                objCall = obj2;
                                objJournalPrefs = obj9;
                                i = 2;
                                c = 0;
                            } else {
                                str5 = str5;
                                obj = obj5;
                                obj2 = objCall;
                                obj8 = objJournalPrefs;
                                if (active(iNumber)) {
                                    if (manager != null) {
                                        observe(next2, "NATIVE_ACTIVE");
                                    } else {
                                        observe(next2, "NATIVE_ACTIVE");
                                    }
                                    it = it;
                                    str5 = str5;
                                    objExp = obj;
                                    objCall = obj2;
                                    objJournalPrefs = obj8;
                                    i = 2;
                                    c = 0;
                                } else {
                                    if (obj7 == null) {
                                    }
                                    if ("COMPLETED".equals(status(next2))) {
                                        obj3 = obj8;
                                        String str13 = (String) call(obj3, "getString", "intent:" + iNumber, BuildConfig.FLAVOR);
                                        File file4 = new File(str7 + ".temp");
                                        if (obj7 != null) {
                                            observe(next2, "COMPLETED_SOURCE_MISSING_OR_NOT_VIDEO");
                                        } else {
                                            observe(next2, "COMPLETED_SOURCE_MISSING_OR_NOT_VIDEO");
                                        }
                                        objJournalPrefs = obj3;
                                        it = it;
                                        str5 = str5;
                                        objExp = obj;
                                        objCall = obj2;
                                        i = 2;
                                        c = 0;
                                    } else {
                                        obj3 = obj8;
                                        String str14 = (String) call(obj3, "getString", "intent:" + iNumber, BuildConfig.FLAVOR);
                                        if (!Queue110.isPaused(iNumber)) {
                                        }
                                        observe(next2, "PAUSED_OR_NO_RUN_INTENT");
                                        objJournalPrefs = obj3;
                                        str3 = str3;
                                        str4 = str4;
                                        it = it;
                                        str5 = str5;
                                        objExp = obj;
                                        objCall = obj2;
                                        i = 2;
                                        c = 0;
                                    }
                                }
                            }
                            exc = e;
                            observe(next2, "ERROR_" + exc.getClass().getSimpleName());
                            log("restart_item_error108", exc);
                            objJournalPrefs = obj3;
                            str3 = str3;
                            str4 = str4;
                            it = it;
                            str5 = str5;
                            objExp = obj;
                            objCall = obj2;
                            i = 2;
                            c = 0;
                        }
                    } catch (Exception e17) {
                        e = e17;
                        str5 = str5;
                    }
                    obj5 = obj4;
                    file = new File(str7);
                    obj6 = obj10;
                    StringBuilder sbAppend2 = new StringBuilder().append(str7).append(str5).append(number(next2, str4)).append(str5).append(status(next2)).append(str5);
                    if (obj6 == null) {
                        obj7 = obj6;
                        str = BuildConfig.FLAVOR;
                    } else {
                        obj7 = obj6;
                        str = str(obj7, FileDownloadModel.PATH) + str5 + number(obj7, "downloadTaskId");
                    }
                }
            } catch (Exception e18) {
                e = e18;
                obj = objExp;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void tick(final int i) {
        long jMin;
        long jMin2;
        long jMin3;
        synchronized (Restart108.class) {
            if (i != generation) {
                return;
            }
            scanning = true;
            dirty = false;
            Inputs114.beginScan();
            long jNanoTime = System.nanoTime();
            trace("SCAN_BEGIN pass=" + pass);
            try {
                try {
                    Queue110.scan();
                } catch (Exception e) {
                    try {
                        log("queue_scan_error112", e);
                    } catch (Exception e2) {
                        log("restart_scan_error108", e2);
                        Inputs114.endScan();
                        long millis = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - jNanoTime);
                        if (millis >= 500) {
                            trace("PERF116_RECOVERY_MS=" + millis);
                        }
                        synchronized (Restart108.class) {
                            scanning = false;
                            if (i == generation) {
                                int i2 = pass + 1;
                                pass = i2;
                                if (dirty) {
                                    jMin2 = 1;
                                } else {
                                    jMin2 = i2 < 3 ? i2 : Math.min(120L, 5 << Math.min(i2 - 3, 5));
                                }
                                if (Queue110.pendingCount > 0 || Dependencies112.pendingCount > 0) {
                                    jMin2 = Math.min(jMin2, 10L);
                                }
                                dirty = false;
                                next = worker.schedule(new Runnable() { // from class: com.shabakaty.cinemana.ca1.Restart108$$ExternalSyntheticLambda3
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        Restart108.tick(i);
                                    }
                                }, jMin2, TimeUnit.SECONDS);
                            }
                            return;
                        }
                    }
                }
                reconcile();
                Dependencies112.scan();
                trace("SCAN_END pass=" + pass);
                Inputs114.endScan();
                long millis2 = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - jNanoTime);
                if (millis2 >= 500) {
                    trace("PERF116_RECOVERY_MS=" + millis2);
                }
                synchronized (Restart108.class) {
                    scanning = false;
                    if (i == generation) {
                        int i3 = pass + 1;
                        pass = i3;
                        if (dirty) {
                            jMin3 = 1;
                        } else {
                            jMin3 = i3 < 3 ? i3 : Math.min(120L, 5 << Math.min(i3 - 3, 5));
                        }
                        if (Queue110.pendingCount > 0 || Dependencies112.pendingCount > 0) {
                            jMin3 = Math.min(jMin3, 10L);
                        }
                        dirty = false;
                        next = worker.schedule(new Runnable() { // from class: com.shabakaty.cinemana.ca1.Restart108$$ExternalSyntheticLambda3
                            @Override // java.lang.Runnable
                            public final void run() {
                                Restart108.tick(i);
                            }
                        }, jMin3, TimeUnit.SECONDS);
                    }
                }
            } catch (Throwable th) {
                Inputs114.endScan();
                long millis3 = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - jNanoTime);
                if (millis3 >= 500) {
                    trace("PERF116_RECOVERY_MS=" + millis3);
                }
                synchronized (Restart108.class) {
                    scanning = false;
                    if (i == generation) {
                        int i4 = pass + 1;
                        pass = i4;
                        if (dirty) {
                            jMin = 1;
                        } else {
                            jMin = i4 < 3 ? i4 : Math.min(120L, 5 << Math.min(i4 - 3, 5));
                        }
                        if (Queue110.pendingCount > 0 || Dependencies112.pendingCount > 0) {
                            jMin = Math.min(jMin, 10L);
                        }
                        dirty = false;
                        next = worker.schedule(new Runnable() { // from class: com.shabakaty.cinemana.ca1.Restart108$$ExternalSyntheticLambda3
                            @Override // java.lang.Runnable
                            public final void run() {
                                Restart108.tick(i);
                            }
                        }, jMin, TimeUnit.SECONDS);
                    }
                    throw th;
                }
            }
        }
    }
}
