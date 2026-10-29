package com.shabakaty.cinemana.ca1;

import android.content.Context;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import java.io.File;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes6.dex */
public final class Recovery92 {
    public static void autoMissing(String str) {
        Ui7.log("resync_missing_preserved", str, null);
    }

    static Object mkv(String str, Class<?>[] clsArr, Object... objArr) throws Exception {
        Method declaredMethod = Class.forName("com.shabakaty.cinemana.features.MkvExporter").getDeclaredMethod(str, clsArr);
        declaredMethod.setAccessible(true);
        return declaredMethod.invoke(null, objArr);
    }

    static Object get(Object obj, String str) {
        return Ui7.get(obj, str);
    }

    static long number(Object obj) {
        if (obj instanceof Number) {
            return ((Number) obj).longValue();
        }
        return 0L;
    }

    static void log(String str, String str2, String str3) {
        Ui7.log(str, "id=" + str2 + " reason=" + str3, null);
    }

    public static synchronized void deleted(String str) {
        if (str != null) {
            try {
                Continue106.deleted(str);
                if (Ui7.app != null) {
                    Context context = Ui7.app;
                    Fresh121.deleted(context, str);
                    context.getSharedPreferences("ca1_delete_intent", 0).edit().putBoolean(str, true).apply();
                }
                StringBuilder sb = new StringBuilder();
                for (StackTraceElement stackTraceElement : Thread.currentThread().getStackTrace()) {
                    if (stackTraceElement.getClassName().startsWith("com.shabakaty.") && !stackTraceElement.getClassName().endsWith("Recovery92")) {
                        sb.append(stackTraceElement.getClassName()).append('.').append(stackTraceElement.getMethodName()).append(';');
                        if (sb.length() > 700) {
                            break;
                        }
                    }
                }
                log("metadata_delete_requested", str, sb.toString());
                StorageMigration151.pruneSoon();
                StorageMaintenance152.scanSoon();
            } catch (Throwable th) {
                log("metadata_delete_audit_failed", str, "preferences");
            }
        }
    }

    static boolean eligible(Object obj, Object obj2, String str) throws Exception {
        if (obj2 == null || !str.equals(get(obj, "id")) || !str.equals(get(obj2, "s")) || number(get(obj, "downloadTaskId")) != number(get(obj2, "r"))) {
            return false;
        }
        Object obj3 = get(obj2, "z");
        if (!(obj3 instanceof Enum) || !"COMPLETED".equals(((Enum) obj3).name())) {
            return false;
        }
        String str2 = (String) get(obj2, "x");
        String str3 = (String) get(obj, FileDownloadModel.PATH);
        if (str2 == null || str3 == null || !str2.endsWith(".mp4")) {
            return false;
        }
        File file = new File(str2);
        if (!file.isFile() || number(get(obj2, "y")) <= 0 || file.length() != number(get(obj2, "y"))) {
            return false;
        }
        File file2 = new File(str3);
        if (!file2.isAbsolute()) {
            file2 = new File(file.getParentFile(), str3);
        }
        return file.getCanonicalPath().equals(file2.getCanonicalPath());
    }

    public static synchronized Object read(Context context, Object obj, Object obj2, String str) {
        try {
            Object objMkv = mkv("readCombinedById", new Class[]{Object.class, String.class}, obj, str);
            if (objMkv != null) {
                return objMkv;
            }
            if (context != null && !context.getSharedPreferences("ca1_delete_intent", 0).getBoolean(str, false)) {
                if (!eligible(obj2, mkv("readDownloadsByTaskId", new Class[]{Object.class, Integer.TYPE}, mkv("getDownloadsDao", new Class[]{Context.class, Context.class}, context, context), Integer.valueOf((int) number(get(obj2, "downloadTaskId")))), str)) {
                    log("metadata_recovery_denied", str, "identity/status/path/size mismatch");
                    return null;
                }
                Object objMkv2 = mkv("readCombinedById", new Class[]{Object.class, String.class}, obj, str);
                if (objMkv2 != null) {
                    return objMkv2;
                }
                Object obj3 = get(obj, "a");
                Class<?> cls = Class.forName("com.shabakaty.cinemana.ca1.Recovery92Insert");
                Object objNewInstance = cls.getConstructor(obj.getClass(), Class.forName("com.shabakaty.downloader.vt3")).newInstance(obj, obj3);
                obj3.getClass().getMethod("i", new Class[0]).invoke(obj3, new Object[0]);
                try {
                    cls.getMethod("f", Object.class).invoke(objNewInstance, obj2);
                    obj3.getClass().getMethod("n", new Class[0]).invoke(obj3, new Object[0]);
                    obj3.getClass().getMethod("j", new Class[0]).invoke(obj3, new Object[0]);
                    Object objMkv3 = mkv("readCombinedById", new Class[]{Object.class, String.class}, obj, str);
                    log(objMkv3 != null ? "metadata_recovered" : "metadata_recovery_failed", str, "verified native completed MP4");
                    return objMkv3;
                } catch (Throwable th) {
                    obj3.getClass().getMethod("j", new Class[0]).invoke(obj3, new Object[0]);
                    throw th;
                }
            }
            log("metadata_recovery_denied", str, "delete intent");
            return null;
        } catch (Throwable th2) {
            log("metadata_recovery_failed", str, th2.getClass().getSimpleName());
            return null;
        }
    }
}
