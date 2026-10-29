package com.shabakaty.cinemana.ca1;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class CueTrace102 {
    public static void log(CueIndex102 cueIndex102) {
        try {
            Context context = Log94.app;
            if (context != null) {
                Log94.event(context, "mkv_video_cues102", "video_track=" + cueIndex102.videoTrack + " cue_points=" + cueIndex102.seen + " video_points=" + cueIndex102.kept);
            }
        } catch (Exception e) {
        }
    }
}
