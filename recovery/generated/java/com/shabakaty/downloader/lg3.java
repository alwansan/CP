package com.shabakaty.downloader;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;

/* JADX INFO: compiled from: ProfileItemLayoutBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class lg3 extends kg3 implements lm0.a {
    public final ConstraintLayout R;
    public final mm0 S;
    public long T;

    /* JADX WARN: Illegal instructions before constructor call */
    public lg3(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 3, null, null);
        super(gl0Var, view, 0, (ImageView) objArrS[2], (TextView) objArrS[1]);
        this.T = -1L;
        this.M.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArrS[0];
        this.R = constraintLayout;
        constraintLayout.setTag(null);
        this.N.setTag(null);
        view.setTag(R.id.dataBinding, this);
        this.S = new lm0(this, 1);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (24 == i) {
            I((Boolean) obj);
        } else if (17 == i) {
            H((rm1) obj);
        } else {
            if (13 != i) {
                return false;
            }
            G((String) obj);
        }
        return true;
    }

    @Override // com.shabakaty.downloader.kg3
    public void G(String str) {
        this.Q = str;
        synchronized (this) {
            this.T |= 4;
        }
        f(13);
        x();
    }

    @Override // com.shabakaty.downloader.kg3
    public void H(rm1<qv4> rm1Var) {
        this.O = rm1Var;
        synchronized (this) {
            this.T |= 2;
        }
        f(17);
        x();
    }

    @Override // com.shabakaty.downloader.kg3
    public void I(Boolean bool) {
        this.P = bool;
        synchronized (this) {
            this.T |= 1;
        }
        f(24);
        x();
    }

    @Override // com.shabakaty.downloader.lm0.a
    public final void d(int i, View view) {
        rm1<qv4> rm1Var = this.O;
        if (rm1Var != null) {
            rm1Var.invoke();
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0041 A[PHI: r0
      0x0041: PHI (r0v3 long) = (r0v2 long), (r0v7 long) binds: [B:16:0x002b, B:23:0x003b] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        boolean z;
        int i;
        synchronized (this) {
            j = this.T;
            this.T = 0L;
        }
        Boolean bool = this.P;
        String str = this.Q;
        long j2 = j & 9;
        int i2 = 0;
        if (j2 != 0) {
            z = bool == null;
            if (j2 != 0) {
                j = z ? j | 32 : j | 16;
            }
        } else {
            z = false;
        }
        long j3 = j & 16;
        if (j3 != 0) {
            boolean zA = ViewDataBinding.A(bool);
            if (j3 != 0) {
                j |= zA ? 128L : 64L;
            }
            if (zA) {
                i = 0;
            } else {
                i = 8;
            }
        } else {
            i = 0;
        }
        long j4 = 9 & j;
        if (j4 != 0 && !z) {
            i2 = i;
        }
        if (j4 != 0) {
            this.M.setVisibility(i2);
        }
        if ((12 & j) != 0) {
            nl6.q(this.R, str);
            nl6.r(this.N, str);
        }
        if ((j & 8) != 0) {
            st2.c(this.R, this.S, null);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.T != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.T = 8L;
        }
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        return false;
    }
}
