package com.shabakaty.downloader;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.facebook.drawee.view.SimpleDraweeView;

/* JADX INFO: compiled from: ActivitySplashBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class a4 extends z3 implements lm0.a {
    public static final SparseIntArray T;
    public final mm0 R;
    public long S;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        T = sparseIntArray;
        sparseIntArray.put(R.id.imageView3, 4);
        sparseIntArray.put(R.id.bottom_guideline, 5);
        sparseIntArray.put(R.id.internal_router_by_txt, 6);
        sparseIntArray.put(R.id.imageView2, 7);
        sparseIntArray.put(R.id.guideline5, 8);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public a4(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 9, null, T);
        super(gl0Var, view, 1, (Guideline) objArrS[5], (Guideline) objArrS[8], (SimpleDraweeView) objArrS[7], (SimpleDraweeView) objArrS[4], (TextView) objArrS[6], (TextView) objArrS[1], (TextView) objArrS[3], (AppCompatImageView) objArrS[2]);
        this.S = -1L;
        this.M.setTag(null);
        ((ConstraintLayout) objArrS[0]).setTag(null);
        this.N.setTag(null);
        this.O.setTag(null);
        view.setTag(R.id.dataBinding, this);
        this.R = new lm0(this, 1);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (38 == i) {
            this.Q = (ka4) obj;
            synchronized (this) {
                this.S |= 2;
            }
            f(38);
            x();
        } else {
            if (16 != i) {
                return false;
            }
            this.P = (fa4) obj;
            synchronized (this) {
                this.S |= 4;
            }
            f(16);
            x();
        }
        return true;
    }

    @Override // com.shabakaty.downloader.lm0.a
    public final void d(int i, View view) {
        fa4 fa4Var = this.P;
        if (fa4Var != null) {
            fa4Var.o();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        synchronized (this) {
            j = this.S;
            this.S = 0L;
        }
        ka4 ka4Var = this.Q;
        long j2 = j & 11;
        int i = 0;
        if (j2 != 0) {
            xv2<tj.a> xv2Var = ka4Var != null ? ka4Var.d : null;
            E(0, xv2Var);
            tj.a value = xv2Var != null ? xv2Var.getValue() : null;
            boolean zEquals = value != null ? value.equals(tj.a.ERROR) : false;
            if (j2 != 0) {
                j |= zEquals ? 32L : 16L;
            }
            if (!zEquals) {
                i = 8;
            }
        }
        if ((8 & j) != 0) {
            TextView textView = this.M;
            d3.a(textView, R.string.app_name, textView);
            TextView textView2 = this.N;
            d3.a(textView2, R.string.not_earthlink_txt, textView2);
            st2.c(this.O, this.R, null);
        }
        if ((j & 11) != 0) {
            this.O.setVisibility(i);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.S != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.S = 8L;
        }
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        if (i != 0) {
            return false;
        }
        if (i2 != 0) {
            return false;
        }
        synchronized (this) {
            this.S |= 1;
        }
        return true;
    }
}
