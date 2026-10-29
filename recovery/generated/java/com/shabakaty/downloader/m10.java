package com.shabakaty.downloader;

import com.shabakaty.cinemana.player.CinemanaPlayerView;

/* JADX INFO: compiled from: CinemanaPlayerView.kt */
/* JADX INFO: loaded from: classes.dex */
public final class m10 extends af2 implements rm1<q10> {
    public final /* synthetic */ CinemanaPlayerView r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m10(CinemanaPlayerView cinemanaPlayerView) {
        super(0);
        this.r = cinemanaPlayerView;
    }

    @Override // com.shabakaty.downloader.rm1
    public q10 invoke() {
        return (q10) new androidx.lifecycle.n(this.r.getPlayerActivity()).a(q10.class);
    }
}
