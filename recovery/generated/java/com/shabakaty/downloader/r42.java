package com.shabakaty.downloader;

import android.view.View;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: compiled from: ItemEditProfileInputBinding.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class r42 extends ViewDataBinding {
    public final TextInputLayout M;
    public final TextView N;
    public String O;
    public String P;
    public Boolean Q;

    public r42(Object obj, View view, int i, TextInputLayout textInputLayout, TextView textView) {
        super(obj, view, i);
        this.M = textInputLayout;
        this.N = textView;
    }

    public abstract void G(String str);

    public abstract void H(Boolean bool);

    public abstract void I(String str);
}
