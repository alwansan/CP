package com.shabakaty.cinemana.ca1;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Environment;
import androidx.recyclerview.widget.RecyclerView;
import com.connectsdk.device.DefaultConnectableDeviceStore;
import com.connectsdk.service.airplay.PListParser;
import com.liulishuo.filedownloader.BuildConfig;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import com.liulishuo.filedownloader.model.FileDownloadStatus;
import com.shabakaty.cinemana.data.db.downloads.CinemanaDownloadItem;
import com.shabakaty.cinemana.features.MkvManifestStore;
import com.shabakaty.cinemana.features.MkvReconciler;
import com.shabakaty.cinemana.features.MkvRepairLedger;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.security.MessageDigest;
import java.util.List;
import java.util.Locale;
import java.util.Properties;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class RecoveryCapsule {
    private static final String FORMAT = "com.cinemana.recovery";

    public static final class DownloadCompleteTask implements Runnable {
        private final Object task;
        private final int taskId;

        public DownloadCompleteTask(Object obj, int i) {
            this.task = obj;
            this.taskId = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                RecoveryCapsule.completeDownload(this.task, this.taskId);
            } catch (Throwable th) {
            }
        }
    }

    private RecoveryCapsule() {
    }

    public static boolean cleanupCompleted(File file, File file2) {
        String str;
        if (file == null || file2 == null) {
            return false;
        }
        try {
            if (!file2.exists() && file.isFile() && file.length() > 1024 && (str = MkvManifestStore.tokenFromPath(file2.getAbsolutePath())) != null && !str.isEmpty()) {
                File fileManifestFile = manifestFile(str);
                String text = readText(fileManifestFile);
                if (text.isEmpty()) {
                    return false;
                }
                JSONObject jSONObject = new JSONObject(text);
                if (!FORMAT.equals(jSONObject.optString("format")) || !str.equals(jSONObject.optString("token")) || !"MKV_FINALIZED".equals(jSONObject.optString("phase"))) {
                    return false;
                }
                if (!file.getAbsolutePath().equals(jSONObject.optString("finalPath")) || !PListParser.TAG_TRUE.equals(jSONObject.optString("finalDatabasePathVerified"))) {
                    return false;
                }
                String strOptString = jSONObject.optString("finalFileSizeBytes");
                if (!strOptString.isEmpty() && Long.parseLong(strOptString) == file.length()) {
                    new File(fileManifestFile.getAbsolutePath() + ".mp4state").delete();
                    new File(fileManifestFile.getAbsolutePath() + ".bak").delete();
                    new File(fileManifestFile.getAbsolutePath() + ".tmp").delete();
                    return fileManifestFile.delete();
                }
                return false;
            }
            return false;
        } catch (Throwable th) {
            return false;
        }
    }

    public static void completeDownload(Object obj, int i) {
        String str;
        if (obj != null) {
            try {
                Object objCall = Restart108.call(obj, "getPath", new Object[0]);
                if (objCall instanceof String) {
                    String str2 = (String) objCall;
                    if (isVideoPath(str2)) {
                        File file = new File(str2);
                        if (file.isFile() && file.length() > 0 && (str = MkvManifestStore.tokenFromPath(str2)) != null && !str.isEmpty()) {
                            File fileManifestFile = manifestFile(str);
                            String text = readText(fileManifestFile);
                            JSONObject jSONObject = text.isEmpty() ? new JSONObject() : new JSONObject(text);
                            jSONObject.put("format", FORMAT);
                            jSONObject.put("schemaVersion", "1");
                            jSONObject.put("token", str);
                            jSONObject.put("phase", "DOWNLOAD_COMPLETE");
                            jSONObject.put("sourcePath", str2);
                            jSONObject.put("sourceFileName", file.getName());
                            jSONObject.put("actualBytesBeforeConversion", Long.toString(file.length()));
                            jSONObject.put("sourceComplete", PListParser.TAG_TRUE);
                            jSONObject.put("downloadTaskId", Integer.toString(i));
                            copyQueueFields(jSONObject, i);
                            String strVideoUrl = videoUrl(obj);
                            if (strVideoUrl.isEmpty()) {
                                strVideoUrl = jSONObject.optString("downloadUrl");
                            }
                            jSONObject.put("downloadUrl", strVideoUrl);
                            jSONObject.put("subtitleSources", remoteSubtitleSources(str));
                            jSONObject.put("localSubtitleFiles", localSubtitleFilesForToken(file, str));
                            jSONObject.put("mediaMetadataPolicy", "legacy_simple_metadata_only_no_json_in_media");
                            jSONObject.put("downloadResumePolicy", "Confirm actual byte count and refresh temporary URLs before retrying; never remux a partial or unverified MP4.");
                            jSONObject.put("updatedAtEpochMs", Long.toString(System.currentTimeMillis()));
                            writeText(fileManifestFile, jSONObject.toString());
                        }
                    }
                }
            } catch (Throwable th) {
            }
        }
    }

    private static void copyQueueFields(JSONObject jSONObject, int i) {
        if (jSONObject != null) {
            try {
                Properties propertiesQueueRecord = queueRecord(i);
                copyQueueProperty(jSONObject, propertiesQueueRecord, "external", "external");
                copyQueueProperty(jSONObject, propertiesQueueRecord, "queueTitle", "title");
                copyQueueProperty(jSONObject, propertiesQueueRecord, "name", "name");
                copyQueueProperty(jSONObject, propertiesQueueRecord, "queueIntent", "intent");
                copyQueueProperty(jSONObject, propertiesQueueRecord, "queueCreated", DefaultConnectableDeviceStore.KEY_CREATED);
                copyQueueProperty(jSONObject, propertiesQueueRecord, "expectedBytes", "size");
                copyQueueProperty(jSONObject, propertiesQueueRecord, "downloadUrl", "url");
            } catch (Throwable th) {
            }
        }
    }

    private static void copyQueueProperty(JSONObject jSONObject, Properties properties, String str, String str2) {
        if (jSONObject == null || properties == null) {
            return;
        }
        try {
            String property = properties.getProperty(str2, BuildConfig.FLAVOR);
            if (property.isEmpty()) {
                return;
            }
            jSONObject.put(str, property);
        } catch (Throwable th) {
        }
    }

    public static boolean finalizeMkv(File file, File file2) {
        String str;
        if (file == null || file2 == null) {
            return false;
        }
        try {
            if (file.isFile() && file.length() > 1024 && (str = MkvManifestStore.tokenFromPath(file2.getAbsolutePath())) != null && !str.isEmpty()) {
                File fileManifestFile = manifestFile(str);
                String text = readText(fileManifestFile);
                if (text.isEmpty()) {
                    return false;
                }
                JSONObject jSONObject = new JSONObject(text);
                if (!FORMAT.equals(jSONObject.optString("format")) || !str.equals(jSONObject.optString("token"))) {
                    return false;
                }
                jSONObject.put("phase", "MKV_FINALIZED");
                jSONObject.put("sourcePath", file2.getAbsolutePath());
                jSONObject.put("finalPath", file.getAbsolutePath());
                jSONObject.put("finalFileName", file.getName());
                jSONObject.put("finalFileSizeBytes", Long.toString(file.length()));
                jSONObject.put("finalFileLastModifiedMs", Long.toString(file.lastModified()));
                jSONObject.put("finalDatabasePathVerified", PListParser.TAG_TRUE);
                jSONObject.put("mediaMetadataPolicy", "legacy_simple_metadata_only_no_json_in_media");
                jSONObject.put("updatedAtEpochMs", Long.toString(System.currentTimeMillis()));
                return writeText(fileManifestFile, jSONObject.toString());
            }
            return false;
        } catch (Throwable th) {
            return false;
        }
    }

    public static boolean finishPromotedSource(Context context, Object obj, File file, File file2) {
        try {
            if (!Commit105.isPromoted(context, obj, file2)) {
                return false;
            }
            prepare(context, file);
            if (!finalizeMkv(file2, file)) {
                return false;
            }
            file.delete();
            if (file.exists() || !cleanupCompleted(file2, file)) {
                return false;
            }
            MkvRepairLedger.completeIfFinal(context, obj);
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    private static boolean identityFieldMatches(JSONObject jSONObject, Object obj, String str) {
        String strOptString;
        String str2;
        if (jSONObject == null || obj == null || str == null || (strOptString = jSONObject.optString(str)) == null || strOptString.isEmpty() || (str2 = Restart108.str(obj, str)) == null || str2.isEmpty()) {
            return true;
        }
        return strOptString.equals(str2);
    }

    private static boolean isVideoPath(String str) {
        if (str == null) {
            return false;
        }
        String lowerCase = str.toLowerCase(Locale.US);
        return lowerCase.endsWith(".mp4") || lowerCase.endsWith(".mp4.temp");
    }

    private static JSONArray localSubtitleFiles(List list) {
        JSONArray jSONArray = new JSONArray();
        if (list != null) {
            try {
                for (Object obj : list) {
                    if (obj instanceof File) {
                        File file = (File) obj;
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("fileName", file.getName());
                        jSONObject.put(FileDownloadModel.PATH, file.getAbsolutePath());
                        jSONObject.put("sizeBytes", Long.toString(file.length()));
                        jSONObject.put("lastModifiedMs", Long.toString(file.lastModified()));
                        jSONObject.put("sha256", sha256(file));
                        jSONArray.put(jSONObject);
                    }
                }
            } catch (Throwable th) {
            }
        }
        return jSONArray;
    }

    private static JSONArray localSubtitleFilesForToken(File file, String str) {
        File[] fileArrListFiles;
        JSONArray jSONArray = new JSONArray();
        if (file != null && str != null) {
            try {
                File parentFile = file.getParentFile();
                if (parentFile != null && (fileArrListFiles = parentFile.listFiles()) != null) {
                    for (File file2 : fileArrListFiles) {
                        if (file2 != null && file2.isFile()) {
                            String name = file2.getName();
                            if (name.contains(str)) {
                                String lowerCase = name.toLowerCase(Locale.US);
                                if (lowerCase.endsWith(".srt") || lowerCase.endsWith(".ass") || lowerCase.endsWith(".ssa") || lowerCase.endsWith(".vtt") || lowerCase.endsWith(".sub")) {
                                    JSONObject jSONObject = new JSONObject();
                                    jSONObject.put("fileName", name);
                                    jSONObject.put(FileDownloadModel.PATH, file2.getAbsolutePath());
                                    jSONObject.put("sizeBytes", Long.toString(file2.length()));
                                    jSONObject.put("lastModifiedMs", Long.toString(file2.lastModified()));
                                    jSONObject.put("sha256", sha256(file2));
                                    jSONArray.put(jSONObject);
                                }
                            }
                        }
                    }
                }
            } catch (Throwable th) {
            }
        }
        return jSONArray;
    }

    private static File manifestFile(String str) {
        File file = new File(Environment.getExternalStorageDirectory(), "Cinemana/work/data/cnm_recovery");
        file.mkdirs();
        return new File(file, str + ".json");
    }

    public static boolean matchesItemIdentity(File file, Object obj) {
        String str;
        if (file == null || obj == null) {
            return false;
        }
        try {
            String str2 = MkvManifestStore.tokenFromPath(file.getAbsolutePath());
            if (str2 == null || str2.isEmpty()) {
                return false;
            }
            String text = readText(manifestFile(str2));
            if (text.isEmpty()) {
                return false;
            }
            JSONObject jSONObject = new JSONObject(text);
            if (!FORMAT.equals(jSONObject.optString("format")) || !str2.equals(jSONObject.optString("token")) || !str2.equals(MkvManifestStore.tokenFromPath(jSONObject.optString("sourcePath")))) {
                return false;
            }
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("identity");
            JSONObject jSONObject2 = jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject : jSONObject;
            String strOptString = jSONObject2.optString("id");
            return strOptString != null && !strOptString.isEmpty() && (str = Restart108.str(obj, "id")) != null && strOptString.equals(str) && identityFieldMatches(jSONObject2, obj, "title") && identityFieldMatches(jSONObject2, obj, "rootEpisode") && identityFieldMatches(jSONObject2, obj, "season") && identityFieldMatches(jSONObject2, obj, "episodeNumber") && identityFieldMatches(jSONObject2, obj, "kind") && identityFieldMatches(jSONObject2, obj, "qualityName");
        } catch (Throwable th) {
            return false;
        }
    }

    public static void prepare(Context context, File file) {
        String absolutePath;
        String str;
        if (context == null || file == null) {
            return;
        }
        try {
            if (file.isFile() && (str = MkvManifestStore.tokenFromPath((absolutePath = file.getAbsolutePath()))) != null && !str.isEmpty()) {
                File fileManifestFile = manifestFile(str);
                String text = readText(fileManifestFile);
                JSONObject jSONObject = text.isEmpty() ? new JSONObject() : new JSONObject(text);
                jSONObject.put("format", FORMAT);
                jSONObject.put("schemaVersion", "1");
                jSONObject.put("token", str);
                jSONObject.put("phase", "MKV_EXPORT_PREPARING");
                jSONObject.put("sourcePath", absolutePath);
                jSONObject.put("sourceFileName", file.getName());
                jSONObject.put("sourceSizeBytesBeforeConversion", Long.toString(file.length()));
                jSONObject.put("sourceLastModifiedMsBeforeConversion", Long.toString(file.lastModified()));
                jSONObject.put("mediaMetadataPolicy", "legacy_simple_metadata_only_no_json_in_media");
                jSONObject.put("updatedAtEpochMs", Long.toString(System.currentTimeMillis()));
                writeText(fileManifestFile, jSONObject.toString());
            }
        } catch (Throwable th) {
        }
    }

    private static void putObjectString(JSONObject jSONObject, String str, Object obj, String str2) {
        if (jSONObject != null) {
            try {
                jSONObject.put(str, Restart108.str(obj, str2));
            } catch (Throwable th) {
            }
        }
    }

    private static Properties queueRecord(int i) {
        try {
            SharedPreferences sharedPreferences = (SharedPreferences) Queue110.pref();
            String string = sharedPreferences.getString("request:" + i, BuildConfig.FLAVOR);
            if (!string.isEmpty()) {
                string = sharedPreferences.getString("done:" + i, BuildConfig.FLAVOR);
            }
            return string.isEmpty() ? new Properties() : Queue110.decode(string);
        } catch (Throwable th) {
            return new Properties();
        }
    }

    private static String readText(File file) {
        if (file == null || !file.isFile()) {
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

    public static int recoverPending(Context context) {
        File[] fileArrListFiles;
        int iRecoverSidecarOne = 0;
        if (context != null) {
            try {
                File file = new File(Environment.getExternalStorageDirectory(), "Cinemana/work/data/cnm_recovery");
                if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
                    int length = fileArrListFiles.length;
                    int i = 0;
                    for (int i2 = 0; i2 < length && i < 500; i2++) {
                        File file2 = fileArrListFiles[i2];
                        if (file2 != null && file2.getName().endsWith(".json")) {
                            iRecoverSidecarOne += recoverSidecarOne(context, file2);
                            i++;
                        }
                    }
                }
            } catch (Throwable th) {
            }
        }
        return iRecoverSidecarOne;
    }

    private static int recoverSidecarOne(Context context, File file) {
        String str;
        CinemanaDownloadItem cinemanaDownloadItemFindDatabaseItemForPath;
        if (context == null || file == null) {
            return 0;
        }
        try {
            if (!file.isFile() || !file.getName().endsWith(".json")) {
                return 0;
            }
            String text = readText(file);
            if (text.isEmpty()) {
                return 0;
            }
            JSONObject jSONObject = new JSONObject(text);
            if (!FORMAT.equals(jSONObject.optString("format"))) {
                return 0;
            }
            String strOptString = jSONObject.optString("token");
            if (strOptString.isEmpty() || !(strOptString + ".json").equals(file.getName())) {
                return 0;
            }
            String strOptString2 = jSONObject.optString("sourcePath");
            if (strOptString2.isEmpty() || (str = MkvManifestStore.tokenFromPath(strOptString2)) == null || !strOptString.equals(str)) {
                return 0;
            }
            String strOptString3 = jSONObject.optString("phase");
            if (!"MKV_FINALIZED".equals(strOptString3)) {
                if (strOptString2.isEmpty()) {
                    return 0;
                }
                File file2 = new File(strOptString2);
                if (file2.isFile()) {
                    if (file2.length() > 1024) {
                        if (!"MKV_EXPORT_PREPARING".equals(strOptString3)) {
                            return 0;
                        }
                        MkvReconciler.reconcileDiskVideo(context, file2);
                        return 0;
                    }
                    if (restoreRequestFromSidecar(context, jSONObject, strOptString2)) {
                        return 1;
                    }
                }
                if (restoreRequestFromSidecar(context, jSONObject, strOptString2)) {
                    return 1;
                }
                MkvReconciler.reconcileToken(strOptString2);
                return 1;
            }
            String strOptString4 = jSONObject.optString("finalPath");
            if (strOptString4.isEmpty()) {
                return 0;
            }
            File file3 = new File(strOptString4);
            File file4 = new File(strOptString2);
            if (file3.isFile()) {
                long length = file3.length();
                if (length > 1024) {
                    String strOptString5 = jSONObject.optString("finalFileSizeBytes");
                    if (!strOptString5.isEmpty() && length == Long.parseLong(strOptString5) && PListParser.TAG_TRUE.equals(jSONObject.optString("finalDatabasePathVerified")) && (cinemanaDownloadItemFindDatabaseItemForPath = MkvReconciler.findDatabaseItemForPath(context, file3)) != null && Commit105.isPromoted(context, cinemanaDownloadItemFindDatabaseItemForPath, file3) && (!file4.exists() || ((file4.delete() || !file4.exists()) && !file4.exists()))) {
                        return cleanupCompleted(file3, file4) ? 1 : 0;
                    }
                }
            }
            return 0;
        } catch (Throwable th) {
            return 0;
        }
    }

    private static JSONArray remoteSubtitleSources(String str) {
        List<Object> listSubtitles;
        JSONArray jSONArray = new JSONArray();
        if (str != null) {
            try {
                Object objModel = Inputs114.model(str);
                if (objModel != null && (listSubtitles = Dependencies112.subtitles(objModel)) != null) {
                    for (Object obj : listSubtitles) {
                        if (obj != null) {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("id", Dependencies112.str(obj, "id"));
                            jSONObject.put("url", Dependencies112.str(obj, "file"));
                            jSONObject.put("extension", Dependencies112.str(obj, "extention"));
                            jSONObject.put("name", Dependencies112.str(obj, "name"));
                            jSONArray.put(jSONObject);
                        }
                    }
                }
            } catch (Throwable th) {
            }
        }
        return jSONArray;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0095 A[Catch: Throwable -> 0x0165, TryCatch #0 {Throwable -> 0x0165, blocks: (B:6:0x000d, B:8:0x0019, B:10:0x0025, B:11:0x002b, B:13:0x0031, B:15:0x0039, B:17:0x0041, B:19:0x004d, B:21:0x005b, B:23:0x0066, B:25:0x0072, B:26:0x0078, B:28:0x007e, B:30:0x0089, B:33:0x0095, B:35:0x00ba, B:37:0x00d9, B:39:0x0102, B:40:0x0108, B:43:0x011a, B:45:0x0132, B:46:0x013a, B:49:0x014d, B:51:0x0158, B:53:0x015e), top: B:59:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:39:0x0102 A[Catch: Throwable -> 0x0165, TryCatch #0 {Throwable -> 0x0165, blocks: (B:6:0x000d, B:8:0x0019, B:10:0x0025, B:11:0x002b, B:13:0x0031, B:15:0x0039, B:17:0x0041, B:19:0x004d, B:21:0x005b, B:23:0x0066, B:25:0x0072, B:26:0x0078, B:28:0x007e, B:30:0x0089, B:33:0x0095, B:35:0x00ba, B:37:0x00d9, B:39:0x0102, B:40:0x0108, B:43:0x011a, B:45:0x0132, B:46:0x013a, B:49:0x014d, B:51:0x0158, B:53:0x015e), top: B:59:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:42:0x0119  */
    /* JADX WARN: Code duplicated, block: B:45:0x0132 A[Catch: Throwable -> 0x0165, TryCatch #0 {Throwable -> 0x0165, blocks: (B:6:0x000d, B:8:0x0019, B:10:0x0025, B:11:0x002b, B:13:0x0031, B:15:0x0039, B:17:0x0041, B:19:0x004d, B:21:0x005b, B:23:0x0066, B:25:0x0072, B:26:0x0078, B:28:0x007e, B:30:0x0089, B:33:0x0095, B:35:0x00ba, B:37:0x00d9, B:39:0x0102, B:40:0x0108, B:43:0x011a, B:45:0x0132, B:46:0x013a, B:49:0x014d, B:51:0x0158, B:53:0x015e), top: B:59:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:48:0x014b  */
    private static boolean restoreRequestFromSidecar(Context context, JSONObject jSONObject, String str) {
        SharedPreferences sharedPreferences;
        Properties properties;
        String strOptString;
        String strOptString2;
        String strOptString3;
        String strOptString4;
        if (context == null || jSONObject == null || str == null) {
            return false;
        }
        try {
            int i = Integer.parseInt(jSONObject.optString("downloadTaskId"));
            if (i > 0) {
                String strOptString5 = jSONObject.optString("downloadUrl");
                if (strOptString5.isEmpty()) {
                    strOptString5 = jSONObject.optString("videoUrl");
                }
                if (!strOptString5.isEmpty() && (strOptString5.startsWith("https://") || strOptString5.startsWith("http://"))) {
                    String strOptString6 = jSONObject.optString("external");
                    if (!strOptString6.isEmpty() && "RUN".equals(jSONObject.optString("queueIntent")) && Restart108.safe(new File(str))) {
                        String strOptString7 = jSONObject.optString("finalPath");
                        if (strOptString7.isEmpty()) {
                            strOptString7 = jSONObject.optString("intendedMkvPath");
                        }
                        if (strOptString7.isEmpty()) {
                            sharedPreferences = (SharedPreferences) Queue110.pref();
                            if (sharedPreferences.getString("request:" + i, BuildConfig.FLAVOR).isEmpty()) {
                                properties = new Properties();
                                properties.setProperty("task", Integer.toString(i));
                                properties.setProperty("url", strOptString5);
                                properties.setProperty(FileDownloadModel.PATH, str);
                                properties.setProperty("external", strOptString6);
                                strOptString = jSONObject.optString("queueTitle");
                                if (strOptString.isEmpty()) {
                                    strOptString = jSONObject.optString("title");
                                }
                                properties.setProperty("title", strOptString);
                                strOptString2 = jSONObject.optString("name");
                                if (strOptString2.isEmpty()) {
                                    strOptString2 = strOptString;
                                }
                                properties.setProperty("name", strOptString2);
                                properties.setProperty("intent", "RUN");
                                strOptString3 = jSONObject.optString("queueCreated");
                                if (strOptString3.isEmpty()) {
                                    strOptString3 = Long.toString(System.currentTimeMillis());
                                }
                                properties.setProperty(DefaultConnectableDeviceStore.KEY_CREATED, strOptString3);
                                strOptString4 = jSONObject.optString("expectedBytes");
                                if (strOptString4.isEmpty()) {
                                    strOptString4 = "0";
                                }
                                properties.setProperty("size", strOptString4);
                                if (Queue110.valid(properties)) {
                                    Queue110.save(properties);
                                    return true;
                                }
                            }
                        } else {
                            File file = new File(strOptString7);
                            if (!file.isFile() || file.length() <= 1024) {
                                sharedPreferences = (SharedPreferences) Queue110.pref();
                                if (sharedPreferences.getString("request:" + i, BuildConfig.FLAVOR).isEmpty() && sharedPreferences.getString("done:" + i, BuildConfig.FLAVOR).isEmpty()) {
                                    properties = new Properties();
                                    properties.setProperty("task", Integer.toString(i));
                                    properties.setProperty("url", strOptString5);
                                    properties.setProperty(FileDownloadModel.PATH, str);
                                    properties.setProperty("external", strOptString6);
                                    strOptString = jSONObject.optString("queueTitle");
                                    if (strOptString.isEmpty()) {
                                        strOptString = jSONObject.optString("title");
                                    }
                                    properties.setProperty("title", strOptString);
                                    strOptString2 = jSONObject.optString("name");
                                    if (strOptString2.isEmpty()) {
                                        strOptString2 = strOptString;
                                    }
                                    properties.setProperty("name", strOptString2);
                                    properties.setProperty("intent", "RUN");
                                    strOptString3 = jSONObject.optString("queueCreated");
                                    if (strOptString3.isEmpty()) {
                                        strOptString3 = Long.toString(System.currentTimeMillis());
                                    }
                                    properties.setProperty(DefaultConnectableDeviceStore.KEY_CREATED, strOptString3);
                                    strOptString4 = jSONObject.optString("expectedBytes");
                                    if (strOptString4.isEmpty()) {
                                        strOptString4 = "0";
                                    }
                                    properties.setProperty("size", strOptString4);
                                    if (Queue110.valid(properties) && Queue110.allowed(properties)) {
                                        Queue110.save(properties);
                                        return true;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return false;
        } catch (Throwable th) {
            return false;
        }
    }

    public static void scheduleDownloadComplete(Object obj, int i) {
        MkvReconciler.requestAudit();
        if (obj != null) {
            try {
                new Thread(new DownloadCompleteTask(obj, i)).start();
            } catch (Throwable th) {
            }
        }
    }

    public static void seed(Object obj, int i) {
        String str;
        if (obj != null) {
            try {
                Object objCall = Restart108.call(obj, "getPath", new Object[0]);
                if (objCall instanceof String) {
                    String str2 = (String) objCall;
                    if (isVideoPath(str2) && (str = MkvManifestStore.tokenFromPath(str2)) != null && !str.isEmpty()) {
                        File fileManifestFile = manifestFile(str);
                        if (!fileManifestFile.isFile() || readText(fileManifestFile).isEmpty()) {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("format", FORMAT);
                            jSONObject.put("schemaVersion", "1");
                            jSONObject.put("token", str);
                            jSONObject.put("phase", "DOWNLOAD_QUEUED");
                            jSONObject.put("sourcePath", str2);
                            jSONObject.put("sourceComplete", PListParser.TAG_FALSE);
                            jSONObject.put("downloadTaskId", Integer.toString(i));
                            putObjectString(jSONObject, "title", obj, "title");
                            putObjectString(jSONObject, "id", obj, "id");
                            putObjectString(jSONObject, "season", obj, "season");
                            putObjectString(jSONObject, "episodeNumber", obj, "episodeNumber");
                            putObjectString(jSONObject, "rootEpisode", obj, "rootEpisode");
                            copyQueueFields(jSONObject, i);
                            jSONObject.put("downloadUrl", videoUrl(obj));
                            jSONObject.put("videoUrlMayExpireOrContainAccessToken", PListParser.TAG_TRUE);
                            jSONObject.put("linksMayContainTemporaryCredentials", PListParser.TAG_TRUE);
                            jSONObject.put("updatedAtEpochMs", Long.toString(System.currentTimeMillis()));
                            writeText(fileManifestFile, jSONObject.toString());
                        }
                    }
                }
            } catch (Throwable th) {
            }
        }
    }

    private static String sha256(File file) {
        if (file == null) {
            return BuildConfig.FLAVOR;
        }
        try {
            if (!file.isFile()) {
                return BuildConfig.FLAVOR;
            }
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            FileInputStream fileInputStream = new FileInputStream(file);
            byte[] bArr = new byte[RecyclerView.b0.FLAG_BOUNCED_FROM_HIDDEN_LIST];
            while (true) {
                int i = fileInputStream.read(bArr);
                if (i <= 0) {
                    break;
                }
                messageDigest.update(bArr, 0, i);
            }
            fileInputStream.close();
            byte[] bArrDigest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b : bArrDigest) {
                int i2 = b & FileDownloadStatus.error;
                if (i2 < 16) {
                    sb.append("0");
                }
                sb.append(Integer.toHexString(i2));
            }
            return sb.toString();
        } catch (Throwable th) {
            return BuildConfig.FLAVOR;
        }
    }

    private static String videoUrl(Object obj) {
        if (obj == null) {
            return BuildConfig.FLAVOR;
        }
        try {
            int iNumber = (int) Restart108.number(obj, "downloadTaskId");
            if (iNumber == 0) {
                return BuildConfig.FLAVOR;
            }
            SharedPreferences sharedPreferences = (SharedPreferences) Queue110.pref();
            String string = Integer.toString(iNumber);
            String string2 = sharedPreferences.getString("request:" + string, BuildConfig.FLAVOR);
            if (string2.isEmpty()) {
                string2 = sharedPreferences.getString("done:" + string, BuildConfig.FLAVOR);
            }
            return string2.isEmpty() ? BuildConfig.FLAVOR : Queue110.decode(string2).getProperty("url");
        } catch (Throwable th) {
            return BuildConfig.FLAVOR;
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x007c A[Catch: Throwable -> 0x009f, TryCatch #0 {Throwable -> 0x009f, blocks: (B:8:0x004a, B:10:0x0050, B:11:0x0053, B:13:0x006d, B:15:0x0073, B:16:0x0076, B:18:0x007c, B:20:0x0082, B:22:0x0088, B:24:0x008d, B:26:0x0093, B:28:0x0099), top: B:42:0x004a }] */
    /* JADX WARN: Code duplicated, block: B:20:0x0082 A[Catch: Throwable -> 0x009f, TryCatch #0 {Throwable -> 0x009f, blocks: (B:8:0x004a, B:10:0x0050, B:11:0x0053, B:13:0x006d, B:15:0x0073, B:16:0x0076, B:18:0x007c, B:20:0x0082, B:22:0x0088, B:24:0x008d, B:26:0x0093, B:28:0x0099), top: B:42:0x004a }] */
    /* JADX WARN: Code duplicated, block: B:22:0x0088 A[Catch: Throwable -> 0x009f, TryCatch #0 {Throwable -> 0x009f, blocks: (B:8:0x004a, B:10:0x0050, B:11:0x0053, B:13:0x006d, B:15:0x0073, B:16:0x0076, B:18:0x007c, B:20:0x0082, B:22:0x0088, B:24:0x008d, B:26:0x0093, B:28:0x0099), top: B:42:0x004a }] */
    /* JADX WARN: Code duplicated, block: B:24:0x008d A[Catch: Throwable -> 0x009f, TryCatch #0 {Throwable -> 0x009f, blocks: (B:8:0x004a, B:10:0x0050, B:11:0x0053, B:13:0x006d, B:15:0x0073, B:16:0x0076, B:18:0x007c, B:20:0x0082, B:22:0x0088, B:24:0x008d, B:26:0x0093, B:28:0x0099), top: B:42:0x004a }] */
    private static boolean writeText(File file, String str) {
        File parentFile;
        if (file == null || str == null || (parentFile = file.getParentFile()) == null) {
            return false;
        }
        parentFile.mkdirs();
        File file2 = new File(parentFile, file.getName() + ".tmp");
        File file3 = new File(parentFile, file.getName() + ".bak");
        try {
            if (file2.exists()) {
                file2.delete();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            fileOutputStream.write(str.getBytes("UTF-8"));
            fileOutputStream.flush();
            fileOutputStream.close();
            if (file.exists()) {
                if (file3.exists()) {
                    file3.delete();
                }
                if (file.renameTo(file3)) {
                    if (file2.renameTo(file)) {
                        if (file3.exists()) {
                            file3.delete();
                        }
                        return true;
                    }
                    if (file3.exists()) {
                        file3.renameTo(file);
                    }
                }
            } else {
                if (file2.renameTo(file)) {
                    if (file3.exists()) {
                        file3.delete();
                    }
                    return true;
                }
                if (file3.exists() && !file.exists()) {
                    file3.renameTo(file);
                }
            }
            return false;
        } catch (Throwable th) {
            if (file3.exists() && !file.exists()) {
                file3.renameTo(file);
            }
            if (!file2.exists()) {
                return false;
            }
            file2.delete();
            return false;
        }
    }
}
