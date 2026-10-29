package com.shabakaty.downloader;

import android.content.Context;
import android.view.LayoutInflater;
import com.cinemana.pro.R;
import com.shabakaty.cinemana.player.CinemanaPlayerControllerView;

/* JADX INFO: compiled from: CinemanaPlayerControllerView.kt */
/* JADX INFO: loaded from: classes.dex */
public final class t00 extends af2 implements rm1<p00> {
    public final /* synthetic */ Context r;
    public final /* synthetic */ CinemanaPlayerControllerView s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t00(Context context, CinemanaPlayerControllerView cinemanaPlayerControllerView) {
        super(0);
        this.r = context;
        this.s = cinemanaPlayerControllerView;
    }

    @Override // com.shabakaty.downloader.rm1
    public p00 invoke() {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.r);
        j32.d(layoutInflaterFrom, "from(context)");
        p00 p00Var = (p00) vd5.m(layoutInflaterFrom, R.layout.cinemana_playback_control_view, this.s, true);
        p00Var.H(this.s.getViewModel());
        return p00Var;
    }
}
