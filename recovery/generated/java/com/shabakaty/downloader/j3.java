package com.shabakaty.downloader;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.google.android.material.button.MaterialButton;

/* JADX INFO: compiled from: ActivityQrLoginBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class j3 extends i3 implements lm0.a {
    public static final ViewDataBinding.e Y;
    public static final SparseIntArray Z;
    public final mm0 V;
    public final mm0 W;
    public long X;

    static {
        ViewDataBinding.e eVar = new ViewDataBinding.e(9);
        Y = eVar;
        eVar.a(1, new String[]{"item_edit_profile_input"}, new int[]{7}, new int[]{R.layout.item_edit_profile_input});
        SparseIntArray sparseIntArray = new SparseIntArray();
        Z = sparseIntArray;
        sparseIntArray.put(R.id.login_toolbar_layout, 8);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public j3(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 9, Y, Z);
        super(gl0Var, view, 3, (r42) objArrS[7], (Toolbar) objArrS[8], (ProgressBar) objArrS[6], (MaterialButton) objArrS[4], (TextView) objArrS[2], (TextView) objArrS[3], (MaterialButton) objArrS[5]);
        this.X = -1L;
        r42 r42Var = this.M;
        if (r42Var != null) {
            r42Var.B = this;
        }
        ((CoordinatorLayout) objArrS[0]).setTag(null);
        ((ConstraintLayout) objArrS[1]).setTag(null);
        this.O.setTag(null);
        this.P.setTag(null);
        this.Q.setTag(null);
        this.R.setTag(null);
        this.S.setTag(null);
        view.setTag(R.id.dataBinding, this);
        this.V = new lm0(this, 2);
        this.W = new lm0(this, 1);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void B(rh2 rh2Var) {
        super.B(rh2Var);
        this.M.B(rh2Var);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (16 == i) {
            this.U = (dk3) obj;
            synchronized (this) {
                this.X |= 8;
            }
            f(16);
            x();
        } else {
            if (38 != i) {
                return false;
            }
            this.T = (fk3) obj;
            synchronized (this) {
                this.X |= 16;
            }
            f(38);
            x();
        }
        return true;
    }

    @Override // com.shabakaty.downloader.lm0.a
    public final void d(int i, View view) {
        if (i == 1) {
            dk3 dk3Var = this.U;
            if (dk3Var != null) {
                dk3Var.S1();
                return;
            }
            return;
        }
        if (i != 2) {
            return;
        }
        dk3 dk3Var2 = this.U;
        if (dk3Var2 != null) {
            dk3Var2.H();
        }
    }

    /* JADX WARN: Code duplicated, block: B:33:0x005e A[PHI: r0 r11
      0x005e: PHI (r0v2 long) = (r0v1 long), (r0v7 long), (r0v7 long) binds: [B:6:0x0015, B:26:0x0049, B:31:0x0055] A[DONT_GENERATE, DONT_INLINE]
      0x005e: PHI (r11v1 int) = (r11v0 int), (r11v3 int), (r11v3 int) binds: [B:6:0x0015, B:26:0x0049, B:31:0x0055] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        String value;
        synchronized (this) {
            j = this.X;
            this.X = 0L;
        }
        fk3 fk3Var = this.T;
        int i = 0;
        if ((53 & j) != 0) {
            long j2 = j & 49;
            if (j2 != 0) {
                xv2<Boolean> xv2Var = fk3Var != null ? fk3Var.g : null;
                E(0, xv2Var);
                boolean zA = ViewDataBinding.A(xv2Var != null ? xv2Var.getValue() : null);
                if (j2 != 0) {
                    j |= zA ? 128L : 64L;
                }
                if (!zA) {
                    i = 8;
                }
            }
            if ((j & 52) == 0) {
                value = null;
            } else {
                xv2<String> xv2Var2 = fk3Var != null ? fk3Var.h : null;
                E(2, xv2Var2);
                if (xv2Var2 != null) {
                    value = xv2Var2.getValue();
                } else {
                    value = null;
                }
            }
        } else {
            value = null;
        }
        if ((32 & j) != 0) {
            this.M.G(this.v.getResources().getString(R.string.user_code));
            MaterialButton materialButton = this.P;
            e3.a(materialButton, R.string.loginDialog_login, materialButton);
            st2.c(this.P, this.W, null);
            TextView textView = this.Q;
            d3.a(textView, R.string.qr_login_header_txt, textView);
            TextView textView2 = this.R;
            d3.a(textView2, R.string.qr_login_sub_txt, textView2);
            MaterialButton materialButton2 = this.S;
            e3.a(materialButton2, R.string.scan, materialButton2);
            st2.c(this.S, this.V, null);
        }
        if ((j & 52) != 0) {
            this.M.I(value);
        }
        if ((j & 49) != 0) {
            this.O.setVisibility(i);
        }
        this.M.j();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            if (this.X != 0) {
                return true;
            }
            return this.M.o();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.X = 32L;
        }
        this.M.p();
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        if (i == 0) {
            if (i2 != 0) {
                return false;
            }
            synchronized (this) {
                this.X |= 1;
            }
            return true;
        }
        if (i == 1) {
            if (i2 != 0) {
                return false;
            }
            synchronized (this) {
                this.X |= 2;
            }
            return true;
        }
        if (i != 2) {
            return false;
        }
        if (i2 != 0) {
            return false;
        }
        synchronized (this) {
            this.X |= 4;
        }
        return true;
    }
}
