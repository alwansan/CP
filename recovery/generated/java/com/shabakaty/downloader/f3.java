package com.shabakaty.downloader;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: compiled from: ActivityLoginBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class f3 extends c3 implements lm0.a {
    public static final SparseIntArray h0;
    public final TextInputEditText Z;
    public final TextInputEditText a0;
    public final mm0 b0;
    public final mm0 c0;
    public final mm0 d0;
    public final mm0 e0;
    public final mm0 f0;
    public long g0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        h0 = sparseIntArray;
        sparseIntArray.put(R.id.appCompatImageView2, 11);
        sparseIntArray.put(R.id.login_username_input, 12);
        sparseIntArray.put(R.id.login_password_input, 13);
        sparseIntArray.put(R.id.login_toolbar_layout, 14);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public f3(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 15, null, h0);
        super(gl0Var, view, 3, (AppCompatImageView) objArrS[11], (MaterialButton) objArrS[4], (TextView) objArrS[8], (MaterialButton) objArrS[6], (TextView) objArrS[3], (MaterialButton) objArrS[7], (MaterialButton) objArrS[9], (TextView) objArrS[5], (TextInputLayout) objArrS[13], (Toolbar) objArrS[14], (TextInputLayout) objArrS[12], (ProgressBar) objArrS[10]);
        this.g0 = -1L;
        this.M.setTag(null);
        this.N.setTag(null);
        this.O.setTag(null);
        this.P.setTag(null);
        this.Q.setTag(null);
        this.R.setTag(null);
        this.S.setTag(null);
        ((CoordinatorLayout) objArrS[0]).setTag(null);
        TextInputEditText textInputEditText = (TextInputEditText) objArrS[1];
        this.Z = textInputEditText;
        textInputEditText.setTag(null);
        TextInputEditText textInputEditText2 = (TextInputEditText) objArrS[2];
        this.a0 = textInputEditText2;
        textInputEditText2.setTag(null);
        this.W.setTag(null);
        view.setTag(R.id.dataBinding, this);
        this.b0 = new lm0(this, 4);
        this.c0 = new lm0(this, 2);
        this.d0 = new lm0(this, 5);
        this.e0 = new lm0(this, 3);
        this.f0 = new lm0(this, 1);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (16 == i) {
            this.Y = (yk2) obj;
            synchronized (this) {
                this.g0 |= 8;
            }
            f(16);
            x();
        } else {
            if (38 != i) {
                return false;
            }
            this.X = (dl2) obj;
            synchronized (this) {
                this.g0 |= 16;
            }
            f(38);
            x();
        }
        return true;
    }

    @Override // com.shabakaty.downloader.lm0.a
    public final void d(int i, View view) {
        if (i == 1) {
            yk2 yk2Var = this.Y;
            if (yk2Var != null) {
                yk2Var.l();
                return;
            }
            return;
        }
        if (i == 2) {
            dl2 dl2Var = this.X;
            if (dl2Var != null) {
                dl2Var.p();
                return;
            }
            return;
        }
        if (i == 3) {
            dl2 dl2Var2 = this.X;
            if (dl2Var2 != null) {
                ((yk2) dl2Var2.f()).g0();
                return;
            }
            return;
        }
        if (i == 4) {
            dl2 dl2Var3 = this.X;
            if (dl2Var3 != null) {
                ((yk2) dl2Var3.f()).C();
                return;
            }
            return;
        }
        if (i != 5) {
            return;
        }
        yk2 yk2Var2 = this.Y;
        if (yk2Var2 != null) {
            yk2Var2.B1();
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0033  */
    /* JADX WARN: Code duplicated, block: B:35:0x0062 A[PHI: r2
      0x0062: PHI (r2v3 long) = (r2v0 long), (r2v5 long) binds: [B:18:0x0037, B:32:0x005c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:44:0x007c  */
    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        int i;
        String value;
        String value2;
        synchronized (this) {
            j = this.g0;
            this.g0 = 0L;
        }
        dl2 dl2Var = this.X;
        if ((55 & j) != 0) {
            if ((j & 49) == 0) {
                value2 = null;
            } else {
                xv2<String> xv2Var = dl2Var != null ? dl2Var.n : null;
                E(0, xv2Var);
                if (xv2Var != null) {
                    value2 = xv2Var.getValue();
                } else {
                    value2 = null;
                }
            }
            long j2 = 50 & j;
            if (j2 == 0) {
                i = 0;
            } else {
                xv2<Boolean> xv2Var2 = dl2Var != null ? dl2Var.t : null;
                E(1, xv2Var2);
                boolean zA = ViewDataBinding.A(xv2Var2 != null ? xv2Var2.getValue() : null);
                if (j2 != 0) {
                    j |= zA ? 128L : 64L;
                }
                if (zA) {
                    i = 0;
                } else {
                    i = 8;
                }
            }
            if ((j & 52) == 0) {
                value = null;
            } else {
                xv2<String> xv2Var3 = dl2Var != null ? dl2Var.o : null;
                E(2, xv2Var3);
                if (xv2Var3 != null) {
                    value = xv2Var3.getValue();
                } else {
                    value = null;
                }
            }
        } else {
            i = 0;
            value = null;
            value2 = null;
        }
        if ((32 & j) != 0) {
            MaterialButton materialButton = this.M;
            e3.a(materialButton, R.string.loginDialog_login, materialButton);
            st2.c(this.M, this.c0, null);
            TextView textView = this.N;
            d3.a(textView, R.string.dont_have_and_account_txt, textView);
            MaterialButton materialButton2 = this.O;
            e3.a(materialButton2, R.string.continue_with_facebook_txt, materialButton2);
            st2.c(this.O, this.e0, null);
            TextView textView2 = this.P;
            d3.a(textView2, R.string.forgot_password_txt, textView2);
            st2.c(this.P, this.f0, null);
            MaterialButton materialButton3 = this.Q;
            e3.a(materialButton3, R.string.continue_with_google_txt, materialButton3);
            st2.c(this.Q, this.b0, null);
            MaterialButton materialButton4 = this.R;
            e3.a(materialButton4, R.string.join_txt, materialButton4);
            st2.c(this.R, this.d0, null);
            TextView textView3 = this.S;
            d3.a(textView3, R.string.or_txt, textView3);
        }
        if ((j & 49) != 0) {
            nl6.r(this.Z, value2);
        }
        if ((52 & j) != 0) {
            nl6.r(this.a0, value);
        }
        if ((j & 50) != 0) {
            this.W.setVisibility(i);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.g0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.g0 = 32L;
        }
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        if (i == 0) {
            if (i2 != 0) {
                return false;
            }
            synchronized (this) {
                this.g0 |= 1;
            }
            return true;
        }
        if (i == 1) {
            if (i2 != 0) {
                return false;
            }
            synchronized (this) {
                this.g0 |= 2;
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
            this.g0 |= 4;
        }
        return true;
    }
}
