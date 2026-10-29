package com.shabakaty.downloader;

import android.content.Context;
import android.view.ScaleGestureDetector;
import com.shabakaty.cinemana.player.CinemanaPlayerView;

/* JADX INFO: compiled from: CinemanaPlayerView.kt */
/* JADX INFO: loaded from: classes.dex */
public final class h10 extends af2 implements rm1<ScaleGestureDetector> {
    public final /* synthetic */ Context r;
    public final /* synthetic */ CinemanaPlayerView s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h10(Context context, CinemanaPlayerView cinemanaPlayerView) {
        super(0);
        this.r = context;
        this.s = cinemanaPlayerView;
    }

    @Override // com.shabakaty.downloader.rm1
    public ScaleGestureDetector invoke() {
        return new ScaleGestureDetector(this.r, this.s.getScaleListener());
    }
}
