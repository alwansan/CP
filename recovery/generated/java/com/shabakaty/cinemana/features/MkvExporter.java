package com.shabakaty.cinemana.features;

import android.content.Context;
import android.os.Environment;
import android.os.SystemClock;
import android.util.Log;
import androidx.recyclerview.widget.RecyclerView;
import com.connectsdk.R;
import com.connectsdk.discovery.provider.ssdp.SSDPPacket;
import com.connectsdk.service.DLNAService;
import com.liulishuo.filedownloader.BuildConfig;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import com.shabakaty.cinemana.ca1.Commit105;
import com.shabakaty.cinemana.ca1.DownloadRepair129;
import com.shabakaty.cinemana.ca1.Inputs114;
import com.shabakaty.cinemana.ca1.Lease115;
import com.shabakaty.cinemana.ca1.Log94;
import com.shabakaty.cinemana.ca1.MkvCancel262;
import com.shabakaty.cinemana.ca1.Queue110;
import com.shabakaty.cinemana.ca1.Recovery92;
import com.shabakaty.cinemana.ca1.RecoveryCapsule;
import com.shabakaty.cinemana.ca1.Restart108;
import com.shabakaty.cinemana.ca1.StorageMaintenance152;
import com.shabakaty.cinemana.ca1.WorkFolders104;
import com.shabakaty.cinemana.data.db.downloads.CinemanaDownloadItem;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Semaphore;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import zendesk.core.BlipsFormatHelper;

/* JADX INFO: loaded from: classes3.dex */
public final class MkvExporter {
    private static final String FFMPEG_ASSET = "ffmpeg";
    private static final String FFMPEG_NATIVE_NAME = "libffmpeg.so";
    private static final long JOB_RETRY_DELAY_MS = 4000;
    private static final String LOG_DIR = "log";
    private static final int MAX_CONCURRENT_FFMPEG = 3;
    private static final int MAX_JOB_RETRIES = 3;
    private static final int MAX_MKV_JOBS = 3;
    private static final long MAX_WAIT_MS = 300000;
    private static final long POLL_MS = 500;
    private static final long QUIET_MS = 2000;
    private static final String ROOT = "Cinemana/work";
    private static final String TAG = "CNM_MKV";
    private static final long ZERO_SUBTITLE_GRACE_MS = 10000;
    private static final ExecutorService JOB_EXECUTOR = Executors.newFixedThreadPool(3, new ThreadFactory() { // from class: com.shabakaty.cinemana.features.MkvExporter.1
        private int n = 0;

        @Override // java.util.concurrent.ThreadFactory
        public synchronized Thread newThread(Runnable runnable) {
            Thread thread;
            StringBuilder sbAppend = new StringBuilder().append("cnm-mkv-queue-");
            int i = this.n + 1;
            this.n = i;
            thread = new Thread(runnable, sbAppend.append(i).toString());
            thread.setDaemon(true);
            return thread;
        }
    });
    private static final Semaphore FFMPEG_SLOTS = new Semaphore(3, true);
    private static final Set<String> ACTIVE_JOB_KEYS = new HashSet();
    private static final ConcurrentHashMap<String, Object> TARGET_LOCKS = new ConcurrentHashMap<>();
    private static final Object JOB_LOCK = new Object();

    final class Recovered implements Runnable {
        private final Context context;
        private final Object item;
        private final String key;
        private final File source;

        public Recovered(Context context, Object obj, File file, String str) {
            this.context = context;
            this.item = obj;
            this.source = file;
            this.key = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            MkvExporter.runRecovered(this.context, this.item, this.source, this.key);
        }
    }

    private static void export(Context context, File file, List list, File file2, Object obj) throws Exception {
        Lease115.export(context, file, list, file2, obj);
    }

    private static String[] extractSeasonEpisodeDigits(String str) {
        if (!nonEmpty(str)) {
            return new String[]{BuildConfig.FLAVOR, BuildConfig.FLAVOR};
        }
        Matcher matcher = Pattern.compile("(?:^|[^a-z0-9])s([0-9]+)[^a-z0-9]*e([0-9]+)(?:[^0-9]|$)", 2).matcher(str);
        return matcher.find() ? new String[]{matcher.group(1), matcher.group(2)} : new String[]{BuildConfig.FLAVOR, BuildConfig.FLAVOR};
    }

    private static File findTokenMp4InRoot(File file, String str) {
        File[] fileArrListFiles;
        if (file == null || (fileArrListFiles = file.listFiles()) == null) {
            return null;
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isFile()) {
                String name = file2.getName();
                if (name.contains(str) && "mp4".equals(extension(name))) {
                    return file2;
                }
            }
        }
        return null;
    }

    public static boolean hasActiveJobs() {
        boolean z;
        synchronized (JOB_LOCK) {
            z = !ACTIVE_JOB_KEYS.isEmpty();
        }
        return z;
    }

    public static boolean isItemActive(Object obj) {
        boolean zContains;
        String strBuildJobKey = buildJobKey(obj, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR);
        synchronized (JOB_LOCK) {
            zContains = ACTIVE_JOB_KEYS.contains(strBuildJobKey);
        }
        return zContains;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static File locateReadyVideo(Context context, Object obj) {
        File fileExactVideo = Restart108.exactVideo(context, obj);
        if (fileExactVideo != null) {
            return fileExactVideo;
        }
        if (!(obj instanceof CinemanaDownloadItem)) {
            return null;
        }
        String strContentToken = DownloadIdentity.contentToken((CinemanaDownloadItem) obj);
        if (strContentToken.length() <= 0) {
            return null;
        }
        String str = " [cnm-" + strContentToken + "]";
        File fileFindTokenMp4InRoot = findTokenMp4InRoot(new File(Environment.getExternalStorageDirectory(), ROOT), str);
        return fileFindTokenMp4InRoot != null ? fileFindTokenMp4InRoot : findTokenMp4InRoot(new File(Environment.getExternalStorageDirectory(), "Download/Cinemana/work"), str);
    }

    private static File locateVideoForItem(Context context, String str, String str2, String str3, String str4, Object obj) {
        File fileLocateReadyVideo = locateReadyVideo(context, obj);
        if (fileLocateReadyVideo != null) {
            return fileLocateReadyVideo;
        }
        if (obj instanceof CinemanaDownloadItem) {
            String strContentToken = DownloadIdentity.contentToken((CinemanaDownloadItem) obj);
            if (nonEmpty(strContentToken)) {
                String str5 = " [cnm-" + strContentToken + "]";
                File[] fileArrListFiles = new File(Environment.getExternalStorageDirectory(), ROOT).listFiles();
                if (fileArrListFiles != null) {
                    for (File file : fileArrListFiles) {
                        if (isVideoCandidate(file) && file.getName().contains(str5)) {
                            return file;
                        }
                    }
                }
            }
        }
        return locateVideo(context, str, str2, str3, str4);
    }

    public static boolean matchesDiskOutputPath(File file, String str) {
        if (file == null || str == null || !"mkv".equals(extension(new File(str).getName()))) {
            return false;
        }
        String str2 = MkvManifestStore.tokenFromPath(file.getAbsolutePath());
        return !str2.isEmpty() && str2.equals(MkvManifestStore.tokenFromPath(str));
    }

    public static boolean matchesDiskSourceOrOutput(File file, String str) {
        if (file == null || str == null) {
            return false;
        }
        try {
            if (file.getCanonicalPath().equals(new File(str).getCanonicalPath())) {
                return true;
            }
            return matchesDiskOutputPath(file, str);
        } catch (Exception e) {
            return false;
        }
    }

    public static boolean onRecoveredVideo(Context context, CinemanaDownloadItem cinemanaDownloadItem, File file) {
        if (context == null || cinemanaDownloadItem == null || file == null || !Queue110.mayRepairCompleted(cinemanaDownloadItem) || !file.isFile() || !"mp4".equals(extension(file.getName()))) {
            return false;
        }
        String strBuildJobKey = buildJobKey(cinemanaDownloadItem, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR);
        synchronized (JOB_LOCK) {
            Set<String> set = ACTIVE_JOB_KEYS;
            try {
                if (!set.contains(strBuildJobKey)) {
                    set.add(strBuildJobKey);
                    Recovered recovered = new Recovered(context, cinemanaDownloadItem, file, strBuildJobKey);
                    MkvStateStore.setBusy(context, cinemanaDownloadItem, true, "QUEUED");
                    JOB_EXECUTOR.execute(recovered);
                }
            } catch (Throwable th) {
                set.remove(strBuildJobKey);
                MkvStateStore.setBusy(context, cinemanaDownloadItem, false, "FAILED");
                DownloadRepair129.recordThrowable(context, "RECOVERED_ENQUEUE_FAILED", th);
                return false;
            }
        }
        return true;
    }

    private static boolean promoteDatabaseWithRetry(Context context, Object obj, File file, File file2) {
        boolean zPromoteDatabase;
        int i = 0;
        while (true) {
            String absolutePath = file.getAbsolutePath();
            zPromoteDatabase = promoteDatabase(context, obj, absolutePath, file.length());
            if (zPromoteDatabase || i >= 3) {
                break;
            }
            i++;
            appendLog(file2, "SORT_DB_PROMOTE_RETRY attempt=" + i + " path=" + absolutePath);
            SystemClock.sleep(1000L);
        }
        return zPromoteDatabase;
    }

    public static void runRecovered(Context context, Object obj, File file, String str) {
        try {
            MkvCancel262.check(context, obj);
            if (Queue110.mayRepairCompleted(obj)) {
                MkvStateStore.setBusy(context, obj, true, "PROCESSING");
                waitAndExport(context, file, obj);
            }
        } catch (Throwable th) {
            DownloadRepair129.recordThrowable(context, "RECOVERED_EXPORT_FAILED", th);
        }
        MkvStateStore.setBusy(context, obj, false, "IDLE");
        synchronized (JOB_LOCK) {
            ACTIVE_JOB_KEYS.remove(str);
        }
        MkvRepairLedger.completeIfFinal(context, obj);
        MkvReconciler.requestAudit();
        MkvCancel262.clearCurrent();
    }

    private static void waitAndExport(Context context, File file, Object obj) throws Exception {
        if (file == null || !file.exists() || !file.isFile()) {
            appendExternalLog(context, "MKV_MANIFEST_DEFER final MP4 missing");
            return;
        }
        if (file.length() < 1024) {
            appendExternalLog(context, "MKV_MANIFEST_DEFER final MP4 too small");
            return;
        }
        MkvManifestStore.init(context);
        String str = MkvManifestStore.tokenFromPath(file.getAbsolutePath());
        if (str.length() <= 0) {
            appendExternalLog(context, "MKV_MANIFEST_DEFER token missing from final MP4 path");
            return;
        }
        if (!MkvManifestStore.isReadyToken(str)) {
            appendExternalLog(context, "MKV_MANIFEST_DEFER token=" + str);
            return;
        }
        file.getParentFile();
        String strStripExtension = stripExtension(file.getName());
        File fileEnsureLogDir = ensureLogDir();
        migrateLegacyLogs(fileEnsureLogDir);
        File file2 = new File(fileEnsureLogDir, "." + strStripExtension + ".mkv.log");
        List<File> listVerified = Inputs114.verified(context, file);
        if (listVerified == null) {
            return;
        }
        appendLog(file2, "SUBTITLE_POLICY=manifest-ready expected=" + MkvManifestStore.expectedSubtitleCount(str) + " completed=" + MkvManifestStore.completedSubtitleCount(str) + " files=" + listVerified.size() + " token=" + str);
        export(context, file, listVerified, file2, obj);
    }

    private MkvExporter() {
    }

    public static void onVideoCompleted(Context context, Object obj, final Object obj2) {
        if (context == null || obj2 == null || MkvCancel262.blocked(context, obj2)) {
            return;
        }
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        final Context context2 = context;
        final String strStringProperty = stringProperty(obj2, FileDownloadModel.PATH, "x", "getPath");
        final String strStringProperty2 = stringProperty(obj2, "title", "getTitle");
        final String strStringProperty3 = stringProperty(obj2, "season", "getSeason");
        final String strStringProperty4 = stringProperty(obj2, "episodeNumber", "getEpisodeNumber");
        appendExternalLog(context2, "onVideoCompleted path=" + strStringProperty + " title=" + strStringProperty2 + " season=" + strStringProperty3 + " episode=" + strStringProperty4);
        File fileLocateReadyVideo = locateReadyVideo(context2, obj2);
        if (fileLocateReadyVideo == null || !fileLocateReadyVideo.isFile() || !"mp4".equals(extension(fileLocateReadyVideo.getName()))) {
            appendExternalLog(context2, "RECONCILE_DEFERRED: final MP4 not ready");
            return;
        }
        final String strBuildJobKey = buildJobKey(obj2, strStringProperty2, strStringProperty3, strStringProperty4, strStringProperty);
        synchronized (JOB_LOCK) {
            Set<String> set = ACTIVE_JOB_KEYS;
            if (set.contains(strBuildJobKey)) {
                appendExternalLog(context2, "QUEUE_DUPLICATE_IGNORED key=" + strBuildJobKey);
                return;
            }
            set.add(strBuildJobKey);
            appendExternalLog(context2, "QUEUE_ENQUEUED key=" + strBuildJobKey);
            MkvStateStore.setBusy(context2, obj2, true, "QUEUED");
            JOB_EXECUTOR.execute(new Runnable() { // from class: com.shabakaty.cinemana.features.MkvExporter.2
                {
                    MkvCancel262.clearCurrent();
                }

                /* JADX WARN: Code duplicated, block: B:52:0x011e A[EXC_TOP_SPLITTER, SYNTHETIC] */
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        MkvExporter.appendExternalLog(context2, "QUEUE_START key=" + strBuildJobKey);
                        MkvStateStore.setBusy(context2, obj2, true, "PROCESSING");
                        boolean z = false;
                        for (int i = 1; i <= 1 && !z; i++) {
                            MkvExporter.appendExternalLog(context2, "QUEUE_ATTEMPT=" + i + "/1 key=" + strBuildJobKey);
                            try {
                                Context context3 = context2;
                                String str = strStringProperty;
                                String str2 = strStringProperty2;
                                String str3 = strStringProperty3;
                                String str4 = strStringProperty4;
                                Object obj3 = obj2;
                                MkvCancel262.check(context3, obj3);
                                MkvExporter.waitForCompletedVideoAndExport(context3, str, str2, str3, str4, obj3);
                            } catch (Throwable th) {
                                Log.e(MkvExporter.TAG, "MKV job attempt failed", th);
                                MkvExporter.appendExternalLog(context2, "QUEUE_ATTEMPT_EXCEPTION=" + th);
                            }
                            File fileLocateReadyVideo2 = MkvExporter.locateReadyVideo(context2, obj2);
                            if (fileLocateReadyVideo2 != null && fileLocateReadyVideo2.isFile() && MkvExporter.extension(fileLocateReadyVideo2.getName()).equals("mp4")) {
                                MkvRepairLedger.recordItem(context2, obj2, "EXPORT_STILL_MP4", "source_mp4_remained_after_export_attempt");
                                if (i < 1) {
                                    MkvExporter.appendExternalLog(context2, "QUEUE_RETRY_PENDING freshMp4=" + fileLocateReadyVideo2.getAbsolutePath());
                                    try {
                                        Thread.sleep(MkvExporter.JOB_RETRY_DELAY_MS);
                                    } catch (InterruptedException e) {
                                        Thread.currentThread().interrupt();
                                        synchronized (MkvExporter.JOB_LOCK) {
                                            try {
                                                MkvExporter.ACTIVE_JOB_KEYS.remove(strBuildJobKey);
                                                MkvExporter.appendExternalLog(context2, "QUEUE_FINISH key=" + strBuildJobKey);
                                                Context context4 = context2;
                                                MkvStateStore.setBusy(context4, obj2, false, "IDLE");
                                                MkvRepairLedger.sweep(context4);
                                            } finally {
                                                MkvCancel262.clearCurrent();
                                            }
                                        }
                                    }
                                } else {
                                    continue;
                                }
                            } else {
                                Context context5 = context2;
                                Object obj4 = obj2;
                                MkvRepairLedger.completeIfFinal(context5, obj4);
                                MkvRepairLedger.completeAliasFromSource(context5, strStringProperty, obj4);
                                MkvExporter.appendExternalLog(context2, "QUEUE_SUCCESS_OR_ALREADY_PRIMARY key=" + strBuildJobKey);
                                z = true;
                            }
                        }
                        synchronized (MkvExporter.JOB_LOCK) {
                            MkvExporter.ACTIVE_JOB_KEYS.remove(strBuildJobKey);
                        }
                        MkvExporter.appendExternalLog(context2, "QUEUE_FINISH key=" + strBuildJobKey);
                        Context context6 = context2;
                        MkvStateStore.setBusy(context6, obj2, false, "IDLE");
                        MkvRepairLedger.sweep(context6);
                    } catch (Throwable th2) {
                        synchronized (MkvExporter.JOB_LOCK) {
                            try {
                                MkvExporter.ACTIVE_JOB_KEYS.remove(strBuildJobKey);
                                MkvExporter.appendExternalLog(context2, "QUEUE_FINISH key=" + strBuildJobKey);
                                Context context7 = context2;
                                MkvStateStore.setBusy(context7, obj2, false, "FAILED");
                                MkvRepairLedger.sweep(context7);
                                throw th2;
                            } finally {
                                MkvCancel262.clearCurrent();
                            }
                        }
                    }
                }
            });
        }
    }

    private static String buildJobKey(Object obj, String str, String str2, String str3, String str4) {
        String strStringProperty = stringProperty(obj, "id", "getId");
        if (nonEmpty(strStringProperty)) {
            return "item:" + strStringProperty.trim();
        }
        int iIntegerProperty = integerProperty(obj, "downloadTaskId", -1);
        if (iIntegerProperty >= 0) {
            return "task:" + iIntegerProperty;
        }
        String strNormalizeKey = normalizeKey(str);
        return nonEmpty(strNormalizeKey) ? "media:" + strNormalizeKey + "|s=" + digitsOnly(str2) + "|e=" + digitsOnly(str3) : "path:" + normalizeKey(str4);
    }

    /**
     * Original source recovered from the watcher in smali_classes3/MkvExporter.smali.
     *
     * Never export a partially written MP4. Require the same file and size to
     * remain unchanged for QUIET_MS; prefer a fresh MP4 sibling over any
     * already-exported MKV. Source and download-model changes are best effort.
     */
    private static void waitForCompletedVideoAndExport(Context context, String collection,
            String title, String season, String episode, Object downloadModel) throws Exception {
        long startedAt = System.currentTimeMillis();
        appendExternalLog(context, "watcher started; waiting for final video filename (not .temp)");
        File previousFile = null;
        long previousSize = -1L;
        long unchangedSince = 0L;
        while (System.currentTimeMillis() - startedAt < 120000L) {
            File candidate = locateVideoForItem(context, collection, title, season, episode, downloadModel);
            if (candidate != null && candidate.exists() && candidate.isFile()) {
                long length = candidate.length();
                if (!candidate.equals(previousFile)) {
                    appendExternalLog(context, "candidate video observed: "
                            + candidate.getAbsolutePath() + " size=" + length);
                    unchangedSince = 0L;
                    previousFile = candidate;
                } else if (length != previousSize || length < 1024L) {
                    unchangedSince = 0L;
                } else {
                    if (unchangedSince == 0L) {
                        unchangedSince = System.currentTimeMillis();
                    }
                    if (System.currentTimeMillis() - unchangedSince >= QUIET_MS) {
                        appendExternalLog(context, "final video stable: "
                                + candidate.getAbsolutePath() + " size=" + length);
                        File ready = candidate.exists() ? candidate
                                : locateVideoForItem(context, collection, title, season, episode, downloadModel);
                        if (ready == null || !ready.exists()) {
                            appendExternalLog(context, "SKIP_STALE_CALLBACK: completed source no longer exists");
                            return;
                        }
                        if (ready.getName().toLowerCase(Locale.US).endsWith(".mkv")) {
                            File sibling = new File(ready.getParentFile(), stripExtension(ready.getName()) + ".mp4");
                            if (!sibling.exists() || sibling.length() < 1024L) {
                                appendExternalLog(context,
                                        "SKIP_EXISTING_MKV: no fresh MP4 sibling for " + ready.getAbsolutePath());
                                return;
                            }
                            ready = sibling;
                        }
                        try {
                            setField(downloadModel, "path", ready.getName());
                        } catch (Throwable ignored) {
                            // The original app must still export if the metadata field is unavailable.
                        }
                        appendExternalLog(context, "VIDEO_READY_FOR_MKV path=" + ready.getAbsolutePath());
                        waitAndExport(context, ready, downloadModel);
                        return;
                    }
                }
                previousSize = length;
            } else {
                String expected = buildExpectedBase(title, season, episode);
                if (nonEmpty(expected)) {
                    File temporary = new File(new File(Environment.getExternalStorageDirectory(), ROOT),
                            expected + ".mp4.temp");
                    if (temporary.exists()) {
                        appendExternalLog(context, "temporary video still downloading: "
                                + temporary.getName() + " size=" + temporary.length());
                    }
                }
            }
            Thread.sleep(POLL_MS);
        }
        appendExternalLog(context, "TIMEOUT: final video file was not stable within 2 minutes");
    }

    private static List<File> findSubtitles(File file, String str) {
        File[] fileArrListFiles = file == null ? null : file.listFiles();
        if (fileArrListFiles == null) {
            return Collections.emptyList();
        }
        String lowerCase = str.toLowerCase(Locale.US);
        ArrayList arrayList = new ArrayList();
        for (File file2 : fileArrListFiles) {
            if (file2.isFile() && file2.length() > 0) {
                String lowerCase2 = file2.getName().toLowerCase(Locale.US);
                if ((lowerCase2.endsWith(".srt") || lowerCase2.endsWith(".ass") || lowerCase2.endsWith(".vtt")) && lowerCase2.contains(" for " + lowerCase)) {
                    arrayList.add(file2);
                }
            }
        }
        Collections.sort(arrayList, new Comparator<File>() { // from class: com.shabakaty.cinemana.features.MkvExporter.3
            @Override // java.util.Comparator
            public int compare(File file3, File file4) {
                return file3.getName().compareToIgnoreCase(file4.getName());
            }
        });
        return arrayList;
    }

    private static String signature(List<File> list) {
        StringBuilder sb = new StringBuilder();
        for (File file : list) {
            sb.append(file.getName()).append(':').append(file.length()).append(';');
        }
        return sb.toString();
    }

    private static void exportLocked(Context context, File file, List<File> list, File file2, Object obj) throws Exception {
        boolean z;
        Throwable th;
        boolean z2;
        File file3;
        MkvCancel262.check(context, obj);
        File parentFile = file.getParentFile();
        StringBuilder sb = new StringBuilder();
        String strStripExtension = stripExtension(file.getName());
        if (MkvManifestStore.isNoSubPath(file.getAbsolutePath()) && !hasNoSubPrefix(strStripExtension)) {
            strStripExtension = "(No Sub) " + strStripExtension;
        }
        File file4 = new File(parentFile, sb.append(strStripExtension).append(".mkv").toString());
        File file5 = new File(file.getParentFile(), file4.getName() + ".bak");
        if (!file4.exists() && file5.exists() && file5.length() > 1024) {
            appendLog(file2, "STALE_BACKUP_RECOVERY=" + file5.renameTo(file4));
        }
        boolean z3 = file4.exists() && file4.length() > 1024;
        if (z3) {
            appendLog(file2, "existing MKV detected; rebuilding and replacing it: " + file4.getAbsolutePath() + " size=" + file4.length());
        }
        File fileEnsureFfmpeg = ensureFfmpeg(context, file2);
        if (fileEnsureFfmpeg == null || !fileEnsureFfmpeg.exists()) {
            appendLog(file2, "FFMPEG unavailable");
            return;
        }
        File fileStage = Lease115.stage(file4);
        if (fileStage.exists()) {
            fileStage.delete();
        }
        RecoveryCapsule.prepare(context, file);
        ArrayList arrayList = new ArrayList();
        arrayList.add(fileEnsureFfmpeg.getAbsolutePath());
        arrayList.add("-nostdin");
        arrayList.add("-hide_banner");
        arrayList.add("-loglevel");
        arrayList.add("error");
        arrayList.add("-y");
        arrayList.add("-i");
        arrayList.add(file.getAbsolutePath());
        for (File file6 : list) {
            arrayList.add("-i");
            arrayList.add(file6.getAbsolutePath());
        }
        arrayList.add("-map");
        arrayList.add("0:v:0");
        arrayList.add("-map");
        arrayList.add("0:a?");
        int i = 0;
        while (i < list.size()) {
            arrayList.add("-map");
            i++;
            arrayList.add(i + ":0");
        }
        arrayList.add("-c:v");
        arrayList.add("copy");
        arrayList.add("-c:a");
        arrayList.add("copy");
        arrayList.add("-c:s");
        arrayList.add("copy");
        for (int i2 = 0; i2 < list.size(); i2++) {
            if ("vtt".equals(extension(list.get(i2).getName()))) {
                arrayList.add("-c:s:" + i2);
                arrayList.add(DLNAService.DEFAULT_SUBTITLE_TYPE);
            }
            arrayList.add("-metadata:s:s:" + i2);
            arrayList.add("title=" + DownloadTitle127.clean(stripExtension(list.get(i2).getName())));
            arrayList.add("-metadata:s:s:" + i2);
            arrayList.add("language=" + languageFor(list.get(i2).getName()));
        }
        arrayList.add("-metadata");
        arrayList.add("title=" + DownloadTitle127.clean(baseTitle(file.getName())));
        arrayList.add("-map_chapters");
        arrayList.add("0");
        arrayList.add("-f");
        arrayList.add("matroska");
        arrayList.add(fileStage.getAbsolutePath());
        appendLog(file2, "subtitle_track_types=derived_from_real_input_languages (PATCH127)");
        appendLog(file2, "exec=" + join(arrayList));
        Process processStart = null;
        try {
            FFMPEG_SLOTS.acquire();
            try {
                appendExternalLog(context, "MKV_FFMPEG_SLOT_ACQUIRED target=" + file4.getName());
                processStart = new ProcessBuilder(arrayList).redirectErrorStream(true).start();
                MkvCancel262.register(processStart);
                InputStream inputStream = processStart.getInputStream();
                StringBuilder sb2 = new StringBuilder();
                byte[] bArr = new byte[RecyclerView.b0.FLAG_BOUNCED_FROM_HIDDEN_LIST];
                while (true) {
                    int i3 = inputStream.read(bArr);
                    if (i3 <= 0) {
                        break;
                    } else if (sb2.length() < 12000) {
                        sb2.append(new String(bArr, 0, i3, "UTF-8"));
                    }
                }
                boolean z4 = false;
                inputStream.close();
                int iWaitFor = processStart.waitFor();
                appendLog(file2, "exit=" + iWaitFor + " output=" + ((Object) sb2));
                if (iWaitFor == 0 && fileStage.exists() && fileStage.length() >= 1024) {
                    File file7 = new File(file.getParentFile(), file4.getName() + ".bak");
                    if (file4.exists()) {
                        if (file7.exists()) {
                            file7.delete();
                        }
                        if (!file4.renameTo(file7)) {
                            appendLog(file2, "REPLACE_FAILED: could not stage existing MKV");
                            if (fileStage.exists()) {
                                fileStage.delete();
                            }
                            if (processStart != null) {
                                try {
                                    MkvCancel262.unregister(processStart);
                                    processStart.destroy();
                                } catch (Throwable th2) {
                                }
                            }
                            FFMPEG_SLOTS.release();
                            appendExternalLog(context, "MKV_FFMPEG_SLOT_RELEASED target=" + file4.getName());
                            return;
                        }
                        appendLog(file2, "OLD_MKV_STAGED=" + file7.getName());
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    MkvCancel262.checkCurrent();
                    boolean zRenameTo = fileStage.renameTo(file4);
                    if (zRenameTo) {
                        z4 = zRenameTo;
                    } else {
                        try {
                            copyFile(fileStage, file4);
                            fileStage.delete();
                            if (file4.exists() && file4.length() > 1024) {
                                z4 = true;
                            }
                        } catch (Throwable th3) {
                            appendLog(file2, "REPLACE_FAILED: install copy error=" + th3);
                        }
                    }
                    if (!z4) {
                        if (file4.exists()) {
                            file4.delete();
                        }
                        if (z2) {
                            file7.renameTo(file4);
                        }
                        appendLog(file2, "REPLACE_FAILED: new MKV could not be installed; old MKV restored=" + z2);
                        if (processStart != null) {
                            try {
                                MkvCancel262.unregister(processStart);
                                processStart.destroy();
                            } catch (Throwable th4) {
                            }
                        }
                        FFMPEG_SLOTS.release();
                        appendExternalLog(context, "MKV_FFMPEG_SLOT_RELEASED target=" + file4.getName());
                        return;
                    }
                    appendLog(file2, "SUCCESS=" + file4.getAbsolutePath() + " size=" + file4.length());
                    String name = file4.getName();
                    long length = file4.length();
                    Restart108.ready(context, obj, file4);
                    boolean zPromoteDatabase = promoteDatabase(context, obj, name, length);
                    for (int i4 = 0; !zPromoteDatabase && i4 < 3; i4++) {
                        Thread.sleep(1000L);
                        zPromoteDatabase = promoteDatabase(context, obj, file4.getName(), file4.length());
                    }
                    appendLog(file2, "DB_PROMOTE=" + zPromoteDatabase);
                    if (!zPromoteDatabase) {
                        appendLog(file2, "PROMOTION_FAILED; rolling back newly generated MKV");
                        if (file4.exists()) {
                            file4.delete();
                        }
                        if (z2) {
                            appendLog(file2, "OLD_MKV_RESTORED=" + file7.renameTo(file4));
                        }
                        if (processStart != null) {
                            try {
                                MkvCancel262.unregister(processStart);
                                processStart.destroy();
                            } catch (Throwable th5) {
                            }
                        }
                        FFMPEG_SLOTS.release();
                        appendExternalLog(context, "MKV_FFMPEG_SLOT_RELEASED target=" + file4.getName());
                        return;
                    }
                    if (z2 && file7.exists()) {
                        appendLog(file2, "OLD_MKV_DELETE=" + file7.delete());
                    }
                    MkvCancel262.checkCurrent();
                    SortResult sortResultOrganizeMkv = organizeMkv(context, file4, obj, file2);
                    if (sortResultOrganizeMkv == null || !sortResultOrganizeMkv.moved || sortResultOrganizeMkv.finalFile == null) {
                        setField(obj, FileDownloadModel.PATH, file4.getName());
                        file3 = file4;
                    } else {
                        file3 = sortResultOrganizeMkv.finalFile;
                        boolean zPromoteDatabaseWithRetry = promoteDatabaseWithRetry(context, obj, file3, file2);
                        appendLog(file2, "SORT_DB_PROMOTE=" + zPromoteDatabaseWithRetry + " path=" + file3.getAbsolutePath());
                        if (zPromoteDatabaseWithRetry) {
                            if (sortResultOrganizeMkv.replacedBackup != null && sortResultOrganizeMkv.replacedBackup.exists()) {
                                appendLog(file2, "OLD_SORTED_MKV_DELETE=" + sortResultOrganizeMkv.replacedBackup.delete());
                            }
                            if (file4.exists()) {
                                file4.delete();
                            }
                            setField(obj, FileDownloadModel.PATH, file3.getAbsolutePath());
                        } else {
                            appendLog(file2, "SORT_DB_ROLLBACK_MOVED_BACK=" + moveFile(file3, file4));
                            if (sortResultOrganizeMkv.replacedBackup != null && sortResultOrganizeMkv.replacedBackup.exists() && !file3.exists()) {
                                sortResultOrganizeMkv.replacedBackup.renameTo(file3);
                            }
                            setField(obj, FileDownloadModel.PATH, file4.getAbsolutePath());
                            file3 = file4;
                        }
                    }
                    writeIdentityRecord(context, obj, file3, hasNoSubPrefix(file3.getName()));
                    Commit105.completed(context, obj, file3);
                    if (promoteDatabaseWithRetry(context, obj, file3, file2) && Commit105.isPromoted(context, obj, file3) && RecoveryCapsule.finalizeMkv(file3, file)) {
                        File file8 = new File(file.getParentFile(), stripExtension(file.getName()) + ".mp4");
                        if (file.exists() && !sameFile(file, file3)) {
                            appendLog(file2, "delete video=" + file.getName() + " result=" + safeDelete(file));
                        }
                        if (file8.exists() && !sameFile(file8, file3)) {
                            appendLog(file2, "delete mp4 sibling=" + file8.getName() + " result=" + safeDelete(file8));
                        }
                        for (File file9 : list) {
                            if (file9 != null && file9.exists()) {
                                appendLog(file2, "delete subtitle=" + file9.getName() + " result=" + safeDelete(file9));
                            }
                        }
                    }
                    RecoveryCapsule.cleanupCompleted(file3, file);
                    appendLog(file2, "MKV_PROMOTED_AS_PRIMARY=" + file3.getAbsolutePath());
                    StorageMaintenance152.recordSuccess(file3, list);
                    if (processStart != null) {
                        try {
                            MkvCancel262.unregister(processStart);
                            processStart.destroy();
                        } catch (Throwable th6) {
                        }
                    }
                    FFMPEG_SLOTS.release();
                    appendExternalLog(context, "MKV_FFMPEG_SLOT_RELEASED target=" + file4.getName());
                    return;
                }
                if (fileStage.exists()) {
                    fileStage.delete();
                }
                appendLog(file2, "MKV_BUILD_FAILED; existing primary preserved=" + z3);
                if (processStart != null) {
                    try {
                        MkvCancel262.unregister(processStart);
                        processStart.destroy();
                    } catch (Throwable th7) {
                    }
                }
                FFMPEG_SLOTS.release();
                appendExternalLog(context, "MKV_FFMPEG_SLOT_RELEASED target=" + file4.getName());
            } catch (Throwable th8) {
                th = th8;
                z = true;
                if (processStart != null) {
                    try {
                        MkvCancel262.unregister(processStart);
                        processStart.destroy();
                    } catch (Throwable th9) {
                    }
                }
                if (!z) {
                    throw th;
                }
                FFMPEG_SLOTS.release();
                appendExternalLog(context, "MKV_FFMPEG_SLOT_RELEASED target=" + file4.getName());
                throw th;
            }
        } catch (Throwable th10) {
            z = false;
            th = th10;
        }
    }

    private static boolean sameFile(File file, File file2) {
        if (file == null || file2 == null) {
            return false;
        }
        try {
            return file.getCanonicalFile().equals(file2.getCanonicalFile());
        } catch (IOException e) {
            return file.getAbsolutePath().equals(file2.getAbsolutePath());
        }
    }

    private static boolean safeDelete(File file) {
        if (file == null || !file.exists()) {
            return true;
        }
        try {
            if (file.delete() || !file.exists()) {
                return true;
            }
            return false;
        } catch (Throwable th) {
            return false;
        }
    }

    private static File ensureFfmpeg(Context context, File file) throws IOException {
        String str = context.getApplicationInfo().nativeLibraryDir;
        if (nonEmpty(str)) {
            File file2 = new File(str, FFMPEG_NATIVE_NAME);
            if (file2.exists() && file2.length() > 1024 && file2.canExecute()) {
                appendLog(file, "ffmpeg=native:" + file2.getAbsolutePath());
                return file2;
            }
        }
        File file3 = new File(context.getDir("cinemana_tools", 0), "bin");
        if (!file3.exists() && !file3.mkdirs()) {
            return null;
        }
        File file4 = new File(file3, FFMPEG_NATIVE_NAME);
        if (!file4.exists() || file4.length() < 1024) {
            InputStream inputStreamOpen = context.getAssets().open(FFMPEG_ASSET);
            FileOutputStream fileOutputStream = new FileOutputStream(file4);
            byte[] bArr = new byte[65536];
            while (true) {
                try {
                    int i = inputStreamOpen.read(bArr);
                    if (i <= 0) {
                        break;
                    }
                    fileOutputStream.write(bArr, 0, i);
                } catch (Throwable th) {
                    inputStreamOpen.close();
                    fileOutputStream.close();
                    throw th;
                }
            }
            inputStreamOpen.close();
            fileOutputStream.close();
        }
        file4.setExecutable(true, true);
        appendLog(file, "ffmpeg=private:" + file4.getAbsolutePath() + " canExecute=" + file4.canExecute());
        if (!file4.exists() || file4.length() <= 1024) {
            return null;
        }
        return file4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static File locateVideo(Context context, String str, String str2, String str3, String str4) {
        File fileResolvePath = resolvePath(str);
        if (isVideoCandidate(fileResolvePath) && matchesRequestedEpisode(fileResolvePath, str3, str4)) {
            return fileResolvePath;
        }
        File file = new File(Environment.getExternalStorageDirectory(), ROOT);
        if (!file.exists()) {
            return null;
        }
        File fileExactVideoCandidate = exactVideoCandidate(file, buildExpectedBase(str2, str3, str4), str3, str4);
        if (fileExactVideoCandidate != null) {
            return fileExactVideoCandidate;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return null;
        }
        String strNormalizeName = normalizeName(sanitizeName(str2));
        String strDigitsOnly = digitsOnly(normalizeNumberText(str3));
        String strDigitsOnly2 = digitsOnly(normalizeNumberText(str4));
        int length = fileArrListFiles.length;
        File file2 = null;
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            File file3 = fileArrListFiles[i];
            if (isVideoCandidate(file3) && matchesRequestedEpisode(file3, str3, str4)) {
                String strStripExtension = stripExtension(file3.getName());
                String strNormalizeName2 = normalizeName(strStripExtension);
                String strTitlePartBeforeEpisode = titlePartBeforeEpisode(normalizeName(stripNoSubPrefix(strStripExtension)));
                if (nonEmpty(strNormalizeName) && strNormalizeName.equals(strTitlePartBeforeEpisode)) {
                    String[] strArrExtractSeasonEpisodeDigits = extractSeasonEpisodeDigits(strNormalizeName2);
                    int i3 = (nonEmpty(strDigitsOnly) && strDigitsOnly.equals(strArrExtractSeasonEpisodeDigits[0])) ? 16 : 10;
                    if (nonEmpty(strDigitsOnly2) && strDigitsOnly2.equals(strArrExtractSeasonEpisodeDigits[1])) {
                        i3 += 6;
                    }
                    if (strNormalizeName2.endsWith("s" + strDigitsOnly + "e" + strDigitsOnly2)) {
                        i3 += 3;
                    }
                    if (i3 > i2) {
                        i2 = i3;
                        file2 = file3;
                    }
                }
            }
            i++;
        }
        if (file2 == null || i2 < 16) {
            return null;
        }
        return file2;
    }

    private static String titlePartBeforeEpisode(String str) {
        int i;
        if (!nonEmpty(str)) {
            return BuildConfig.FLAVOR;
        }
        int iIndexOf = str.indexOf(R.styleable.AppCompatTheme_tooltipFrameBackground);
        if (iIndexOf <= 0 || (i = iIndexOf + 1) >= str.length() || !Character.isDigit(str.charAt(i))) {
            return str;
        }
        while (i < str.length() && Character.isDigit(str.charAt(i))) {
            i++;
        }
        if (i >= str.length() || str.charAt(i) != 'e') {
            return str;
        }
        return str.substring(0, iIndexOf);
    }

    private static boolean matchesRequestedEpisode(File file, String str, String str2) {
        if (file == null) {
            return false;
        }
        String[] strArrExtractSeasonEpisodeDigits = extractSeasonEpisodeDigits(normalizeName(stripExtension(file.getName())));
        strArrExtractSeasonEpisodeDigits[0] = digitsOnly(strArrExtractSeasonEpisodeDigits[0]);
        strArrExtractSeasonEpisodeDigits[1] = digitsOnly(strArrExtractSeasonEpisodeDigits[1]);
        String strDigitsOnly = digitsOnly(normalizeNumberText(str));
        String strDigitsOnly2 = digitsOnly(normalizeNumberText(str2));
        boolean z = nonEmpty(strDigitsOnly) && nonEmpty(strDigitsOnly2) && !"0".equals(strDigitsOnly);
        boolean z2 = nonEmpty(strArrExtractSeasonEpisodeDigits[0]) || nonEmpty(strArrExtractSeasonEpisodeDigits[1]);
        if (z) {
            return strDigitsOnly.equals(strArrExtractSeasonEpisodeDigits[0]) && strDigitsOnly2.equals(strArrExtractSeasonEpisodeDigits[1]);
        }
        return !z2;
    }

    private static File exactVideoCandidate(File file, String str, String str2, String str3) {
        if (file == null || !nonEmpty(str)) {
            return null;
        }
        File file2 = new File(file, str + ".mp4");
        if (isVideoCandidate(file2)) {
            return file2;
        }
        return null;
    }

    private static boolean isVideoCandidate(File file) {
        if (file == null || !file.isFile() || file.length() < 1024) {
            return false;
        }
        String lowerCase = file.getName().toLowerCase(Locale.US);
        if (lowerCase.startsWith(".") || lowerCase.endsWith(".mkv.part") || lowerCase.endsWith(".part")) {
            return false;
        }
        return lowerCase.endsWith(".mp4") || lowerCase.endsWith(".mkv") || lowerCase.endsWith(".webm") || lowerCase.endsWith(".mov") || lowerCase.endsWith(".m4v") || lowerCase.endsWith(".ts") || lowerCase.endsWith(".3gp") || lowerCase.endsWith(".avi");
    }

    private static String pad2(String str) {
        String strDigitsOnly = digitsOnly(str);
        return strDigitsOnly.length() == 1 ? "0" + strDigitsOnly : strDigitsOnly;
    }

    private static String digitsOnly(String str) {
        if (!nonEmpty(str)) {
            return BuildConfig.FLAVOR;
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt >= '0' && cCharAt <= '9') {
                sb.append(cCharAt);
            }
        }
        while (sb.length() > 1 && sb.charAt(0) == '0') {
            sb.deleteCharAt(0);
        }
        return sb.toString();
    }

    private static String buildExpectedBase(String str, String str2, String str3) {
        if (!nonEmpty(str)) {
            return BuildConfig.FLAVOR;
        }
        String strSanitizeName = sanitizeName(str);
        String strDigitsOnly = digitsOnly(normalizeNumberText(str2));
        String strDigitsOnly2 = digitsOnly(normalizeNumberText(str3));
        if (nonEmpty(strDigitsOnly) && nonEmpty(strDigitsOnly2) && !"0".equals(strDigitsOnly)) {
            String str4 = " S" + pad2(strDigitsOnly);
            if (strSanitizeName.endsWith(str4)) {
                strSanitizeName = strSanitizeName.substring(0, strSanitizeName.length() - str4.length());
            }
            return strSanitizeName + " S" + pad2(strDigitsOnly) + " E" + pad2(strDigitsOnly2);
        }
        return strSanitizeName;
    }

    private static String sanitizeName(String str) {
        return !nonEmpty(str) ? BuildConfig.FLAVOR : str.replace('/', '_').replace('\\', '_').replace('\n', '_').replace('\r', '_').replace(':', '_');
    }

    private static String stripNoSubPrefix(String str) {
        if (!nonEmpty(str)) {
            return str;
        }
        String strTrim = str.trim();
        if (strTrim.regionMatches(true, 0, "(No Sub) ", 0, 9)) {
            return strTrim.substring(9).trim();
        }
        return strTrim.regionMatches(true, 0, "(No Sub)", 0, 8) ? strTrim.substring(8).trim() : strTrim;
    }

    private static String normalizeName(String str) {
        if (!nonEmpty(str)) {
            return BuildConfig.FLAVOR;
        }
        String lowerCase = str.toLowerCase(Locale.US);
        StringBuilder sb = new StringBuilder(lowerCase.length());
        for (int i = 0; i < lowerCase.length(); i++) {
            char cCharAt = lowerCase.charAt(i);
            if (Character.isLetterOrDigit(cCharAt)) {
                sb.append(cCharAt);
            }
        }
        return sb.toString();
    }

    private static String normalizeNumberText(String str) {
        if (!nonEmpty(str)) {
            return BuildConfig.FLAVOR;
        }
        String strTrim = str.trim();
        while (true) {
            if (strTrim.startsWith("S") || strTrim.startsWith("s") || strTrim.startsWith("E") || strTrim.startsWith("e")) {
                strTrim = strTrim.substring(1);
            } else {
                return strTrim;
            }
        }
    }

    private static String stringProperty(Object obj, String... strArr) {
        if (obj == null) {
            return null;
        }
        Class<?> cls = obj.getClass();
        for (String str : strArr) {
            for (Class<?> superclass = cls; superclass != null; superclass = superclass.getSuperclass()) {
                try {
                    Field declaredField = superclass.getDeclaredField(str);
                    declaredField.setAccessible(true);
                    Object obj2 = declaredField.get(obj);
                    if (obj2 != null) {
                        return String.valueOf(obj2);
                    }
                    continue;
                } catch (Throwable th) {
                }
            }
            try {
                Object objInvoke = cls.getMethod(str, new Class[0]).invoke(obj, new Object[0]);
                if (objInvoke != null) {
                    return String.valueOf(objInvoke);
                }
                continue;
            } catch (Throwable th2) {
            }
        }
        return null;
    }

    private static File resolvePath(String str) {
        String strTrim = trim(str);
        if (!nonEmpty(strTrim) || strTrim.startsWith("content://")) {
            return null;
        }
        File file = new File(strTrim);
        return file.isAbsolute() ? file : new File(Environment.getExternalStorageDirectory(), "Cinemana/work/" + strTrim);
    }

    /* JADX WARN: Code duplicated, block: B:269:0x078c  */
    /* JADX WARN: Code duplicated, block: B:322:0x08ed  */
    /* JADX WARN: Code duplicated, block: B:324:0x08f6  */
    /* JADX WARN: Code duplicated, block: B:327:0x0933 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:333:0x093d A[ADDED_TO_REGION] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v16 */
    /* JADX WARN: Type inference failed for: r12v19 */
    /* JADX WARN: Type inference failed for: r12v2, types: [long] */
    /* JADX WARN: Type inference failed for: r12v21 */
    /* JADX WARN: Type inference failed for: r12v29 */
    /* JADX WARN: Type inference failed for: r12v35 */
    /* JADX WARN: Type inference failed for: r12v38 */
    /* JADX WARN: Type inference failed for: r12v42 */
    /* JADX WARN: Type inference failed for: r12v43 */
    /* JADX WARN: Type inference failed for: r12v44 */
    /* JADX WARN: Type inference failed for: r12v45 */
    /* JADX WARN: Type inference failed for: r12v46 */
    /* JADX WARN: Type inference failed for: r12v47 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r13v15, types: [java.lang.String[]] */
    /* JADX WARN: Type inference failed for: r13v22, types: [java.lang.String[]] */
    /* JADX WARN: Type inference failed for: r2v51, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v53 */
    /* JADX WARN: Type inference failed for: r2v54 */
    private static synchronized boolean promoteDatabase(Context context, Object obj, String str, long j) {
        long j2;
        String strStringProperty;
        Object obj2;
        Object property;
        String str2;
        Object downloadsDao;
        Object obj3;
        ?? r12;
        InvocationTargetException invocationTargetException;
        Context applicationContext;
        long j3;
        long j4;
        long j5;
        long j6;
        Object obj4;
        long j7;
        long j8;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        int i;
        int i2;
        boolean z;
        String str8;
        long j9;
        int i3;
        boolean z2;
        boolean z3;
        long j10;
        ?? r13;
        long j11;
        long j12;
        String str9;
        ArrayList arrayList;
        long j13;
        int i4;
        Object property2;
        long j14;
        ArrayList arrayList2 = new ArrayList();
        String str10 = str == null ? BuildConfig.FLAVOR : str;
        int iIntegerProperty = -1;
        try {
            try {
                if (context.getApplicationContext() != null) {
                    try {
                        applicationContext = context.getApplicationContext();
                    } catch (Throwable th) {
                        th = th;
                        strStringProperty = null;
                        obj2 = null;
                        property = null;
                        str2 = null;
                        downloadsDao = null;
                        j2 = -1;
                        obj3 = null;
                        r12 = j2;
                    }
                } else {
                    applicationContext = context;
                }
                Object objInvoke = applicationContext.getClass().getMethod("h", new Class[0]).invoke(applicationContext, new Object[0]);
                if (objInvoke != null) {
                    try {
                        String strStringProperty2 = stringProperty(obj, "id");
                        int iIntegerProperty2 = integerProperty(obj, "downloadTaskId", -1);
                        if (nonEmpty(strStringProperty2) && nonEmpty(str10)) {
                            Object obj5 = Recovery92.read(context, objInvoke, obj, strStringProperty2);
                            if (obj5 == null) {
                                try {
                                    appendExternalLog(context, "DB_PROMOTE_FAIL: CinemanaDownloadItem row not found id=" + strStringProperty2);
                                    return false;
                                } catch (Throwable th2) {
                                    th = th2;
                                    arrayList2 = arrayList2;
                                    obj3 = objInvoke;
                                    strStringProperty = null;
                                    obj2 = null;
                                    property = null;
                                    str2 = null;
                                    downloadsDao = null;
                                    j4 = -1;
                                }
                            } else {
                                Object obj6 = BuildConfig.FLAVOR;
                                property = readProperty(obj5, "cinemanaDownloadItem", "getCinemanaDownloadItem");
                                if (property == null) {
                                    property = obj;
                                }
                                try {
                                    strStringProperty = stringProperty(property, FileDownloadModel.PATH);
                                    try {
                                        iIntegerProperty = integerProperty(property, "sizeMB", -1);
                                        try {
                                            downloadsDao = getDownloadsDao(applicationContext, context);
                                            if (downloadsDao == null) {
                                                try {
                                                    appendExternalLog(context, "DB_PROMOTE_FAIL: DownloadsDao unavailable");
                                                    return false;
                                                } catch (Throwable th3) {
                                                    th = th3;
                                                    arrayList2 = arrayList2;
                                                    obj3 = objInvoke;
                                                    downloadsDao = downloadsDao;
                                                }
                                            } else {
                                                try {
                                                    arrayList2 = arrayList2;
                                                    try {
                                                        appendExternalLog(context, "DB_PROMOTE_DOWNLOADS_DAO=" + downloadsDao.getClass().getName());
                                                        String strStringProperty3 = stringProperty(property, "title");
                                                        String strStringProperty4 = stringProperty(property, "season");
                                                        String strStringProperty5 = stringProperty(property, "episodeNumber");
                                                        String strStripMarker = DownloadIdentity.stripMarker(buildExpectedBase(strStringProperty3, strStringProperty4, strStringProperty5));
                                                        obj3 = objInvoke;
                                                        try {
                                                            String strStripMarker2 = DownloadIdentity.stripMarker(stripNoSubPrefix(stripExtension(new File(str10).getName())));
                                                            if (nonEmpty(strStripMarker)) {
                                                                try {
                                                                    if (strStripMarker.equals(strStripMarker2)) {
                                                                        if (str10.toLowerCase(Locale.US).endsWith(".mkv")) {
                                                                            try {
                                                                                str3 = str10.substring(0, str10.length() - 4) + ".mp4";
                                                                            } catch (Throwable th4) {
                                                                                th = th4;
                                                                                downloadsDao = downloadsDao;
                                                                                arrayList2 = arrayList2;
                                                                                obj3 = obj3;
                                                                            }
                                                                        } else {
                                                                            str3 = null;
                                                                        }
                                                                        List<?> allDownloads = readAllDownloads(downloadsDao);
                                                                        String str11 = "x";
                                                                        if (allDownloads != null) {
                                                                            try {
                                                                                Iterator<?> it = allDownloads.iterator();
                                                                                downloadsDao = downloadsDao;
                                                                                int i5 = Integer.MIN_VALUE;
                                                                                int i6 = -1;
                                                                                boolean z4 = false;
                                                                                obj2 = null;
                                                                                String str12 = null;
                                                                                String str13 = null;
                                                                                long jLongProperty = -1;
                                                                                while (it.hasNext()) {
                                                                                    try {
                                                                                        str10 = str10;
                                                                                        Object next = it.next();
                                                                                        if (next != null) {
                                                                                            Iterator<?> it2 = it;
                                                                                            String str14 = strStringProperty5;
                                                                                            int iIntegerProperty3 = integerProperty(next, "r", -1);
                                                                                            String str15 = strStringProperty4;
                                                                                            String strStringProperty6 = stringProperty(next, "s");
                                                                                            String strStringProperty7 = stringProperty(next, str11);
                                                                                            String str16 = str11;
                                                                                            String strStringProperty8 = stringProperty(next, "u");
                                                                                            if (nonEmpty(strStringProperty2) && nonEmpty(strStringProperty6) && strStringProperty2.equals(strStringProperty6)) {
                                                                                                i3 = 5000;
                                                                                                z2 = true;
                                                                                            } else {
                                                                                                i3 = 0;
                                                                                                z2 = false;
                                                                                            }
                                                                                            if (strStringProperty7 != null && strStringProperty7.equals(strStringProperty)) {
                                                                                                i3 += 1000;
                                                                                                z2 = true;
                                                                                            }
                                                                                            if (strStringProperty7 != null && str3 != null && strStringProperty7.equals(str3)) {
                                                                                                i3 += 900;
                                                                                                z2 = true;
                                                                                            }
                                                                                            if (iIntegerProperty3 == iIntegerProperty2 && iIntegerProperty2 >= 0) {
                                                                                                i3 += 250;
                                                                                            }
                                                                                            if (nonEmpty(strStringProperty3) && nonEmpty(strStringProperty8) && strStringProperty3.equals(strStringProperty8)) {
                                                                                                i3 += R.styleable.AppCompatTheme_windowFixedHeightMajor;
                                                                                            }
                                                                                            if (nonEmpty(strStringProperty3) && nonEmpty(strStringProperty8)) {
                                                                                                z3 = z2;
                                                                                                if (normalizeKey(strStringProperty3).equals(normalizeKey(strStringProperty8))) {
                                                                                                    i3 += 80;
                                                                                                }
                                                                                            } else {
                                                                                                z3 = z2;
                                                                                            }
                                                                                            if (strStringProperty7 != null && nonEmpty(strStringProperty3) && normalizeKey(strStringProperty7).contains(normalizeKey(strStringProperty3))) {
                                                                                                i3 += 30;
                                                                                            }
                                                                                            if (i3 > i5) {
                                                                                                int i7 = i3;
                                                                                                try {
                                                                                                    jLongProperty = longProperty(next, "y", -1L);
                                                                                                    i5 = i7;
                                                                                                    str13 = strStringProperty7;
                                                                                                    obj2 = next;
                                                                                                    i6 = iIntegerProperty3;
                                                                                                    str12 = strStringProperty6;
                                                                                                    z4 = z3;
                                                                                                } catch (Throwable th5) {
                                                                                                    th = th5;
                                                                                                    str2 = strStringProperty7;
                                                                                                    r12 = jLongProperty;
                                                                                                    if (th instanceof InvocationTargetException) {
                                                                                                        invocationTargetException = (InvocationTargetException) th;
                                                                                                        if (invocationTargetException.getCause() != null) {
                                                                                                            th = invocationTargetException.getCause();
                                                                                                        }
                                                                                                    }
                                                                                                    appendExternalLog(context, "DB_PROMOTE_EXCEPTION=" + th.getClass().getName() + ":" + String.valueOf(th.getMessage()));
                                                                                                    Log.e(TAG, "promoteDatabase failed", th);
                                                                                                    if (downloadsDao != null) {
                                                                                                        try {
                                                                                                            restoreDownloadsRow(downloadsDao, obj2, str2, r12);
                                                                                                        } catch (Throwable th6) {
                                                                                                        }
                                                                                                    }
                                                                                                    if (obj3 != null) {
                                                                                                        try {
                                                                                                            restoreCinemanaItem(obj3, property, strStringProperty, iIntegerProperty);
                                                                                                        } catch (Throwable th7) {
                                                                                                        }
                                                                                                    }
                                                                                                    restoreSubtitleSnapshots(obj3, arrayList2);
                                                                                                    return false;
                                                                                                }
                                                                                            }
                                                                                            it = it2;
                                                                                            strStringProperty5 = str14;
                                                                                            strStringProperty4 = str15;
                                                                                            str11 = str16;
                                                                                        }
                                                                                    } catch (Throwable th8) {
                                                                                        th = th8;
                                                                                        str2 = str13;
                                                                                    }
                                                                                }
                                                                                str4 = strStringProperty4;
                                                                                str5 = strStringProperty5;
                                                                                str6 = str11;
                                                                                str7 = str10;
                                                                                i = i5;
                                                                                i2 = i6;
                                                                                z = z4;
                                                                                obj2 = obj2;
                                                                                str8 = str12;
                                                                                str2 = str13;
                                                                                j9 = jLongProperty;
                                                                            } catch (Throwable th9) {
                                                                                th = th9;
                                                                                arrayList2 = arrayList2;
                                                                                obj3 = obj3;
                                                                                downloadsDao = downloadsDao;
                                                                                obj2 = null;
                                                                                str2 = null;
                                                                                r12 = -1;
                                                                            }
                                                                        } else {
                                                                            str4 = strStringProperty4;
                                                                            str5 = strStringProperty5;
                                                                            str6 = "x";
                                                                            str7 = str10;
                                                                            downloadsDao = downloadsDao;
                                                                            i = Integer.MIN_VALUE;
                                                                            z = false;
                                                                            obj2 = null;
                                                                            str8 = null;
                                                                            str2 = null;
                                                                            j9 = -1;
                                                                            i2 = -1;
                                                                        }
                                                                        String str17 = str3;
                                                                        long j15 = j9;
                                                                        if (obj2 == null) {
                                                                            j15 = j15;
                                                                            strStringProperty = strStringProperty;
                                                                            appendExternalLog(context, "DB_PROMOTE_FAIL: Downloads row could not be matched taskId=" + iIntegerProperty2 + " matchedTaskId=" + i2 + " score=" + i + " exactPath=" + z + " title=" + strStringProperty3 + " originalPath=" + strStringProperty + " expectedVideo=" + str17);
                                                                            return false;
                                                                        }
                                                                        try {
                                                                            if (nonEmpty(str8)) {
                                                                                if (z || i >= 120) {
                                                                                    if (iIntegerProperty2 != i2) {
                                                                                        try {
                                                                                            appendExternalLog(context, "DB_PROMOTE_ID_RECOVERED oldTaskId=" + iIntegerProperty2 + " recoveredTaskId=" + i2 + " score=" + i + " exactPath=" + z + " path=" + str2 + " title=" + strStringProperty3);
                                                                                            setField(property, "downloadTaskId", Integer.valueOf(i2));
                                                                                            setField(obj, "downloadTaskId", Integer.valueOf(i2));
                                                                                            iIntegerProperty2 = i2;
                                                                                        } catch (Throwable th10) {
                                                                                            th = th10;
                                                                                            arrayList2 = arrayList2;
                                                                                            obj3 = obj3;
                                                                                            strStringProperty = strStringProperty;
                                                                                            downloadsDao = downloadsDao;
                                                                                        }
                                                                                    }
                                                                                    try {
                                                                                        DownloadTitle127.cleanRows(obj2, property);
                                                                                        appendExternalLog(context, "DB_PROMOTE_DOWNLOADS_MATCH task_id=" + iIntegerProperty2 + " external_id=" + str8 + " score=" + i + " exactPath=" + z + " originalPath=" + str2 + " title=" + strStringProperty3 + " season=" + str4 + " episode=" + str5);
                                                                                        String str18 = str7;
                                                                                        ?? r2 = str6;
                                                                                        setField(obj2, r2, str18);
                                                                                        setField(obj2, "y", Long.valueOf(j));
                                                                                        downloadsDao = downloadsDao;
                                                                                        try {
                                                                                            appendExternalLog(context, "DB_PROMOTE_DOWNLOADS_RESULT=" + String.valueOf(callDownloadsUpdate(downloadsDao, obj2)));
                                                                                            Object objFindDownloadsRow = findDownloadsRow(downloadsDao, iIntegerProperty2, str8);
                                                                                            if (objFindDownloadsRow == null) {
                                                                                                try {
                                                                                                    appendExternalLog(context, "DB_PROMOTE_FAIL: Downloads row disappeared after DAO update");
                                                                                                    return false;
                                                                                                } catch (Throwable th11) {
                                                                                                    th = th11;
                                                                                                    arrayList2 = arrayList2;
                                                                                                    obj3 = obj3;
                                                                                                    strStringProperty = strStringProperty;
                                                                                                }
                                                                                            } else {
                                                                                                String strStringProperty9 = stringProperty(objFindDownloadsRow, new String[]{r2});
                                                                                                long jLongProperty2 = longProperty(objFindDownloadsRow, "y", -1L);
                                                                                                try {
                                                                                                    if (!str18.equals(strStringProperty9)) {
                                                                                                        try {
                                                                                                            appendExternalLog(context, "DB_PROMOTE_FAIL: Downloads.path=" + strStringProperty9 + " expected=" + str18);
                                                                                                            restoreDownloadsRow(downloadsDao, obj2, str2, j15);
                                                                                                            return false;
                                                                                                        } catch (Throwable th12) {
                                                                                                            th = th12;
                                                                                                            r2 = j15;
                                                                                                            r13 = r2;
                                                                                                            arrayList2 = arrayList2;
                                                                                                            obj3 = obj3;
                                                                                                            strStringProperty = strStringProperty;
                                                                                                            r12 = r13;
                                                                                                            if (th instanceof InvocationTargetException) {
                                                                                                                invocationTargetException = (InvocationTargetException) th;
                                                                                                                if (invocationTargetException.getCause() != null) {
                                                                                                                    th = invocationTargetException.getCause();
                                                                                                                }
                                                                                                            }
                                                                                                            appendExternalLog(context, "DB_PROMOTE_EXCEPTION=" + th.getClass().getName() + ":" + String.valueOf(th.getMessage()));
                                                                                                            Log.e(TAG, "promoteDatabase failed", th);
                                                                                                            if (downloadsDao != null) {
                                                                                                                restoreDownloadsRow(downloadsDao, obj2, str2, r12);
                                                                                                            }
                                                                                                            if (obj3 != null) {
                                                                                                                restoreCinemanaItem(obj3, property, strStringProperty, iIntegerProperty);
                                                                                                            }
                                                                                                            restoreSubtitleSnapshots(obj3, arrayList2);
                                                                                                            return false;
                                                                                                        }
                                                                                                    }
                                                                                                    j11 = j15;
                                                                                                    try {
                                                                                                        appendExternalLog(context, "DB_PROMOTE_DOWNLOADS_VERIFIED path=" + strStringProperty9 + " size=" + jLongProperty2);
                                                                                                        setField(property, FileDownloadModel.PATH, str18);
                                                                                                        long j16 = 2147483647L;
                                                                                                        if (j > 0) {
                                                                                                            long j17 = ((j + 1048576) - 1) / 1048576;
                                                                                                            if (j17 <= 2147483647L) {
                                                                                                                j16 = j17;
                                                                                                            }
                                                                                                            str9 = "sizeMB";
                                                                                                            setField(property, str9, Integer.valueOf((int) j16));
                                                                                                        } else {
                                                                                                            str9 = r2;
                                                                                                        }
                                                                                                        Class<?> cls = Class.forName("com.shabakaty.downloader.kw0");
                                                                                                        String str19 = str9;
                                                                                                        obj3 = obj3;
                                                                                                        try {
                                                                                                            property = property;
                                                                                                            try {
                                                                                                                appendExternalLog(context, "DB_PROMOTE_ITEM_RESULT=" + String.valueOf(((Callable) Class.forName("com.shabakaty.downloader.kw0$h").getConstructor(cls, Class.forName("com.shabakaty.cinemana.data.db.downloads.CinemanaDownloadItem")).newInstance(obj3, property)).call()));
                                                                                                                Object combinedById = readCombinedById(obj3, strStringProperty2);
                                                                                                                if (combinedById == null) {
                                                                                                                    appendExternalLog(context, "DB_PROMOTE_FAIL: post-update Cinemana query returned null");
                                                                                                                    restoreDownloadsRow(downloadsDao, obj2, str2, j11);
                                                                                                                    return false;
                                                                                                                }
                                                                                                                String str20 = str8;
                                                                                                                int i8 = iIntegerProperty2;
                                                                                                                String strStringProperty10 = stringProperty(readProperty(combinedById, "cinemanaDownloadItem", "getCinemanaDownloadItem"), FileDownloadModel.PATH);
                                                                                                                if (!str18.equals(strStringProperty10)) {
                                                                                                                    appendExternalLog(context, "DB_PROMOTE_FAIL: CinemanaDownloadItem.path=" + strStringProperty10 + " expected=" + str18);
                                                                                                                    restoreDownloadsRow(downloadsDao, obj2, str2, j11);
                                                                                                                    return false;
                                                                                                                }
                                                                                                                Class<?> cls2 = Class.forName("com.shabakaty.cinemana.data.db.downloads.SubtitleDb");
                                                                                                                Class<?> cls3 = Class.forName("com.shabakaty.downloader.kw0$d");
                                                                                                                try {
                                                                                                                    Object property3 = readProperty(combinedById, "subtitles", "getSubtitles");
                                                                                                                    if (property3 instanceof Iterable) {
                                                                                                                        try {
                                                                                                                            Iterator it3 = ((Iterable) property3).iterator();
                                                                                                                            while (it3.hasNext()) {
                                                                                                                                Object next2 = it3.next();
                                                                                                                                if (next2 != null) {
                                                                                                                                    String strStringProperty11 = stringProperty(next2, "file");
                                                                                                                                    if (nonEmpty(strStringProperty11)) {
                                                                                                                                        arrayList = arrayList2;
                                                                                                                                        try {
                                                                                                                                            arrayList.add(new Object[]{next2, strStringProperty11});
                                                                                                                                            Iterator it4 = it3;
                                                                                                                                            Object obj7 = obj6;
                                                                                                                                            setField(next2, "file", obj7);
                                                                                                                                            obj6 = obj7;
                                                                                                                                            appendExternalLog(context, "DB_PROMOTE_SUBTITLE_RESULT=" + String.valueOf(((Callable) cls3.getConstructor(cls, cls2).newInstance(obj3, next2)).call()));
                                                                                                                                            it3 = it4;
                                                                                                                                            arrayList2 = arrayList;
                                                                                                                                        } catch (Throwable th13) {
                                                                                                                                            th = th13;
                                                                                                                                            arrayList2 = arrayList;
                                                                                                                                            strStringProperty = strStringProperty;
                                                                                                                                            r12 = j11;
                                                                                                                                            if (th instanceof InvocationTargetException) {
                                                                                                                                                invocationTargetException = (InvocationTargetException) th;
                                                                                                                                                if (invocationTargetException.getCause() != null) {
                                                                                                                                                    th = invocationTargetException.getCause();
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                            appendExternalLog(context, "DB_PROMOTE_EXCEPTION=" + th.getClass().getName() + ":" + String.valueOf(th.getMessage()));
                                                                                                                                            Log.e(TAG, "promoteDatabase failed", th);
                                                                                                                                            if (downloadsDao != null) {
                                                                                                                                                restoreDownloadsRow(downloadsDao, obj2, str2, r12);
                                                                                                                                            }
                                                                                                                                            if (obj3 != null) {
                                                                                                                                                restoreCinemanaItem(obj3, property, strStringProperty, iIntegerProperty);
                                                                                                                                            }
                                                                                                                                            restoreSubtitleSnapshots(obj3, arrayList2);
                                                                                                                                            return false;
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                }
                                                                                                                            }
                                                                                                                            arrayList = arrayList2;
                                                                                                                        } catch (Throwable th14) {
                                                                                                                            th = th14;
                                                                                                                            arrayList2 = arrayList2;
                                                                                                                            strStringProperty = strStringProperty;
                                                                                                                            r12 = j11;
                                                                                                                            if (th instanceof InvocationTargetException) {
                                                                                                                                invocationTargetException = (InvocationTargetException) th;
                                                                                                                                if (invocationTargetException.getCause() != null) {
                                                                                                                                    th = invocationTargetException.getCause();
                                                                                                                                }
                                                                                                                            }
                                                                                                                            appendExternalLog(context, "DB_PROMOTE_EXCEPTION=" + th.getClass().getName() + ":" + String.valueOf(th.getMessage()));
                                                                                                                            Log.e(TAG, "promoteDatabase failed", th);
                                                                                                                            if (downloadsDao != null) {
                                                                                                                                restoreDownloadsRow(downloadsDao, obj2, str2, r12);
                                                                                                                            }
                                                                                                                            if (obj3 != null) {
                                                                                                                                restoreCinemanaItem(obj3, property, strStringProperty, iIntegerProperty);
                                                                                                                            }
                                                                                                                            restoreSubtitleSnapshots(obj3, arrayList2);
                                                                                                                            return false;
                                                                                                                        }
                                                                                                                    } else {
                                                                                                                        arrayList = arrayList2;
                                                                                                                    }
                                                                                                                    try {
                                                                                                                        Object combinedById2 = readCombinedById(obj3, strStringProperty2);
                                                                                                                        if (combinedById2 == null) {
                                                                                                                            property2 = null;
                                                                                                                            i4 = 1;
                                                                                                                        } else {
                                                                                                                            i4 = 1;
                                                                                                                            property2 = readProperty(combinedById2, "cinemanaDownloadItem", "getCinemanaDownloadItem");
                                                                                                                        }
                                                                                                                        String[] strArr = new String[i4];
                                                                                                                        strArr[0] = FileDownloadModel.PATH;
                                                                                                                        String strStringProperty12 = stringProperty(property2, strArr);
                                                                                                                        Object objFindDownloadsRow2 = findDownloadsRow(downloadsDao, i8, str20);
                                                                                                                        String strStringProperty13 = objFindDownloadsRow2 == null ? null : stringProperty(objFindDownloadsRow2, new String[]{r2});
                                                                                                                        if (str18.equals(strStringProperty12) && str18.equals(strStringProperty13)) {
                                                                                                                            setField(obj, FileDownloadModel.PATH, str18);
                                                                                                                            if (j > 0) {
                                                                                                                                long j18 = ((j + 1048576) - 1) / 1048576;
                                                                                                                                long j19 = 2147483647L;
                                                                                                                                if (j18 <= 2147483647L) {
                                                                                                                                    j19 = j18;
                                                                                                                                }
                                                                                                                                setField(obj, str19, Integer.valueOf((int) j19));
                                                                                                                            }
                                                                                                                            appendExternalLog(context, "DB_PROMOTE_SUCCESS path=" + str18 + " task_id=" + i8 + " external_id=" + str20 + " item_id=" + strStringProperty2);
                                                                                                                            appendExternalLog(context, "PRIMARY_IDENTITY_VERIFIED=downloadTaskId:" + i8 + ";externalId:" + str20 + ";itemId:" + strStringProperty2 + ";path:" + str18);
                                                                                                                            return true;
                                                                                                                        }
                                                                                                                        appendExternalLog(context, "DB_PROMOTE_FAIL: cross-db verification failed cinemana=" + strStringProperty12 + " downloads=" + strStringProperty13 + " expected=" + str18);
                                                                                                                        j13 = j11;
                                                                                                                        try {
                                                                                                                            restoreDownloadsRow(downloadsDao, obj2, str2, j13);
                                                                                                                            return false;
                                                                                                                        } catch (Throwable th15) {
                                                                                                                            th = th15;
                                                                                                                            j10 = j13;
                                                                                                                            arrayList2 = arrayList;
                                                                                                                            property = property;
                                                                                                                            r13 = j10;
                                                                                                                            strStringProperty = strStringProperty;
                                                                                                                            r12 = r13;
                                                                                                                            if (th instanceof InvocationTargetException) {
                                                                                                                                invocationTargetException = (InvocationTargetException) th;
                                                                                                                                if (invocationTargetException.getCause() != null) {
                                                                                                                                    th = invocationTargetException.getCause();
                                                                                                                                }
                                                                                                                            }
                                                                                                                            appendExternalLog(context, "DB_PROMOTE_EXCEPTION=" + th.getClass().getName() + ":" + String.valueOf(th.getMessage()));
                                                                                                                            Log.e(TAG, "promoteDatabase failed", th);
                                                                                                                            if (downloadsDao != null) {
                                                                                                                                restoreDownloadsRow(downloadsDao, obj2, str2, r12);
                                                                                                                            }
                                                                                                                            if (obj3 != null) {
                                                                                                                                restoreCinemanaItem(obj3, property, strStringProperty, iIntegerProperty);
                                                                                                                            }
                                                                                                                            restoreSubtitleSnapshots(obj3, arrayList2);
                                                                                                                            return false;
                                                                                                                        }
                                                                                                                    } catch (Throwable th16) {
                                                                                                                        th = th16;
                                                                                                                        j13 = j11;
                                                                                                                    }
                                                                                                                } catch (Throwable th17) {
                                                                                                                    th = th17;
                                                                                                                    j11 = j11;
                                                                                                                    j12 = j11;
                                                                                                                    property = property;
                                                                                                                    arrayList2 = arrayList2;
                                                                                                                    r13 = j12;
                                                                                                                    strStringProperty = strStringProperty;
                                                                                                                    r12 = r13;
                                                                                                                }
                                                                                                            } catch (Throwable th18) {
                                                                                                                th = th18;
                                                                                                            }
                                                                                                        } catch (Throwable th19) {
                                                                                                            th = th19;
                                                                                                            j12 = j11;
                                                                                                        }
                                                                                                    } catch (Throwable th20) {
                                                                                                        th = th20;
                                                                                                        obj3 = obj3;
                                                                                                    }
                                                                                                } catch (Throwable th21) {
                                                                                                    th = th21;
                                                                                                }
                                                                                            }
                                                                                        } catch (Throwable th22) {
                                                                                            th = th22;
                                                                                            j11 = j15;
                                                                                        }
                                                                                    } catch (Throwable th23) {
                                                                                        th = th23;
                                                                                        downloadsDao = downloadsDao;
                                                                                    }
                                                                                    j12 = j11;
                                                                                    arrayList2 = arrayList2;
                                                                                    r13 = j12;
                                                                                    strStringProperty = strStringProperty;
                                                                                    r12 = r13;
                                                                                }
                                                                                r12 = j15;
                                                                            }
                                                                            j15 = j15;
                                                                            try {
                                                                                strStringProperty = strStringProperty;
                                                                                try {
                                                                                    appendExternalLog(context, "DB_PROMOTE_FAIL: Downloads row could not be matched taskId=" + iIntegerProperty2 + " matchedTaskId=" + i2 + " score=" + i + " exactPath=" + z + " title=" + strStringProperty3 + " originalPath=" + strStringProperty + " expectedVideo=" + str17);
                                                                                    return false;
                                                                                } catch (Throwable th24) {
                                                                                    th = th24;
                                                                                    property = property;
                                                                                    r12 = j15;
                                                                                    if (th instanceof InvocationTargetException) {
                                                                                        invocationTargetException = (InvocationTargetException) th;
                                                                                        if (invocationTargetException.getCause() != null) {
                                                                                            th = invocationTargetException.getCause();
                                                                                        }
                                                                                    }
                                                                                    appendExternalLog(context, "DB_PROMOTE_EXCEPTION=" + th.getClass().getName() + ":" + String.valueOf(th.getMessage()));
                                                                                    Log.e(TAG, "promoteDatabase failed", th);
                                                                                    if (downloadsDao != null) {
                                                                                        restoreDownloadsRow(downloadsDao, obj2, str2, r12);
                                                                                    }
                                                                                    if (obj3 != null) {
                                                                                        restoreCinemanaItem(obj3, property, strStringProperty, iIntegerProperty);
                                                                                    }
                                                                                    restoreSubtitleSnapshots(obj3, arrayList2);
                                                                                    return false;
                                                                                }
                                                                            } catch (Throwable th25) {
                                                                                th = th25;
                                                                                strStringProperty = strStringProperty;
                                                                            }
                                                                        } catch (Throwable th26) {
                                                                            th = th26;
                                                                            arrayList2 = arrayList2;
                                                                            obj3 = obj3;
                                                                            downloadsDao = downloadsDao;
                                                                            j10 = j15;
                                                                        }
                                                                        if (th instanceof InvocationTargetException) {
                                                                            invocationTargetException = (InvocationTargetException) th;
                                                                            if (invocationTargetException.getCause() != null) {
                                                                                th = invocationTargetException.getCause();
                                                                            }
                                                                        }
                                                                        appendExternalLog(context, "DB_PROMOTE_EXCEPTION=" + th.getClass().getName() + ":" + String.valueOf(th.getMessage()));
                                                                        Log.e(TAG, "promoteDatabase failed", th);
                                                                        if (downloadsDao != null && obj2 != null) {
                                                                            restoreDownloadsRow(downloadsDao, obj2, str2, r12);
                                                                        }
                                                                        if (obj3 != null && property != null) {
                                                                            restoreCinemanaItem(obj3, property, strStringProperty, iIntegerProperty);
                                                                        }
                                                                        restoreSubtitleSnapshots(obj3, arrayList2);
                                                                        return false;
                                                                    }
                                                                    j14 = -1;
                                                                } catch (Throwable th27) {
                                                                    th = th27;
                                                                    strStringProperty = strStringProperty;
                                                                    arrayList2 = arrayList2;
                                                                    obj3 = obj3;
                                                                    j7 = -1;
                                                                    j8 = j7;
                                                                }
                                                                iIntegerProperty = iIntegerProperty;
                                                                obj2 = null;
                                                                str2 = null;
                                                                r12 = j8;
                                                                if (th instanceof InvocationTargetException) {
                                                                    invocationTargetException = (InvocationTargetException) th;
                                                                    if (invocationTargetException.getCause() != null) {
                                                                        th = invocationTargetException.getCause();
                                                                    }
                                                                }
                                                                appendExternalLog(context, "DB_PROMOTE_EXCEPTION=" + th.getClass().getName() + ":" + String.valueOf(th.getMessage()));
                                                                Log.e(TAG, "promoteDatabase failed", th);
                                                                if (downloadsDao != null) {
                                                                    restoreDownloadsRow(downloadsDao, obj2, str2, r12);
                                                                }
                                                                if (obj3 != null) {
                                                                    restoreCinemanaItem(obj3, property, strStringProperty, iIntegerProperty);
                                                                }
                                                                restoreSubtitleSnapshots(obj3, arrayList2);
                                                                return false;
                                                            }
                                                            j14 = -1;
                                                            try {
                                                                appendExternalLog(context, "DB_PROMOTE_FAIL: identity mismatch expected=" + strStripMarker + " actual=" + strStripMarker2 + " itemId=" + strStringProperty2 + " taskId=" + iIntegerProperty2);
                                                                return false;
                                                            } catch (Throwable th28) {
                                                                th = th28;
                                                                obj3 = obj3;
                                                                downloadsDao = downloadsDao;
                                                                j8 = j14;
                                                                property = property;
                                                            }
                                                        } catch (Throwable th29) {
                                                            th = th29;
                                                            arrayList2 = arrayList2;
                                                            obj4 = obj3;
                                                            j7 = -1;
                                                            obj3 = obj4;
                                                            j8 = j7;
                                                            iIntegerProperty = iIntegerProperty;
                                                            obj2 = null;
                                                            str2 = null;
                                                            r12 = j8;
                                                            if (th instanceof InvocationTargetException) {
                                                                invocationTargetException = (InvocationTargetException) th;
                                                                if (invocationTargetException.getCause() != null) {
                                                                    th = invocationTargetException.getCause();
                                                                }
                                                            }
                                                            appendExternalLog(context, "DB_PROMOTE_EXCEPTION=" + th.getClass().getName() + ":" + String.valueOf(th.getMessage()));
                                                            Log.e(TAG, "promoteDatabase failed", th);
                                                            if (downloadsDao != null) {
                                                                restoreDownloadsRow(downloadsDao, obj2, str2, r12);
                                                            }
                                                            if (obj3 != null) {
                                                                restoreCinemanaItem(obj3, property, strStringProperty, iIntegerProperty);
                                                            }
                                                            restoreSubtitleSnapshots(obj3, arrayList2);
                                                            return false;
                                                        }
                                                    } catch (Throwable th30) {
                                                        th = th30;
                                                        obj4 = objInvoke;
                                                        arrayList2 = arrayList2;
                                                    }
                                                } catch (Throwable th31) {
                                                    th = th31;
                                                    arrayList2 = arrayList2;
                                                    obj4 = objInvoke;
                                                }
                                            }
                                            obj2 = null;
                                            str2 = null;
                                        } catch (Throwable th32) {
                                            th = th32;
                                            arrayList2 = arrayList2;
                                            strStringProperty = strStringProperty;
                                            obj3 = objInvoke;
                                            r12 = -1;
                                            iIntegerProperty = iIntegerProperty;
                                            obj2 = null;
                                            str2 = null;
                                            downloadsDao = null;
                                        }
                                    } catch (Throwable th33) {
                                        th = th33;
                                        strStringProperty = strStringProperty;
                                        obj3 = objInvoke;
                                        j6 = -1;
                                        obj2 = null;
                                        j5 = j6;
                                        str2 = null;
                                        downloadsDao = null;
                                        j4 = j5;
                                        iIntegerProperty = -1;
                                        r12 = j4;
                                    }
                                } catch (Throwable th34) {
                                    th = th34;
                                    obj3 = objInvoke;
                                    j6 = -1;
                                    strStringProperty = null;
                                }
                            }
                        } else {
                            j3 = -1;
                            try {
                                appendExternalLog(context, "DB_PROMOTE_FAIL: missing identity itemId=" + strStringProperty2 + " taskId=" + iIntegerProperty2 + " mkv=" + str10);
                                return false;
                            } catch (Throwable th35) {
                                th = th35;
                            }
                        }
                    } catch (Throwable th36) {
                        th = th36;
                        arrayList2 = arrayList2;
                        objInvoke = objInvoke;
                        j3 = -1;
                    }
                    obj3 = objInvoke;
                    j5 = j3;
                    strStringProperty = null;
                    obj2 = null;
                    property = null;
                    str2 = null;
                    downloadsDao = null;
                    j4 = j5;
                    iIntegerProperty = -1;
                    r12 = j4;
                    if (th instanceof InvocationTargetException) {
                        invocationTargetException = (InvocationTargetException) th;
                        if (invocationTargetException.getCause() != null) {
                            th = invocationTargetException.getCause();
                        }
                    }
                    appendExternalLog(context, "DB_PROMOTE_EXCEPTION=" + th.getClass().getName() + ":" + String.valueOf(th.getMessage()));
                    Log.e(TAG, "promoteDatabase failed", th);
                    if (downloadsDao != null) {
                        restoreDownloadsRow(downloadsDao, obj2, str2, r12);
                    }
                    if (obj3 != null) {
                        restoreCinemanaItem(obj3, property, strStringProperty, iIntegerProperty);
                    }
                    restoreSubtitleSnapshots(obj3, arrayList2);
                    return false;
                }
                try {
                    appendExternalLog(context, "DB_PROMOTE_FAIL: downloadDao is null");
                    return false;
                } catch (Throwable th37) {
                    th = th37;
                    arrayList2 = arrayList2;
                    obj3 = objInvoke;
                    strStringProperty = null;
                    obj2 = null;
                    property = null;
                    str2 = null;
                    downloadsDao = null;
                }
                r12 = -1;
            } catch (Throwable th38) {
                th = th38;
                j2 = -1;
                strStringProperty = null;
                obj2 = null;
                property = null;
                str2 = null;
                downloadsDao = null;
                iIntegerProperty = -1;
            }
            restoreSubtitleSnapshots(obj3, arrayList2);
            return false;
        } catch (Throwable th39) {
            return false;
        }
        if (th instanceof InvocationTargetException) {
            invocationTargetException = (InvocationTargetException) th;
            if (invocationTargetException.getCause() != null) {
                th = invocationTargetException.getCause();
            }
        }
        appendExternalLog(context, "DB_PROMOTE_EXCEPTION=" + th.getClass().getName() + ":" + String.valueOf(th.getMessage()));
        Log.e(TAG, "promoteDatabase failed", th);
        if (downloadsDao != null) {
            restoreDownloadsRow(downloadsDao, obj2, str2, r12);
        }
        if (obj3 != null) {
            restoreCinemanaItem(obj3, property, strStringProperty, iIntegerProperty);
        }
    }

    private static Object getDownloadsDao(Context context, Context context2) throws Exception {
        String packageName = context.getPackageName();
        String[] strArrSplit = packageName.split("\\.");
        if (strArrSplit.length != 0) {
            packageName = strArrSplit[strArrSplit.length - 1];
        }
        String str = "shabakaty." + packageName + ".downloads.database";
        appendExternalLog(context2, "DB_PROMOTE_DOWNLOADS_DB_NAME=" + str);
        Class<?> cls = Class.forName("com.shabakaty.downloader.data.db.DownloadsDatabase");
        Object objInvoke = Class.forName("com.shabakaty.downloader.ut3").getMethod("a", Context.class, Class.class, String.class).invoke(null, context, cls, str);
        Object objInvoke2 = objInvoke.getClass().getMethod("b", new Class[0]).invoke(objInvoke, new Object[0]);
        Object objInvoke3 = cls.getMethod("p", new Class[0]).invoke(objInvoke2, new Object[0]);
        appendExternalLog(context2, "DB_PROMOTE_DOWNLOADS_DB_CLASS=" + objInvoke2.getClass().getName());
        appendExternalLog(context2, "DB_PROMOTE_DOWNLOADS_DAO=" + (objInvoke3 == null ? "null" : objInvoke3.getClass().getName()));
        return objInvoke3;
    }

    private static List<?> readAllDownloads(Object obj) throws Exception {
        Class<?> cls = Class.forName("com.shabakaty.downloader.lz0");
        Class<?> cls2 = Class.forName("com.shabakaty.downloader.yt3");
        Object objCall = ((Callable) Class.forName("com.shabakaty.downloader.lz0$c").getConstructor(cls, cls2).newInstance(obj, cls2.getMethod("a", String.class, Integer.TYPE).invoke(null, "SELECT * FROM Downloads", 0))).call();
        return objCall instanceof List ? (List) objCall : Collections.emptyList();
    }

    private static Object findDownloadsRow(Object obj, int i, String str) throws Exception {
        if (obj == null || !nonEmpty(str)) {
            return null;
        }
        for (Object obj2 : readAllDownloads(obj)) {
            int iIntegerProperty = integerProperty(obj2, "r", -1);
            String strStringProperty = stringProperty(obj2, "s");
            if (iIntegerProperty == i && str.equals(strStringProperty)) {
                return obj2;
            }
        }
        return null;
    }

    private static Object callDownloadsUpdate(Object obj, Object obj2) throws Exception {
        return ((Callable) Class.forName("com.shabakaty.downloader.lz0$m").getConstructor(Class.forName("com.shabakaty.downloader.lz0"), Class.forName("com.shabakaty.downloader.pw0")).newInstance(obj, obj2)).call();
    }

    private static void restoreDownloadsRow(Object obj, Object obj2, String str, long j) throws Exception {
        if (obj == null || obj2 == null) {
            return;
        }
        if (str != null) {
            setField(obj2, "x", str);
        }
        if (j >= 0) {
            setField(obj2, "y", Long.valueOf(j));
        }
        callDownloadsUpdate(obj, obj2);
    }

    private static void restoreSubtitleSnapshots(Object obj, List<Object[]> list) throws Exception {
        Object obj2;
        if (obj == null || list == null) {
            return;
        }
        Class<?> cls = Class.forName("com.shabakaty.downloader.kw0");
        Class<?> cls2 = Class.forName("com.shabakaty.cinemana.data.db.downloads.SubtitleDb");
        Class<?> cls3 = Class.forName("com.shabakaty.downloader.kw0$d");
        for (Object[] objArr : list) {
            if (objArr != null && objArr.length >= 2 && (obj2 = objArr[0]) != null) {
                setField(obj2, "file", objArr[1]);
                ((Callable) cls3.getConstructor(cls, cls2).newInstance(obj, objArr[0])).call();
            }
        }
    }

    private static Object readCombinedById(Object obj, String str) throws Exception {
        Class<?> cls = Class.forName("com.shabakaty.downloader.kw0");
        Class<?> cls2 = Class.forName("com.shabakaty.downloader.yt3");
        Object objInvoke = cls2.getMethod("a", String.class, Integer.TYPE).invoke(null, "SELECT * FROM CinemanaDownloadItem Where id = ? LIMIT 1", 1);
        cls2.getMethod("I", Integer.TYPE, String.class).invoke(objInvoke, 1, str);
        return ((Callable) Class.forName("com.shabakaty.downloader.kw0$p").getConstructor(cls, cls2).newInstance(obj, objInvoke)).call();
    }

    private static Object readDownloadsByTaskId(Object obj, int i) throws Exception {
        Class<?> cls = Class.forName("com.shabakaty.downloader.lz0");
        Class<?> cls2 = Class.forName("com.shabakaty.downloader.yt3");
        Object objInvoke = cls2.getMethod("a", String.class, Integer.TYPE).invoke(null, "SELECT * FROM Downloads WHERE ? = task_id", 1);
        cls2.getMethod("h0", Integer.TYPE, Long.TYPE).invoke(objInvoke, 1, Long.valueOf(i));
        return ((Callable) Class.forName("com.shabakaty.downloader.lz0$a").getConstructor(cls, cls2).newInstance(obj, objInvoke)).call();
    }

    private static void restoreCinemanaItem(Object obj, Object obj2, String str, int i) throws Exception {
        if (obj == null || obj2 == null) {
            return;
        }
        if (str != null) {
            setField(obj2, FileDownloadModel.PATH, str);
        }
        if (i >= 0) {
            setField(obj2, "sizeMB", Integer.valueOf(i));
        }
        ((Callable) Class.forName("com.shabakaty.downloader.kw0$h").getConstructor(Class.forName("com.shabakaty.downloader.kw0"), Class.forName("com.shabakaty.cinemana.data.db.downloads.CinemanaDownloadItem")).newInstance(obj, obj2)).call();
    }

    private static String normalizeKey(String str) {
        if (str == null) {
            return BuildConfig.FLAVOR;
        }
        String strTrim = str.toLowerCase(Locale.US).trim();
        StringBuilder sb = new StringBuilder(strTrim.length());
        boolean z = false;
        for (int i = 0; i < strTrim.length(); i++) {
            char cCharAt = strTrim.charAt(i);
            if (Character.isWhitespace(cCharAt) || cCharAt == '_' || cCharAt == '-' || cCharAt == '.') {
                if (!z) {
                    sb.append(' ');
                }
                z = true;
            } else {
                sb.append(cCharAt);
                z = false;
            }
        }
        return sb.toString().trim();
    }

    private static long longProperty(Object obj, String str, long j) {
        if (obj == null) {
            return j;
        }
        Object property = readProperty(obj, str);
        if (property instanceof Number) {
            return ((Number) property).longValue();
        }
        try {
            return Long.parseLong(String.valueOf(property));
        } catch (Throwable th) {
            return j;
        }
    }

    private static int integerProperty(Object obj, String str, int i) {
        if (obj == null) {
            return i;
        }
        Object property = readProperty(obj, str);
        if (property instanceof Number) {
            return ((Number) property).intValue();
        }
        try {
            return Integer.parseInt(String.valueOf(property));
        } catch (Throwable th) {
            return i;
        }
    }

    private static Object readProperty(Object obj, String... strArr) {
        if (obj == null) {
            return null;
        }
        Class<?> cls = obj.getClass();
        for (String str : strArr) {
            for (Class<?> superclass = cls; superclass != null; superclass = superclass.getSuperclass()) {
                try {
                    Field declaredField = superclass.getDeclaredField(str);
                    declaredField.setAccessible(true);
                    return declaredField.get(obj);
                } catch (Throwable th) {
                }
            }
            try {
                return cls.getMethod(str, new Class[0]).invoke(obj, new Object[0]);
            } catch (Throwable th2) {
            }
        }
        return null;
    }

    private static Object invokeSuspendAndWait(Object obj, String str, Object[] objArr, long j) throws Exception {
        Object obj2;
        Method method;
        Method[] methods = obj.getClass().getMethods();
        int length = methods.length;
        int i = 0;
        while (true) {
            obj2 = null;
            if (i >= length) {
                method = null;
                break;
            }
            method = methods[i];
            if (str.equals(method.getName()) && method.getParameterTypes().length == 2 && method.getParameterTypes()[1].getName().equals("kotlin.coroutines.Continuation")) {
                break;
            }
            i++;
        }
        if (method == null) {
            throw new NoSuchMethodException("DAO suspend method not found: " + str);
        }
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final Object[] objArr2 = new Object[1];
        Class<?> cls = method.getParameterTypes()[1];
        final Object objEmptyCoroutineContext = emptyCoroutineContext();
        Object objNewProxyInstance = Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: com.shabakaty.cinemana.features.MkvExporter.4
            @Override // java.lang.reflect.InvocationHandler
            public Object invoke(Object obj3, Method method2, Object[] objArr3) {
                String name = method2.getName();
                if ("getContext".equals(name)) {
                    return objEmptyCoroutineContext;
                }
                if ("resumeWith".equals(name)) {
                    objArr2[0] = (objArr3 == null || objArr3.length <= 0) ? null : objArr3[0];
                    countDownLatch.countDown();
                    return null;
                }
                if ("toString".equals(name)) {
                    return "CinemanaMkvContinuation";
                }
                if ("hashCode".equals(name)) {
                    return Integer.valueOf(System.identityHashCode(obj3));
                }
                if ("equals".equals(name)) {
                    return Boolean.valueOf(obj3 == (objArr3 != null ? objArr3[0] : null));
                }
                return null;
            }
        });
        Object[] objArr3 = new Object[2];
        if (objArr != null && objArr.length > 0) {
            obj2 = objArr[0];
        }
        objArr3[0] = obj2;
        objArr3[1] = objNewProxyInstance;
        try {
            Object objInvoke = method.invoke(obj, objArr3);
            if (objInvoke != null && !isCoroutineSuspended(objInvoke)) {
                return objInvoke;
            }
            if (!countDownLatch.await(j, TimeUnit.MILLISECONDS)) {
                throw new IOException("Timed out waiting for DAO method: " + str);
            }
            return objArr2[0];
        } catch (InvocationTargetException e) {
            Throwable cause = e.getCause();
            if (cause instanceof Exception) {
                throw ((Exception) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw e;
        }
    }

    private static boolean isCoroutineSuspended(Object obj) {
        return obj != null && "kotlin.coroutines.intrinsics.CoroutineSingletons".equals(obj.getClass().getName());
    }

    private static Object emptyCoroutineContext() {
        try {
            return Class.forName("kotlin.coroutines.EmptyCoroutineContext").getField("INSTANCE").get(null);
        } catch (Throwable th) {
            return null;
        }
    }

    private static String targetLogBase(String str) {
        if (!nonEmpty(str)) {
            return BuildConfig.FLAVOR;
        }
        return "." + stripExtension(str) + ".mkv.log";
    }

    private static void deletePromotionLogs(Context context, String str) {
        try {
            File fileEnsureLogDir = ensureLogDir();
            File file = new File(fileEnsureLogDir, ".mkv_export.log");
            if (file.exists()) {
                file.delete();
            }
            if (nonEmpty(str)) {
                File file2 = new File(fileEnsureLogDir, str);
                if (file2.exists()) {
                    file2.delete();
                }
            }
        } catch (Throwable th) {
        }
    }

    private static void setField(Object obj, String str, Object obj2) {
        if (obj == null) {
            return;
        }
        for (Class<?> superclass = obj.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
            try {
                Field declaredField = superclass.getDeclaredField(str);
                declaredField.setAccessible(true);
                declaredField.set(obj, obj2);
                return;
            } catch (Throwable th) {
            }
        }
    }

    private static String firstNonEmpty(String str, String str2) {
        return nonEmpty(str) ? str : str2;
    }

    private static boolean nonEmpty(String str) {
        return str != null && str.trim().length() > 0;
    }

    private static String trim(String str) {
        return str == null ? BuildConfig.FLAVOR : str.trim();
    }

    private static String stripExtension(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        return iLastIndexOf > 0 ? str.substring(0, iLastIndexOf) : str;
    }

    private static String baseTitle(String str) {
        return stripExtension(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String extension(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        return iLastIndexOf < 0 ? BuildConfig.FLAVOR : str.substring(iLastIndexOf + 1).toLowerCase(Locale.US);
    }

    private static String languageFor(String str) {
        String lowerCase = str.toLowerCase(Locale.US);
        if (lowerCase.startsWith("arabic subtitle for ")) {
            return "ar";
        }
        if (lowerCase.startsWith("english subtitle for ")) {
            return "en";
        }
        return lowerCase.startsWith("special subtitle for ") ? "sp" : "und";
    }

    private static void copyFile(File file, File file2) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        FileOutputStream fileOutputStream = new FileOutputStream(file2);
        byte[] bArr = new byte[65536];
        while (true) {
            try {
                int i = fileInputStream.read(bArr);
                if (i <= 0) {
                    fileInputStream.close();
                    fileOutputStream.close();
                    return;
                }
                fileOutputStream.write(bArr, 0, i);
            } catch (Throwable th) {
                fileInputStream.close();
                fileOutputStream.close();
                throw th;
            }
        }
    }

    private static String join(List<String> list) {
        StringBuilder sb = new StringBuilder();
        for (String str : list) {
            if (sb.length() > 0) {
                sb.append(' ');
            }
            sb.append('[').append(str).append(']');
        }
        return sb.toString();
    }

    private static boolean hasNoSubPrefix(String str) {
        if (str == null) {
            return false;
        }
        String strTrim = str.trim();
        return strTrim.regionMatches(true, 0, "(No Sub) ", 0, 9) || strTrim.regionMatches(true, 0, "(No Sub)", 0, 8);
    }

    private static void writeIdentityRecord(Context context, Object obj, File file, boolean z) {
        String str;
        if (context == null || obj == null || file == null) {
            return;
        }
        try {
            File file2 = new File(ensureLogDir(), "mkv_identity.map");
            String strFirstNonEmpty = firstNonEmpty(stringProperty(obj, "id", "getId"), BuildConfig.FLAVOR);
            String strFirstNonEmpty2 = firstNonEmpty(stringProperty(obj, "nb", "getNb"), BuildConfig.FLAVOR);
            String strValueOf = String.valueOf(integerProperty(obj, "downloadTaskId", -1));
            long jCurrentTimeMillis = System.currentTimeMillis();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(BlipsFormatHelper.BLIPS_DATE_FORMAT, Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            StringBuilder sb = new StringBuilder();
            if (nonEmpty(strFirstNonEmpty)) {
                str = strFirstNonEmpty;
            } else {
                str = nonEmpty(strFirstNonEmpty2) ? strFirstNonEmpty2 : strValueOf;
            }
            String string = sb.append(str).append("@").append(jCurrentTimeMillis).toString();
            String str2 = "token=" + string + "|itemId=" + strFirstNonEmpty + "|nb=" + strFirstNonEmpty2 + "|taskId=" + strValueOf + "|noSub=" + z + "|path=" + file.getAbsolutePath() + "|utc=" + simpleDateFormat.format(new Date(jCurrentTimeMillis)) + SSDPPacket.LF;
            FileOutputStream fileOutputStream = new FileOutputStream(file2, true);
            try {
                fileOutputStream.write(str2.getBytes("UTF-8"));
                fileOutputStream.close();
                appendExternalLog(context, "MKV_INTERNAL_IDENTITY=" + string + " path=" + file.getAbsolutePath() + " noSub=" + z);
            } catch (Throwable th) {
                fileOutputStream.close();
                throw th;
            }
        } catch (Throwable th2) {
            appendExternalLog(context, "MKV_INTERNAL_IDENTITY_WRITE_FAILED=" + th2);
        }
    }

    private static final class SortResult {
        final File finalFile;
        final boolean moved;
        final File originalFile;
        final File replacedBackup;

        SortResult(File file, File file2, File file3, boolean z) {
            this.originalFile = file;
            this.finalFile = file2;
            this.replacedBackup = file3;
            this.moved = z;
        }
    }

    private static synchronized SortResult organizeMkv(Context context, File file, Object obj, File file2) {
        int i;
        File file3;
        if (file == null || !file.exists() || file.length() <= 1024) {
            return null;
        }
        try {
            File file4 = new File(Environment.getExternalStorageDirectory(), "Cinemana");
            if (!file4.exists() && !file4.mkdirs()) {
                return null;
            }
            String strStripMarker = DownloadIdentity.stripMarker(WorkFolders104.name(obj, firstNonEmpty(stringProperty(obj, "title", "getTitle"), stripExtension(file.getName()))));
            boolean zHasNoSubPrefix = hasNoSubPrefix(file.getName());
            String strSanitizeFolderName = sanitizeFolderName(stripNoSubPrefix(strStripMarker));
            String strStringProperty = stringProperty(obj, "season", "getSeason");
            String strStringProperty2 = stringProperty(obj, "episodeNumber", "getEpisodeNumber");
            String[] strArrExtractSeasonEpisodeDigits = extractSeasonEpisodeDigits(normalizeName(file.getName()));
            if (strArrExtractSeasonEpisodeDigits != null && nonEmpty(strArrExtractSeasonEpisodeDigits[0]) && nonEmpty(strArrExtractSeasonEpisodeDigits[1]) && !"0".equals(strArrExtractSeasonEpisodeDigits[0])) {
                strStringProperty = strArrExtractSeasonEpisodeDigits[0];
                strStringProperty2 = strArrExtractSeasonEpisodeDigits[1];
            }
            File file5 = new File(file4, strSanitizeFolderName);
            if (nonEmpty(strStringProperty)) {
                try {
                    i = Integer.parseInt(digitsOnly(strStringProperty));
                } catch (Throwable th) {
                    i = 0;
                }
                if (i > 0) {
                    StringBuilder sbAppend = new StringBuilder().append("Season ").append(i);
                    sbAppend.append(" ");
                    sbAppend.append(strSanitizeFolderName);
                    file5 = new File(file5, sbAppend.toString());
                }
            }
            if (!file5.exists() && !file5.mkdirs()) {
                appendLog(file2, "SORT_FAILED: could not create " + file5.getAbsolutePath());
                return null;
            }
            File file6 = new File(file5, DownloadIdentity.stripMarker(file.getName()));
            if (sameFile(file, file6)) {
                return new SortResult(file, file6, null, false);
            }
            if (!file6.exists()) {
                file3 = null;
            } else {
                file3 = new File(file5, file6.getName() + ".bak");
                if (file3.exists()) {
                    file3.delete();
                }
                if (!file6.renameTo(file3)) {
                    appendLog(file2, "SORT_FAILED: could not stage existing sorted MKV " + file6);
                    return null;
                }
                appendLog(file2, "SORT_OLD_STAGED=" + file3.getAbsolutePath());
            }
            Restart108.moving(obj, file, file6);
            if (!moveFile(file, file6)) {
                if (file3 != null && file3.exists()) {
                    file3.renameTo(file6);
                }
                appendLog(file2, "SORT_FAILED: could not move MKV to " + file6.getAbsolutePath());
                return null;
            }
            appendLog(file2, "SORTED_MKV=" + file6.getAbsolutePath() + " work=" + strSanitizeFolderName + " season=" + strStringProperty + " episode=" + strStringProperty2 + " noSub=" + zHasNoSubPrefix);
            return new SortResult(file, file6, file3, true);
        } catch (Throwable th2) {
            appendLog(file2, "SORT_EXCEPTION=" + th2);
            return null;
        }
    }

    private static boolean moveFile(File file, File file2) {
        if (file == null || file2 == null) {
            return false;
        }
        if (sameFile(file, file2)) {
            return true;
        }
        try {
            File parentFile = file2.getParentFile();
            if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
                return false;
            }
            if (file.renameTo(file2)) {
                return true;
            }
            copyFile(file, file2);
            if (file2.exists() && file2.length() == file.length()) {
                return file.delete();
            }
        } catch (Throwable th) {
        }
        return false;
    }

    private static String sanitizeFolderName(String str) {
        String strTrim = trim(str);
        if (!nonEmpty(strTrim)) {
            return "Unknown";
        }
        String strTrim2 = stripExtension(strTrim).replace('/', '_').replace('\\', '_').replace(':', '_').replace('?', '_').replace('*', '_').replace('\"', '_').replace('<', '_').replace('>', '_').replace('|', '_').trim();
        if (strTrim2.length() > 180) {
            strTrim2 = strTrim2.substring(0, 180).trim();
        }
        return nonEmpty(strTrim2) ? strTrim2 : "Unknown";
    }

    private static File ensureLogDir() {
        File file = new File(Environment.getExternalStorageDirectory(), ROOT);
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(file, LOG_DIR);
        if (!file2.exists()) {
            file2.mkdirs();
        }
        return file2;
    }

    private static void migrateLegacyLogs(File file) {
        File[] fileArrListFiles;
        if (file == null) {
            return;
        }
        try {
            File parentFile = file.getParentFile();
            if (parentFile == null || !parentFile.isDirectory() || (fileArrListFiles = parentFile.listFiles()) == null) {
                return;
            }
            for (File file2 : fileArrListFiles) {
                if (file2 != null && file2.isFile()) {
                    String name = file2.getName();
                    if (name.equals(".mkv_export.log") || name.equals(".mkv_player_resolver.log") || (name.startsWith(".") && name.endsWith(".mkv.log"))) {
                        File file3 = new File(file, name);
                        if (!file3.exists()) {
                            file2.renameTo(file3);
                        } else {
                            file2.delete();
                        }
                    }
                }
            }
        } catch (Throwable th) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void appendExternalLog(Context context, String str) {
        if (Log94.enabled()) {
            try {
                File fileEnsureLogDir = ensureLogDir();
                migrateLegacyLogs(fileEnsureLogDir);
                appendLog(new File(fileEnsureLogDir, ".mkv_export.log"), str);
            } catch (Throwable th) {
                Log.i(TAG, str);
            }
        }
    }

    private static void appendLog(Context context, File file, String str) {
        if (Log94.enabled()) {
            if (file == null) {
                try {
                    file = context.getCacheDir();
                } catch (Throwable th) {
                    return;
                }
            }
            appendLog(new File(file, ".mkv_export.log"), str);
        }
    }

    private static void appendLog(File file, String str) {
        if (Log94.enabled()) {
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file, true);
                fileOutputStream.write((System.currentTimeMillis() + " " + str + SSDPPacket.LF).getBytes("UTF-8"));
                fileOutputStream.close();
            } catch (Throwable th) {
                Log.i(TAG, str);
            }
        }
    }
}
