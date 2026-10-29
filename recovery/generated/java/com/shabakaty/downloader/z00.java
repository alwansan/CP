package com.shabakaty.downloader;

import com.google.android.exoplayer2.ui.SubtitleView;
import com.shabakaty.cinemana.player.CinemanaPlayerControllerView;

/* JADX INFO: compiled from: CinemanaPlayerControllerView.kt */
/* JADX INFO: loaded from: classes.dex */
public final class z00 extends af2 implements rm1<SubtitleView> {
    public final /* synthetic */ CinemanaPlayerControllerView r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z00(CinemanaPlayerControllerView cinemanaPlayerControllerView) {
        super(0);
        this.r = cinemanaPlayerControllerView;
    }

    @Override // com.shabakaty.downloader.rm1
    public SubtitleView invoke() {
        return this.r.getCinemanaPlayerView().getBinding().O.getSubtitleView();
    }
}
