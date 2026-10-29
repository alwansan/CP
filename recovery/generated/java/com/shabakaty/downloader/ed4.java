package com.shabakaty.downloader;

import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.button.MaterialButton;

/* JADX INFO: compiled from: StatusViewLayoutBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class ed4 extends dd4 {
    public long R;

    /* JADX WARN: Illegal instructions before constructor call */
    public ed4(gl0 gl0Var, View[] viewArr) {
        Object[] objArrT = ViewDataBinding.t(gl0Var, viewArr, 5, null, null);
        super(gl0Var, viewArr[0], 0, (SimpleDraweeView) objArrT[0], (TextView) objArrT[1], (TextView) objArrT[2], (ProgressBar) objArrT[4], (MaterialButton) objArrT[3]);
        this.R = -1L;
        this.M.setTag(null);
        this.N.setTag(null);
        this.O.setTag(null);
        this.P.setTag(null);
        this.Q.setTag(null);
        C(viewArr);
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
            j = this.R;
            this.R = 0L;
        }
        if ((j & 1) != 0) {
            TextView textView = this.N;
            d3.a(textView, R.string.connection_problem_txt, textView);
            TextView textView2 = this.O;
            d3.a(textView2, R.string.please_check_your_internet_and_try_again_txt, textView2);
            MaterialButton materialButton = this.Q;
            e3.a(materialButton, R.string.retry_txt, materialButton);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.R != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.R = 1L;
        }
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        return false;
    }
}
