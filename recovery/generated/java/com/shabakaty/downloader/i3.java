package com.shabakaty.downloader;

import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.button.MaterialButton;

/* JADX INFO: compiled from: ActivityQrLoginBinding.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class i3 extends ViewDataBinding {
    public final r42 M;
    public final Toolbar N;
    public final ProgressBar O;
    public final MaterialButton P;
    public final TextView Q;
    public final TextView R;
    public final MaterialButton S;
    public fk3 T;
    public dk3 U;

    public i3(Object obj, View view, int i, r42 r42Var, Toolbar toolbar, ProgressBar progressBar, MaterialButton materialButton, TextView textView, TextView textView2, MaterialButton materialButton2) {
        super(obj, view, i);
        this.M = r42Var;
        this.N = toolbar;
        this.O = progressBar;
        this.P = materialButton;
        this.Q = textView;
        this.R = textView2;
        this.S = materialButton2;
    }
}
