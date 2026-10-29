package com.shabakaty.cinemana.ca1;

import com.cinemana.pro.R;
import com.liulishuo.filedownloader.BuildConfig;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes6.dex */
public final class Dependencies112 {
    static final String PREF = "ca1_dependencies112";
    static volatile int pendingCount;
    static final ExecutorService worker = Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: com.shabakaty.cinemana.ca1.Dependencies112$$ExternalSyntheticLambda0
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            return Dependencies112.lambda$static$0(runnable);
        }
    });
    static final Set<String> working = ConcurrentHashMap.newKeySet();
    static final Map<String, Long> attempted = new ConcurrentHashMap();

    static /* synthetic */ Thread lambda$static$0(Runnable runnable) {
        Thread thread = new Thread(runnable, "dependencies112");
        thread.setDaemon(true);
        return thread;
    }

    static Object call(Object obj, String str, Object... objArr) throws Exception {
        return Restart108.call(obj, str, objArr);
    }

    static Object get(Object obj, String str) throws Exception {
        return Restart108.get(obj, str);
    }

    static String str(Object obj, String str) throws Exception {
        return Restart108.str(obj, str);
    }

    static Object prefs() throws Exception {
        return Restart108.prefs(Restart108.context, PREF);
    }

    static String content(Object obj) throws Exception {
        return (String) call(Class.forName("com.shabakaty.cinemana.features.DownloadIdentity"), "contentToken", obj);
    }

    public static void plan(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            return;
        }
        try {
            Object objCall = call(obj, "getApplicationContext", new Object[0]);
            if (Restart108.main(objCall)) {
                Restart108.context = objCall;
                String str = str(obj2, "nb");
                String strContent = content(obj2);
                if (!str.isEmpty() && !strContent.isEmpty()) {
                    Properties properties = new Properties();
                    properties.setProperty("id", str);
                    properties.setProperty("token", strContent);
                    properties.setProperty("parcel", Continue106.pack(obj2));
                    Restart108.put(prefs(), "plan:" + str, Restart108.encode(properties));
                    Restart108.trace("DEPENDENCY_PLAN_SAVED item=" + str);
                    Restart108.wake();
                }
            }
        } catch (Exception e) {
            Restart108.log("dependency_plan_error112", e);
        }
    }

    static boolean wanted(Object obj) throws Exception {
        String str = str(obj, "s");
        int iNumber = (int) Restart108.number(obj, "r");
        if (Restart108.deleted(str) || Queue110.isPaused(iNumber)) {
            return false;
        }
        String str2 = (String) call(Restart108.journalPrefs(), "getString", "intent:" + iNumber, BuildConfig.FLAVOR);
        if (str2.endsWith("|PAUSE")) {
            return false;
        }
        if (!"PAUSED".equals(Restart108.status(obj)) || Restart108.wanted(str2, str, "PAUSED", Restart108.legacy(obj))) {
            return !str(obj, "x").toLowerCase(Locale.ROOT).endsWith(".mkv");
        }
        return false;
    }

    public static List<Object> subtitles(Object obj) throws Exception {
        ArrayList arrayList = new ArrayList();
        Object obj2 = get(obj, "subtitles");
        if (!(obj2 instanceof List)) {
            return arrayList;
        }
        HashSet hashSet = new HashSet();
        for (Object obj3 : (List) obj2) {
            String str = str(obj3, "id");
            String str2 = str(obj3, "file");
            if (!str.isEmpty() && hashSet.add(str) && !"vtt".equalsIgnoreCase(str(obj3, "extention")) && (str2.startsWith("https://") || str2.startsWith("http://"))) {
                arrayList.add(obj3);
            }
        }
        return arrayList;
    }

    static Object unpack(Properties properties) throws Exception {
        Continue106.Entry entry = new Continue106.Entry();
        entry.id = properties.getProperty("id");
        entry.parcel = properties.getProperty("parcel");
        return Continue106.unpack(entry);
    }

    static Object load(Object obj, Object obj2, String str) throws Exception {
        Object objUnpack;
        String str2 = str(obj, "s");
        String str3 = (String) call(prefs(), "getString", "plan:" + str2, BuildConfig.FLAVOR);
        if (!str3.isEmpty()) {
            Properties propertiesDecode = Restart108.decode(str3);
            if (!str2.equals(propertiesDecode.getProperty("id")) || !str.equals(propertiesDecode.getProperty("token"))) {
                throw new IOException("foreign dependency plan");
            }
            objUnpack = unpack(propertiesDecode);
        } else {
            Object objCall = call(Class.forName("com.shabakaty.cinemana.ca1.BatchDownload"), "unwrap", call(Class.forName("com.shabakaty.cinemana.ca1.BatchDownload"), "await", call(call(get(get(Restart108.context, "u"), "b1"), "get", new Object[0]), "b", str2), false));
            if (objCall == null || !str2.equals(str(objCall, "nb"))) {
                throw new IOException("foreign API episode");
            }
            Restart108.set(objCall, "wantedQuality", get(call(get(obj2, "cinemanaDownloadItem"), "b", get(obj2, "subtitles"), get(obj2, "skippableScenes"), Restart108.context), "wantedQuality"));
            objUnpack = objCall;
        }
        if (!str2.equals(str(objUnpack, "nb")) || !str.equals(content(objUnpack))) {
            throw new IOException("episode or quality token mismatch");
        }
        if (str3.isEmpty()) {
            plan(Restart108.context, objUnpack);
        }
        return objUnpack;
    }

    static void scan() throws Exception {
        pendingCount = 0;
        Object obj = Restart108.context;
        if (obj == null || Restart108.manager == null || !Restart108.populated || !Restart108.main(obj)) {
            return;
        }
        Object objExp = Restart108.exp("getDownloadsDao", obj, obj);
        Object objCall = call(obj, "h", new Object[0]);
        for (final Object obj2 : (List) Restart108.exp("readAllDownloads", objExp)) {
            try {
                String str = str(obj2, "x");
                if (str.toLowerCase(Locale.ROOT).endsWith(".mp4") && wanted(obj2)) {
                    final String str2 = Restart108.token(str);
                    if (!str2.isEmpty()) {
                        String str3 = str(obj2, "s");
                        final Object objExp2 = Restart108.exp("readCombinedById", objCall, str3);
                        if (objExp2 != null) {
                            Object obj3 = get(objExp2, "cinemanaDownloadItem");
                            File file = new File(str(obj3, FileDownloadModel.PATH));
                            if (!Restart108.valid(file, file.length())) {
                                long jNumber = Restart108.number(obj3, "downloadTaskId");
                                if (jNumber == 0 || jNumber == Restart108.number(obj2, "r")) {
                                    pendingCount++;
                                    final String str4 = str3 + ":" + str2;
                                    long jCurrentTimeMillis = System.currentTimeMillis();
                                    Map<String, Long> map = attempted;
                                    Long l = map.get(str4);
                                    if (l == null || jCurrentTimeMillis - l.longValue() >= 10000) {
                                        if (working.add(str4)) {
                                            map.put(str4, Long.valueOf(jCurrentTimeMillis));
                                            worker.execute(new Runnable() { // from class: com.shabakaty.cinemana.ca1.Dependencies112$$ExternalSyntheticLambda3
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    Dependencies112.lambda$scan$1(obj2, objExp2, str2, str4);
                                                }
                                            });
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            } catch (Exception e) {
                Restart108.log("dependency_scan_item_error112", e);
            }
        }
    }

    static /* synthetic */ void lambda$scan$1(Object obj, Object obj2, String str, String str2) {
        Inputs114.beginScan();
        try {
            try {
                recover(obj, obj2, str);
            } catch (Exception e) {
                Restart108.log("dependency_recovery_error112", e);
            }
        } finally {
            Inputs114.endScan();
            working.remove(str2);
            Restart108.wake();
        }
    }

    static void persistSubtitle(Object obj, Object obj2, Object obj3) throws Exception {
        Object obj4 = get(get(Class.forName("com.shabakaty.downloader.nz0"), "a"), "h");
        if (obj4 == null) {
            throw new IOException("native subtitle observer unavailable");
        }
        call(obj4, "d", obj, obj2, obj3);
    }

    static boolean parentFinalized(Object obj) throws Exception {
        Properties properties = new Properties();
        properties.setProperty("external", str(obj, "s"));
        properties.setProperty(FileDownloadModel.PATH, str(obj, "x"));
        properties.setProperty("url", str(obj, "v"));
        return Inputs114.finalized(properties);
    }

    static boolean pathBusy(File file, List<?> list, Object obj) throws Exception {
        String canonicalPath = file.getCanonicalPath();
        for (Object obj2 : list) {
            if (canonicalPath.equals(new File(str(obj2, "x")).getCanonicalPath())) {
                int iNumber = (int) Restart108.number(obj2, "r");
                if (Restart108.active(iNumber) || Queue110.isPaused(iNumber) || Queue110.remote(get(obj, "b"), iNumber) > 0) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:285:0x0263 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:322:0x0274 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:323:0x02b8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:329:0x03b8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:330:0x0390 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:340:0x0281 A[SYNTHETIC] */
    static void recover(Object obj, Object obj2, String str) throws Exception {
        String str2;
        String str3;
        final Object obj3;
        String str4;
        Object obj4;
        String str5;
        String str6;
        String str7;
        Object objCall;
        Object obj5;
        int iNumber;
        String str8;
        obj = obj;
        String str9 = str;
        String str10 = "COMPLETED";
        String str11 = "getDownloadsDao";
        String str12 = "s";
        String str13 = "x";
        if (!wanted(obj) || parentFinalized(obj)) {
            return;
        }
        final Object objLoad = load(obj, obj2, str);
        Object obj6 = Restart108.manager;
        Object obj7 = Restart108.context;
        if (obj6 == null) {
            return;
        }
        Iterator<Object> it = subtitles(objLoad).iterator();
        while (it.hasNext()) {
            Object next = it.next();
            try {
                if (wanted(obj) && !parentFinalized(obj)) {
                    String str14 = str(next, "id");
                    if (str14.equals(str(obj, str12))) {
                        throw new IOException("subtitle has parent identity");
                    }
                    boolean z = false;
                    List list = (List) Restart108.exp("readAllDownloads", Restart108.exp(str11, obj7, obj7));
                    File parentFile = new File(str(obj, str13)).getParentFile();
                    try {
                        try {
                            Inputs114.selectSub(next, str9, parentFile, list, (Map) call(Queue110.pref(), "getAll", new Object[0]));
                        } catch (IOException e) {
                            ArrayList arrayList = new ArrayList();
                            for (Object obj8 : list) {
                                try {
                                    File file = parentFile;
                                    List list2 = list;
                                    String str15 = str10;
                                    str8 = str11;
                                    String str16 = str14;
                                    Object obj9 = next;
                                    try {
                                        if (Inputs114.identity(next, str, file, str(obj8, str12), str(obj8, str13), str(obj8, "v"))) {
                                            arrayList.add(obj8);
                                        }
                                        str14 = str16;
                                        parentFile = file;
                                        str10 = str15;
                                        str11 = str8;
                                        list = list2;
                                        next = obj9;
                                        z = false;
                                    } catch (Exception e2) {
                                        e = e2;
                                        str10 = str15;
                                        str2 = str8;
                                        str = str9;
                                        Restart108.log("dependency_item_error119", e);
                                        str9 = str;
                                        str11 = str2;
                                        obj7 = obj7;
                                        str13 = str13;
                                        str12 = str12;
                                    }
                                } catch (Exception e3) {
                                    e = e3;
                                    str8 = str11;
                                }
                            }
                            List list3 = list;
                            Object obj10 = next;
                            str10 = str10;
                            String str17 = str11;
                            String str18 = str14;
                            String str19 = str12;
                            String str20 = "r";
                            if (arrayList.size() == 1) {
                                try {
                                    str3 = str13;
                                    obj3 = obj10;
                                    str13 = str18;
                                    obj4 = arrayList.get(0);
                                    str4 = str20;
                                    if (obj4 == null) {
                                        try {
                                            if (pathBusy(new File(str(obj4, str3)), list3, obj6)) {
                                                obj = obj;
                                                str9 = str;
                                                str13 = str3;
                                                str10 = str10;
                                                str11 = str17;
                                                str12 = str19;
                                            } else {
                                                obj5 = obj;
                                                try {
                                                    try {
                                                        str13 = str3;
                                                        obj7 = obj7;
                                                        str6 = str19;
                                                        try {
                                                            if (Inputs114.identity(obj3, str, new File(str(obj5, str3)).getParentFile(), str(obj4, str19), str(obj4, str3), str(obj4, "v"))) {
                                                                throw new IOException("native subtitle dependency mismatch");
                                                            }
                                                            iNumber = (int) Restart108.number(obj4, str4);
                                                            if (Restart108.canRetry(obj6, iNumber) || Restart108.active(iNumber)) {
                                                                obj = obj5;
                                                                str10 = str10;
                                                                str11 = str17;
                                                                obj7 = obj7;
                                                                str13 = str13;
                                                                str12 = str6;
                                                                str9 = str;
                                                            } else {
                                                                String str21 = (String) call(Restart108.journalPrefs(), "getString", "intent:" + iNumber, BuildConfig.FLAVOR);
                                                                if (!"PAUSED".equals(Restart108.status(obj4)) || Restart108.wanted(str21, str13, "PAUSED", Restart108.legacy(obj4))) {
                                                                    Long l = Restart108.attempted.get(Integer.valueOf(iNumber));
                                                                    long jCurrentTimeMillis = System.currentTimeMillis();
                                                                    if (l == null || jCurrentTimeMillis - l.longValue() >= 60000) {
                                                                        Restart108.attempted.put(Integer.valueOf(iNumber), Long.valueOf(jCurrentTimeMillis));
                                                                        call(obj6, "i", Integer.valueOf(iNumber));
                                                                        Restart108.trace("DEPENDENCY114_NATIVE_RESUME subtitle=" + str13);
                                                                        obj = obj5;
                                                                        str10 = str10;
                                                                        str11 = str17;
                                                                        obj7 = obj7;
                                                                        str13 = str13;
                                                                        str12 = str6;
                                                                        str9 = str;
                                                                    } else {
                                                                        obj = obj5;
                                                                        str10 = str10;
                                                                        str11 = str17;
                                                                        obj7 = obj7;
                                                                        str13 = str13;
                                                                        str12 = str6;
                                                                        str9 = str;
                                                                    }
                                                                } else {
                                                                    obj = obj5;
                                                                    str10 = str10;
                                                                    str11 = str17;
                                                                    obj7 = obj7;
                                                                    str13 = str13;
                                                                    str12 = str6;
                                                                    str9 = str;
                                                                }
                                                            }
                                                        } catch (Exception e4) {
                                                            e = e4;
                                                            str = str;
                                                            obj = obj5;
                                                            str2 = str17;
                                                            str12 = str6;
                                                            Restart108.log("dependency_item_error119", e);
                                                            str9 = str;
                                                            str11 = str2;
                                                            obj7 = obj7;
                                                            str13 = str13;
                                                            str12 = str12;
                                                        }
                                                    } catch (Exception e5) {
                                                        e = e5;
                                                        str6 = str19;
                                                        str13 = str3;
                                                        obj7 = obj7;
                                                    }
                                                } catch (Exception e6) {
                                                    e = e6;
                                                    str13 = str3;
                                                    obj7 = obj7;
                                                    str6 = str19;
                                                    str = str;
                                                    obj = obj5;
                                                    str2 = str17;
                                                    str12 = str6;
                                                    Restart108.log("dependency_item_error119", e);
                                                    str9 = str;
                                                    str11 = str2;
                                                    obj7 = obj7;
                                                    str13 = str13;
                                                    str12 = str12;
                                                }
                                            }
                                        } catch (Exception e7) {
                                            e = e7;
                                            obj5 = obj;
                                        }
                                    } else {
                                        str13 = str3;
                                        str6 = str19;
                                        obj7 = obj7;
                                        try {
                                            str7 = str(obj3, "file");
                                            try {
                                                try {
                                                    String str22 = (String) call(obj7, "getString", Integer.valueOf(R.string.subtitle_for_txt), new Object[]{str(obj3, "name"), call(objLoad, "d", new Object[0])});
                                                    objCall = call(obj6, "m", str7, null, str22, null, str13, null);
                                                    Object obj11 = get(objCall, "a");
                                                    int iIntValue = ((Number) call(obj11, "getId", new Object[0])).intValue();
                                                    String str23 = (String) call(obj11, "getPath", new Object[0]);
                                                    if (!str13.equals(str(objCall, "e")) && Restart108.safe(new File(str23))) {
                                                        str = str;
                                                        try {
                                                            if (str.equals(Restart108.token(str23))) {
                                                                if (pathBusy(new File(str23), list3, obj6) || Queue110.isPaused(iIntValue)) {
                                                                    str9 = str;
                                                                    str11 = str17;
                                                                    obj7 = obj7;
                                                                    str13 = str13;
                                                                    str12 = str6;
                                                                } else if (Restart108.canRetry(obj6, iIntValue)) {
                                                                    Object[] objArr = new Object[2];
                                                                    str2 = str17;
                                                                    try {
                                                                        objArr[0] = Restart108.exp(str2, obj7, obj7);
                                                                        objArr[1] = Integer.valueOf(iIntValue);
                                                                        Object objExp = Restart108.exp("readDownloadsByTaskId", objArr);
                                                                        if (objExp != null) {
                                                                            str12 = str6;
                                                                            try {
                                                                                if (!str13.equals(str(objExp, str12))) {
                                                                                    obj7 = obj7;
                                                                                    str10 = str10;
                                                                                    throw new IOException("foreign subtitle task");
                                                                                }
                                                                                if ("PAUSED".equals(Restart108.status(objExp))) {
                                                                                    obj = obj;
                                                                                    str9 = str;
                                                                                    str11 = str2;
                                                                                    str10 = str10;
                                                                                    str13 = str13;
                                                                                    str12 = str12;
                                                                                    obj7 = obj7;
                                                                                } else {
                                                                                    obj7 = obj7;
                                                                                    try {
                                                                                        File file2 = new File(str(objExp, str13));
                                                                                        str13 = str13;
                                                                                        str10 = str10;
                                                                                        try {
                                                                                            if (str10.equals(Restart108.status(objExp)) && file2.isFile() && Restart108.number(objExp, "y") > 0 && file2.length() == Restart108.number(objExp, "y")) {
                                                                                                persistSubtitle(obj3, objExp, objLoad);
                                                                                                call(Class.forName("com.shabakaty.cinemana.features.MkvManifestStore"), "markState", obj11, str10);
                                                                                                obj = obj;
                                                                                                str9 = str;
                                                                                                str11 = str2;
                                                                                                obj7 = obj7;
                                                                                                str13 = str13;
                                                                                                str12 = str12;
                                                                                            }
                                                                                        } catch (Exception e8) {
                                                                                            e = e8;
                                                                                            obj = obj;
                                                                                            Restart108.log("dependency_item_error119", e);
                                                                                            str9 = str;
                                                                                            str11 = str2;
                                                                                            obj7 = obj7;
                                                                                            str13 = str13;
                                                                                            str12 = str12;
                                                                                        }
                                                                                    } catch (Exception e9) {
                                                                                        e = e9;
                                                                                        str13 = str13;
                                                                                        str10 = str10;
                                                                                        obj = obj;
                                                                                        Restart108.log("dependency_item_error119", e);
                                                                                        str9 = str;
                                                                                        str11 = str2;
                                                                                        obj7 = obj7;
                                                                                        str13 = str13;
                                                                                        str12 = str12;
                                                                                    }
                                                                                }
                                                                                e = e8;
                                                                            } catch (Exception e10) {
                                                                                e = e10;
                                                                                obj7 = obj7;
                                                                            }
                                                                            obj = obj;
                                                                            Restart108.log("dependency_item_error119", e);
                                                                            str9 = str;
                                                                            str11 = str2;
                                                                            obj7 = obj7;
                                                                            str13 = str13;
                                                                            str12 = str12;
                                                                        } else {
                                                                            obj7 = obj7;
                                                                            str10 = str10;
                                                                            str12 = str6;
                                                                        }
                                                                        if (Queue110.owner(Queue110.live.get(Integer.valueOf(iIntValue)), iIntValue) != null) {
                                                                            obj = obj;
                                                                            str9 = str;
                                                                            str11 = str2;
                                                                            obj7 = obj7;
                                                                            str13 = str13;
                                                                            str12 = str12;
                                                                        } else {
                                                                            try {
                                                                                if (wanted(obj) && !parentFinalized(obj)) {
                                                                                    if (!Queue110.isPaused(iIntValue) && !((String) call(Restart108.journalPrefs(), "getString", "intent:" + iIntValue, BuildConfig.FLAVOR)).endsWith("|PAUSE")) {
                                                                                        try {
                                                                                            if (Queue110.owner(Queue110.live.get(Integer.valueOf(iIntValue)), iIntValue) == null) {
                                                                                                Class<?> cls = Class.forName("com.shabakaty.downloader.tm1");
                                                                                                final Object objCallback = Episodes107.callback(cls, new Episodes107.Sink() { // from class: com.shabakaty.cinemana.ca1.Dependencies112$$ExternalSyntheticLambda1
                                                                                                    @Override // com.shabakaty.cinemana.ca1.Episodes107.Sink
                                                                                                    public final void take(Object obj12) {
                                                                                                        Dependencies112.lambda$recover$2(obj3, objLoad, obj12);
                                                                                                    }
                                                                                                });
                                                                                                call(obj6, "c", str7, str22, null, null, str13, Episodes107.callback(cls, new Episodes107.Sink() { // from class: com.shabakaty.cinemana.ca1.Dependencies112$$ExternalSyntheticLambda2
                                                                                                    @Override // com.shabakaty.cinemana.ca1.Episodes107.Sink
                                                                                                    public final void take(Object obj12) {
                                                                                                        Dependencies112.lambda$recover$3(objCallback, obj12);
                                                                                                    }
                                                                                                }));
                                                                                                obj = obj;
                                                                                                try {
                                                                                                    Restart108.trace("DEPENDENCY_NATIVE_SUBMIT parent=" + str(obj, str12) + " subtitle=" + str13);
                                                                                                } catch (Exception e11) {
                                                                                                    e = e11;
                                                                                                    Restart108.log("dependency_submit_error112", e);
                                                                                                    str9 = str;
                                                                                                    str11 = str2;
                                                                                                    obj7 = obj7;
                                                                                                    str13 = str13;
                                                                                                    str12 = str12;
                                                                                                }
                                                                                                str9 = str;
                                                                                                str11 = str2;
                                                                                                obj7 = obj7;
                                                                                                str13 = str13;
                                                                                                str12 = str12;
                                                                                            }
                                                                                            Restart108.log("dependency_submit_error112", e);
                                                                                        } catch (Exception e12) {
                                                                                            e = e12;
                                                                                            Restart108.log("dependency_item_error119", e);
                                                                                            str9 = str;
                                                                                            str11 = str2;
                                                                                            obj7 = obj7;
                                                                                            str13 = str13;
                                                                                            str12 = str12;
                                                                                        }
                                                                                        str9 = str;
                                                                                        str11 = str2;
                                                                                        obj7 = obj7;
                                                                                        str13 = str13;
                                                                                        str12 = str12;
                                                                                    }
                                                                                    str9 = str;
                                                                                    str11 = str2;
                                                                                    obj7 = obj7;
                                                                                    str13 = str13;
                                                                                    str12 = str12;
                                                                                }
                                                                                return;
                                                                            } catch (Exception e13) {
                                                                                e = e13;
                                                                                obj = obj;
                                                                            }
                                                                        }
                                                                    } catch (Exception e14) {
                                                                        e = e14;
                                                                        obj = obj;
                                                                        obj7 = obj7;
                                                                        str12 = str6;
                                                                        Restart108.log("dependency_item_error119", e);
                                                                        str9 = str;
                                                                        str11 = str2;
                                                                        obj7 = obj7;
                                                                        str13 = str13;
                                                                        str12 = str12;
                                                                    }
                                                                } else {
                                                                    str9 = str;
                                                                    str11 = str17;
                                                                    obj7 = obj7;
                                                                    str13 = str13;
                                                                    str12 = str6;
                                                                }
                                                            }
                                                        } catch (Exception e15) {
                                                            e = e15;
                                                            obj7 = obj7;
                                                            str2 = str17;
                                                            str12 = str6;
                                                            Restart108.log("dependency_item_error119", e);
                                                            str9 = str;
                                                            str11 = str2;
                                                            obj7 = obj7;
                                                            str13 = str13;
                                                            str12 = str12;
                                                        }
                                                        str12 = str6;
                                                        Restart108.log("dependency_item_error119", e);
                                                        str9 = str;
                                                        str11 = str2;
                                                        obj7 = obj7;
                                                        str13 = str13;
                                                        str12 = str12;
                                                    }
                                                    throw new IOException("subtitle factory identity mismatch");
                                                } catch (Exception e16) {
                                                    e = e16;
                                                    str = str;
                                                }
                                            } catch (Exception e17) {
                                                e = e17;
                                                str = str;
                                                str2 = str17;
                                                str12 = str6;
                                                Restart108.log("dependency_item_error119", e);
                                                str9 = str;
                                                str11 = str2;
                                                obj7 = obj7;
                                                str13 = str13;
                                                str12 = str12;
                                            }
                                        } catch (Exception e18) {
                                            e = e18;
                                        }
                                    }
                                } catch (Exception e19) {
                                    e = e19;
                                    str13 = str13;
                                    obj7 = obj7;
                                    str10 = str10;
                                    str2 = str17;
                                    str12 = str19;
                                    Restart108.log("dependency_item_error119", e);
                                    str9 = str;
                                    str11 = str2;
                                    obj7 = obj7;
                                    str13 = str13;
                                    str12 = str12;
                                }
                            } else {
                                if (arrayList.size() > 1) {
                                    obj3 = obj10;
                                    try {
                                        String str24 = str(obj3, "file");
                                        str13 = str13;
                                        try {
                                            Object objCall2 = call(obj6, "m", str24, null, (String) call(obj7, "getString", Integer.valueOf(R.string.subtitle_for_txt), new Object[]{str(obj3, "name"), call(objLoad, "d", new Object[0])}), null, str18, null);
                                            Object obj12 = get(objCall2, "a");
                                            int iIntValue2 = ((Number) call(obj12, "getId", new Object[0])).intValue();
                                            String canonicalPath = new File((String) call(obj12, "getPath", new Object[0])).getCanonicalPath();
                                            str13 = str18;
                                            if (!str13.equals(str(objCall2, "e")) || !str24.equals(call(obj12, "getUrl", new Object[0]))) {
                                                throw new IOException("foreign duplicate subtitle composer");
                                            }
                                            Iterator it2 = arrayList.iterator();
                                            Object obj13 = null;
                                            while (it2.hasNext()) {
                                                Object next2 = it2.next();
                                                str5 = str13;
                                                try {
                                                    if (!canonicalPath.equals(new File(str(next2, str5)).getCanonicalPath())) {
                                                        throw new IOException("ambiguous exact native subtitle paths");
                                                    }
                                                    Iterator it3 = it2;
                                                    String str25 = str20;
                                                    if (iIntValue2 == Restart108.number(next2, str25)) {
                                                        if (obj13 != null) {
                                                            throw new IOException("duplicate native subtitle ID");
                                                        }
                                                        obj13 = next2;
                                                    }
                                                    str20 = str25;
                                                    str13 = str5;
                                                    it2 = it3;
                                                } catch (Exception e20) {
                                                    e = e20;
                                                    str13 = str5;
                                                    obj7 = obj7;
                                                    str10 = str10;
                                                    str2 = str17;
                                                    str12 = str19;
                                                    Restart108.log("dependency_item_error119", e);
                                                    str9 = str;
                                                    str11 = str2;
                                                    obj7 = obj7;
                                                    str13 = str13;
                                                    str12 = str12;
                                                }
                                            }
                                            str4 = str20;
                                            str3 = str13;
                                            if (obj13 == null) {
                                                throw new IOException("ambiguous exact native subtitle task");
                                            }
                                            obj4 = obj13;
                                        } catch (Exception e21) {
                                            e = e21;
                                            obj7 = obj7;
                                            str10 = str10;
                                            str2 = str17;
                                            str12 = str19;
                                            Restart108.log("dependency_item_error119", e);
                                            str9 = str;
                                            str11 = str2;
                                            obj7 = obj7;
                                            str13 = str13;
                                            str12 = str12;
                                        }
                                    } catch (Exception e22) {
                                        e = e22;
                                        str5 = str13;
                                    }
                                    Restart108.log("dependency_item_error119", e);
                                    str9 = str;
                                    str11 = str2;
                                    obj7 = obj7;
                                    str13 = str13;
                                    str12 = str12;
                                } else {
                                    str3 = str13;
                                    obj3 = obj10;
                                    str4 = str20;
                                    str13 = str18;
                                    obj4 = null;
                                }
                                if (obj4 == null) {
                                    str13 = str3;
                                    str6 = str19;
                                    obj7 = obj7;
                                    str7 = str(obj3, "file");
                                    String str26 = (String) call(obj7, "getString", Integer.valueOf(R.string.subtitle_for_txt), new Object[]{str(obj3, "name"), call(objLoad, "d", new Object[0])});
                                    objCall = call(obj6, "m", str7, null, str26, null, str13, null);
                                    Object obj14 = get(objCall, "a");
                                    int iIntValue3 = ((Number) call(obj14, "getId", new Object[0])).intValue();
                                    String str27 = (String) call(obj14, "getPath", new Object[0]);
                                    if (!str13.equals(str(objCall, "e"))) {
                                    }
                                    throw new IOException("subtitle factory identity mismatch");
                                }
                                if (pathBusy(new File(str(obj4, str3)), list3, obj6)) {
                                    obj = obj;
                                    str9 = str;
                                    str13 = str3;
                                    str10 = str10;
                                    str11 = str17;
                                    str12 = str19;
                                } else {
                                    obj5 = obj;
                                    str13 = str3;
                                    obj7 = obj7;
                                    str6 = str19;
                                    if (Inputs114.identity(obj3, str, new File(str(obj5, str3)).getParentFile(), str(obj4, str19), str(obj4, str3), str(obj4, "v"))) {
                                        throw new IOException("native subtitle dependency mismatch");
                                    }
                                    iNumber = (int) Restart108.number(obj4, str4);
                                    if (Restart108.canRetry(obj6, iNumber)) {
                                    }
                                    obj = obj5;
                                    str10 = str10;
                                    str11 = str17;
                                    obj7 = obj7;
                                    str13 = str13;
                                    str12 = str6;
                                    str9 = str;
                                }
                            }
                        }
                    } catch (IOException e23) {
                    }
                }
                return;
            } catch (Exception e24) {
                e = e24;
                str12 = str12;
                str13 = str13;
                obj7 = obj7;
                str = str9;
                str2 = str11;
            }
        }
    }

    static /* synthetic */ void lambda$recover$2(Object obj, Object obj2, Object obj3) {
        try {
            persistSubtitle(obj, obj3, obj2);
        } catch (Exception e) {
            Restart108.log("dependency_metadata_error112", e);
        }
    }

    static /* synthetic */ void lambda$recover$3(Object obj, Object obj2) {
        try {
            call(obj2, "c", obj);
        } catch (Exception e) {
            Restart108.log("dependency_listener_error112", e);
        }
    }
}
