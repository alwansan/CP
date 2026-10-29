package com.shabakaty.cinemana.ca1;

import com.connectsdk.service.airplay.PListParser;
import com.liulishuo.filedownloader.BuildConfig;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
public final class Persistence123 {
    static volatile Object context;
    static ScheduledFuture<?> inventory;
    static Map<String, Object> lastContexts;
    static long lastError;
    static Object ownedContext;
    static Object ownedDownloads;
    static ScheduledFuture<?> quick;
    static volatile boolean ready;
    static boolean started;
    static final ScheduledExecutorService worker = Executors.newSingleThreadScheduledExecutor(new ThreadFactory() { // from class: com.shabakaty.cinemana.ca1.Persistence123$$ExternalSyntheticLambda2
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            return Persistence123.lambda$static$0(runnable);
        }
    });
    static String databaseStamp = BuildConfig.FLAVOR;
    static String prefStamp = BuildConfig.FLAVOR;
    static String watchStamp = BuildConfig.FLAVOR;

    static /* synthetic */ Thread lambda$static$0(Runnable runnable) {
        Thread thread = new Thread(runnable, "cinemana-portable123");
        thread.setDaemon(true);
        thread.setPriority(1);
        return thread;
    }

    static Object call(Object obj, String str, Object... objArr) throws Exception {
        return Continue106.call(obj, str, objArr);
    }

    static Object prefs(String str) throws Exception {
        return call(context, "getSharedPreferences", str, 0);
    }

    static File mediaRoot() throws Exception {
        return new File((File) call(Class.forName("android.os.Environment"), "getExternalStorageDirectory", new Object[0]), "Cinemana").getCanonicalFile();
    }

    static File directory() throws Exception {
        return new File(new File(mediaRoot(), "work"), PListParser.TAG_DATA);
    }

    static File privateFile(String str) throws Exception {
        return new File((File) call(context, "getFilesDir", new Object[0]), str);
    }

    static boolean permitted() throws Exception {
        try {
            if (Boolean.TRUE.equals(call(Class.forName("android.os.Environment"), "isExternalStorageManager", new Object[0]))) {
                return true;
            }
        } catch (NoSuchMethodException e) {
        }
        try {
            return ((Number) call(context, "checkSelfPermission", "android.permission.WRITE_EXTERNAL_STORAGE")).intValue() == 0;
        } catch (NoSuchMethodException e2) {
            return ((Number) call(context, "checkCallingOrSelfPermission", "android.permission.WRITE_EXTERNAL_STORAGE")).intValue() == 0;
        }
    }

    public static synchronized void start(Object obj) {
        if (!started) {
            try {
                context = call(obj, "getApplicationContext", new Object[0]);
                started = true;
                worker.scheduleWithFixedDelay(new Runnable() { // from class: com.shabakaty.cinemana.ca1.Persistence123$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        Persistence123.cycle();
                    }
                }, 0L, 5L, TimeUnit.SECONDS);
            } catch (Exception e) {
                error(e);
            }
        }
    }

    public static synchronized void changed() {
        ScheduledFuture<?> scheduledFuture;
        if (started && ready && ((scheduledFuture = quick) == null || scheduledFuture.isDone())) {
            quick = worker.schedule(new Runnable() { // from class: com.shabakaty.cinemana.ca1.Persistence123$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    Persistence123.lambda$changed$2();
                }
            }, 150L, TimeUnit.MILLISECONDS);
        }
    }

    static /* synthetic */ void lambda$changed$2() {
        try {
            watch();
            contexts();
        } catch (Exception e) {
            error(e);
        }
    }

    public static synchronized void inventoryChanged() {
        ScheduledFuture<?> scheduledFuture;
        if (started && ready && ((scheduledFuture = inventory) == null || scheduledFuture.isDone())) {
            inventory = worker.schedule(new Runnable() { // from class: com.shabakaty.cinemana.ca1.Persistence123$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    Persistence123.cycle();
                }
            }, 300L, TimeUnit.MILLISECONDS);
        }
    }

    public static boolean pending() {
        return started && !ready;
    }

    static void log(String str) {
        try {
            call(Class.forName("com.shabakaty.cinemana.features.DownloadTrace"), "log", context, "PORTABLE123 " + str);
        } catch (Exception e) {
        }
    }

    static void error(Exception exc) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - lastError < 30000) {
            return;
        }
        lastError = jCurrentTimeMillis;
        Throwable cause = exc;
        while (cause.getCause() != null) {
            cause = cause.getCause();
        }
        log("RETRY " + cause.getClass().getSimpleName());
    }

    static void closeOwned() {
        Object obj = ownedDownloads;
        if (obj != null) {
            try {
                call(Continue106.get(obj, "d"), "close", new Object[0]);
            } catch (Exception e) {
            }
        }
        ownedDownloads = null;
        ownedContext = null;
    }

    static Object room(String str) throws Exception {
        if ("local".equals(str)) {
            return Continue106.get(call(context, "h", new Object[0]), "a");
        }
        Object obj = Restart108.manager;
        if (obj != null) {
            try {
                if (call(Continue106.get(obj, "a"), "getApplicationContext", new Object[0]) == context) {
                    Object obj2 = Continue106.get(Continue106.get(Continue106.get(obj, "c"), "a"), "a");
                    if (ownedDownloads != obj2) {
                        closeOwned();
                    }
                    return obj2;
                }
            } catch (Exception e) {
            }
        }
        if (ownedContext != context) {
            closeOwned();
        }
        if (ownedDownloads == null) {
            ownedDownloads = Continue106.get(call(Class.forName("com.shabakaty.cinemana.features.MkvExporter"), "getDownloadsDao", context, context), "a");
            ownedContext = context;
        }
        return ownedDownloads;
    }

    static Object sql(Object obj) throws Exception {
        return call(Continue106.get(obj, "d"), "getWritableDatabase", new Object[0]);
    }

    static Portable123.Table query(Object obj, String str, String str2) throws Exception {
        Object objCall = call(obj, "y0", "SELECT * FROM " + Portable123.identifier(str2));
        try {
            String[] strArr = (String[]) call(objCall, "getColumnNames", new Object[0]);
            Portable123.Table table = new Portable123.Table(str, str2, strArr);
            while (Boolean.TRUE.equals(call(objCall, "moveToNext", new Object[0]))) {
                if (table.rows.size() >= 50000) {
                    throw new IOException("row limit");
                }
                int length = strArr.length;
                Object[] objArr = new Object[length];
                for (int i = 0; i < length; i++) {
                    switch (((Number) call(objCall, "getType", Integer.valueOf(i))).intValue()) {
                        case 0:
                            objArr[i] = null;
                            break;
                        case 1:
                            objArr[i] = call(objCall, "getLong", Integer.valueOf(i));
                            break;
                        case 2:
                            objArr[i] = call(objCall, "getDouble", Integer.valueOf(i));
                            break;
                        case 3:
                            objArr[i] = call(objCall, "getString", Integer.valueOf(i));
                            break;
                        case 4:
                            objArr[i] = call(objCall, "getBlob", Integer.valueOf(i));
                            break;
                        default:
                            throw new IOException("unknown sqlite type");
                    }
                }
                table.rows.add(objArr);
            }
            call(objCall, "close", new Object[0]);
            return table;
        } catch (Throwable th) {
            call(objCall, "close", new Object[0]);
            throw th;
        }
    }

    static void captureDatabase(Portable123.Snapshot snapshot, String str) throws Exception {
        Object objRoom = room(str);
        Object objSql = sql(objRoom);
        call(objRoom, "i", new Object[0]);
        try {
            Iterator<String> it = ("local".equals(str) ? Portable123.LOCAL : Collections.singleton("Downloads")).iterator();
            while (it.hasNext()) {
                snapshot.tables.add(query(objSql, str, it.next()));
            }
            call(objRoom, "n", new Object[0]);
            call(objRoom, "j", new Object[0]);
        } catch (Throwable th) {
            call(objRoom, "j", new Object[0]);
            throw th;
        }
    }

    static Map<String, Object> preference(String str) throws Exception {
        Map map = (Map) call(prefs(str), "getAll", new Object[0]);
        TreeMap treeMap = new TreeMap();
        for (Map.Entry entry : map.entrySet()) {
            String str2 = (String) entry.getKey();
            if (!"com.shabakaty.cinemana_preferences".equals(str) || Portable123.DEFAULT_KEYS.contains(str2)) {
                Object value = entry.getValue();
                if (value instanceof Set) {
                    value = new TreeSet((Set) value);
                }
                treeMap.put(str2, value);
            }
        }
        return treeMap;
    }

    static void capturePreferences(Portable123.Snapshot snapshot, boolean z) throws Exception {
        for (String str : Portable123.PREFS) {
            if (!"ca1_episode_context107".equals(str) && z == "ca1_continue106".equals(str)) {
                snapshot.prefs.put(str, preference(str));
            }
        }
    }

    static String stamp(Map<String, Map<String, Object>> map) {
        return map.toString();
    }

    static String dbStamp() throws Exception {
        StringBuilder sb = new StringBuilder();
        Iterator it = Arrays.asList("localDatabase.db", "shabakaty.cinemana.downloads.database").iterator();
        while (it.hasNext()) {
            File file = (File) call(context, "getDatabasePath", (String) it.next());
            Iterator it2 = Arrays.asList(BuildConfig.FLAVOR, "-wal").iterator();
            while (it2.hasNext()) {
                File file2 = new File(file + ((String) it2.next()));
                sb.append(file2.length()).append(':').append(file2.lastModified()).append(';');
            }
        }
        return sb.toString();
    }

    static void fonts(boolean z) throws Exception {
        File filePrivateFile = privateFile("subtitle_fonts");
        File file = new File(directory(), "subtitle_fonts");
        int iSync = z ? Fonts123.sync(file, filePrivateFile, true) : Fonts123.sync(filePrivateFile, file, false);
        if (!z || iSync <= 0) {
            return;
        }
        try {
            Class<?> cls = Class.forName("com.shabakaty.downloader.FontImportStore");
            Field declaredField = cls.getDeclaredField("b");
            declaredField.setAccessible(true);
            declaredField.set(null, null);
            call(cls, "a", context);
        } catch (ClassNotFoundException e) {
        }
        log("FONTS_RESTORED count=" + iSync);
    }

    static void restorePreferences(Portable123.Snapshot snapshot) throws Exception {
        String str;
        for (Map.Entry<String, Map<String, Object>> entry : snapshot.prefs.entrySet()) {
            Object objPrefs = prefs(entry.getKey());
            Map map = (Map) call(objPrefs, "getAll", new Object[0]);
            Object objCall = call(objPrefs, "edit", new Object[0]);
            for (Map.Entry<String, Object> entry2 : entry.getValue().entrySet()) {
                if (!map.containsKey(entry2.getKey())) {
                    Object value = entry2.getValue();
                    if (value instanceof String) {
                        str = "putString";
                    } else if (value instanceof Long) {
                        str = "putLong";
                    } else if (value instanceof Integer) {
                        str = "putInt";
                    } else if (value instanceof Float) {
                        str = "putFloat";
                    } else if (value instanceof Boolean) {
                        str = "putBoolean";
                    } else {
                        str = value instanceof Set ? "putStringSet" : null;
                    }
                    if (str == null) {
                        throw new IOException("invalid preference type");
                    }
                    call(objCall, str, entry2.getKey(), value);
                }
            }
            if (!Boolean.TRUE.equals(call(objCall, "commit", new Object[0]))) {
                throw new IOException("preference restore failed");
            }
        }
    }

    static void restoreDatabase(Portable123.Snapshot snapshot, String str) throws Exception {
        Object objRoom = room(str);
        Object objSql = sql(objRoom);
        int i = 0;
        call(objRoom, "i", new Object[0]);
        try {
            for (Portable123.Table table : snapshot.tables) {
                if (str.equals(table.db)) {
                    Object[] objArr = new Object[1];
                    objArr[i] = "SELECT * FROM " + Portable123.identifier(table.name) + " LIMIT 0";
                    Object objCall = call(objSql, "y0", objArr);
                    try {
                        HashSet hashSet = new HashSet(Arrays.asList((String[]) call(objCall, "getColumnNames", new Object[i])));
                        call(objCall, "close", new Object[i]);
                        if (!hashSet.equals(new HashSet(Arrays.asList(table.columns)))) {
                            throw new IOException("incompatible schema");
                        }
                        ArrayList arrayList = new ArrayList();
                        StringBuilder sb = new StringBuilder();
                        StringBuilder sb2 = new StringBuilder();
                        while (i < table.columns.length) {
                            if (hashSet.contains(table.columns[i])) {
                                if (!arrayList.isEmpty()) {
                                    sb.append(',');
                                    sb2.append(',');
                                }
                                arrayList.add(Integer.valueOf(i));
                                sb.append(Portable123.identifier(table.columns[i]));
                                sb2.append('?');
                            }
                            i++;
                        }
                        if (arrayList.isEmpty()) {
                            throw new IOException("incompatible schema");
                        }
                        String str2 = "INSERT OR IGNORE INTO " + Portable123.identifier(table.name) + " (" + ((Object) sb) + ") VALUES (" + ((Object) sb2) + ")";
                        Portable123.Table tableQuery = "settings".equals(table.name) ? query(objSql, str, "settings") : null;
                        if (tableQuery != null && tableQuery.rows.size() == 1 && table.rows.size() == 1) {
                            Object[] objArr2 = (Object[]) table.rows.get(0).clone();
                            objArr2[Portable123.index(table, "userId")] = Portable123.get(tableQuery, tableQuery.rows.get(0), "userId");
                            call(objSql, "k0", str2.replace("INSERT OR IGNORE", "INSERT OR REPLACE"), objArr2);
                        } else {
                            for (Object[] objArr3 : table.rows) {
                                int size = arrayList.size();
                                Object[] objArr4 = new Object[size];
                                for (int i2 = 0; i2 < size; i2++) {
                                    objArr4[i2] = objArr3[((Integer) arrayList.get(i2)).intValue()];
                                }
                                call(objSql, "k0", str2, objArr4);
                            }
                        }
                    } catch (Throwable th) {
                        call(objCall, "close", new Object[0]);
                        throw th;
                    }
                }
                i = 0;
            }
            call(objRoom, "n", new Object[0]);
            call(objRoom, "j", new Object[0]);
        } catch (Throwable th2) {
            call(objRoom, "j", new Object[0]);
            throw th2;
        }
    }

    static void initialize() throws Exception {
        Object objSql = sql(room("local"));
        sql(room("downloads"));
        File fileDirectory = directory();
        if (!fileDirectory.isDirectory() && !fileDirectory.mkdirs()) {
            throw new IOException("public storage unavailable");
        }
        Object objPrefs = prefs("ca1_portable123");
        if (!Boolean.TRUE.equals(call(objPrefs, "getBoolean", "initialized", false))) {
            Portable123.Snapshot snapshotBest = Portable123.best(new File(fileDirectory, "library.v1.bin"));
            Portable123.Snapshot snapshotBest2 = Portable123.best(new File(fileDirectory, "watch.v1.bin"));
            Portable123.Snapshot snapshotBest3 = Portable123.best(new File(fileDirectory, "episodes.v1.bin"));
            if (snapshotBest != null) {
                Portable123.finalInventory(snapshotBest, mediaRoot());
                if (query(objSql, "local", "CinemanaDownloadItem").rows.isEmpty()) {
                    restoreDatabase(snapshotBest, "downloads");
                    restoreDatabase(snapshotBest, "local");
                    log("INVENTORY_RESTORED items=" + Portable123.table(snapshotBest, "CinemanaDownloadItem").rows.size());
                }
                restorePreferences(snapshotBest);
                if (snapshotBest.speed >= 0 && !privateFile("download-speed120.cfg").exists()) {
                    Speed120.save(privateFile("download-speed120.cfg"), snapshotBest.speed);
                }
            }
            if (snapshotBest2 != null) {
                restorePreferences(snapshotBest2);
            }
            if (snapshotBest3 != null) {
                restorePreferences(snapshotBest3);
            }
            try {
                fonts(true);
            } catch (Exception e) {
                error(e);
            }
            Object objCall = call(objPrefs, "edit", new Object[0]);
            call(objCall, "putBoolean", "initialized", true);
            if (!Boolean.TRUE.equals(call(objCall, "commit", new Object[0]))) {
                throw new IOException("restore marker failed");
            }
            Continue106.portableReload(context);
            log("RESTORE_CHECK_COMPLETE");
        }
        ready = true;
        Restart108.wake();
    }

    static void watch() throws Exception {
        if (ready && permitted()) {
            Portable123.Snapshot snapshot = new Portable123.Snapshot();
            snapshot.time = System.currentTimeMillis();
            capturePreferences(snapshot, true);
            String strStamp = stamp(snapshot.prefs);
            if (strStamp.equals(watchStamp)) {
                return;
            }
            Portable123.save(new File(directory(), "watch.v1.bin"), snapshot);
            watchStamp = strStamp;
        }
    }

    static void contexts() throws Exception {
        if (ready && permitted()) {
            Map<String, Object> mapPreference = preference("ca1_episode_context107");
            if (mapPreference.equals(lastContexts)) {
                return;
            }
            Portable123.Snapshot snapshot = new Portable123.Snapshot();
            snapshot.time = System.currentTimeMillis();
            snapshot.prefs.put("ca1_episode_context107", mapPreference);
            Portable123.save(new File(directory(), "episodes.v1.bin"), snapshot);
            lastContexts = mapPreference;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void cycle() {
        try {
            if (permitted()) {
                if (!ready) {
                    initialize();
                }
                watch();
                contexts();
                try {
                    fonts(false);
                } catch (Exception e) {
                    error(e);
                }
                Portable123.Snapshot snapshot = new Portable123.Snapshot();
                snapshot.time = System.currentTimeMillis();
                capturePreferences(snapshot, false);
                File filePrivateFile = privateFile("download-speed120.cfg");
                if (filePrivateFile.exists()) {
                    snapshot.speed = Integer.parseInt(Speed120.readConfig(filePrivateFile));
                }
                String str = stamp(snapshot.prefs) + "|" + snapshot.speed;
                String strDbStamp = dbStamp();
                if (strDbStamp.equals(databaseStamp) && str.equals(prefStamp)) {
                    return;
                }
                captureDatabase(snapshot, "local");
                captureDatabase(snapshot, "downloads");
                Portable123.finalInventory(snapshot, mediaRoot());
                Portable123.save(new File(directory(), "library.v1.bin"), snapshot);
                databaseStamp = strDbStamp;
                prefStamp = str;
                log("SAVED items=" + Portable123.table(snapshot, "CinemanaDownloadItem").rows.size());
            }
        } catch (Exception e2) {
            error(e2);
        }
    }

    private Persistence123() {
    }
}
