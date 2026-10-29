package com.shabakaty.cinemana.features;

import android.content.Context;
import com.shabakaty.cinemana.ca1.BatchDownload;
import com.shabakaty.cinemana.ca1.Commit105;
import com.shabakaty.cinemana.data.db.downloads.CinemanaDownloadItem;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
public final class MkvPlaybackGuard {
    private MkvPlaybackGuard() {
    }

    public static boolean blockIfBusy(Context context, CinemanaDownloadItem cinemanaDownloadItem) {
        if (context == null || cinemanaDownloadItem == null || Commit105.repair(context, cinemanaDownloadItem)) {
            return false;
        }
        String str = cinemanaDownloadItem.path;
        if (str == null || !str.toLowerCase(Locale.US).endsWith(".mp4")) {
            if (!MkvStateStore.isBusy(context, cinemanaDownloadItem)) {
                return false;
            }
            BatchDownload.guardToast(context, cinemanaDownloadItem, MkvStateStore.message(context, cinemanaDownloadItem));
            return true;
        }
        String strMessage = MkvStateStore.message(context, cinemanaDownloadItem);
        try {
            strMessage = "ar".equals(context.getResources().getConfiguration().locale.getLanguage()) ? "الفيديو في انتظار التحويل إلى MKV" : "Video is waiting for MKV conversion";
        } catch (Throwable unused) {
        }
        BatchDownload.guardToast(context, cinemanaDownloadItem, strMessage);
        return true;
    }
}
