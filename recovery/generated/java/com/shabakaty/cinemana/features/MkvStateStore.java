package com.shabakaty.cinemana.features;

import android.content.Context;
import android.content.Intent;
import com.liulishuo.filedownloader.BaseDownloadTask;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.data.db.downloads.CinemanaDownloadItem;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public final class MkvStateStore {
    private static final ConcurrentHashMap HOT_BUSY = new ConcurrentHashMap();
    private static final ConcurrentHashMap HOT_PHASE = new ConcurrentHashMap();
    private static final String PREFS = "cnm_mkv_state_v54";

    private MkvStateStore() {
    }

    public static boolean isBusy(Context context, CinemanaDownloadItem cinemanaDownloadItem) {
        if (context == null || cinemanaDownloadItem == null) {
            return false;
        }
        String str = cinemanaDownloadItem.path;
        if (str != null && str.toLowerCase(Locale.US).endsWith(".mkv")) {
            return false;
        }
        String strKey = key(cinemanaDownloadItem);
        if (strKey.length() <= 0) {
            return false;
        }
        Object obj = HOT_BUSY.get(strKey);
        return obj instanceof Boolean ? ((Boolean) obj).booleanValue() : context.getSharedPreferences(PREFS, 0).getBoolean(strKey, false);
    }

    private static String key(Object obj) {
        String str;
        if (obj instanceof String) {
            return (String) obj;
        }
        if (!(obj instanceof CinemanaDownloadItem)) {
            return BuildConfig.FLAVOR;
        }
        CinemanaDownloadItem cinemanaDownloadItem = (CinemanaDownloadItem) obj;
        String str2 = cinemanaDownloadItem.path;
        return (str2 == null || (str = MkvManifestStore.tokenFromPath(str2)) == null || str.length() <= 0) ? DownloadIdentity.contentToken(cinemanaDownloadItem) : str;
    }

    public static void markQueuedForTask(Context context, BaseDownloadTask baseDownloadTask) {
        String str;
        if (context == null || baseDownloadTask == null) {
            return;
        }
        try {
            String path = baseDownloadTask.getPath();
            if (path == null || !path.toLowerCase(Locale.US).endsWith(".mp4") || (str = MkvManifestStore.tokenFromPath(path)) == null || str.length() <= 0) {
                return;
            }
            setBusy(context, str, true, "QUEUED");
            RenameAssets.trace(context, "MKV_UI_QUEUED_IMMEDIATE", baseDownloadTask, null);
        } catch (Throwable th) {
        }
    }

    public static String message(Context context) {
        if (context == null) {
            return "Video is being merged into MKV. Please wait.";
        }
        try {
            return "ar".equals(context.getResources().getConfiguration().locale.getLanguage()) ? "جاري دمج الفيديو إلى MKV، يرجى الانتظار" : "Video is being merged into MKV. Please wait.";
        } catch (Throwable th) {
            return "Video is being merged into MKV. Please wait.";
        }
    }

    public static String message(Context context, Object obj) {
        String string = "PROCESSING";
        String strKey = key(obj);
        if (strKey.length() > 0) {
            Object obj2 = HOT_PHASE.get(strKey);
            if (obj2 instanceof String) {
                string = (String) obj2;
            } else if (context != null) {
                string = context.getSharedPreferences(PREFS, 0).getString(strKey + "_phase", "PROCESSING");
            }
        }
        if (!"QUEUED".equals(string)) {
            return message(context);
        }
        if (context == null) {
            return "Waiting for MKV conversion";
        }
        try {
            return "ar".equals(context.getResources().getConfiguration().locale.getLanguage()) ? "في انتظار التحويل إلى MKV" : "Waiting for MKV conversion";
        } catch (Throwable th) {
            return "Waiting for MKV conversion";
        }
    }

    public static void resetStale(Context context) {
        HOT_BUSY.clear();
        HOT_PHASE.clear();
    }

    public static void setBusy(Context context, Object obj, boolean z, String str) {
        if (context != null) {
            String strKey = key(obj);
            if (strKey.length() > 0) {
                if (str == null) {
                    str = "IDLE";
                }
                HOT_BUSY.put(strKey, Boolean.valueOf(z));
                HOT_PHASE.put(strKey, str);
                MkvUiRefresh.notifyChanged();
                context.getSharedPreferences(PREFS, 0).edit().putBoolean(strKey, z).putString(strKey + "_phase", str).apply();
                try {
                    context.sendBroadcast(new Intent("com.shabakaty.cinemana.MKV_STATE_CHANGED").setPackage(context.getPackageName()).putExtra("token", strKey).putExtra("busy", z).putExtra("phase", str));
                } catch (Throwable th) {
                }
            }
        }
    }
}
