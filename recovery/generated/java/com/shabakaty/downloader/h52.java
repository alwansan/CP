package com.shabakaty.downloader;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.button.MaterialButton;

/* JADX INFO: compiled from: ItemMoreAppsBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class h52 extends g52 implements lm0.a {
    public final mm0 V;
    public long W;

    /* JADX WARN: Illegal instructions before constructor call */
    public h52(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 5, null, null);
        super(gl0Var, view, 0, (TextView) objArrS[2], (SimpleDraweeView) objArrS[3], (TextView) objArrS[1], (MaterialButton) objArrS[4]);
        this.W = -1L;
        this.M.setTag(null);
        this.N.setTag(null);
        this.O.setTag(null);
        this.P.setTag(null);
        ((ConstraintLayout) objArrS[0]).setTag(null);
        view.setTag(R.id.dataBinding, this);
        this.V = new lm0(this, 1);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (7 == i) {
            H((Drawable) obj);
        } else if (10 == i) {
            I((Boolean) obj);
        } else if (5 == i) {
            G((String) obj);
        } else if (30 == i) {
            L((String) obj);
        } else {
            if (17 != i) {
                return false;
            }
            J((rm1) obj);
        }
        return true;
    }

    @Override // com.shabakaty.downloader.g52
    public void G(String str) {
        this.T = str;
        synchronized (this) {
            this.W |= 4;
        }
        f(5);
        x();
    }

    @Override // com.shabakaty.downloader.g52
    public void H(Drawable drawable) {
        this.U = drawable;
        synchronized (this) {
            this.W |= 1;
        }
        f(7);
        x();
    }

    @Override // com.shabakaty.downloader.g52
    public void I(Boolean bool) {
        this.Q = bool;
        synchronized (this) {
            this.W |= 2;
        }
        f(10);
        x();
    }

    @Override // com.shabakaty.downloader.g52
    public void J(rm1<qv4> rm1Var) {
        this.R = rm1Var;
        synchronized (this) {
            this.W |= 16;
        }
        f(17);
        x();
    }

    @Override // com.shabakaty.downloader.g52
    public void L(String str) {
        this.S = str;
        synchronized (this) {
            this.W |= 8;
        }
        f(30);
        x();
    }

    @Override // com.shabakaty.downloader.lm0.a
    public final void d(int i, View view) {
        rm1<qv4> rm1Var = this.R;
        if (rm1Var != null) {
            rm1Var.invoke();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        String str;
        synchronized (this) {
            j = this.W;
            this.W = 0L;
        }
        Drawable drawable = this.U;
        Boolean bool = this.Q;
        String str2 = this.T;
        String str3 = this.S;
        long j2 = j & 34;
        if (j2 != 0) {
            boolean zA = ViewDataBinding.A(bool);
            if (j2 != 0) {
                j |= zA ? 128L : 64L;
            }
            str = zA ? "Open" : "Get";
        } else {
            str = null;
        }
        long j3 = 40 & j;
        if ((36 & j) != 0) {
            nl6.r(this.M, str2);
        }
        if ((33 & j) != 0) {
            oy1.d(this.N, drawable);
        }
        if (j3 != 0) {
            nl6.r(this.O, str3);
        }
        if ((j & 34) != 0) {
            nl6.r(this.P, str);
        }
        if ((j & 32) != 0) {
            st2.c(this.P, this.V, null);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.W != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.W = 32L;
        }
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        return false;
    }
}
