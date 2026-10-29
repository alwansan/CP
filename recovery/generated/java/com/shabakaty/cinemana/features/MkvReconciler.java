package com.shabakaty.cinemana.features;

import android.content.Context;
import android.os.Environment;
import android.os.FileObserver;
import com.connectsdk.service.airplay.PListParser;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.CinemanaApplication;
import com.shabakaty.cinemana.ca1.Dependencies112;
import com.shabakaty.cinemana.ca1.DownloadRepair129;
import com.shabakaty.cinemana.ca1.Inputs114;
import com.shabakaty.cinemana.ca1.RecoveryCapsule;
import com.shabakaty.cinemana.ca1.Restart108;
import com.shabakaty.cinemana.data.db.downloads.CinemanaDownloadItem;
import com.shabakaty.downloader.jw0;
import java.io.File;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class MkvReconciler {
    private static boolean AUDIT_PENDING;
    private static final ConcurrentHashMap ITEMS = new ConcurrentHashMap();
    private static final CopyOnWriteArrayList OBSERVERS = new CopyOnWriteArrayList();
    private static final ConcurrentHashMap WATCHED_PATHS = new ConcurrentHashMap();
    private static final AtomicReference CONTEXT = new AtomicReference();
    private static final AtomicBoolean STARTED = new AtomicBoolean(false);
    private static final ScheduledExecutorService SCHEDULER = Executors.newSingleThreadScheduledExecutor();

    /* JADX INFO: renamed from: com.shabakaty.cinemana.features.MkvReconciler$1, reason: invalid class name */
    final class AnonymousClass1 implements Runnable {
        AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MkvReconciler.reconcileAll();
        }
    }

    final class Audit implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            try {
                MkvReconciler.reconcileAll();
                MkvReconciler.auditFinished();
            } catch (Throwable th) {
                MkvReconciler.auditFinished();
            }
        }
    }

    private MkvReconciler() {
    }

    public static synchronized void auditFinished() {
        AUDIT_PENDING = false;
        if (hasWork()) {
            scheduleAudit(5000L);
        }
    }

    private static boolean filesystemInputsReady(Context context, CinemanaDownloadItem cinemanaDownloadItem) {
        int size;
        List<Object> listSubtitles;
        if (context == null || cinemanaDownloadItem == null) {
            return false;
        }
        try {
            File fileExactVideo = Restart108.exactVideo(context, cinemanaDownloadItem);
            if (fileExactVideo == null || !fileExactVideo.isFile() || fileExactVideo.length() <= 1024) {
                return false;
            }
            String name = fileExactVideo.getName();
            if (name.endsWith(".mp4")) {
                File file = new File(fileExactVideo.getParentFile(), name.substring(0, name.length() - 4).concat(".mkv"));
                if (file.isFile() && file.length() > 1024) {
                    return false;
                }
            }
            String strContentToken = MkvManifestStore.tokenFromPath(fileExactVideo.getAbsolutePath());
            if (strContentToken.isEmpty()) {
                strContentToken = DownloadIdentity.contentToken(cinemanaDownloadItem);
                if (strContentToken.isEmpty()) {
                    return false;
                }
            }
            int iExpectedSubtitleCount = MkvManifestStore.expectedSubtitleCount(strContentToken);
            if (iExpectedSubtitleCount < 0) {
                Object objModel = Inputs114.model(strContentToken);
                if (objModel == null || (listSubtitles = Dependencies112.subtitles(objModel)) == null) {
                    return false;
                }
                iExpectedSubtitleCount = listSubtitles.size();
                MkvManifestStore.beginPlan(context, strContentToken, iExpectedSubtitleCount);
            }
            List<File> listVerified = Inputs114.verified(context, fileExactVideo);
            return listVerified != null && (size = listVerified.size()) == iExpectedSubtitleCount && MkvManifestStore.recoverReadyFromVerifiedFiles(context, strContentToken, fileExactVideo.getAbsolutePath(), iExpectedSubtitleCount, size);
        } catch (Throwable th) {
            return false;
        }
    }

    private static boolean filesystemInputsReadyForDisk(Context context, CinemanaDownloadItem cinemanaDownloadItem, File file) throws Exception {
        String str;
        List<Object> listSubtitles;
        int size;
        if (context == null || cinemanaDownloadItem == null || file == null) {
            return false;
        }
        try {
            if (!file.isFile() || file.length() <= 1024 || (str = MkvManifestStore.tokenFromPath(file.getAbsolutePath())) == null || str.isEmpty()) {
                return false;
            }
            int iExpectedSubtitleCount = MkvManifestStore.expectedSubtitleCount(str);
            if (iExpectedSubtitleCount < 0) {
                Object objModel = Inputs114.model(str);
                if (objModel == null || (listSubtitles = Dependencies112.subtitles(objModel)) == null) {
                    return false;
                }
                iExpectedSubtitleCount = listSubtitles.size();
                MkvManifestStore.beginPlan(context, str, iExpectedSubtitleCount);
            }
            List<File> listVerified = Inputs114.verified(context, file);
            return listVerified != null && (size = listVerified.size()) == iExpectedSubtitleCount && MkvManifestStore.recoverReadyFromVerifiedFiles(context, str, file.getAbsolutePath(), iExpectedSubtitleCount, size);
        } catch (Throwable th) {
            return false;
        }
    }

    public static CinemanaDownloadItem findDatabaseItemForPath(Context context, File file) {
        Object objExp;
        String str;
        String str2;
        Object objExp2;
        Object obj;
        Context context2 = context;
        CinemanaDownloadItem cinemanaDownloadItem = null;
        if (context2 == null || file == null) {
            return null;
        }
        try {
            String canonicalPath = file.getCanonicalPath();
            Context applicationContext = context2.getApplicationContext();
            if (applicationContext != null) {
                context2 = applicationContext;
            }
            if (!(context2 instanceof CinemanaApplication) || (objExp = Restart108.exp("getDownloadsDao", context2, context2)) == null) {
                return null;
            }
            Object objExp3 = Restart108.exp("readAllDownloads", objExp);
            if (!(objExp3 instanceof List)) {
                return null;
            }
            List list = (List) objExp3;
            jw0 jw0VarH = ((CinemanaApplication) context2).h();
            if (jw0VarH == null) {
                return null;
            }
            for (Object obj2 : list) {
                if (obj2 != null && (str = Restart108.str(obj2, "x")) != null && !str.isEmpty() && canonicalPath.equals(new File(str).getCanonicalPath()) && (str2 = Restart108.str(obj2, "s")) != null && !str2.isEmpty() && (objExp2 = Restart108.exp("readCombinedById", jw0VarH, str2)) != null && (obj = Restart108.get(objExp2, "cinemanaDownloadItem")) != null) {
                    cinemanaDownloadItem = (CinemanaDownloadItem) obj;
                    return cinemanaDownloadItem;
                }
            }
            return null;
        } catch (Throwable th) {
            return cinemanaDownloadItem;
        }
    }

    private static CinemanaDownloadItem findDatabaseItemForToken(Context context, String str) {
        Object objExp;
        String str2;
        String str3;
        String str4;
        Object objExp2;
        Object obj;
        File fileExactVideo;
        String str5;
        CinemanaDownloadItem cinemanaDownloadItem = null;
        if (context == null || str == null) {
            return null;
        }
        try {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            if (!(context instanceof CinemanaApplication) || (objExp = Restart108.exp("getDownloadsDao", context, context)) == null) {
                return null;
            }
            Object objExp3 = Restart108.exp("readAllDownloads", objExp);
            if (!(objExp3 instanceof List)) {
                return null;
            }
            List list = (List) objExp3;
            CinemanaApplication cinemanaApplication = (CinemanaApplication) context;
            jw0 jw0VarH = cinemanaApplication.h();
            if (jw0VarH == null) {
                return null;
            }
            for (Object obj2 : list) {
                if (obj2 != null && (str2 = Restart108.str(obj2, "x")) != null && (str3 = MkvManifestStore.tokenFromPath(str2)) != null && str.equals(str3) && Restart108.mp4Complete(obj2, new File(str2)) && (str4 = Restart108.str(obj2, "s")) != null && !str4.isEmpty() && (objExp2 = Restart108.exp("readCombinedById", jw0VarH, str4)) != null && (obj = Restart108.get(objExp2, "cinemanaDownloadItem")) != null && (fileExactVideo = Restart108.exactVideo(cinemanaApplication, obj)) != null && (str5 = MkvManifestStore.tokenFromPath(fileExactVideo.getAbsolutePath())) != null && str.equals(str5)) {
                    cinemanaDownloadItem = (CinemanaDownloadItem) obj;
                    return cinemanaDownloadItem;
                }
            }
            return null;
        } catch (Throwable th) {
            return cinemanaDownloadItem;
        }
    }

    private static File findDiskMp4ForToken(String str) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        return scanDiskTreeForToken(new File(Environment.getExternalStorageDirectory(), "Cinemana/work"), str, 0, new int[]{0});
    }

    private static CinemanaDownloadItem findItemForDiskSource(Context context, File file) {
        CinemanaApplication cinemanaApplication;
        jw0 jw0VarH;
        String str;
        Object objExp;
        if (context == null || file == null) {
            return null;
        }
        try {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            if (!(context instanceof CinemanaApplication) || (jw0VarH = (cinemanaApplication = (CinemanaApplication) context).h()) == null) {
                return null;
            }
            List<CinemanaDownloadItem> listJ = jw0VarH.j();
            CinemanaDownloadItem cinemanaDownloadItem = null;
            String str2 = null;
            if (listJ != null) {
                for (CinemanaDownloadItem cinemanaDownloadItem2 : listJ) {
                    if (cinemanaDownloadItem2 != null && (cinemanaDownloadItem2 instanceof CinemanaDownloadItem)) {
                        CinemanaDownloadItem cinemanaDownloadItem3 = cinemanaDownloadItem2;
                        if (matchesDiskItem(cinemanaApplication, file, cinemanaDownloadItem3)) {
                            String str3 = Restart108.str(cinemanaDownloadItem3, "id");
                            if (str3 == null || str3.isEmpty()) {
                                return null;
                            }
                            if (cinemanaDownloadItem == null) {
                                cinemanaDownloadItem = cinemanaDownloadItem3;
                                str2 = str3;
                            } else if (!str2.equals(str3)) {
                                return null;
                            }
                        } else {
                            continue;
                        }
                    }
                }
                if (cinemanaDownloadItem != null) {
                    return cinemanaDownloadItem;
                }
            }
            Object objExp2 = Restart108.exp("getDownloadsDao", cinemanaApplication, cinemanaApplication);
            if (objExp2 == null) {
                return null;
            }
            Object objExp3 = Restart108.exp("readAllDownloads", objExp2);
            if (!(objExp3 instanceof List)) {
                return null;
            }
            CinemanaDownloadItem cinemanaDownloadItem4 = null;
            String str4 = null;
            for (Object obj : (List) objExp3) {
                if (obj != null && (str = Restart108.str(obj, "s")) != null && !str.isEmpty() && (objExp = Restart108.exp("readCombinedById", jw0VarH, str)) != null) {
                    Object obj2 = Restart108.get(objExp, "cinemanaDownloadItem");
                    if (obj2 instanceof CinemanaDownloadItem) {
                        CinemanaDownloadItem cinemanaDownloadItem5 = (CinemanaDownloadItem) obj2;
                        if (!matchesDiskItem(cinemanaApplication, file, cinemanaDownloadItem5)) {
                            continue;
                        } else if (cinemanaDownloadItem4 == null) {
                            cinemanaDownloadItem4 = cinemanaDownloadItem5;
                            str4 = str;
                        } else if (!str4.equals(str)) {
                            return null;
                        }
                    } else {
                        continue;
                    }
                }
            }
            if (cinemanaDownloadItem4 != null) {
                return cinemanaDownloadItem4;
            }
            return null;
        } catch (Throwable th) {
            return null;
        }
    }

    public static void forgetToken(String str) {
        ITEMS.remove(str);
    }

    private static boolean hasSiblingMkv(Context context, CinemanaDownloadItem cinemanaDownloadItem) {
        if (context == null || cinemanaDownloadItem == null) {
            return false;
        }
        try {
            File fileExactVideo = Restart108.exactVideo(context, cinemanaDownloadItem);
            if (fileExactVideo == null || !fileExactVideo.isFile()) {
                return false;
            }
            String name = fileExactVideo.getName();
            if (!name.toLowerCase(Locale.US).endsWith(".mp4") || fileExactVideo.length() <= 1024) {
                return false;
            }
            File file = new File(fileExactVideo.getParentFile(), name.substring(0, name.length() - 4).concat(".mkv"));
            return file.isFile() && file.length() > 1024;
        } catch (Throwable th) {
            return false;
        }
    }

    private static boolean hasWork() {
        if (MkvExporter.hasActiveJobs()) {
            return true;
        }
        File[] fileArrListFiles = new File(Environment.getExternalStorageDirectory(), "Cinemana/work").listFiles();
        if (fileArrListFiles == null) {
            return false;
        }
        int i = 0;
        int length = fileArrListFiles.length;
        while (i < length) {
            File file = fileArrListFiles[i];
            i++;
            if (file.isFile()) {
                String lowerCase = file.getName().toLowerCase(Locale.US);
                if (lowerCase.endsWith(".mp4") || lowerCase.endsWith(".mp4.temp")) {
                    return true;
                }
            }
        }
        return false;
    }

    private static boolean isMp4Path(String str) {
        if (str != null) {
            return str.toLowerCase(Locale.US).endsWith(".mp4");
        }
        return false;
    }

    private static boolean matchesDiskItem(Context context, File file, CinemanaDownloadItem cinemanaDownloadItem) {
        boolean zMatchesDiskVideoPath;
        if (context == null || file == null || cinemanaDownloadItem == null) {
            return false;
        }
        boolean zMatchesDiskVideoPath2 = matchesDiskVideoPath(file, cinemanaDownloadItem.path);
        if (zMatchesDiskVideoPath2) {
            return zMatchesDiskVideoPath2;
        }
        File fileExactVideo = Restart108.exactVideo(context, cinemanaDownloadItem);
        if (fileExactVideo != null && (zMatchesDiskVideoPath = matchesDiskVideoPath(file, fileExactVideo.getAbsolutePath()))) {
            return zMatchesDiskVideoPath;
        }
        boolean zMatchesItemIdentity = RecoveryCapsule.matchesItemIdentity(file, cinemanaDownloadItem);
        if (!zMatchesItemIdentity) {
            return zMatchesItemIdentity;
        }
        cinemanaDownloadItem.path = file.getAbsolutePath();
        return true;
    }

    private static boolean matchesDiskVideoPath(File file, String str) {
        String str2;
        if (file == null || str == null) {
            return false;
        }
        if (MkvExporter.matchesDiskSourceOrOutput(file, str)) {
            return true;
        }
        String str3 = MkvManifestStore.tokenFromPath(file.getAbsolutePath());
        if (str3 == null || str3.isEmpty()) {
            return false;
        }
        String lowerCase = new File(str).getName().toLowerCase(Locale.US);
        if ((lowerCase.endsWith(".mp4") || lowerCase.endsWith(".mkv")) && (str2 = MkvManifestStore.tokenFromPath(str)) != null) {
            return str3.equals(str2);
        }
        return false;
    }

    public static synchronized void reconcileAll() {
        if (CONTEXT.get() != null) {
            scanExistingRoot(new File(Environment.getExternalStorageDirectory(), "Cinemana/work"));
        }
    }

    private static boolean reconcileDiskOne(Context context, CinemanaDownloadItem cinemanaDownloadItem, File file) {
        String absolutePath;
        String str;
        if (context == null || cinemanaDownloadItem == null || file == null) {
            return false;
        }
        try {
            if (MkvExporter.isItemActive(cinemanaDownloadItem)) {
                return true;
            }
            if (!MkvExporter.matchesDiskSourceOrOutput(file, cinemanaDownloadItem.path) || (str = MkvManifestStore.tokenFromPath((absolutePath = file.getAbsolutePath()))) == null || str.isEmpty()) {
                return false;
            }
            String str2 = cinemanaDownloadItem.path;
            if (MkvExporter.matchesDiskOutputPath(file, str2)) {
                File file2 = new File(str2);
                if (file2.isFile() && file2.length() > 1024) {
                    return RecoveryCapsule.finishPromotedSource(context, cinemanaDownloadItem, file, file2);
                }
            }
            MkvManifestStore.init(context);
            boolean zIsReadyToken = MkvManifestStore.isReadyToken(str);
            if (!zIsReadyToken) {
                zIsReadyToken = filesystemInputsReadyForDisk(context, cinemanaDownloadItem, file);
            }
            if (!zIsReadyToken) {
                MkvRepairLedger.record(context, str, "WAITING_PLAN_OR_SUBTITLES", absolutePath, cinemanaDownloadItem.path, "source_mp4_found_but_exact_saved_subtitle_plan_not_verified;no_conversion_started");
                return false;
            }
            if (!MkvExporter.onRecoveredVideo(context, cinemanaDownloadItem, file)) {
                return false;
            }
            MkvRepairLedger.record(context, str, "MKV_QUEUED", absolutePath, cinemanaDownloadItem.path, "explicit_disk_mp4_and_exact_subtitle_plan_verified;guarded_exporter_accepted");
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    public static boolean reconcileDiskVideo(Context context, File file) {
        String absolutePath;
        String str;
        if (context == null || file == null) {
            return false;
        }
        try {
            start(context);
            if (!file.isFile() || file.length() <= 1024 || (str = MkvManifestStore.tokenFromPath((absolutePath = file.getAbsolutePath()))) == null || str.isEmpty()) {
                return false;
            }
            CinemanaDownloadItem cinemanaDownloadItemFindItemForDiskSource = (CinemanaDownloadItem) ITEMS.get(str);
            if ((cinemanaDownloadItemFindItemForDiskSource == null || !matchesDiskItem(context, file, cinemanaDownloadItemFindItemForDiskSource)) && (cinemanaDownloadItemFindItemForDiskSource = findItemForDiskSource(context, file)) == null && (cinemanaDownloadItemFindItemForDiskSource = findDatabaseItemForToken(context, str)) == null) {
                MkvRepairLedger.record(context, str, "WAIT_ITEM_MAPPING", absolutePath, BuildConfig.FLAVOR, "no_unique_download_item_matches_exact_mkv_destination_basename");
                return false;
            }
            ITEMS.put(str, cinemanaDownloadItemFindItemForDiskSource);
            return reconcileDiskOne(context, cinemanaDownloadItemFindItemForDiskSource, file);
        } catch (Throwable th) {
            DownloadRepair129.recordThrowable(context, "DISK_VIDEO_RECONCILE_FAILED", th);
            return false;
        }
    }

    private static void reconcileOne(Context context, CinemanaDownloadItem cinemanaDownloadItem) {
        if (context == null || cinemanaDownloadItem == null) {
            return;
        }
        try {
            if (hasSiblingMkv(context, cinemanaDownloadItem)) {
                MkvRepairLedger.recordItem(context, cinemanaDownloadItem, "FINAL_MKV_AWAITING_PROMOTION", "valid_sibling_mkv_exists_skip_duplicate_export;wake_database_finalization");
                Restart108.wake();
                return;
            }
            MkvManifestStore.init(context);
            String strContentToken = DownloadIdentity.contentToken(cinemanaDownloadItem);
            boolean zIsReadyToken = MkvManifestStore.isReadyToken(strContentToken);
            if (!zIsReadyToken) {
                zIsReadyToken = filesystemInputsReady(context, cinemanaDownloadItem);
            }
            if (!zIsReadyToken) {
                DownloadTrace.log(context, "MKV_MANIFEST_WAIT token=" + strContentToken);
                String strContentToken2 = DownloadIdentity.contentToken(cinemanaDownloadItem);
                MkvRepairLedger.recordItem(context, cinemanaDownloadItem, "WAITING_PLAN_OR_SUBTITLES", "expected_subtitles=" + MkvManifestStore.expectedSubtitleCount(strContentToken2) + ";terminal_subtitle_callbacks=" + MkvManifestStore.completedSubtitleCount(strContentToken2) + ";reason=manifest_or_plan_or_filesystem_verification_not_ready");
                return;
            }
            DownloadTrace.log(context, "MKV_READY token=" + strContentToken);
            File fileExactVideo = Restart108.exactVideo(context, cinemanaDownloadItem);
            if (fileExactVideo == null || !MkvExporter.onRecoveredVideo(context, cinemanaDownloadItem, fileExactVideo)) {
                MkvRepairLedger.recordItem(context, cinemanaDownloadItem, "MKV_QUEUE_REJECTED", "subtitle_plan_verified_but_explicit_exporter_did_not_accept_source");
            } else {
                MkvRepairLedger.recordItem(context, cinemanaDownloadItem, "MKV_QUEUED", "source_mp4_and_exact_subtitle_plan_verified;explicit_source_path_accepted_by_guarded_exporter");
            }
        } catch (Throwable th) {
        }
    }

    public static void reconcileToken(String str) {
        String str2;
        Context context;
        List<CinemanaDownloadItem> listJ;
        File fileExactVideo;
        if (str == null || (str2 = MkvManifestStore.tokenFromPath(str)) == null || str2.isEmpty() || (context = (Context) CONTEXT.get()) == null) {
            return;
        }
        MkvManifestStore.init(context);
        ConcurrentHashMap concurrentHashMap = ITEMS;
        CinemanaDownloadItem cinemanaDownloadItem = (CinemanaDownloadItem) concurrentHashMap.get(str2);
        if (cinemanaDownloadItem != null) {
            reconcileOne(context, cinemanaDownloadItem);
            return;
        }
        File fileFindDiskMp4ForToken = findDiskMp4ForToken(str2);
        if (fileFindDiskMp4ForToken != null) {
            MkvRepairLedger.recordDiscovery(context, str2, fileFindDiskMp4ForToken.getAbsolutePath());
            if (reconcileDiskVideo(context, fileFindDiskMp4ForToken) || !isMp4Path(str)) {
                return;
            }
        } else if (!isMp4Path(str)) {
            if (MkvRepairLedger.isQueued(context, str2)) {
                return;
            }
            MkvRepairLedger.record(context, str2, "WAITING_MP4_SOURCE", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "subtitle_event_without_matching_mp4_in_work_roots");
            return;
        }
        try {
            Context applicationContext = context.getApplicationContext();
            Context context2 = applicationContext != null ? applicationContext : context;
            if ((context2 instanceof CinemanaApplication) && (listJ = ((CinemanaApplication) context2).h().j()) != null) {
                for (CinemanaDownloadItem cinemanaDownloadItem2 : listJ) {
                    if (cinemanaDownloadItem2 == null || (!str2.equals(DownloadIdentity.contentToken(cinemanaDownloadItem2)) && ((fileExactVideo = Restart108.exactVideo(context, cinemanaDownloadItem2)) == null || !str2.equals(MkvManifestStore.tokenFromPath(fileExactVideo.getAbsolutePath()))))) {
                    }
                    String strContentToken = DownloadIdentity.contentToken(cinemanaDownloadItem2);
                    if (strContentToken == null || strContentToken.isEmpty()) {
                        if (MkvRepairLedger.isQueued(context, str2)) {
                            return;
                        }
                        MkvRepairLedger.record(context, str2, "WAIT_ITEM_IDENTITY", str, BuildConfig.FLAVOR, "matching_mp4_path_found_but_download_identity_is_empty");
                        return;
                    } else {
                        concurrentHashMap.put(strContentToken, cinemanaDownloadItem2);
                        MkvRepairLedger.recordItem(context, cinemanaDownloadItem2, "ITEM_MATCHED", "filename_token_matched_to_database_item;verifying_exact_subtitle_plan");
                        if (!str2.equals(strContentToken)) {
                            MkvRepairLedger.clear(context, str2);
                        }
                        DownloadTrace.log(context, "MKV_DB_RECOVER rawToken=" + str2 + " itemKey=" + strContentToken);
                        reconcileOne(context, cinemanaDownloadItem2);
                        return;
                    }
                }
            }
            CinemanaDownloadItem cinemanaDownloadItemFindDatabaseItemForToken = findDatabaseItemForToken(context, str2);
            if (cinemanaDownloadItemFindDatabaseItemForToken == null) {
                if (MkvRepairLedger.isQueued(context, str2)) {
                    return;
                }
                MkvRepairLedger.record(context, str2, "WAIT_ITEM_MAPPING", str, BuildConfig.FLAVOR, "no_database_item_matched_filename_token_or_exact_mp4_path");
                return;
            }
            String strContentToken2 = DownloadIdentity.contentToken(cinemanaDownloadItemFindDatabaseItemForToken);
            if (strContentToken2 == null || strContentToken2.isEmpty()) {
                strContentToken2 = str2;
            }
            concurrentHashMap.put(strContentToken2, cinemanaDownloadItemFindDatabaseItemForToken);
            MkvRepairLedger.recordItem(context, cinemanaDownloadItemFindDatabaseItemForToken, "ITEM_MATCHED_DB_ROW", "resolved_from_persistent_downloads_dao_by_exact_completed_mp4_token");
            if (!str2.equals(strContentToken2)) {
                MkvRepairLedger.clear(context, str2);
            }
            reconcileOne(context, cinemanaDownloadItemFindDatabaseItemForToken);
        } catch (Throwable th) {
            if (MkvRepairLedger.isQueued(context, str2)) {
                return;
            }
            MkvRepairLedger.record(context, str2, "ITEM_SCAN_FAILED", str, BuildConfig.FLAVOR, "exception_during_item_or_mp4_identity_lookup");
        }
    }

    public static CinemanaDownloadItem register(Context context, CinemanaDownloadItem cinemanaDownloadItem) {
        if (cinemanaDownloadItem != null) {
            start(context);
            String strContentToken = DownloadIdentity.contentToken(cinemanaDownloadItem);
            if (strContentToken.length() > 0) {
                ITEMS.put(strContentToken, cinemanaDownloadItem);
            }
            requestAudit();
        }
        return cinemanaDownloadItem;
    }

    public static void requestAudit() {
        scheduleAudit(250L);
    }

    private static File scanDiskTreeForToken(File file, String str, int i, int[] iArr) {
        File[] fileArrListFiles;
        File fileScanDiskTreeForToken;
        String str2;
        if (file == null || str == null || iArr == null || i > 4 || iArr[0] >= 2500 || !file.isDirectory() || (fileArrListFiles = file.listFiles()) == null) {
            return null;
        }
        for (File file2 : fileArrListFiles) {
            if (file2 != null) {
                int i2 = iArr[0];
                if (i2 >= 2500) {
                    return null;
                }
                iArr[0] = i2 + 1;
                if (file2.isFile()) {
                    if (file2.length() > 1024 && file2.getName().toLowerCase(Locale.US).endsWith(".mp4") && (str2 = MkvManifestStore.tokenFromPath(file2.getAbsolutePath())) != null && str.equals(str2)) {
                        return file2;
                    }
                } else if (i < 4 && (fileScanDiskTreeForToken = scanDiskTreeForToken(file2, str, i + 1, iArr)) != null) {
                    return fileScanDiskTreeForToken;
                }
            }
        }
        return null;
    }

    private static void scanExistingRoot(File file) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            Arrays.sort(fileArrListFiles, new MkvRepairAgeComparator());
            int i = 0;
            int length = fileArrListFiles.length;
            Context context = (Context) CONTEXT.get();
            if (context != null) {
                while (i < length) {
                    File file2 = fileArrListFiles[i];
                    i++;
                    if (file2.isFile()) {
                        String lowerCase = file2.getName().toLowerCase(Locale.US);
                        if (lowerCase.endsWith(".mp4") && !lowerCase.endsWith(".cnm-recovery.tmp.mp4")) {
                            reconcileDiskVideo(context, file2);
                        }
                    }
                }
            }
        }
    }

    private static synchronized void scheduleAudit(long j) {
        if (AUDIT_PENDING) {
            return;
        }
        AUDIT_PENDING = true;
        try {
            SCHEDULER.schedule(new Audit(), j, TimeUnit.MILLISECONDS);
        } catch (Throwable th) {
            AUDIT_PENDING = false;
        }
    }

    public static void start(Context context) {
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            CONTEXT.set(context);
            MkvManifestStore.init(context);
            if (STARTED.compareAndSet(false, true)) {
                MkvStateStore.resetStale(context);
                File file = new File(Environment.getExternalStorageDirectory(), "Cinemana/work");
                file.mkdirs();
                watchRoot(file);
            }
        }
        requestAudit();
    }

    private static void watchRoot(File file) {
        if (file == null || !file.isDirectory()) {
            return;
        }
        String absolutePath = file.getAbsolutePath();
        if (WATCHED_PATHS.putIfAbsent(absolutePath, Boolean.TRUE) == null) {
            try {
                FileObserver fileObserver = new FileObserver(absolutePath) { // from class: com.shabakaty.cinemana.features.MkvReconciler.2
                    @Override // android.os.FileObserver
                    public void onEvent(int i, String str) {
                        if (str != null) {
                            String lowerCase = str.toLowerCase(Locale.US);
                            if (lowerCase.endsWith(".mp4.temp")) {
                                MkvReconciler.requestAudit();
                            } else if (lowerCase.endsWith(".mp4") || lowerCase.endsWith(".srt") || lowerCase.endsWith(".ass")) {
                                MkvReconciler.requestAudit();
                            }
                        }
                    }
                };
                fileObserver.startWatching();
                OBSERVERS.add(fileObserver);
            } catch (Throwable th) {
                WATCHED_PATHS.remove(absolutePath);
            }
        }
    }

    private static void watchTree(File file) {
        if (file == null || !file.isDirectory()) {
            return;
        }
        watchRoot(file);
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isDirectory()) {
                    String lowerCase = file2.getName().toLowerCase(Locale.US);
                    if (!lowerCase.equals(PListParser.TAG_DATA) && !lowerCase.equals("log")) {
                        watchTree(file2);
                    }
                }
            }
        }
    }
}
