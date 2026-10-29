package com.shabakaty.cinemana.ca1;

import com.liulishuo.filedownloader.BuildConfig;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
public final class Inputs114 {
    static final ThreadLocal<Map<?, ?>> scanPlans = new ThreadLocal<>();
    static final ThreadLocal<Map<String, Object>> scanModels = new ThreadLocal<>();
    static final ThreadLocal<Map<String, List<Properties>>> scanIndex = new ThreadLocal<>();
    static final ThreadLocal<Integer> scanDepth = new ThreadLocal<>();

    static Object call(Object obj, String str, Object... objArr) throws Exception {
        return Restart108.call(obj, str, objArr);
    }

    static String str(Object obj, String str) throws Exception {
        return Restart108.str(obj, str);
    }

    static void beginScan() {
        Object objValueOf;
        ThreadLocal threadLocal = scanDepth;
        Integer num = (Integer) threadLocal.get();
        if (num == null) {
            threadLocal.set(1);
            threadLocal = scanModels;
            objValueOf = new HashMap();
        } else {
            objValueOf = Integer.valueOf(num.intValue() + 1);
        }
        threadLocal.set(objValueOf);
    }

    static void endScan() {
        ThreadLocal<Integer> threadLocal = scanDepth;
        Integer num = threadLocal.get();
        if (num != null && num.intValue() > 1) {
            threadLocal.set(Integer.valueOf(num.intValue() - 1));
            return;
        }
        threadLocal.remove();
        scanPlans.remove();
        scanModels.remove();
        scanIndex.remove();
    }

    public static Object model(String str) throws Exception {
        Map<String, Object> map = scanModels.get();
        if (map != null && map.containsKey(str)) {
            Object obj = map.get(str);
            if (obj != null) {
                return obj;
            }
            throw new IOException("subtitle plan not available yet");
        }
        Map<String, List<Properties>> map2 = scanIndex.get();
        if (map2 == null) {
            map2 = new HashMap<>();
            Map<?, ?> map3 = (Map) call(Dependencies112.prefs(), "getAll", new Object[0]);
            if (map != null) {
                scanPlans.set(map3);
            }
            for (Map.Entry<?, ?> entry : map3.entrySet()) {
                if (entry.getKey().toString().startsWith("plan:")) {
                    try {
                        Properties propertiesDecode = Restart108.decode(entry.getValue().toString());
                        String property = propertiesDecode.getProperty("token", BuildConfig.FLAVOR);
                        if (!property.isEmpty()) {
                            map2.computeIfAbsent(property, new Function() { // from class: com.shabakaty.cinemana.ca1.Inputs114$$ExternalSyntheticLambda0
                                @Override // java.util.function.Function
                                public final Object apply(Object obj2) {
                                    return Inputs114.lambda$model$0((String) obj2);
                                }
                            }).add(propertiesDecode);
                        }
                    } catch (IOException e) {
                    }
                }
            }
            if (map != null) {
                scanIndex.set(map2);
            }
        }
        Object obj2 = null;
        for (Properties properties : map2.getOrDefault(str, Collections.emptyList())) {
            Object objUnpack = Dependencies112.unpack(properties);
            if (!properties.getProperty("id", BuildConfig.FLAVOR).equals(str(objUnpack, "nb")) || !str.equals(Dependencies112.content(objUnpack))) {
                throw new IOException("subtitle plan identity mismatch");
            }
            if (obj2 != null) {
                throw new IOException("ambiguous subtitle plan");
            }
            obj2 = objUnpack;
        }
        if (map != null) {
            map.put(str, obj2);
        }
        if (obj2 != null) {
            return obj2;
        }
        throw new IOException("subtitle plan not available yet");
    }

    static /* synthetic */ List lambda$model$0(String str) {
        return new ArrayList();
    }

    static boolean finalized(Properties properties) throws Exception {
        Object objExp;
        String str = Restart108.token(properties.getProperty(FileDownloadModel.PATH, BuildConfig.FLAVOR));
        if (str.isEmpty()) {
            return false;
        }
        try {
            Object objModel = model(str);
            String str2 = str(objModel, "nb");
            boolean zEquals = str2.equals(properties.getProperty("external"));
            if (!zEquals) {
                for (Object obj : Dependencies112.subtitles(objModel)) {
                    if (str(obj, "id").equals(properties.getProperty("external")) && str(obj, "file").equals(properties.getProperty("url"))) {
                        zEquals = true;
                    }
                }
            }
            if (!zEquals || (objExp = Restart108.exp("readCombinedById", call(Restart108.context, "h", new Object[0]), str2)) == null) {
                return false;
            }
            Object obj2 = Restart108.get(objExp, "cinemanaDownloadItem");
            File file = new File(str(obj2, FileDownloadModel.PATH));
            return str.equals(Restart108.identityToken(obj2)) && Restart108.valid(file, file.length());
        } catch (IOException e) {
            return false;
        }
    }

    static boolean identity(Object obj, String str, File file, String str2, String str3, String str4) throws Exception {
        File file2 = new File(str3);
        return str(obj, "id").equals(str2) && str(obj, "file").equals(str4) && Restart108.safe(file2) && str.equals(Restart108.token(str3)) && file2.getCanonicalFile().getParentFile().equals(file.getCanonicalFile()) && file2.getName().toLowerCase(Locale.ROOT).endsWith(new StringBuilder().append(".").append(str(obj, "extention").toLowerCase(Locale.ROOT)).toString());
    }

    static boolean complete(Object obj, File file) throws Exception {
        return "COMPLETED".equals(Restart108.status(obj)) && Restart108.number(obj, "y") > 0 && Restart108.number(obj, "t") == Restart108.number(obj, "y") && file.isFile() && file.length() == Restart108.number(obj, "y") && !Restart108.active((int) Restart108.number(obj, "r"));
    }

    static boolean pathActive(File file, List<?> list) throws Exception {
        String canonicalPath = file.getCanonicalPath();
        for (Object obj : list) {
            if (canonicalPath.equals(new File(str(obj, "x")).getCanonicalPath()) && Restart108.active((int) Restart108.number(obj, "r"))) {
                return true;
            }
        }
        return false;
    }

    static List<File> select(Object obj, String str, File file, List<?> list, Map<?, ?> map) throws Exception {
        return selectList(Dependencies112.subtitles(obj), str, file, list, map);
    }

    static List<File> selectSub(Object obj, String str, File file, List<?> list, Map<?, ?> map) throws Exception {
        return selectList(Collections.singletonList(obj), str, file, list, map);
    }

    static List<File> selectList(List<Object> list, String str, File file, List<?> list2, Map<?, ?> map) throws Exception {
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        for (Object obj : list) {
            File file2 = null;
            for (Object obj2 : list2) {
                if (identity(obj, str, file, str(obj2, "s"), str(obj2, "x"), str(obj2, "v"))) {
                    File file3 = new File(str(obj2, "x"));
                    if (complete(obj2, file3) && !pathActive(file3, list2)) {
                        if (file2 != null && !file2.getCanonicalPath().equals(file3.getCanonicalPath())) {
                            throw new IOException("ambiguous completed subtitle");
                        }
                        file2 = file3;
                    }
                }
            }
            if (file2 == null) {
                for (Map.Entry<?, ?> entry : map.entrySet()) {
                    if (entry.getKey().toString().startsWith("done:")) {
                        Properties propertiesDecode = Restart108.decode(entry.getValue().toString());
                        String property = propertiesDecode.getProperty(FileDownloadModel.PATH, BuildConfig.FLAVOR);
                        if (identity(obj, str, file, propertiesDecode.getProperty("external", BuildConfig.FLAVOR), property, propertiesDecode.getProperty("url", BuildConfig.FLAVOR))) {
                            int i = Integer.parseInt(propertiesDecode.getProperty("task"));
                            if (!Restart108.active(i) && !Queue110.isPaused(i)) {
                                File file4 = new File(property);
                                long j = Long.parseLong(propertiesDecode.getProperty("size", "0"));
                                if (j > 0 && file4.isFile() && file4.length() == j) {
                                    boolean z = false;
                                    for (Object obj3 : list2) {
                                        if (i == Restart108.number(obj3, "r") && !complete(obj3, file4)) {
                                            z = true;
                                        }
                                    }
                                    if (!z && !pathActive(file4, list2)) {
                                        if (file2 != null && !file2.getCanonicalPath().equals(file4.getCanonicalPath())) {
                                            throw new IOException("ambiguous subtitle receipt");
                                        }
                                        file2 = file4;
                                    }
                                }
                            }
                        } else {
                            continue;
                        }
                    }
                }
            }
            if (file2 == null) {
                throw new IOException("subtitle not committed: " + str(obj, "id"));
            }
            if (!hashSet.add(file2.getCanonicalPath())) {
                throw new IOException("subtitle identities share a path");
            }
            arrayList.add(file2);
        }
        return arrayList;
    }

    public static List<File> verified(Object obj, File file) {
        try {
            Restart108.context = call(obj, "getApplicationContext", new Object[0]);
            String str = Restart108.token(file.getPath());
            List<File> listSelect = select(model(str), str, file.getParentFile(), (List) Restart108.exp("readAllDownloads", Restart108.exp("getDownloadsDao", obj, obj)), (Map) call(Queue110.pref(), "getAll", new Object[0]));
            if (((Number) call(Class.forName("com.shabakaty.cinemana.features.MkvManifestStore"), "expectedSubtitleCount", str)).intValue() != listSelect.size()) {
                throw new IOException("subtitle plan count mismatch");
            }
            Restart108.trace("INPUTS114_VERIFIED token=" + str + " count=" + listSelect.size());
            return listSelect;
        } catch (Exception e) {
            Restart108.log("inputs114_deferred", e);
            return null;
        }
    }
}
