package com.shabakaty.downloader;

import com.shabakaty.cinemana.player.CinemanaPlayerControllerView;
import com.shabakaty.cinemana.player.CinemanaPlayerView;

/* JADX INFO: compiled from: CinemanaPlayerControllerView.kt */
/* JADX INFO: loaded from: classes.dex */
public final class u00 extends af2 implements rm1<CinemanaPlayerView> {
    public final /* synthetic */ CinemanaPlayerControllerView r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u00(CinemanaPlayerControllerView cinemanaPlayerControllerView) {
        super(0);
        this.r = cinemanaPlayerControllerView;
    }

    @Override // com.shabakaty.downloader.rm1
    public CinemanaPlayerView invoke() {
        T t = this.r.getPlayerActivity().t;
        j32.c(t);
        return ((d4) t).M;
    }
}
