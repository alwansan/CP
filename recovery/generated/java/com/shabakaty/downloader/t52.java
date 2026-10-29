package com.shabakaty.downloader;

import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.facebook.drawee.view.SimpleDraweeView;

/* JADX INFO: compiled from: ItemVideoInfoActorBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class t52 extends aj1 implements lm0.a {
    public final mm0 R;
    public long S;

    /* JADX WARN: Illegal instructions before constructor call */
    public t52(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 3, null, null);
        super(gl0Var, view, 0, (SimpleDraweeView) objArrS[1], (TextView) objArrS[2], (ConstraintLayout) objArrS[0]);
        this.S = -1L;
        ((SimpleDraweeView) this.M).setTag(null);
        ((TextView) this.N).setTag(null);
        ((ConstraintLayout) this.O).setTag(null);
        view.setTag(R.id.dataBinding, this);
        this.R = new lm0(this, 1);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (11 == i) {
            this.Q = (ob4) obj;
            synchronized (this) {
                this.S |= 1;
            }
            f(11);
            x();
        } else {
            if (3 != i) {
                return false;
            }
            this.P = (f4) obj;
            synchronized (this) {
                this.S |= 2;
            }
            f(3);
            x();
        }
        return true;
    }

    @Override // com.shabakaty.downloader.lm0.a
    public final void d(int i, View view) {
        f4 f4Var = (f4) this.P;
        ob4 ob4Var = (ob4) this.Q;
        if (f4Var != null) {
            f4Var.v(ob4Var, view);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        String strA;
        String str;
        String str2;
        String strA2;
        String str3;
        synchronized (this) {
            j = this.S;
            this.S = 0L;
        }
        ob4 ob4Var = (ob4) this.Q;
        long j2 = 5 & j;
        if (j2 != 0) {
            if (ob4Var != null) {
                str = ob4Var.v;
                str2 = ob4Var.s;
                str3 = ob4Var.r;
            } else {
                str3 = null;
                str = null;
                str2 = null;
            }
            strA2 = el3.a(str3, "_img");
            strA = el3.a(str3, "_name");
        } else {
            strA = null;
            str = null;
            str2 = null;
            strA2 = null;
        }
        if (j2 != 0) {
            if (ViewDataBinding.G >= 21) {
                ((SimpleDraweeView) this.M).setTransitionName(strA2);
                ((TextView) this.N).setTransitionName(strA);
            }
            oy1.c((SimpleDraweeView) this.M, str, null, null, null);
            nl6.r((TextView) this.N, str2);
        }
        if ((j & 4) != 0) {
            st2.c((ConstraintLayout) this.O, this.R, null);
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
            this.S = 4L;
        }
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        return false;
    }
}
