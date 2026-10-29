package com.shabakaty.downloader;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.exoplayer2.ui.PlayerView;
import com.shabakaty.cinemana.player.CinemanaPlayerControllerView;

/* JADX INFO: compiled from: CinemanaPlayerViewBinding.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class n10 extends ViewDataBinding {
    public final TextView M;
    public final CinemanaPlayerControllerView N;
    public final PlayerView O;
    public final LinearLayout P;
    public final ConstraintLayout Q;
    public final SimpleDraweeView R;
    public final TextView S;
    public p10 T;

    public n10(Object obj, View view, int i, TextView textView, CinemanaPlayerControllerView cinemanaPlayerControllerView, PlayerView playerView, LinearLayout linearLayout, ConstraintLayout constraintLayout, SimpleDraweeView simpleDraweeView, TextView textView2) {
        super(obj, view, i);
        this.M = textView;
        this.N = cinemanaPlayerControllerView;
        this.O = playerView;
        this.P = linearLayout;
        this.Q = constraintLayout;
        this.R = simpleDraweeView;
        this.S = textView2;
    }

    public abstract void G(p10 p10Var);

    public abstract void H(q10 q10Var);
}
