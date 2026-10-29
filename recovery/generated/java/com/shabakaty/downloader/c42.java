package com.shabakaty.downloader;

import android.view.View;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.shabakaty.cinemana.utils.StatusView;

/* JADX INFO: compiled from: ItemAdapterStatusBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class c42 extends b42 {
    public final StatusView N;
    public long O;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c42(gl0 gl0Var, View view) {
        super(gl0Var, view, 0);
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 1, null, null);
        this.O = -1L;
        StatusView statusView = (StatusView) objArrS[0];
        this.N = statusView;
        statusView.setTag(null);
        view.setTag(R.id.dataBinding, this);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (11 != i) {
            return false;
        }
        this.M = (tj.a) obj;
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
        boolean z;
        synchronized (this) {
            j = this.O;
            this.O = 0L;
        }
        tj.a aVar = this.M;
        long j2 = j & 3;
        int i = 0;
        if (j2 != 0) {
            z = aVar == tj.a.SUCCESS;
            if (j2 != 0) {
                j = z ? j | 8 : j | 4;
            }
        } else {
            z = false;
        }
        boolean z2 = (j & 4) != 0 && aVar == tj.a.EMPTY;
        long j3 = j & 3;
        if (j3 != 0) {
            boolean z3 = z ? true : z2;
            if (j3 != 0) {
                j |= z3 ? 32L : 16L;
            }
            if (z3) {
                i = 8;
            }
        }
        if ((j & 3) != 0) {
            this.N.setVisibility(i);
            this.N.setStatus(aVar);
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
