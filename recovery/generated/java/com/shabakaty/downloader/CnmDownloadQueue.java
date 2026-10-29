package com.shabakaty.downloader;

import android.content.Context;
import android.util.Log;
import com.liulishuo.filedownloader.BaseDownloadTask;
import com.liulishuo.filedownloader.FileDownloadList;
import com.liulishuo.filedownloader.FileDownloader;
import com.shabakaty.cinemana.ca1.Queue110;
import com.shabakaty.cinemana.ca1.Ui7;
import com.shabakaty.cinemana.features.DownloadTrace;
import com.shabakaty.cinemana.features.MkvManifestStore;
import com.shabakaty.cinemana.features.MkvReconciler;

/* JADX INFO: loaded from: classes5.dex */
public final class CnmDownloadQueue {
    private static final String TAG = "CnmDownloadQueue";
    private static Context context;
    private static int maxParallel = 2;

    private CnmDownloadQueue() {
    }

    public static synchronized void adoptRunning(BaseDownloadTask baseDownloadTask) {
    }

    public static synchronized boolean enqueue(BaseDownloadTask baseDownloadTask) {
        if (baseDownloadTask == null || !Queue110.submitted(baseDownloadTask)) {
            return false;
        }
        if (baseDownloadTask.isRunning()) {
            trace(intMessage("NATIVE_QUEUE_ALREADY_RUNNING taskId=", baseDownloadTask.getId()));
            return false;
        }
        try {
            if (FileDownloadList.getImpl().isEmpty()) {
                FileDownloader.getImpl().setMaxNetworkThreadCount(maxParallel);
            }
        } catch (Throwable th) {
        }
        try {
            MkvManifestStore.registerTask(baseDownloadTask);
        } catch (Throwable th2) {
        }
        int id = baseDownloadTask.getId();
        trace("NATIVE_QUEUE_SUBMIT taskId=" + id + " path=" + baseDownloadTask.getPath());
        try {
            trace(intMessage("NATIVE_QUEUE_START_RETURN=", baseDownloadTask.start()));
            return true;
        } catch (Throwable th3) {
            trace(intMessage("NATIVE_QUEUE_START_THROW taskId=", id));
            return false;
        }
    }

    public static synchronized int getActiveCount() {
        try {
            return FileDownloadList.getImpl().size();
        } catch (Throwable th) {
            return 0;
        }
    }

    public static synchronized int getMaxParallel() {
        return maxParallel;
    }

    public static synchronized int getQueuedCount() {
        int activeCount = getActiveCount() - maxParallel;
        if (activeCount > 0) {
            return activeCount;
        }
        return 0;
    }

    public static void init(Context context2) {
        if (context2 != null) {
            Context applicationContext = context2.getApplicationContext();
            if (applicationContext != null) {
                context2 = applicationContext;
            }
            context = context2;
            Ui7.init(context2);
            try {
                MkvManifestStore.init(context2);
                MkvReconciler.start(context2);
            } catch (Throwable th) {
            }
        }
    }

    private static String intMessage(String str, int i) {
        return str + i;
    }

    public static synchronized void release(BaseDownloadTask baseDownloadTask, String str) {
        Queue110.terminal(baseDownloadTask, str);
        if (baseDownloadTask != null) {
            trace("NATIVE_QUEUE_TERMINAL reason=" + str + " taskId=" + baseDownloadTask.getId());
        }
    }

    public static void remove(BaseDownloadTask baseDownloadTask, String str) {
        release(baseDownloadTask, str);
    }

    public static synchronized void setMaxParallel(int i) {
        if (i <= 0) {
            i = 1;
        } else if (i > 8) {
            i = 8;
        }
        maxParallel = i;
        try {
            trace("NATIVE_MAX_PARALLEL desired=" + i + " applied=" + FileDownloader.getImpl().setMaxNetworkThreadCount(i));
        } catch (Throwable th) {
            trace("NATIVE_MAX_PARALLEL deferred");
        }
    }

    private static void trace(String str) {
        Log.i(TAG, str);
        Context context2 = context;
        if (context2 != null) {
            DownloadTrace.log(context2, str);
        }
    }
}
