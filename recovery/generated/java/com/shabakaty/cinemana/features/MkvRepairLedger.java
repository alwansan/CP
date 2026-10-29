package com.shabakaty.cinemana.features;

import android.content.Context;
import android.os.Environment;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.CinemanaApplication;
import com.shabakaty.cinemana.ca1.Restart108;
import com.shabakaty.cinemana.data.db.downloads.CinemanaDownloadItem;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Properties;

/* JADX INFO: loaded from: classes3.dex */
public final class MkvRepairLedger {
    private MkvRepairLedger() {
    }

    public static synchronized void clear(Context context, String str) {
        if (str == null || str.isEmpty()) {
            return;
        }
        Properties propertiesLoad = load();
        propertiesLoad.remove(str);
        save(propertiesLoad);
    }

    public static void completeAliasFromSource(Context context, String str, Object obj) {
        String str2;
        if (context == null || str == null || obj == null || (str2 = MkvManifestStore.tokenFromPath(str)) == null || str2.isEmpty()) {
            return;
        }
        completeDiskAliasIfFinal(context, str2, obj);
    }

    private static boolean completeDiskAliasIfFinal(Context context, String str, Object obj) {
        String property;
        String str2;
        CinemanaDownloadItem cinemanaDownloadItem;
        String str3;
        if (context == null || str == null || obj == null) {
            return false;
        }
        try {
            if (!(obj instanceof CinemanaDownloadItem) || (property = load().getProperty(str)) == null) {
                return false;
            }
            String[] strArrSplit = property.split("\\|");
            if (strArrSplit.length < 3 || !"MKV_QUEUED".equals(strArrSplit[1]) || (str2 = strArrSplit[2]) == null || str2.isEmpty() || (str3 = (cinemanaDownloadItem = (CinemanaDownloadItem) obj).path) == null) {
                return false;
            }
            File file = new File(str3);
            if (!file.isFile() || file.length() <= 1024 || !MkvExporter.matchesDiskOutputPath(new File(str2), str3)) {
                return false;
            }
            clear(context, str);
            completeIfFinal(context, cinemanaDownloadItem);
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    public static void completeIfFinal(Context context, Object obj) {
        String strIdentityToken;
        String str;
        if (context == null || obj == null) {
            return;
        }
        try {
            if (!(obj instanceof CinemanaDownloadItem) || (strIdentityToken = Restart108.identityToken(obj)) == null || strIdentityToken.isEmpty() || (str = ((CinemanaDownloadItem) obj).path) == null || str.isEmpty() || !str.toLowerCase(Locale.US).endsWith(".mkv")) {
                return;
            }
            File file = new File(str);
            if (!file.isFile() || file.length() <= 1024) {
                return;
            }
            String str2 = MkvManifestStore.tokenFromPath(str);
            if (str2 == null || str2.isEmpty() || strIdentityToken.equals(str2)) {
                clear(context, strIdentityToken);
            }
        } catch (Throwable th) {
        }
    }

    public static boolean isQueued(Context context, String str) {
        String property;
        if (context == null || str == null || (property = load().getProperty(str)) == null) {
            return false;
        }
        String[] strArrSplit = property.split("\\|");
        if (strArrSplit.length >= 2) {
            return "MKV_QUEUED".equals(strArrSplit[1]);
        }
        return false;
    }

    private static File ledgerFile() {
        File file = new File(Environment.getExternalStorageDirectory(), "Cinemana/work/data");
        file.mkdirs();
        return new File(file, "mkv_repair_pending.properties");
    }

    private static Properties load() {
        Properties properties = new Properties();
        try {
            File fileLedgerFile = ledgerFile();
            if (fileLedgerFile.isFile()) {
                FileInputStream fileInputStream = new FileInputStream(fileLedgerFile);
                properties.load(fileInputStream);
                fileInputStream.close();
            }
            return properties;
        } catch (Throwable th) {
            return properties;
        }
    }

    public static synchronized void record(Context context, String str, String str2, String str3, String str4, String str5) {
        if (str == null || str.isEmpty()) {
            return;
        }
        Properties propertiesLoad = load();
        String property = propertiesLoad.getProperty(str);
        if (property != null) {
            String[] strArrSplit = property.split("\\|");
            if ((str3 == null || str3.isEmpty()) && strArrSplit.length >= 3) {
                str3 = strArrSplit[2];
            }
            if ((str4 == null || str4.isEmpty()) && strArrSplit.length >= 4) {
                str4 = strArrSplit[3];
            }
        }
        propertiesLoad.setProperty(str, Long.toString(System.currentTimeMillis()) + "|" + str2 + "|" + str3 + "|" + str4 + "|" + str5);
        save(propertiesLoad);
    }

    public static void recordDiscovery(Context context, String str, String str2) {
        if (context == null || str == null || str2 == null) {
            return;
        }
        try {
            String property = load().getProperty(str);
            if (property != null) {
                String[] strArrSplit = property.split("\\|");
                if (strArrSplit.length >= 3) {
                    String str3 = strArrSplit[1];
                    if ("MKV_QUEUED".equals(str3) || "FINAL_MKV_AWAITING_PROMOTION".equals(str3)) {
                        return;
                    }
                    String str4 = strArrSplit[2];
                    if (str4 != null && !str4.isEmpty()) {
                        String lowerCase = str4.toLowerCase(Locale.US);
                        if (!lowerCase.endsWith(".srt") && !lowerCase.endsWith(".ass") && !lowerCase.endsWith(".ssa") && !lowerCase.endsWith(".vtt") && !lowerCase.endsWith(".sub")) {
                            return;
                        }
                    }
                } else if (!property.contains("WAITING_MP4_SOURCE")) {
                    return;
                }
            }
            File file = new File(str2);
            if (file.isFile()) {
                String name = file.getName();
                if (name.toLowerCase(Locale.US).endsWith(".mp4")) {
                    record(context, str, "DISCOVERED_MP4", str2, new File(file.getParentFile(), name.substring(0, name.length() - 4).concat(".mkv")).getAbsolutePath(), "filesystem_mp4_found;replacing_stale_subtitle_source_if_needed;checking_item_mapping_subtitle_plan_and_final_mkv");
                }
            }
        } catch (Throwable th) {
        }
    }

    public static void recordItem(Context context, Object obj, String str, String str2) {
        if (context == null || obj == null) {
            return;
        }
        try {
            String strIdentityToken = Restart108.identityToken(obj);
            if (strIdentityToken.isEmpty()) {
                return;
            }
            String absolutePath = BuildConfig.FLAVOR;
            String absolutePath2 = BuildConfig.FLAVOR;
            File fileExactVideo = Restart108.exactVideo(context, obj);
            if (fileExactVideo != null) {
                absolutePath = fileExactVideo.getAbsolutePath();
                String name = fileExactVideo.getName();
                if (name.toLowerCase(Locale.US).endsWith(".mp4")) {
                    absolutePath2 = new File(fileExactVideo.getParentFile(), name.substring(0, name.length() - 4).concat(".mkv")).getAbsolutePath();
                }
            }
            record(context, strIdentityToken, str, absolutePath, absolutePath2, str2);
        } catch (Throwable th) {
        }
    }

    private static void save(Properties properties) {
        try {
            if (properties.isEmpty()) {
                ledgerFile().delete();
                return;
            }
            FileOutputStream fileOutputStream = new FileOutputStream(ledgerFile());
            properties.store(fileOutputStream, (String) null);
            fileOutputStream.close();
        } catch (Throwable th) {
        }
    }

    public static synchronized void sweep(Context context) {
        List<CinemanaDownloadItem> listJ;
        if (context != null) {
            try {
                Context applicationContext = context.getApplicationContext();
                if (applicationContext == null || !(applicationContext instanceof CinemanaApplication) || (listJ = ((CinemanaApplication) applicationContext).h().j()) == null) {
                    return;
                }
                for (String str : new ArrayList(load().keySet())) {
                    for (CinemanaDownloadItem cinemanaDownloadItem : listJ) {
                        if (cinemanaDownloadItem != null) {
                            if (str.equals(Restart108.identityToken(cinemanaDownloadItem))) {
                                completeIfFinal(context, cinemanaDownloadItem);
                            }
                            if (completeDiskAliasIfFinal(context, str, cinemanaDownloadItem)) {
                                break;
                            }
                        }
                    }
                }
            } catch (Throwable th) {
            }
        }
    }
}
