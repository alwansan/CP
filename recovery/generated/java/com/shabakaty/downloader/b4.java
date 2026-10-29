package com.shabakaty.downloader;

import android.view.View;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.button.MaterialButton;

/* JADX INFO: compiled from: ActivityStatusBinding.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class b4 extends ViewDataBinding {
    public final MaterialButton M;
    public final TextView N;
    public final TextView O;
    public ad4 P;
    public String Q;
    public String R;

    public b4(Object obj, View view, int i, MaterialButton materialButton, SimpleDraweeView simpleDraweeView, TextView textView, TextView textView2) {
        super(obj, view, i);
        this.M = materialButton;
        this.N = textView;
        this.O = textView2;
    }

    public abstract void G(q14 q14Var);

    public abstract void H(String str);

    public abstract void I(String str);
}
