package com.shabakaty.downloader;

import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: compiled from: ActivitySignUpBinding.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class x3 extends ViewDataBinding {
    public final ProgressBar M;
    public final MaterialButton N;
    public final TextInputLayout O;
    public final TextView P;
    public final MaterialButton Q;
    public final TextInputLayout R;
    public final SimpleDraweeView S;
    public final Toolbar T;
    public final TextInputLayout U;
    public final TextView V;
    public a64 W;
    public z54 X;

    public x3(Object obj, View view, int i, AppCompatImageView appCompatImageView, ProgressBar progressBar, MaterialButton materialButton, TextInputLayout textInputLayout, ConstraintLayout constraintLayout, TextView textView, MaterialButton materialButton2, TextInputLayout textInputLayout2, SimpleDraweeView simpleDraweeView, Toolbar toolbar, TextInputLayout textInputLayout3, TextView textView2) {
        super(obj, view, i);
        this.M = progressBar;
        this.N = materialButton;
        this.O = textInputLayout;
        this.P = textView;
        this.Q = materialButton2;
        this.R = textInputLayout2;
        this.S = simpleDraweeView;
        this.T = toolbar;
        this.U = textInputLayout3;
        this.V = textView2;
    }
}
