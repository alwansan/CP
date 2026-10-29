package com.shabakaty.cinemana.ca1;

import android.content.Context;
import android.os.Environment;
import com.connectsdk.discovery.provider.ssdp.SSDPPacket;
import com.liulishuo.filedownloader.BuildConfig;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import com.shabakaty.cinemana.features.MkvManifestStore;
import com.shabakaty.cinemana.features.MkvReconciler;
import com.shabakaty.cinemana.features.MkvRepairLedger;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class EpisodeSidecarCleanup {
    private EpisodeSidecarCleanup() {
    }

    public static String capturePath(Context context, String str) {
        if (context == null || str == null) {
            return null;
        }
        try {
            return Restart108.str(Restart108.get(DownloadStore263.combined(context, str), "cinemanaDownloadItem"), FileDownloadModel.PATH);
        } catch (Throwable th) {
            return null;
        }
    }

    private static void deleteSibling(File file, String str) {
        if (file == null || str == null) {
            return;
        }
        try {
            File file2 = new File(file.getAbsolutePath() + str);
            if (file2.exists()) {
                file2.delete();
            }
        } catch (Throwable th) {
        }
    }

    public static void deleted(Context context, String str) {
        if (context == null || str == null || str.isEmpty()) {
            return;
        }
        try {
            File[] fileArrListFiles = new File(Environment.getExternalStorageDirectory(), "Cinemana/work/data/cnm_recovery").listFiles();
            if (fileArrListFiles != null) {
                int i = 0;
                int length = fileArrListFiles.length;
                while (i < length) {
                    File file = fileArrListFiles[i];
                    i++;
                    String strMatchingToken = matchingToken(file, str);
                    if (strMatchingToken != null) {
                        retireToken(context, strMatchingToken);
                    }
                }
            }
        } catch (Throwable th) {
        }
    }

    public static void deletedPath(Context context, String str) {
        if (context == null || str == null || str.isEmpty()) {
            return;
        }
        try {
            File file = new File(str);
            if (file.exists()) {
                return;
            }
            String canonicalPath = file.getCanonicalPath();
            String str2 = MkvManifestStore.tokenFromPath(str);
            if (!str2.isEmpty()) {
                retireToken(context, str2);
            }
            File[] fileArrListFiles = new File(Environment.getExternalStorageDirectory(), "Cinemana/work/data/mkv-proofs").listFiles();
            if (fileArrListFiles != null) {
                int i = 0;
                int length = fileArrListFiles.length;
                while (i < length) {
                    File file2 = fileArrListFiles[i];
                    i++;
                    String name = file2.getName();
                    if (name.endsWith(".path")) {
                        String[] strArrSplit = readText(file2).split(SSDPPacket.LF);
                        if (strArrSplit.length > 0 && canonicalPath.equals(strArrSplit[0])) {
                            retireToken(context, name.substring(0, name.length() - 5));
                        }
                    }
                }
            }
        } catch (Throwable th) {
        }
    }

    private static String matchingToken(File file, String str) {
        try {
            String name = file.getName();
            if (!name.endsWith(".json")) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(readText(file));
            if (!"com.cinemana.recovery".equals(jSONObject.optString("format"))) {
                return null;
            }
            String strOptString = jSONObject.optString("token");
            if (!name.equals(strOptString + ".json")) {
                return null;
            }
            if (str.equals(strOptString) || str.equals(jSONObject.optString("id")) || str.equals(jSONObject.optString("downloadTaskId"))) {
                return strOptString;
            }
            return null;
        } catch (Throwable th) {
            return null;
        }
    }

    private static String readText(File file) {
        if (file == null) {
            return BuildConfig.FLAVOR;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[4096];
            while (true) {
                int i = fileInputStream.read(bArr);
                if (i <= 0) {
                    fileInputStream.close();
                    String str = new String(byteArrayOutputStream.toByteArray(), "UTF-8");
                    byteArrayOutputStream.close();
                    return str;
                }
                byteArrayOutputStream.write(bArr, 0, i);
            }
        } catch (Throwable th) {
            return BuildConfig.FLAVOR;
        }
    }

    private static void retireToken(Context context, String str) {
        if (str.matches("[A-Za-z0-9]+")) {
            File file = new File(new File(Environment.getExternalStorageDirectory(), "Cinemana/work/data/cnm_recovery"), str);
            deleteSibling(file, ".json.tmp");
            deleteSibling(file, ".json.bak");
            deleteSibling(file, ".json.mp4state");
            deleteSibling(file, ".json");
            deleteSibling(new File(new File(Environment.getExternalStorageDirectory(), "Cinemana/work/data/mkv-proofs"), str), ".path");
            MkvRepairLedger.clear(context, str);
            MkvManifestStore.clearToken(context, str);
            MkvReconciler.forgetToken(str);
        }
    }
}
