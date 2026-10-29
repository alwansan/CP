package com.shabakaty.downloader;

import com.google.android.exoplayer2.ui.PlayerView;
import com.shabakaty.cinemana.player.CinemanaPlayerView;

/* JADX INFO: compiled from: CinemanaPlayerView.kt */
/* JADX INFO: loaded from: classes.dex */
public final class j10 extends af2 implements rm1<is3> {
    public final /* synthetic */ CinemanaPlayerView r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j10(CinemanaPlayerView cinemanaPlayerView) {
        super(0);
        this.r = cinemanaPlayerView;
    }

    @Override // com.shabakaty.downloader.rm1
    public is3 invoke() {
        PlayerView playerView = this.r.getBinding().O;
        j32.d(playerView, "binding.exoPlayerView");
        is3 is3Var = new is3(playerView);
        i10 i10Var = new i10(this.r);
        j32.e(i10Var, "scaleChanged");
        is3Var.d = i10Var;
        is3Var.b = this.r.getPlayerActivity().getRequestedOrientation();
        return is3Var;
    }
}
