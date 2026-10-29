package com.shabakaty.cinemana.features;

import com.liulishuo.filedownloader.BuildConfig;
import java.lang.reflect.Field;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public final class DownloadTitle127 {
    private static final Pattern TOKEN = Pattern.compile("\\s*\\[cnm-[^\\]]+\\]", 2);

    private DownloadTitle127() {
    }

    public static String clean(String str) {
        if (str == null) {
            return null;
        }
        String strTrim = TOKEN.matcher(str).replaceAll(BuildConfig.FLAVOR).replace('\r', ' ').replace('\n', ' ').trim();
        while (strTrim.contains("  ")) {
            strTrim = strTrim.replace("  ", " ");
        }
        return strTrim;
    }

    public static void cleanItem(Object obj) {
        if (obj == null) {
            return;
        }
        try {
            String str = read(obj, "title");
            String strClean = clean(str);
            if (strClean != null && str != null && !strClean.equals(str) && strClean.length() > 0) {
                write(obj, "title", strClean);
            }
        } catch (Throwable th) {
        }
    }

    public static void cleanRows(Object obj, Object obj2) {
        cleanItem(obj);
        cleanItem(obj2);
    }

    private static String read(Object obj, String str) throws Exception {
        Field fieldFind = find(obj.getClass(), str);
        if (fieldFind != null) {
            fieldFind.setAccessible(true);
            Object obj2 = fieldFind.get(obj);
            if (obj2 == null) {
                return null;
            }
            return String.valueOf(obj2);
        }
        Object objInvoke = obj.getClass().getMethod("get" + Character.toUpperCase(str.charAt(0)) + str.substring(1), new Class[0]).invoke(obj, new Object[0]);
        if (objInvoke == null) {
            return null;
        }
        return String.valueOf(objInvoke);
    }

    private static void write(Object obj, String str, String str2) throws Exception {
        Field fieldFind = find(obj.getClass(), str);
        if (fieldFind != null) {
            fieldFind.setAccessible(true);
            fieldFind.set(obj, str2);
        } else {
            obj.getClass().getMethod("set" + Character.toUpperCase(str.charAt(0)) + str.substring(1), String.class).invoke(obj, str2);
        }
    }

    private static Field find(Class<?> cls, String str) {
        while (cls != null) {
            try {
                return cls.getDeclaredField(str);
            } catch (Throwable th) {
                cls = cls.getSuperclass();
            }
        }
        return null;
    }
}
