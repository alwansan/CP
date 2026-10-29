package com.shabakaty.cinemana.ca1;

import com.connectsdk.device.DefaultConnectableDeviceStore;
import com.liulishuo.filedownloader.BuildConfig;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
public final class Queue110 {
    static final String PREF = "ca1_admission110";
    static long bound;
    static boolean importing;
    static volatile int pendingCount;
    static long rescued;
    static final Map<Integer, Object> live = new ConcurrentHashMap();
    static final Map<Integer, Long> retried = new ConcurrentHashMap();
    static final Map<String, String> phases = new ConcurrentHashMap();
    static final Object SCAN_LOCK = new Object();

    public static boolean mayRepairCompleted(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            if (Restart108.deleted(Restart108.str(obj, "id"))) {
                return false;
            }
            int iNumber = (int) Restart108.number(obj, "downloadTaskId");
            if (iNumber != 0) {
                return (isPaused(iNumber) || Restart108.active(iNumber)) ? false : true;
            }
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    static Object c() {
        return Restart108.context;
    }

    static Object call(Object obj, String str, Object... objArr) throws Exception {
        return Restart108.call(obj, str, objArr);
    }

    static String str(Object obj, String str) throws Exception {
        return Restart108.str(obj, str);
    }

    static Object pref() throws Exception {
        return Restart108.prefs(c(), PREF);
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

    static int id(Object obj) throws Exception {
        return ((Number) call(obj, "getId", new Object[0])).intValue();
    }

    static void phase(int i, String str) {
        if (str.equals(phases.put(Integer.toString(i), str))) {
            return;
        }
        Restart108.trace("QUEUE task=" + i + " phase=" + str);
    }

    static boolean allowed(Properties properties) throws Exception {
        String property = properties.getProperty("external", BuildConfig.FLAVOR);
        int i = Integer.parseInt(properties.getProperty("task"));
        if (property.isEmpty() || Restart108.deleted(property)) {
            return false;
        }
        String str = (String) call(pref(), "getString", "request:" + i, BuildConfig.FLAVOR);
        if (!str.isEmpty() && "PAUSE".equals(decode(str).getProperty("intent"))) {
            return false;
        }
        String str2 = (String) call(Restart108.journalPrefs(), "getString", "intent:" + i, BuildConfig.FLAVOR);
        if ("RUN".equals(properties.getProperty("intent")) || !str2.endsWith("|PAUSE")) {
            return str2.isEmpty() || str2.equals(new StringBuilder().append(property).append("|RUN").toString()) || "RUN".equals(properties.getProperty("intent"));
        }
        return false;
    }

    static boolean valid(Properties properties) throws Exception {
        String property = properties.getProperty("url", BuildConfig.FLAVOR);
        return Integer.parseInt(properties.getProperty("task", "0")) != 0 && (property.startsWith("https://") || property.startsWith("http://")) && Restart108.safe(new File(properties.getProperty(FileDownloadModel.PATH, BuildConfig.FLAVOR))) && !properties.getProperty("external", BuildConfig.FLAVOR).isEmpty();
    }

    static void save(Properties properties) throws Exception {
        if (!valid(properties)) {
            throw new IOException("invalid admission identity");
        }
        Restart108.put(pref(), "request:" + properties.getProperty("task"), encode(properties));
    }

    public static synchronized void remember(Object obj, Object obj2) throws Exception {
        Object obj3 = Restart108.get(obj2, "a");
        int iId = id(obj3);
        if (iId == 0) {
            phase(iId, "INVALID_ID");
            return;
        }
        Properties properties = new Properties();
        properties.setProperty("task", Integer.toString(iId));
        properties.setProperty("external", str(obj2, "e"));
        properties.setProperty("title", str(obj2, "d"));
        properties.setProperty("name", str(obj2, "c"));
        properties.setProperty("url", (String) call(obj3, "getUrl", new Object[0]));
        properties.setProperty(FileDownloadModel.PATH, (String) call(obj3, "getPath", new Object[0]));
        properties.setProperty(DefaultConnectableDeviceStore.KEY_CREATED, Long.toString(System.currentTimeMillis()));
        properties.setProperty("intent", "RUN");
        if (done(properties)) {
            phase(iId, "ALREADY_DB_COMMITTED");
            return;
        }
        save(properties);
        RecoveryCapsule.seed(obj3, iId);
        live.put(Integer.valueOf(iId), obj3);
        phase(iId, "ADMISSION_DURABLE");
    }

    public static boolean submitted(Object obj) {
        try {
            if (c() != null && Restart108.main(c())) {
                int iId = id(obj);
                String str = (String) call(obj, "getUrl", new Object[0]);
                if (iId != 0 && str != null && !str.isEmpty()) {
                    live.put(Integer.valueOf(iId), obj);
                    phase(iId, "NATIVE_SUBMIT");
                    bind();
                    Restart108.wake();
                    return true;
                }
                phase(iId, "REJECT_INVALID_TASK");
                return false;
            }
            return true;
        } catch (Exception e) {
            Restart108.log("queue_submit_error", e);
            return true;
        }
    }

    static boolean done(Properties properties) throws Exception {
        String str = (String) call(pref(), "getString", "done:" + properties.getProperty("task"), BuildConfig.FLAVOR);
        boolean z = false;
        if (str.isEmpty()) {
            return false;
        }
        Properties propertiesDecode = decode(str);
        File file = new File(properties.getProperty(FileDownloadModel.PATH, BuildConfig.FLAVOR));
        if (properties.getProperty("external", BuildConfig.FLAVOR).equals(propertiesDecode.getProperty("external")) && properties.getProperty("url", BuildConfig.FLAVOR).equals(propertiesDecode.getProperty("url")) && properties.getProperty(FileDownloadModel.PATH, BuildConfig.FLAVOR).equals(propertiesDecode.getProperty(FileDownloadModel.PATH)) && file.isFile() && file.length() > 0 && file.length() == Long.parseLong(propertiesDecode.getProperty("size", "0"))) {
            z = true;
        }
        if (!z) {
            Restart108.put(pref(), "done:" + properties.getProperty("task"), null);
        }
        return z;
    }

    static void committed(Object obj, int i) throws Exception {
        String str = (String) call(pref(), "getString", "request:" + i, BuildConfig.FLAVOR);
        if (str.isEmpty()) {
            return;
        }
        Properties propertiesDecode = decode(str);
        String str2 = (String) call(obj, "getPath", new Object[0]);
        String str3 = (String) call(obj, "getUrl", new Object[0]);
        File file = new File(str2);
        long jLongValue = ((Number) call(obj, "getLargeFileTotalBytes", new Object[0])).longValue();
        if (!str2.equals(propertiesDecode.getProperty(FileDownloadModel.PATH)) || !str3.equals(propertiesDecode.getProperty("url")) || !Restart108.safe(file) || !file.isFile() || jLongValue <= 0 || file.length() != jLongValue) {
            throw new IOException("completion receipt identity/length mismatch");
        }
        propertiesDecode.setProperty("size", Long.toString(jLongValue));
        Restart108.put(pref(), "done:" + i, encode(propertiesDecode));
        Restart108.put(pref(), "request:" + i, null);
        phase(i, "DB_COMMIT_ACKNOWLEDGED");
        RecoveryCapsule.scheduleDownloadComplete(obj, i);
    }

    static boolean isPaused(int i) throws Exception {
        String str = (String) call(pref(), "getString", "request:" + i, BuildConfig.FLAVOR);
        return !str.isEmpty() && "PAUSE".equals(decode(str).getProperty("intent"));
    }

    public static synchronized void pause(int i) {
        try {
            String str = (String) call(pref(), "getString", "request:" + i, BuildConfig.FLAVOR);
            if (!str.isEmpty()) {
                Properties propertiesDecode = decode(str);
                propertiesDecode.setProperty("intent", "PAUSE");
                save(propertiesDecode);
            }
            phase(i, "USER_PAUSED");
        } catch (Exception e) {
            Restart108.log("queue_pause_error", e);
        }
    }

    public static void bindingResult(Object obj, boolean z) {
        try {
            if (Restart108.main(obj)) {
                Restart108.trace("QUEUE_BIND_RESULT accepted=" + z);
            }
        } catch (Exception e) {
            Restart108.log("queue_bind_result_error", e);
        }
    }

    public static void terminal(Object obj, String str) {
        try {
            if (c() != null && Restart108.main(c())) {
                int iId = id(obj);
                live.remove(Integer.valueOf(iId));
                phase(iId, "TERMINAL_" + str);
                if ("DB_COMMITTED".equals(str)) {
                    committed(obj, iId);
                    StorageMaintenance152.scanSoon();
                }
                Restart108.wake();
            }
        } catch (Exception e) {
            Restart108.log("queue_terminal_error", e);
        }
    }

    static void bind() throws Exception {
        Object obj = Restart108.manager;
        if (obj == null) {
            return;
        }
        final Object obj2 = Restart108.get(obj, "b");
        if (Boolean.TRUE.equals(call(obj2, "isServiceConnected", new Object[0]))) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - bound < 5000) {
            return;
        }
        bound = jCurrentTimeMillis;
        call(Continue106.make("android.os.Handler", call(Class.forName("android.os.Looper"), "getMainLooper", new Object[0])), "post", new Runnable() { // from class: com.shabakaty.cinemana.ca1.Queue110$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                Queue110.lambda$bind$0(obj2);
            }
        });
    }

    static /* synthetic */ void lambda$bind$0(Object obj) {
        try {
            if (Boolean.TRUE.equals(call(obj, "isServiceConnected", new Object[0]))) {
                return;
            }
            call(obj, "bindService", new Object[0]);
            Restart108.trace("QUEUE_BIND_REQUESTED");
            Restart108.service();
        } catch (Exception e) {
            Restart108.log("queue_bind_error", e);
        }
    }

    static Object owner(Object obj, int i) throws Exception {
        if (obj != null && Boolean.TRUE.equals(call(obj, "isRunning", new Object[0]))) {
            return obj;
        }
        Object objCall = call(call(Class.forName("com.liulishuo.filedownloader.FileDownloadList"), "getImpl", new Object[0]), "get", Integer.valueOf(i));
        if (objCall == null) {
            return null;
        }
        return call(objCall, "getOrigin", new Object[0]);
    }

    static void rescue(Object obj) throws Exception {
        int size;
        Object objCall = call(obj, "getLostConnectedHandler", new Object[0]);
        Object obj2 = Restart108.get(objCall, "mWaitingList");
        synchronized (obj2) {
            size = ((List) obj2).size();
        }
        if (size <= 0 || System.currentTimeMillis() - rescued < 15000 || !Boolean.TRUE.equals(call(obj, "isServiceConnected", new Object[0]))) {
            return;
        }
        rescued = System.currentTimeMillis();
        call(objCall, "connected", new Object[0]);
        Restart108.trace("QUEUE_NATIVE_WAIT_RESCUE count=" + size);
    }

    static int remote(Object obj, int i) throws Exception {
        return ((Number) call(obj, "getStatusIgnoreCompleted", Integer.valueOf(i))).intValue();
    }

    static void replay(Properties properties, Object obj) throws Exception {
        Object objCall;
        if (allowed(properties)) {
            if (!videoIdentity(properties)) {
                throw new IOException("subtitle cannot replace episode");
            }
            int i = Integer.parseInt(properties.getProperty("task"));
            String property = properties.getProperty("url");
            String property2 = properties.getProperty(FileDownloadModel.PATH);
            Map map = (Map) Restart108.get(Restart108.get(obj, "e"), "d");
            synchronized (map) {
                objCall = map.get(property);
                if (objCall == null) {
                    objCall = call(obj, "m", property, property2, properties.getProperty("name", BuildConfig.FLAVOR), properties.getProperty("title"), properties.getProperty("external"), Integer.valueOf(i));
                    Object obj2 = Restart108.get(objCall, "a");
                    if (id(obj2) != i || !property2.equals(call(obj2, "getPath", new Object[0]))) {
                        throw new IOException("replay identity mismatch");
                    }
                    map.put(property, objCall);
                }
            }
            Object obj3 = Restart108.get(objCall, "a");
            if (!properties.getProperty("external").equals(str(objCall, "e")) || id(obj3) != i || !property2.equals(call(obj3, "getPath", new Object[0]))) {
                throw new IOException("foreign composer");
            }
            if (Boolean.TRUE.equals(call(obj3, "isRunning", new Object[0]))) {
                return;
            }
            call(obj, "q", objCall, true);
            phase(i, "PRE_PENDING_REPLAY");
        }
    }

    public static void scan() throws Exception {
        synchronized (SCAN_LOCK) {
            Inputs114.beginScan();
            try {
                scanBody();
                Inputs114.endScan();
            } catch (Throwable th) {
                Inputs114.endScan();
                throw th;
            }
        }
    }

    static void scanBody() throws Exception {
        Object obj;
        String str;
        String str2;
        if (c() == null || !Restart108.main(c()) || (obj = Restart108.manager) == null) {
            return;
        }
        if (!Restart108.populated) {
            phase(0, "WAIT_MANAGER_MAP");
            return;
        }
        quarantineLegacy();
        migrate();
        Map map = (Map) call(pref(), "getAll", new Object[0]);
        Object obj2 = Restart108.get(obj, "b");
        boolean zEquals = Boolean.TRUE.equals(call(obj2, "isServiceConnected", new Object[0]));
        Object objExp = Restart108.exp("getDownloadsDao", c(), c());
        int i = 0;
        for (Map.Entry entry : new ArrayList(map.entrySet())) {
            if (entry.getKey().toString().startsWith("request:")) {
                try {
                    Properties propertiesDecode = decode(entry.getValue().toString());
                    int i2 = Integer.parseInt(propertiesDecode.getProperty("task"));
                    if (!valid(propertiesDecode)) {
                        str = "INVALID_RECORD";
                    } else if (!allowed(propertiesDecode)) {
                        str = "PAUSED_OR_DELETED";
                    } else if (done(propertiesDecode)) {
                        Restart108.put(pref(), "request:" + i2, null);
                        str = "DB_COMMIT_RECEIPT_RECONCILED";
                    } else {
                        i++;
                        if (zEquals) {
                            Object objOwner = owner(live.get(Integer.valueOf(i2)), i2);
                            if (objOwner != null) {
                                phase(i2, "NATIVE_OWNED status=" + call(objOwner, "getStatus", new Object[0]));
                            } else if (Inputs114.finalized(propertiesDecode)) {
                                Restart108.put(pref(), "request:" + i2, null);
                                phase(i2, "PARENT_MKV_ALREADY_COMMITTED");
                            } else {
                                Object objExp2 = Restart108.exp("readDownloadsByTaskId", objExp, Integer.valueOf(i2));
                                if (objExp2 == null) {
                                    int iRemote = remote(obj2, i2);
                                    if (iRemote > 0) {
                                        phase(i2, "REMOTE_OWNS status=" + iRemote);
                                    } else {
                                        if (iRemote == -3) {
                                            phase(i2, "REMOTE_COMPLETE_RECONCILE_CALLBACK");
                                        }
                                        long jCurrentTimeMillis = System.currentTimeMillis();
                                        long j = Long.parseLong(propertiesDecode.getProperty(DefaultConnectableDeviceStore.KEY_CREATED, "0"));
                                        Map<Integer, Long> map2 = retried;
                                        Long l = map2.get(Integer.valueOf(i2));
                                        if (jCurrentTimeMillis - j >= 10000 && (l == null || jCurrentTimeMillis - l.longValue() >= 60000)) {
                                            map2.put(Integer.valueOf(i2), Long.valueOf(jCurrentTimeMillis));
                                            if (allowed(propertiesDecode)) {
                                                replay(propertiesDecode, obj);
                                            }
                                        }
                                    }
                                } else if (propertiesDecode.getProperty("external").equals(str(objExp2, "s"))) {
                                    if ("COMPLETED".equals(Restart108.status(objExp2))) {
                                        Restart108.put(pref(), "request:" + i2, null);
                                        str2 = "TRANSFER_DB_COMMITTED";
                                    } else {
                                        str2 = "NATIVE_DB_OWNS_RETRY";
                                    }
                                    phase(i2, str2);
                                } else {
                                    phase(i2, "FOREIGN_DB_ID");
                                }
                            }
                        } else {
                            phase(i2, "WAIT_SERVICE_BEFORE_DB");
                            bind();
                        }
                    }
                    phase(i2, str);
                } catch (Exception e) {
                    Restart108.trace("QUEUE_RECORD_ERROR key=" + entry.getKey() + " cause=" + e.getClass().getSimpleName());
                    Restart108.log("queue_record_error", e);
                }
            }
        }
        pendingCount = i;
        if (i > 0 && zEquals) {
            try {
                rescue(obj2);
            } catch (Exception e2) {
                Restart108.log("queue_rescue_error", e2);
            }
        }
        Restart108.trace("QUEUE_SCAN requests=" + i + " connected=" + zEquals);
    }

    static String legacyOwner(Object obj, String str, int i, String str2) throws Exception {
        if (str2.toLowerCase(Locale.ROOT).endsWith(".mp4")) {
            return str;
        }
        try {
            Object obj2 = Restart108.get(obj, "subtitles");
            if (!(obj2 instanceof List)) {
                return BuildConfig.FLAVOR;
            }
            String str3 = BuildConfig.FLAVOR;
            for (Object obj3 : (List) obj2) {
                if (((Number) Restart108.get(obj3, "downloadTaskId")).intValue() == i) {
                    String str4 = str(obj3, "id");
                    File file = (File) Restart108.exp("resolvePath", str(obj3, "file"));
                    if (!str4.isEmpty() && !str4.equals(str) && file != null && file.getCanonicalPath().equals(new File(str2).getCanonicalPath())) {
                        if (!str3.isEmpty()) {
                            return BuildConfig.FLAVOR;
                        }
                        str3 = str4;
                    }
                }
            }
            return str3;
        } catch (NoSuchFieldException e) {
            return BuildConfig.FLAVOR;
        }
    }

    static boolean videoIdentity(Properties properties) throws Exception {
        return properties.getProperty(FileDownloadModel.PATH, BuildConfig.FLAVOR).toLowerCase(Locale.ROOT).endsWith(".mp4") || Restart108.exp("readCombinedById", call(c(), "h", new Object[0]), properties.getProperty("external")) == null;
    }

    static synchronized void quarantineLegacy() throws Exception {
        for (Map.Entry entry : ((Map) call(pref(), "getAll", new Object[0])).entrySet()) {
            if (entry.getKey().toString().startsWith("request:")) {
                try {
                    Properties propertiesDecode = decode(entry.getValue().toString());
                    String lowerCase = propertiesDecode.getProperty(FileDownloadModel.PATH, BuildConfig.FLAVOR).toLowerCase(Locale.ROOT);
                    if (propertiesDecode.getProperty("intent") == null && !lowerCase.endsWith(".mp4")) {
                        Restart108.put(pref(), entry.getKey().toString(), null);
                        phase(Integer.parseInt(propertiesDecode.getProperty("task")), "LEGACY_SUBTITLE_QUARANTINED");
                    }
                } catch (Exception e) {
                    Restart108.log("queue_quarantine_error112", e);
                }
            }
        }
    }

    static void migrate() throws Exception {
        BufferedReader bufferedReader;
        Throwable th;
        Pattern pattern;
        Object obj;
        if (importing) {
            return;
        }
        String str = "migration109";
        String str2 = "done";
        if ("done".equals(call(pref(), "getString", "migration109", BuildConfig.FLAVOR))) {
            return;
        }
        importing = true;
        try {
            File file = new File(new File((File) call(Class.forName("android.os.Environment"), "getExternalStorageDirectory", new Object[0]), "Cinemana/work/log"), "downloads.log");
            if (!file.isFile() || file.length() > 8388608) {
                Restart108.put(pref(), "migration109", "done");
                importing = false;
                return;
            }
            Pattern patternCompile = Pattern.compile("^([0-9]+) CA1 .*stage=enqueue_dispatch .* id=([0-9]+) ");
            Pattern patternCompile2 = Pattern.compile("^([0-9]+) STATE=task_ready taskId=(-?[0-9]+) path=(.*?) tag=.*? url=(https?://\\S+)");
            Object objCall = call(c(), "h", new Object[0]);
            BufferedReader bufferedReader2 = new BufferedReader(new FileReader(file));
            long j = 0;
            String strGroup = BuildConfig.FLAVOR;
            int i = 0;
            while (true) {
                try {
                    String line = bufferedReader2.readLine();
                    if (line == null) {
                        String str3 = str;
                        String str4 = str2;
                        int i2 = i;
                        bufferedReader2.close();
                        Restart108.put(pref(), str3, str4);
                        Restart108.trace("QUEUE_MIGRATED_109 count=" + i2);
                        importing = false;
                        return;
                    }
                    Matcher matcher = patternCompile.matcher(line);
                    patternCompile = patternCompile;
                    if (matcher.find()) {
                        try {
                            strGroup = matcher.group(2);
                            j = Long.parseLong(matcher.group(1));
                        } catch (Throwable th2) {
                            th = th2;
                            bufferedReader = bufferedReader2;
                        }
                    } else {
                        Matcher matcher2 = patternCompile2.matcher(line);
                        if (strGroup.isEmpty() || !matcher2.find() || Long.parseLong(matcher2.group(1)) - j > 2000) {
                            str = str;
                            str2 = str2;
                            pattern = patternCompile2;
                            obj = objCall;
                            bufferedReader = bufferedReader2;
                            i = i;
                            patternCompile2 = pattern;
                            objCall = obj;
                            str2 = str2;
                            str = str;
                            bufferedReader2 = bufferedReader;
                        } else {
                            if (System.currentTimeMillis() - j > 604800000) {
                                str = str;
                                str2 = str2;
                                pattern = patternCompile2;
                                obj = objCall;
                                bufferedReader = bufferedReader2;
                            } else {
                                int i3 = Integer.parseInt(matcher2.group(2));
                                if (i3 != 0) {
                                    if (Restart108.deleted(strGroup)) {
                                        pattern = patternCompile2;
                                    } else {
                                        pattern = patternCompile2;
                                        Object objExp = Restart108.exp("readCombinedById", objCall, strGroup);
                                        if (objExp != null) {
                                            Object obj2 = Restart108.get(objExp, "cinemanaDownloadItem");
                                            obj = objCall;
                                            String str5 = Restart108.token(matcher2.group(3));
                                            str = str;
                                            str2 = str2;
                                            bufferedReader = bufferedReader2;
                                            try {
                                                String str6 = (String) call(Class.forName("com.shabakaty.cinemana.features.DownloadIdentity"), "contentToken", obj2);
                                                if (!str5.isEmpty()) {
                                                    if (str5.equals(str6)) {
                                                        String strLegacyOwner = legacyOwner(objExp, strGroup, i3, matcher2.group(3));
                                                        if (!strLegacyOwner.isEmpty() && ((String) call(pref(), "getString", "request:" + i3, BuildConfig.FLAVOR)).isEmpty()) {
                                                            if (!((String) call(Restart108.journalPrefs(), "getString", "intent:" + i3, BuildConfig.FLAVOR)).endsWith("|PAUSE")) {
                                                                String str7 = str(obj2, FileDownloadModel.PATH);
                                                                if (!str7.toLowerCase(Locale.ROOT).endsWith(".mkv") || !Restart108.valid(new File(str7), new File(str7).length())) {
                                                                    Properties properties = new Properties();
                                                                    properties.setProperty("task", Integer.toString(i3));
                                                                    properties.setProperty("external", strLegacyOwner);
                                                                    properties.setProperty("intent", "RUN");
                                                                    properties.setProperty("source", "validated_legacy111");
                                                                    properties.setProperty("title", str(obj2, "title"));
                                                                    String name = new File(matcher2.group(3)).getName();
                                                                    int iLastIndexOf = name.lastIndexOf(46);
                                                                    if (iLastIndexOf >= 0) {
                                                                        name = name.substring(0, iLastIndexOf);
                                                                    }
                                                                    properties.setProperty("name", name);
                                                                    properties.setProperty(FileDownloadModel.PATH, matcher2.group(3));
                                                                    properties.setProperty("url", matcher2.group(4));
                                                                    properties.setProperty(DefaultConnectableDeviceStore.KEY_CREATED, Long.toString(j));
                                                                    save(properties);
                                                                    Restart108.put(Restart108.journalPrefs(), "intent:" + i3, strLegacyOwner + "|RUN");
                                                                    i++;
                                                                    patternCompile = patternCompile;
                                                                    patternCompile2 = pattern;
                                                                    objCall = obj;
                                                                    str2 = str2;
                                                                    str = str;
                                                                    bufferedReader2 = bufferedReader;
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            } catch (Throwable th3) {
                                                th = th3;
                                            }
                                        }
                                    }
                                    obj = objCall;
                                    bufferedReader = bufferedReader2;
                                } else {
                                    str = str;
                                    str2 = str2;
                                    pattern = patternCompile2;
                                    obj = objCall;
                                    bufferedReader = bufferedReader2;
                                }
                            }
                            i = i;
                            patternCompile2 = pattern;
                            objCall = obj;
                            str2 = str2;
                            str = str;
                            bufferedReader2 = bufferedReader;
                        }
                    }
                } catch (Throwable th4) {
                    th = th4;
                    bufferedReader = bufferedReader2;
                }
                th = th;
                try {
                    bufferedReader.close();
                    throw th;
                } catch (Throwable th5) {
                    th.addSuppressed(th5);
                    throw th;
                }
            }
        } catch (Throwable th6) {
            importing = false;
            throw th6;
        }
    }
}
