package com.shabakaty.cinemana.ca1;

import android.content.Context;
import android.util.Log;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.lang.reflect.Field;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes6.dex */
public final class Final100 {
    private static Object get(Object obj, String str) throws Exception {
        return R94.get(obj, str);
    }

    private static void set(Object obj, String str, Object obj2) throws Exception {
        Field declaredField = obj.getClass().getDeclaredField(str);
        declaredField.setAccessible(true);
        declaredField.set(obj, obj2);
    }

    public static boolean valid(File file, long j) {
        if (file == null || !file.getName().toLowerCase(Locale.ROOT).endsWith(".mkv") || file.getName().contains(".stage") || file.getName().contains(".tmp") || j <= 4 || !file.isFile() || file.length() != j) {
            return false;
        }
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
            try {
                boolean z = randomAccessFile.readInt() == 440786851;
                randomAccessFile.close();
                return z;
            } catch (Throwable th) {
                try {
                    randomAccessFile.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException e) {
            return false;
        }
    }

    private static boolean verified(Object obj) throws Exception {
        return obj != null && valid(new File((String) get(obj, "x")), ((Number) get(obj, "y")).longValue());
    }

    private static boolean recover(Context context, Object obj) throws Exception {
        File file;
        if (verified(obj) || context == null || obj == null) {
            return false;
        }
        String str = (String) get(obj, "s");
        if (context.getSharedPreferences("ca1_delete_intent", 0).getBoolean(str, false)) {
            return false;
        }
        Object objCall = R94.call(context.getApplicationContext(), "h", new Object[0]);
        Class<?> cls = Class.forName("com.shabakaty.cinemana.features.MkvExporter");
        Object objCall2 = R94.call(cls, "readCombinedById", objCall, str);
        if (objCall2 == null) {
            return false;
        }
        Object obj2 = get(objCall2, "cinemanaDownloadItem");
        if (!str.equals(get(obj2, "id")) || ((Number) get(obj2, "downloadTaskId")).intValue() != ((Number) get(obj, "r")).intValue() || (file = (File) R94.call(cls, "resolvePath", get(obj2, FileDownloadModel.PATH))) == null || !valid(file, file.length()) || file.length() / 1048576 != ((Number) get(obj2, "sizeMB")).longValue()) {
            return false;
        }
        set(obj, "x", file.getCanonicalPath());
        set(obj, "y", Long.valueOf(file.length()));
        set(obj, "t", Long.valueOf(file.length()));
        return true;
    }

    private static void restoreRow(Context context, Object obj, Object obj2) throws Exception {
        boolean zRecover = recover(context, obj2);
        if (verified(obj2)) {
            boolean zComplete = complete(obj2);
            if (zRecover || zComplete) {
                save(obj, obj2);
            }
        }
    }

    public static boolean protectEvent(Object obj, Object obj2, Object obj3) {
        try {
            restoreRow((Context) get(obj, "b"), get(get(obj, "a"), "a"), obj2);
        } catch (Exception e) {
            Log.w("Cinemana100", "restore before stale event", e);
        }
        return protect(obj2, obj3);
    }

    public static boolean protect(Object obj, Object obj2) {
        try {
            if (!verified(obj)) {
                return false;
            }
            complete(obj);
            Log.d("Cinemana100", "ignored stale event for committed MKV task " + get(obj, "r"));
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    private static boolean complete(Object obj) throws Exception {
        Object obj2 = get(obj, "z");
        if ((obj2 instanceof Enum) && "COMPLETED".equals(((Enum) obj2).name())) {
            return false;
        }
        set(obj, "z", Class.forName("com.shabakaty.downloader.xc4").getField("y").get(null));
        set(obj, "t", get(obj, "y"));
        set(obj, "A", null);
        return true;
    }

    private static Object dao(Object obj) throws Exception {
        return get(get(obj, "c"), "a");
    }

    private static void save(Object obj, Object obj2) throws Exception {
        ((Callable) Class.forName("com.shabakaty.downloader.lz0$m").getConstructor(Class.forName("com.shabakaty.downloader.lz0"), Class.forName("com.shabakaty.downloader.pw0")).newInstance(obj, obj2)).call();
    }

    public static void restore(Object obj, Object obj2) {
        try {
            restoreRow((Context) get(obj, "a"), dao(obj), obj2);
        } catch (Exception e) {
            Log.w("Cinemana100", "restore final status", e);
        }
    }

    public static boolean skip(Object obj, Object obj2) {
        try {
            String str = (String) get(obj2, "e");
            for (Object obj3 : (List) R94.call(Class.forName("com.shabakaty.cinemana.features.MkvExporter"), "readAllDownloads", dao(obj))) {
                if (str.equals(get(obj3, "s"))) {
                    restore(obj, obj3);
                    if (verified(obj3)) {
                        set(obj2, "g", Boolean.TRUE);
                        return true;
                    }
                }
            }
        } catch (Exception e) {
            Log.w("Cinemana100", "check final before start", e);
        }
        return false;
    }
}
