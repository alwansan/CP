package com.shabakaty.downloader;

import android.content.Context;
import com.shabakaty.cinemana.player.VideoPlayerActivity;

/* JADX INFO: compiled from: CinemanaPlayerView.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g10 extends af2 implements rm1<VideoPlayerActivity> {
    public final /* synthetic */ Context r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g10(Context context) {
        super(0);
        this.r = context;
    }

    @Override // com.shabakaty.downloader.rm1
    public VideoPlayerActivity invoke() {
        return (VideoPlayerActivity) this.r;
    }
}
