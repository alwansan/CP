package com.shabakaty.downloader;

import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.Toolbar;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: compiled from: ActivityLoginBinding.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class c3 extends ViewDataBinding {
    public final MaterialButton M;
    public final TextView N;
    public final MaterialButton O;
    public final TextView P;
    public final MaterialButton Q;
    public final MaterialButton R;
    public final TextView S;
    public final TextInputLayout T;
    public final Toolbar U;
    public final TextInputLayout V;
    public final ProgressBar W;
    public dl2 X;
    public yk2 Y;

    public c3(Object obj, View view, int i, AppCompatImageView appCompatImageView, MaterialButton materialButton, TextView textView, MaterialButton materialButton2, TextView textView2, MaterialButton materialButton3, MaterialButton materialButton4, TextView textView3, TextInputLayout textInputLayout, Toolbar toolbar, TextInputLayout textInputLayout2, ProgressBar progressBar) {
        super(obj, view, i);
        this.M = materialButton;
        this.N = textView;
        this.O = materialButton2;
        this.P = textView2;
        this.Q = materialButton3;
        this.R = materialButton4;
        this.S = textView3;
        this.T = textInputLayout;
        this.U = toolbar;
        this.V = textInputLayout2;
        this.W = progressBar;
    }
}
