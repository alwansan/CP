package com.shabakaty.downloader;

import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import com.facebook.drawee.view.SimpleDraweeView;

/* JADX INFO: compiled from: ActivityDlnaControlsBinding.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class u2 extends ViewDataBinding {
    public final ImageView M;
    public final RelativeLayout N;
    public final ImageButton O;
    public final SimpleDraweeView P;
    public final ImageView Q;
    public final ImageButton R;
    public final SeekBar S;
    public final ImageView T;
    public final ImageButton U;
    public final ImageView V;
    public final TextView W;
    public final TextView X;
    public final TextView Y;

    public u2(Object obj, View view, int i, ImageView imageView, RelativeLayout relativeLayout, ProgressBar progressBar, RelativeLayout relativeLayout2, ImageButton imageButton, SimpleDraweeView simpleDraweeView, ImageView imageView2, ImageButton imageButton2, LinearLayout linearLayout, SeekBar seekBar, ImageView imageView3, ImageButton imageButton3, ImageView imageView4, ImageButton imageButton4, TextView textView, TextView textView2, TextView textView3) {
        super(obj, view, i);
        this.M = imageView;
        this.N = relativeLayout;
        this.O = imageButton;
        this.P = simpleDraweeView;
        this.Q = imageView2;
        this.R = imageButton2;
        this.S = seekBar;
        this.T = imageView3;
        this.U = imageButton3;
        this.V = imageView4;
        this.W = textView;
        this.X = textView2;
        this.Y = textView3;
    }
}
