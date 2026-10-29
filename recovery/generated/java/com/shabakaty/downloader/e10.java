package com.shabakaty.downloader;

import android.content.Context;
import android.view.LayoutInflater;
import com.cinemana.pro.R;
import com.shabakaty.cinemana.player.CinemanaPlayerView;

/* JADX INFO: compiled from: CinemanaPlayerView.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e10 extends af2 implements rm1<n10> {
    public final /* synthetic */ Context r;
    public final /* synthetic */ CinemanaPlayerView s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e10(Context context, CinemanaPlayerView cinemanaPlayerView) {
        super(0);
        this.r = context;
        this.s = cinemanaPlayerView;
    }

    @Override // com.shabakaty.downloader.rm1
    public n10 invoke() {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.r);
        j32.d(layoutInflaterFrom, "from(context)");
        n10 n10Var = (n10) vd5.m(layoutInflaterFrom, R.layout.cinemana_player_view, this.s, true);
        n10Var.H(this.s.getViewModel());
        return n10Var;
    }
}
