package com.shabakaty.downloader;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: compiled from: DialogCommentUpdateLayoutBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class zs0 extends ys0 {
    public static final SparseIntArray R;
    public long Q;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        R = sparseIntArray;
        sparseIntArray.put(R.id.video_info_comment_input, 4);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public zs0(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 5, null, R);
        super(gl0Var, view, 0, (TextInputLayout) objArrS[4], (MaterialButton) objArrS[3], (MaterialButton) objArrS[2], (TextView) objArrS[1]);
        this.Q = -1L;
        ((ConstraintLayout) objArrS[0]).setTag(null);
        this.N.setTag(null);
        this.O.setTag(null);
        this.P.setTag(null);
        view.setTag(R.id.dataBinding, this);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        return true;
    }

    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        synchronized (this) {
            j = this.Q;
            this.Q = 0L;
        }
        if ((j & 1) != 0) {
            MaterialButton materialButton = this.N;
            e3.a(materialButton, R.string.cancel, materialButton);
            MaterialButton materialButton2 = this.O;
            e3.a(materialButton2, R.string.submit, materialButton2);
            TextView textView = this.P;
            d3.a(textView, R.string.update_comment, textView);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.Q != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.Q = 1L;
        }
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        return false;
    }
}
