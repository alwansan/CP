package com.shabakaty.cinemana.ca1;

import com.liulishuo.filedownloader.BuildConfig;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class WorkFolders104 {
    static final Map<String, Long> attempted = new HashMap();
    static final Set<String> resolving = new HashSet();

    static Object cls() throws Exception {
        return Class.forName("com.shabakaty.cinemana.ca1.Enhancements");
    }

    static String cached(String str) throws Exception {
        Continue106.call(cls(), "loadNames", new Object[0]);
        Object obj = Continue106.get(cls(), "ROOTS");
        synchronized (WorkFolders104.class) {
            Object obj2 = ((Map) obj).get(str);
            if (obj2 != null && !obj2.toString().trim().isEmpty()) {
                return obj2.toString().trim();
            }
            Object objApp = Restart108.context;
            if (objApp == null) {
                objApp = Continue106.app();
            }
            if (objApp == null) {
                return BuildConfig.FLAVOR;
            }
            String str2 = (String) Continue106.call(Continue106.call(objApp, "getSharedPreferences", "ca1_work_names", 0), "getString", str, BuildConfig.FLAVOR);
            if (str2.trim().isEmpty()) {
                return BuildConfig.FLAVOR;
            }
            synchronized (WorkFolders104.class) {
                ((Map) obj).put(str, str2.trim());
            }
            return str2.trim();
        }
    }

    static boolean details(String str) throws Exception {
        Object objApp = Restart108.context;
        if (objApp == null) {
            objApp = Continue106.app();
        }
        if (objApp == null) {
            return false;
        }
        Object objCall = Continue106.call(Continue106.get(Continue106.get(objApp, "u"), "b1"), "get", new Object[0]);
        Class<?> cls = Class.forName("com.shabakaty.cinemana.ca1.BatchDownload");
        Object objCall2 = Continue106.call(cls, "unwrap", Continue106.call(cls, "await", Continue106.call(objCall, "b", str), false));
        if (objCall2 != null && str.equals(Continue106.text(objCall2, "nb"))) {
            String strTrim = String.valueOf(Continue106.call(objCall2, "c", new Object[0])).trim();
            if (!strTrim.isEmpty() && !"null".equals(strTrim)) {
                Object objCall3 = Continue106.call(Continue106.call(objApp, "getSharedPreferences", "ca1_work_names", 0), "edit", new Object[0]);
                Continue106.call(objCall3, "putString", str, strTrim);
                if (!Boolean.TRUE.equals(Continue106.call(objCall3, "commit", new Object[0]))) {
                    return false;
                }
                synchronized (WorkFolders104.class) {
                    ((Map) Continue106.get(cls(), "ROOTS")).put(str, strTrim);
                }
                Restart108.trace("WORK_TITLE120_DETAILS root=" + str);
                return true;
            }
        }
        return false;
    }

    /**
     * Faithful Java reconstruction from the original
     * smali_classes6/ca1/WorkFolders104.smali name(Object,String).
     * Cache-first, single-flight recovery with a 20-second retry throttle.
     */
    public static String name(Object episode, String fallback) {
        try {
            String root = (String) Continue106.call(cls(), "str", episode, "rootEpisode");
            if (root.isEmpty() || "0".equals(root)) {
                return fallback;
            }
            String result = cached(root);
            if (!result.isEmpty()) {
                return result;
            }
            long now = System.currentTimeMillis();
            boolean shouldResolve = false;
            synchronized (WorkFolders104.class) {
                Long previous = attempted.get(root);
                if (!resolving.contains(root)
                        && (previous == null || now - previous.longValue() >= 20_000L)) {
                    resolving.add(root);
                    attempted.put(root, now);
                    shouldResolve = true;
                }
            }
            if (shouldResolve) {
                try {
                    boolean found;
                    try {
                        found = details(root);
                    } catch (Exception ignored) {
                        found = false;
                    }
                    if (!found) {
                        Continue106.call(cls(), "lambda$resolveName$13", (Object) null, root);
                    }
                } finally {
                    synchronized (WorkFolders104.class) {
                        resolving.remove(root);
                    }
                }
            }
            result = cached(root);
            if (!result.isEmpty()) {
                return result;
            }
            throw new IllegalStateException("WORK_TITLE_PENDING root=" + root);
        } catch (RuntimeException runtime) {
            throw runtime;
        } catch (Exception checked) {
            throw new IllegalStateException("WORK_TITLE_RECOVERY_ERROR", checked);
        }
    }
}
