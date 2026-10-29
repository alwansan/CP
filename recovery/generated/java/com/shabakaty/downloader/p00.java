package com.shabakaty.downloader;

import android.view.View;
import android.widget.Button;
import android.widget.HorizontalScrollView;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.chip.ChipGroup;
import com.shabakaty.cinemana.player.FastForwardRewindButton;
import com.shabakaty.cinemana.player.NextPreviousEpisodeButton;

/* JADX INFO: compiled from: CinemanaPlaybackControlViewBinding.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class p00 extends ViewDataBinding {
    public final View M;
    public final FastForwardRewindButton N;
    public final ConstraintLayout O;
    public final RecyclerView P;
    public final NextPreviousEpisodeButton Q;
    public final SimpleDraweeView R;
    public final SimpleDraweeView S;
    public final SeekBar T;
    public final SimpleDraweeView U;
    public final ConstraintLayout V;
    public final TextView W;
    public final NextPreviousEpisodeButton X;
    public final FastForwardRewindButton Y;
    public final ChipGroup Z;
    public final SimpleDraweeView a0;
    public final Button b0;
    public final TextView c0;
    public final TextView d0;
    public final SimpleDraweeView e0;
    public final TextView f0;
    public q10 g0;
    public ud3 h0;

    public p00(Object obj, View view, int i, View view2, FastForwardRewindButton fastForwardRewindButton, Guideline guideline, Guideline guideline2, ConstraintLayout constraintLayout, RecyclerView recyclerView, NextPreviousEpisodeButton nextPreviousEpisodeButton, SimpleDraweeView simpleDraweeView, SimpleDraweeView simpleDraweeView2, SeekBar seekBar, SimpleDraweeView simpleDraweeView3, ConstraintLayout constraintLayout2, TextView textView, NextPreviousEpisodeButton nextPreviousEpisodeButton2, FastForwardRewindButton fastForwardRewindButton2, ChipGroup chipGroup, HorizontalScrollView horizontalScrollView, SimpleDraweeView simpleDraweeView4, Button button, TextView textView2, TextView textView3, SimpleDraweeView simpleDraweeView5, TextView textView4) {
        super(obj, view, i);
        this.M = view2;
        this.N = fastForwardRewindButton;
        this.O = constraintLayout;
        this.P = recyclerView;
        this.Q = nextPreviousEpisodeButton;
        this.R = simpleDraweeView;
        this.S = simpleDraweeView2;
        this.T = seekBar;
        this.U = simpleDraweeView3;
        this.V = constraintLayout2;
        this.W = textView;
        this.X = nextPreviousEpisodeButton2;
        this.Y = fastForwardRewindButton2;
        this.Z = chipGroup;
        this.a0 = simpleDraweeView4;
        this.b0 = button;
        this.c0 = textView2;
        this.d0 = textView3;
        this.e0 = simpleDraweeView5;
        this.f0 = textView4;
    }

    public abstract void G(ud3 ud3Var);

    public abstract void H(q10 q10Var);
}
