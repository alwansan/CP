package com.shabakaty.cinemana.features;

import android.content.Context;
import android.content.SharedPreferences;
import com.liulishuo.filedownloader.BaseDownloadTask;
import com.liulishuo.filedownloader.BuildConfig;
import com.liulishuo.filedownloader.model.FileDownloadStatus;
import com.shabakaty.cinemana.ca1.Inputs114;
import java.io.File;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
public final class MkvManifestStore {
    private static final String PLAN_PREFS = "cnm_mkv_plan_v54";
    private static final String PREFS = "cnm_mkv_manifest_v66";
    private static volatile Context context;

    public static synchronized void beginPlan(Context context2, String str, int i) {
        if (context2 != null && str != null) {
            if (str.length() > 0) {
                init(context2);
                context2.getSharedPreferences(PLAN_PREFS, 0).edit().putInt(str, i).commit();
                SharedPreferences.Editor editorEdit = context2.getSharedPreferences(PREFS, 0).edit();
                editorEdit.putInt(terminalKey(str), 0);
                editorEdit.putInt(completedKey(str), 0);
                editorEdit.remove(videoStateKey(str));
                editorEdit.remove(videoPathKey(str));
                editorEdit.commit();
            }
        }
    }

    public static synchronized void clearToken(Context context2, String str) {
        if (context2 == null || str == null || str.isEmpty()) {
            return;
        }
        try {
            context2.getSharedPreferences(PLAN_PREFS, 0).edit().remove(str).commit();
            SharedPreferences sharedPreferences = context2.getSharedPreferences(PREFS, 0);
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            String str2 = str + "|";
            for (String str3 : sharedPreferences.getAll().keySet()) {
                if (str3 instanceof String) {
                    String str4 = str3;
                    if (str4.startsWith(str2)) {
                        editorEdit = editorEdit.remove(str4);
                    }
                }
            }
            editorEdit.commit();
        } catch (Throwable th) {
        }
    }

    public static boolean isNoSubPath(String str) {
        return isNoSubToken(tokenFromPath(str));
    }

    public static boolean isNoSubToken(String str) {
        return expectedSubtitleCount(str) == 0;
    }

    public static synchronized boolean reconcileDiskReady(Context context2, File file) {
        int iExpectedSubtitleCount;
        List<File> listVerified;
        if (context2 == null || file == null) {
            return false;
        }
        init(context2);
        if (!file.exists() || !file.isFile() || file.length() < 1024) {
            return false;
        }
        String absolutePath = file.getAbsolutePath();
        String str = tokenFromPath(absolutePath);
        if (str.length() <= 0 || (iExpectedSubtitleCount = expectedSubtitleCount(str)) < 0 || (listVerified = Inputs114.verified(context2, file)) == null || listVerified.size() != iExpectedSubtitleCount) {
            return false;
        }
        for (File file2 : listVerified) {
            if (!(file2 instanceof File)) {
                return false;
            }
            File file3 = file2;
            if (!file3.exists() || !file3.isFile() || file3.length() <= 0) {
                return false;
            }
        }
        SharedPreferences.Editor editorPutString = context2.getSharedPreferences(PREFS, 0).edit().putString(videoPathKey(str), absolutePath).putString(videoStateKey(str), "COMPLETED_VERIFIED");
        if (iExpectedSubtitleCount > 0) {
            editorPutString = editorPutString.putInt(completedKey(str), iExpectedSubtitleCount).putInt(terminalKey(str), iExpectedSubtitleCount);
        }
        if (editorPutString.commit()) {
            return isReadyToken(str);
        }
        return false;
    }

    public static boolean recoverReadyFromVerifiedFiles(Context context2, String str, String str2, int i, int i2) {
        if (context2 == null || str == null || str2 == null || str.isEmpty() || i < 0 || i != i2) {
            return false;
        }
        init(context2);
        SharedPreferences.Editor editorEdit = context2.getSharedPreferences(PLAN_PREFS, 0).edit();
        editorEdit.putInt(str, i);
        editorEdit.commit();
        SharedPreferences.Editor editorEdit2 = context2.getSharedPreferences(PREFS, 0).edit();
        editorEdit2.putString(videoPathKey(str), str2);
        editorEdit2.putString(videoStateKey(str), "COMPLETED_VERIFIED");
        editorEdit2.putInt(terminalKey(str), i);
        editorEdit2.putInt(completedKey(str), i);
        editorEdit2.commit();
        return isReadyToken(str);
    }

    private MkvManifestStore() {
    }

    public static void init(Context context2) {
        if (context2 != null) {
            Context applicationContext = context2.getApplicationContext();
            if (applicationContext != null) {
                context2 = applicationContext;
            }
            context = context2;
        }
    }

    public static String tokenFromPath(String str) {
        int iIndexOf;
        int i;
        int iIndexOf2;
        if (str == null || (iIndexOf = str.indexOf("[cnm-")) < 0 || (iIndexOf2 = str.indexOf(93, (i = iIndexOf + 5))) <= i) {
            return BuildConfig.FLAVOR;
        }
        return str.substring(i, iIndexOf2);
    }

    private static String norm(String str) {
        return str == null ? BuildConfig.FLAVOR : str.trim().replace('\\', '/').toLowerCase(Locale.US);
    }

    private static String hash(String str) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance("SHA-256").digest(norm(str).getBytes(StandardCharsets.UTF_8));
            StringBuilder sb = new StringBuilder(16);
            for (int i = 0; i < 8 && i < bArrDigest.length; i++) {
                sb.append(String.format(Locale.US, "%02x", Integer.valueOf(bArrDigest[i] & FileDownloadStatus.error)));
            }
            return sb.toString();
        } catch (Throwable th) {
            return Integer.toHexString(norm(str).hashCode());
        }
    }

    private static boolean isSubtitle(String str) {
        String strNorm = norm(str);
        return strNorm.endsWith(".srt") || strNorm.endsWith(".ass") || strNorm.endsWith(".ssa") || strNorm.endsWith(".vtt");
    }

    private static boolean isVideo(String str) {
        return norm(str).endsWith(".mp4");
    }

    private static String taskStateKey(String str, String str2) {
        return str + "|task|" + hash(str2) + "|state";
    }

    private static String videoStateKey(String str) {
        return str + "|video_state";
    }

    private static String videoPathKey(String str) {
        return str + "|video_path";
    }

    private static String terminalKey(String str) {
        return str + "|sub_terminal";
    }

    private static String completedKey(String str) {
        return str + "|sub_completed";
    }

    public static synchronized void registerTask(BaseDownloadTask baseDownloadTask) {
        Context context2 = context;
        if (context2 != null && baseDownloadTask != null) {
            String path = baseDownloadTask.getPath();
            String str = tokenFromPath(path);
            if (str.length() == 0) {
                return;
            }
            SharedPreferences sharedPreferences = context2.getSharedPreferences(PREFS, 0);
            String strTaskStateKey = taskStateKey(str, path);
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.putString(strTaskStateKey, "REGISTERED");
            if (isVideo(path)) {
                editorEdit.putString(videoPathKey(str), path);
            }
            editorEdit.commit();
        }
    }

    public static synchronized boolean markState(BaseDownloadTask baseDownloadTask, String str) {
        Context context2 = context;
        if (context2 != null && baseDownloadTask != null && str != null) {
            String path = baseDownloadTask.getPath();
            String str2 = tokenFromPath(path);
            if (str2.length() == 0) {
                return false;
            }
            SharedPreferences sharedPreferences = context2.getSharedPreferences(PREFS, 0);
            String strTaskStateKey = taskStateKey(str2, path);
            String string = sharedPreferences.getString(strTaskStateKey, BuildConfig.FLAVOR);
            if (string == null) {
                string = BuildConfig.FLAVOR;
            }
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.putString(strTaskStateKey, str);
            if (isVideo(path)) {
                editorEdit.putString(videoPathKey(str2), path);
                if ("COMPLETED".equals(str)) {
                    File file = new File(path);
                    if (file.exists() && file.isFile() && file.length() >= 1024) {
                        editorEdit.putString(videoStateKey(str2), "COMPLETED_VERIFIED");
                    }
                }
            } else if (isSubtitle(path)) {
                boolean z = "COMPLETED".equals(string) || "COMPLETED".equals(string);
                boolean z2 = "COMPLETED".equals(str) || "COMPLETED".equals(str);
                if (!z && z2) {
                    editorEdit.putInt(terminalKey(str2), sharedPreferences.getInt(terminalKey(str2), 0) + 1);
                    if ("COMPLETED".equals(str)) {
                        editorEdit.putInt(completedKey(str2), sharedPreferences.getInt(completedKey(str2), 0) + 1);
                    }
                }
            }
            editorEdit.commit();
            return isReadyToken(str2);
        }
        return false;
    }

    public static int expectedSubtitleCount(String str) {
        Context context2 = context;
        if (context2 == null || str == null || str.length() == 0) {
            return -1;
        }
        return context2.getSharedPreferences(PLAN_PREFS, 0).getInt(str, -1);
    }

    public static synchronized boolean isReadyForTask(BaseDownloadTask baseDownloadTask) {
        if (baseDownloadTask == null) {
            return false;
        }
        return isReadyToken(tokenFromPath(baseDownloadTask.getPath()));
    }

    public static synchronized boolean isReadyToken(String str) {
        Context context2 = context;
        if (context2 != null && str != null && str.length() != 0) {
            SharedPreferences sharedPreferences = context2.getSharedPreferences(PREFS, 0);
            sharedPreferences.getString(videoPathKey(str), BuildConfig.FLAVOR);
            String string = sharedPreferences.getString(videoStateKey(str), BuildConfig.FLAVOR);
            "COMPLETED_VERIFIED".equals(string);
            if (!"COMPLETED_VERIFIED".equals(string)) {
                return false;
            }
            int iExpectedSubtitleCount = expectedSubtitleCount(str);
            if (iExpectedSubtitleCount < 0) {
                return false;
            }
            if (iExpectedSubtitleCount == 0) {
                return true;
            }
            return sharedPreferences.getInt(terminalKey(str), 0) >= iExpectedSubtitleCount;
        }
        return false;
    }

    public static int completedSubtitleCount(String str) {
        Context context2 = context;
        if (context2 == null || str == null) {
            return 0;
        }
        return context2.getSharedPreferences(PREFS, 0).getInt(completedKey(str), 0);
    }
}
