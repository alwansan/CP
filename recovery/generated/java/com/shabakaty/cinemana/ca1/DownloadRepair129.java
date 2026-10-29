package com.shabakaty.cinemana.ca1;

import android.content.Context;
import android.os.Environment;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import com.connectsdk.discovery.provider.ssdp.SSDPPacket;
import com.connectsdk.service.airplay.PListParser;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.features.MkvManifestStore;
import com.shabakaty.cinemana.features.MkvReconciler;
import com.shabakaty.cinemana.features.MkvRepairAgeComparator;
import com.shabakaty.cinemana.features.MkvRepairLedger;
import com.shabakaty.cinemana.features.MkvRepairStartup;
import java.io.File;
import java.io.FileOutputStream;
import java.io.RandomAccessFile;
import java.util.Arrays;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes6.dex */
public final class DownloadRepair129 {
    static final AtomicBoolean RUNNING = new AtomicBoolean();
    private static final AtomicLong LAST_START_MS = new AtomicLong();

    public final class Click implements View.OnClickListener {
        private final Context context;
        private final TextView title;

        public Click(Context context, TextView textView) {
            this.context = context;
            this.title = textView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadRepair129.start(this.context, this.title);
        }
    }

    public final class Finish implements Runnable {
        private final Context context;
        private final String message;
        private final TextView title;

        public Finish(Context context, TextView textView, String str) {
            this.context = context;
            this.title = textView;
            this.message = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            DownloadRepair129.RUNNING.set(false);
            TextView textView = this.title;
            if (textView != null) {
                textView.setText(I18n161.t("إصلاح التحميلات"));
            }
            Toast.makeText(this.context, this.message, 1).show();
        }
    }

    public final class Worker implements Runnable {
        private final Context context;
        private final TextView title;

        public Worker(Context context, TextView textView) {
            this.context = context;
            this.title = textView;
        }

        @Override // java.lang.Runnable
        public void run() {
            String strT;
            Context context = this.context;
            TextView textView = this.title;
            try {
                strT = DownloadRepair129.execute(context);
            } catch (Throwable th) {
                DownloadRepair129.recordThrowable(context, "REPAIR_WORKER_FAILED", th);
                strT = I18n161.t("تعذر إكمال الفحص؛ راجع سجل المشاكل غير المحلولة.");
            }
            if (textView == null) {
                DownloadRepair129.RUNNING.set(false);
                DownloadRepair129.log(context, "download_repair_unresolved.log", "UI_TITLE_REFERENCE_MISSING");
            } else {
                if (textView.post(new Finish(context, textView, strT))) {
                    return;
                }
                DownloadRepair129.RUNNING.set(false);
                DownloadRepair129.log(context, "download_repair_unresolved.log", "UI_FINISH_POST_FAILED");
            }
        }
    }

    private DownloadRepair129() {
    }

    private static boolean allowRepairStart() {
        AtomicLong atomicLong = LAST_START_MS;
        if (System.currentTimeMillis() - atomicLong.get() < 8000) {
            return false;
        }
        atomicLong.set(System.currentTimeMillis());
        return true;
    }

    public static String execute(Context context) {
        try {
            MkvReconciler.start(context);
            MkvReconciler.reconcileAll();
            return I18n161.t("تم فحص ملفات work من الأقدم للأحدث وإرسال الملفات الجاهزة إلى طابور MKV.");
        } catch (Throwable th) {
            recordThrowable(context, "ORDERED_WORK_REPAIR_FAILED", th);
            return "تعذر إكمال فحص ملفات work؛ حُفظ سبب الخطأ.";
        }
    }

    private static boolean hasExistingMkvForToken(File file, String str) {
        File[] fileArrListFiles;
        File parentFile = file.getParentFile();
        if (parentFile == null || (fileArrListFiles = parentFile.listFiles()) == null) {
            return false;
        }
        for (File file2 : fileArrListFiles) {
            if (file2 != null && file2.isFile() && file2.getName().toLowerCase(Locale.US).endsWith(".mkv") && str.equals(MkvManifestStore.tokenFromPath(file2.getAbsolutePath())) && file2.length() >= 1024) {
                return true;
            }
        }
        return false;
    }

    private static void increment(int[] iArr, int i) {
        iArr[i] = iArr[i] + 1;
    }

    private static void inspectLogs(Context context) {
        int[] iArr = new int[7];
        File file = new File(Environment.getExternalStorageDirectory(), "Cinemana/work/log");
        String[] strArr = {"downloads.log", "diagnostics.log", "restart108.log"};
        for (int i = 0; i < 3; i++) {
            inspectOneLog(new File(file, strArr[i]), iArr);
        }
        log(context, "download_repair_findings.log", "RECENT_LOG_SIGNATURES db_commit_incomplete=" + iArr[0] + " dns_failures=" + iArr[1] + " mkv_requeues=" + iArr[2] + " manifest_wait=" + iArr[3] + " db_promote_fail=" + iArr[4] + " download_errors=" + iArr[5] + " lines_read=" + iArr[6] + " source_tail_limit=1MiB_per_log");
        if (iArr[0] > 0) {
            log(context, "download_repair_findings.log", "HISTORICAL_DATABASE_COMMIT_SIGNATURES count=" + iArr[0] + "; zero-task recovery requires matching canonical paths and exact file size");
        }
        if (iArr[1] > 0) {
            log(context, "download_repair_unresolved.log", "HISTORICAL_DNS_FAILURES count=" + iArr[1] + "; unresolved until the episode source supplies a fresh valid URL; no blind duplicate request was made");
        }
        if (iArr[4] > 0) {
            log(context, "download_repair_unresolved.log", "HISTORICAL_DB_PROMOTION_FAILURES count=" + iArr[4] + "; check unresolved log for new exception details after the safe recovery pass");
        }
    }

    private static void inspectOneLog(File file, int[] iArr) {
        if (file == null) {
            return;
        }
        try {
            if (!file.isFile()) {
                return;
            }
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
            long length = file.length();
            if (length > 1048576) {
                randomAccessFile.seek(length - 1048576);
            }
            while (true) {
                String line = randomAccessFile.readLine();
                if (line == null) {
                    randomAccessFile.close();
                    return;
                }
                increment(iArr, 6);
                if (line.contains("database commit incomplete")) {
                    increment(iArr, 0);
                }
                if (line.contains("UnknownHostException") || line.contains("Unable to resolve host")) {
                    increment(iArr, 1);
                }
                if (line.contains("MP4_COMPLETE_REQUEUE_MKV")) {
                    increment(iArr, 2);
                }
                if (line.contains("MKV_MANIFEST_WAIT")) {
                    increment(iArr, 3);
                }
                if (line.contains("DB_PROMOTE_FAIL")) {
                    increment(iArr, 4);
                }
                if (line.contains("DOWNLOAD_ERROR")) {
                    increment(iArr, 5);
                }
            }
        } catch (Throwable th) {
        }
    }

    public static void log(Context context, String str, String str2) {
        try {
            File file = new File(Environment.getExternalStorageDirectory(), "Cinemana/work/log");
            if (!file.exists()) {
                file.mkdirs();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(new File(file, str), true);
            fileOutputStream.write((System.currentTimeMillis() + " " + str2 + SSDPPacket.LF).getBytes("UTF-8"));
            fileOutputStream.close();
        } catch (Throwable th) {
            Log.e("DownloadRepair129", "Unable to write repair log", th);
        }
    }

    private static void logDiskMp4(Context context, String str, String str2, String str3, File file) {
        log(context, str, str2 + " token=" + str3 + " path=" + file.getAbsolutePath());
    }

    public static void profile(View view) {
        View viewFindViewWithTag;
        View viewFindViewWithTag2;
        if (view == null || (viewFindViewWithTag = view.findViewWithTag("ca1_download_repair129")) == null || (viewFindViewWithTag2 = view.findViewWithTag("ca1_download_repair129_title")) == null) {
            return;
        }
        TextView textView = (TextView) viewFindViewWithTag2;
        textView.setText(I18n161.t("إصلاح التحميلات"));
        viewFindViewWithTag.setOnClickListener(new Click(view.getContext(), textView));
    }

    public static void recordThrowable(Context context, String str, Throwable th) {
        log(context, "download_repair_unresolved.log", str + " cause=" + th.toString());
    }

    private static void repairDiskMp4(Context context) {
        int[] iArr = new int[5];
        scanWorkTree(context, new File(Environment.getExternalStorageDirectory(), "Cinemana/work"), 0, iArr);
        log(context, "download_repair_findings.log", "DISK_MKV_SCAN mp4=" + iArr[0] + " queued=" + iArr[1] + " existing_mkv=" + iArr[2] + " fallback_attempted=" + iArr[3] + " max_depth=4; disk evidence must match the saved subtitle plan");
    }

    private static void repairOneDiskMp4(Context context, File file, int[] iArr) {
        if (file == null || !file.isFile()) {
            return;
        }
        if (file.length() < 1024) {
            increment(iArr, 3);
            logDiskMp4(context, "download_repair_unresolved.log", "MP4_DISK_DEFERRED_FILE_TOO_SMALL", BuildConfig.FLAVOR, file);
            return;
        }
        String str = MkvManifestStore.tokenFromPath(file.getAbsolutePath());
        if (str.length() <= 0) {
            increment(iArr, 3);
            logDiskMp4(context, "download_repair_unresolved.log", "MP4_DISK_DEFERRED_NO_CONTENT_TOKEN", BuildConfig.FLAVOR, file);
            return;
        }
        if (hasExistingMkvForToken(file, str)) {
            increment(iArr, 2);
            logDiskMp4(context, "download_repair_findings.log", "MP4_DISK_SKIP_ALREADY_MKV", str, file);
            return;
        }
        MkvRepairLedger.recordDiscovery(context, str, file.getAbsolutePath());
        if (MkvReconciler.reconcileDiskVideo(context, file)) {
            increment(iArr, 1);
            logDiskMp4(context, "download_repair_actions.log", "MP4_DISK_REPAIR_ACCEPTED_BY_GUARDED_MKV_PIPELINE", str, file);
        } else {
            increment(iArr, 3);
            logDiskMp4(context, "download_repair_unresolved.log", "MP4_DISK_DEFERRED_MAPPING_OR_SUBTITLE_PLAN", str, file);
        }
    }

    private static void scanInventory(Context context) {
        int[] iArr = new int[5];
        File file = new File(Environment.getExternalStorageDirectory(), "Cinemana/work");
        if (file.exists()) {
            scanTree(file, 4, iArr);
        }
        log(context, "download_repair_findings.log", "INVENTORY nodes=" + iArr[0] + " mp4=" + iArr[1] + " mkv=" + iArr[2] + " subtitles=" + iArr[3] + " partials=" + iArr[4] + " cap=2500; inventory_only_no_file_mutations");
    }

    private static void scanTree(File file, int i, int[] iArr) {
        File[] fileArrListFiles;
        if (file == null || iArr[0] >= 2500) {
            return;
        }
        increment(iArr, 0);
        if (file.isDirectory()) {
            if (i <= 0 || (fileArrListFiles = file.listFiles()) == null) {
                return;
            }
            for (File file2 : fileArrListFiles) {
                scanTree(file2, i - 1, iArr);
            }
            return;
        }
        if (file.isFile()) {
            String lowerCase = file.getName().toLowerCase(Locale.ROOT);
            if (lowerCase.endsWith(".cnm-recovery.tmp.mp4")) {
                return;
            }
            if (lowerCase.endsWith(".mp4")) {
                increment(iArr, 1);
            } else if (lowerCase.endsWith(".mkv")) {
                increment(iArr, 2);
            } else if (lowerCase.endsWith(".srt") || lowerCase.endsWith(".ass") || lowerCase.endsWith(".ssa") || lowerCase.endsWith(".vtt") || lowerCase.endsWith(".sub")) {
                increment(iArr, 3);
            }
            if (lowerCase.contains(".part")) {
                increment(iArr, 4);
            } else if (lowerCase.endsWith(".tmp")) {
                increment(iArr, 4);
            }
        }
    }

    private static void scanWorkTree(Context context, File file, int i, int[] iArr) {
        File[] fileArrListFiles;
        int i2 = iArr[4];
        if (i2 < 2500) {
            iArr[4] = i2 + 1;
            if (file == null || i >= 4 || !file.exists() || !file.isDirectory() || (fileArrListFiles = file.listFiles()) == null) {
                return;
            }
            Arrays.sort(fileArrListFiles, new MkvRepairAgeComparator());
            for (File file2 : fileArrListFiles) {
                if (file2 != null) {
                    if (file2.isDirectory()) {
                        String lowerCase = file2.getName().toLowerCase(Locale.US);
                        if (!lowerCase.equals(PListParser.TAG_DATA) && !lowerCase.equals("log")) {
                            scanWorkTree(context, file2, i + 1, iArr);
                        }
                    } else if (file2.isFile()) {
                        String lowerCase2 = file2.getName().toLowerCase(Locale.US);
                        if (!lowerCase2.endsWith(".tmp.mp4") && !lowerCase2.endsWith(".cnm-recovery.tmp.mp4") && lowerCase2.endsWith(".mp4")) {
                            increment(iArr, 0);
                            repairOneDiskMp4(context, file2, iArr);
                        }
                    }
                }
            }
        }
    }

    public static void start(Context context, TextView textView) {
        if (context != null) {
            if (RUNNING.compareAndSet(false, true)) {
                if (allowRepairStart()) {
                    if (textView != null) {
                        try {
                            textView.setText(I18n161.t("جارٍ فحص التحميلات وإصلاحها..."));
                        } catch (Throwable th) {
                            RUNNING.set(false);
                            recordThrowable(context, "REPAIR_START_FAILED", th);
                            return;
                        }
                    }
                    log(context, "download_repair_actions.log", "REPAIR_START source=profile_button");
                    new Thread(new Worker(context, textView), "Cinemana-DownloadRepair").start();
                    return;
                }
                RUNNING.set(false);
            }
            Toast.makeText(context, I18n161.t("الإصلاح يعمل بالفعل أو بدأ للتو"), 0).show();
        }
    }

    public static void startup(Context context) {
        if (context != null) {
            new Thread(new MkvRepairStartup(context)).start();
        }
    }
}
