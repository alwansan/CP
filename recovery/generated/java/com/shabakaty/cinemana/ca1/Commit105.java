package com.shabakaty.cinemana.ca1;

import android.R;
import android.content.Context;
import android.content.SharedPreferences;
import com.connectsdk.discovery.provider.ssdp.SSDPPacket;
import com.liulishuo.filedownloader.BuildConfig;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.io.RandomAccessFile;
import java.lang.reflect.Field;
import java.nio.channels.FileLock;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class Commit105 {
    private static volatile Object DOWNLOADER = null;
    private static final String EXP = "com.shabakaty.cinemana.features.MkvExporter";
    private static final int NOTICE = 105015;

    public static boolean isPromoted(Context context, Object obj, File file) {
        String strText;
        if (context == null || obj == null || file == null) {
            return false;
        }
        try {
            Object objRow = row(context, obj);
            if (objRow == null || (strText = text(objRow, "x")) == null || strText.isEmpty() || !new File(strText).getCanonicalPath().equals(file.getCanonicalPath())) {
                return false;
            }
            Object obj2 = R94.get(objRow, "y");
            return (obj2 instanceof Number) && Final100.valid(file, ((Number) obj2).longValue());
        } catch (Throwable th) {
            return false;
        }
    }

    private static Object dao(Context context) throws Exception {
        Object obj;
        Object obj2 = DOWNLOADER;
        if (obj2 != null) {
            return obj2;
        }
        synchronized (Commit105.class) {
            if (DOWNLOADER == null) {
                DOWNLOADER = exporter("getDownloadsDao", context, context.getApplicationContext());
            }
            obj = DOWNLOADER;
        }
        return obj;
    }

    private static Object exporter(String str, Object... objArr) throws Exception {
        return R94.call(Class.forName(EXP), str, objArr);
    }

    private static String text(Object obj, String str) throws Exception {
        Object obj2 = R94.get(obj, str);
        return obj2 == null ? BuildConfig.FLAVOR : obj2.toString();
    }

    private static int task(Object obj) throws Exception {
        return ((Number) R94.get(obj, "downloadTaskId")).intValue();
    }

    private static void put(Object obj, String str, Object obj2) throws Exception {
        Field declaredField = obj.getClass().getDeclaredField(str);
        declaredField.setAccessible(true);
        declaredField.set(obj, obj2);
    }

    private static Object row(Context context, Object obj) throws Exception {
        Object objExporter = exporter("readDownloadsByTaskId", dao(context), Integer.valueOf(task(obj)));
        if (objExporter == null || !text(obj, "id").equals(text(objExporter, "s")) || ((Number) R94.get(objExporter, "r")).intValue() != task(obj)) {
            return null;
        }
        return objExporter;
    }

    private static File recorded(Context context, Object obj) throws Exception {
        File file = new File((File) exporter("ensureLogDir", new Object[0]), "mkv_identity.map");
        if (!file.isFile()) {
            return null;
        }
        String strText = text(obj, "id");
        String string = Integer.toString(task(obj));
        HashMap map = new HashMap();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), "UTF-8"));
        String str = null;
        while (true) {
            try {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                Map<String, String> map2 = parse(line);
                String str2 = map2.get(FileDownloadModel.PATH);
                if (str2 != null) {
                    map.put(str2, map2.get("itemId") + ":" + map2.get("taskId"));
                    if (strText.equals(map2.get("itemId")) && string.equals(map2.get("taskId"))) {
                        str = str2;
                    }
                }
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        bufferedReader.close();
        if (str == null || !(strText + ":" + string).equals(map.get(str))) {
            return null;
        }
        File canonicalFile = new File(str).getCanonicalFile();
        if (!canonicalFile.getPath().startsWith(new File((File) R94.call(Class.forName("android.os.Environment"), "getExternalStorageDirectory", new Object[0]), "Cinemana").getCanonicalFile().getPath() + File.separator) || canonicalFile.getPath().contains("/work/") || canonicalFile.length() < 1024 || !Final100.valid(canonicalFile, canonicalFile.length())) {
            return null;
        }
        return canonicalFile;
    }

    public static Map<String, String> parse(String str) {
        HashMap map = new HashMap();
        for (String str2 : str.split("\\|")) {
            int iIndexOf = str2.indexOf(61);
            if (iIndexOf > 0) {
                map.put(str2.substring(0, iIndexOf), str2.substring(iIndexOf + 1));
            }
        }
        return map;
    }

    public static void prepare(Object obj) {
        if (Enhancements.app != null) {
            repair(Enhancements.app, obj);
        }
    }

    public static boolean repair(Context context, Object obj) {
        Object objRow;
        if (context == null || obj == null) {
            return false;
        }
        try {
            if (context.getSharedPreferences("ca1_delete_intent", 0).getBoolean(text(obj, "id"), false) || (objRow = row(context, obj)) == null) {
                return false;
            }
            File file = new File(text(objRow, "x"));
            if (!Final100.valid(file, ((Number) R94.get(objRow, "y")).longValue())) {
                file = recorded(context, obj);
                if (file == null) {
                    return false;
                }
                exporter("restoreDownloadsRow", dao(context), objRow, file.getCanonicalPath(), Long.valueOf(file.length()));
            }
            String canonicalPath = file.getCanonicalPath();
            boolean z = !canonicalPath.equals(text(obj, FileDownloadModel.PATH));
            put(obj, FileDownloadModel.PATH, canonicalPath);
            put(obj, "sizeMB", Integer.valueOf((int) (file.length() / 1048576)));
            if (z) {
                R94.call(Class.forName("com.shabakaty.cinemana.features.MkvStateStore"), "setBusy", context, obj, false, "READY");
            }
            if (z) {
                Enhancements.log("playback_path_repaired105", "id=" + text(obj, "id") + " task=" + task(obj), null);
            }
            return true;
        } catch (Exception e) {
            Enhancements.log("playback_repair_error105", "exact task", e);
            return false;
        }
    }

    public static synchronized void completed(Context context, Object obj, File file) {
        if (context == null) {
            return;
        }
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(new File(context.getFilesDir(), "completion105.lock"), "rw");
            try {
                FileLock fileLockLock = randomAccessFile.getChannel().lock();
                try {
                    completedLocked(context, obj, file);
                    Persistence123.inventoryChanged();
                    if (fileLockLock != null) {
                        fileLockLock.close();
                    }
                    randomAccessFile.close();
                } catch (Throwable th) {
                    if (fileLockLock != null) {
                        try {
                            fileLockLock.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                try {
                    randomAccessFile.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
                throw th3;
            }
        } catch (Exception e) {
            Enhancements.log("completion_notice_error105", "lock", e);
        }
    }

    private static void completedLocked(Context context, Object obj, File file) {
        Object objRow;
        boolean z;
        String string = BuildConfig.FLAVOR;
        if (context == null || obj == null || file == null) {
            return;
        }
        try {
            if (Final100.valid(file, file.length()) && !file.getPath().contains("/work/") && (objRow = row(context, obj)) != null && file.getCanonicalPath().equals(new File(text(objRow, "x")).getCanonicalPath()) && Final100.valid(file, ((Number) R94.get(objRow, "y")).longValue())) {
                String str = text(obj, "id") + ":" + task(obj);
                String str2 = file.getCanonicalPath() + ":" + file.length() + ":" + file.lastModified();
                SharedPreferences sharedPreferences = context.getSharedPreferences("ca1_completion105", 4);
                if (str2.equals(sharedPreferences.getString(str, BuildConfig.FLAVOR))) {
                    return;
                }
                String strReplaceAll = text(obj, "title").replaceAll("\\s*\\[cnm-[^]]*\\]", BuildConfig.FLAVOR).replaceAll("[\\r\\n]", " ");
                String strText = text(obj, "season");
                String strText2 = text(obj, "episodeNumber");
                String str3 = strReplaceAll + (strText.isEmpty() ? BuildConfig.FLAVOR : I18n161.t(" — الموسم ") + strText) + (strText2.isEmpty() ? BuildConfig.FLAVOR : I18n161.t("، الحلقة ") + strText2);
                Object systemService = context.getSystemService("notification");
                if (systemService == null) {
                    return;
                }
                try {
                    z = false;
                    for (Object obj2 : (Object[]) R94.call(systemService, "getActiveNotifications", new Object[0])) {
                        try {
                            if (((Number) R94.call(obj2, "getId", new Object[0])).intValue() == NOTICE) {
                                z = true;
                            }
                        } catch (Exception e) {
                        }
                    }
                } catch (Exception e2) {
                    z = false;
                }
                int i = (z ? sharedPreferences.getInt("count", 0) : 0) + 1;
                StringBuilder sbAppend = new StringBuilder().append(str3).append(SSDPPacket.LF);
                if (z) {
                    string = sharedPreferences.getString("lines", BuildConfig.FLAVOR);
                }
                String[] strArrSplit = sbAppend.append(string).toString().split(SSDPPacket.LF);
                StringBuilder sb = new StringBuilder();
                for (int i2 = 0; i2 < Math.min(6, strArrSplit.length); i2++) {
                    sb.append(strArrSplit[i2]).append('\n');
                }
                show(context, systemService, i, sb.toString());
                sharedPreferences.edit().putString(str, str2).putInt("count", i).putString("lines", sb.toString()).commit();
                Enhancements.log("episode_ready_notification105", str, null);
            }
        } catch (Exception e3) {
            Enhancements.log("completion_notice_error105", "final export", e3);
        }
    }

    private static void show(Context context, Object obj, int i, String str) throws Exception {
        int i2 = Class.forName("android.os.Build$VERSION").getField("SDK_INT").getInt(null);
        if (i2 >= 26) {
            R94.call(obj, "createNotificationChannel", Class.forName("android.app.NotificationChannel").getConstructor(String.class, CharSequence.class, Integer.TYPE).newInstance("cinemana_episode_ready105", I18n161.t("الحلقات المكتملة"), 2));
        }
        Class<?> cls = Class.forName("android.app.Notification$Builder");
        Object objNewInstance = i2 >= 26 ? cls.getConstructor(Context.class, String.class).newInstance(context, "cinemana_episode_ready105") : cls.getConstructor(Context.class).newInstance(context);
        int iIntValue = ((Number) R94.call(R94.call(context, "getResources", new Object[0]), "getIdentifier", "ic_notification", "drawable", context.getPackageName())).intValue();
        if (iIntValue == 0) {
            iIntValue = R.drawable.stat_sys_download_done;
        }
        R94.call(objNewInstance, "setSmallIcon", Integer.valueOf(iIntValue));
        R94.call(objNewInstance, "setContentTitle", I18n161.t("اكتمل تحميل ") + i + I18n161.t(" حلقة"));
        R94.call(objNewInstance, "setContentText", str.split(SSDPPacket.LF)[0]);
        R94.call(objNewInstance, "setOnlyAlertOnce", true);
        R94.call(objNewInstance, "setAutoCancel", true);
        R94.call(objNewInstance, "setNumber", Integer.valueOf(i));
        Object objNewInstance2 = Class.forName("android.app.Notification$InboxStyle").getConstructor(new Class[0]).newInstance(new Object[0]);
        for (String str2 : str.split(SSDPPacket.LF)) {
            R94.call(objNewInstance2, "addLine", str2);
        }
        R94.call(objNewInstance2, "setSummaryText", i + I18n161.t(" حلقة مكتملة"));
        R94.call(objNewInstance, "setStyle", objNewInstance2);
        Object objCall = R94.call(R94.call(context, "getPackageManager", new Object[0]), "getLaunchIntentForPackage", context.getPackageName());
        if (objCall != null) {
            R94.call(objNewInstance, "setContentIntent", R94.call(Class.forName("android.app.PendingIntent"), "getActivity", context, Integer.valueOf(NOTICE), objCall, 201326592));
        }
        R94.call(obj, "notify", Integer.valueOf(NOTICE), R94.call(objNewInstance, "build", new Object[0]));
    }
}
