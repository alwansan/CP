package com.shabakaty.cinemana.features;

import android.content.Context;
import com.shabakaty.cinemana.ca1.Dependencies112;
import com.shabakaty.cinemana.ca1.Fresh121;
import com.shabakaty.cinemana.data.db.downloads.CinemanaDownloadItem;
import com.shabakaty.cinemana.domain.models.local.VideoModel;

/* JADX INFO: loaded from: classes3.dex */
public final class MkvPlanStore {
    private static final String PREFS = "cnm_mkv_plan_v54";

    private MkvPlanStore() {
    }

    public static int expectedSubtitleCount(Context context, Object obj) {
        if (context == null || !(obj instanceof CinemanaDownloadItem)) {
            return -1;
        }
        String strContentToken = DownloadIdentity.contentToken((CinemanaDownloadItem) obj);
        if (strContentToken.length() > 0) {
            return context.getSharedPreferences(PREFS, 0).getInt(strContentToken, -1);
        }
        return -1;
    }

    public static void record(Context context, VideoModel videoModel, int i) {
        if (context == null || videoModel == null) {
            return;
        }
        try {
            Fresh121.begin(context, videoModel);
            Dependencies112.plan(context, videoModel);
            String strContentToken = DownloadIdentity.contentToken(videoModel);
            if (strContentToken.length() > 0) {
                MkvManifestStore.beginPlan(context, strContentToken, i);
            }
        } catch (Throwable th) {
        }
    }
}
