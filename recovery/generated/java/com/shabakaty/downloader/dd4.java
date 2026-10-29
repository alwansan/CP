package com.shabakaty.downloader;

import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.button.MaterialButton;

/* JADX INFO: compiled from: StatusViewLayoutBinding.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class dd4 extends ViewDataBinding {
    public final SimpleDraweeView M;
    public final TextView N;
    public final TextView O;
    public final ProgressBar P;
    public final MaterialButton Q;

    public dd4(Object obj, View view, int i, SimpleDraweeView simpleDraweeView, TextView textView, TextView textView2, ProgressBar progressBar, MaterialButton materialButton) {
        super(obj, view, i);
        this.M = simpleDraweeView;
        this.N = textView;
        this.O = textView2;
        this.P = progressBar;
        this.Q = materialButton;
    }
}
