package com.shabakaty.downloader;

import android.view.View;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;

/* JADX INFO: compiled from: ItemBottomListTextBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class j42 extends qn {
    public final TextView N;
    public long O;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j42(gl0 gl0Var, View view) {
        super(gl0Var, view, 0);
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 1, null, null);
        this.O = -1L;
        TextView textView = (TextView) objArrS[0];
        this.N = textView;
        textView.setTag(null);
        view.setTag(R.id.dataBinding, this);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (11 != i) {
            return false;
        }
        this.M = (kc3) obj;
        synchronized (this) {
            this.O |= 1;
        }
        f(11);
        x();
        return true;
    }

    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        synchronized (this) {
            j = this.O;
            this.O = 0L;
        }
        kc3 kc3Var = (kc3) this.M;
        String str = null;
        long j2 = j & 3;
        if (j2 != 0 && kc3Var != null) {
            str = kc3Var.a;
        }
        if (j2 != 0) {
            nl6.r(this.N, str);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.O != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.O = 2L;
        }
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        return false;
    }
}
