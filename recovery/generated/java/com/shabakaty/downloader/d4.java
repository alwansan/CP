package com.shabakaty.downloader;

import android.view.View;
import android.widget.ProgressBar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.button.MaterialButton;
import com.shabakaty.cinemana.player.CinemanaPlayerView;

/* JADX INFO: compiled from: ActivityVideoPlayerBinding.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class d4 extends ViewDataBinding {
    public final CinemanaPlayerView M;
    public final ProgressBar N;
    public final MaterialButton O;
    public final ConstraintLayout P;
    public p10 Q;

    public d4(Object obj, View view, int i, CinemanaPlayerView cinemanaPlayerView, ProgressBar progressBar, MaterialButton materialButton, ConstraintLayout constraintLayout) {
        super(obj, view, i);
        this.M = cinemanaPlayerView;
        this.N = progressBar;
        this.O = materialButton;
        this.P = constraintLayout;
    }
}
