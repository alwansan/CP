package com.shabakaty.downloader;

import android.view.View;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.button.MaterialButton;

/* JADX INFO: compiled from: DialogChangePasswordBinding.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class ws0 extends ViewDataBinding {
    public final r42 M;
    public final r42 N;
    public final r42 O;
    public final MaterialButton P;
    public dl2 Q;

    public ws0(Object obj, View view, int i, r42 r42Var, r42 r42Var2, r42 r42Var3, MaterialButton materialButton) {
        super(obj, view, i);
        this.M = r42Var;
        this.N = r42Var2;
        this.O = r42Var3;
        this.P = materialButton;
    }

    public abstract void G(dl2 dl2Var);
}
