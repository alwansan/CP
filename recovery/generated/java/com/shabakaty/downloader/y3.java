package com.shabakaty.downloader;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: compiled from: ActivitySignUpBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class y3 extends x3 implements lm0.a {
    public static final SparseIntArray f0;
    public final TextInputEditText Y;
    public final TextInputEditText Z;
    public final TextInputEditText a0;
    public final mm0 b0;
    public final mm0 c0;
    public final mm0 d0;
    public long e0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f0 = sparseIntArray;
        sparseIntArray.put(R.id.sign_up_general_layout, 10);
        sparseIntArray.put(R.id.appCompatImageView2, 11);
        sparseIntArray.put(R.id.sign_up_email_input, 12);
        sparseIntArray.put(R.id.sign_up_username_input, 13);
        sparseIntArray.put(R.id.sign_up_password_input, 14);
        sparseIntArray.put(R.id.sign_up_toolbar_layout, 15);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public y3(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 16, null, f0);
        super(gl0Var, view, 4, (AppCompatImageView) objArrS[11], (ProgressBar) objArrS[9], (MaterialButton) objArrS[5], (TextInputLayout) objArrS[12], (ConstraintLayout) objArrS[10], (TextView) objArrS[6], (MaterialButton) objArrS[7], (TextInputLayout) objArrS[14], (SimpleDraweeView) objArrS[1], (Toolbar) objArrS[15], (TextInputLayout) objArrS[13], (TextView) objArrS[8]);
        this.e0 = -1L;
        ((CoordinatorLayout) objArrS[0]).setTag(null);
        TextInputEditText textInputEditText = (TextInputEditText) objArrS[2];
        this.Y = textInputEditText;
        textInputEditText.setTag(null);
        TextInputEditText textInputEditText2 = (TextInputEditText) objArrS[3];
        this.Z = textInputEditText2;
        textInputEditText2.setTag(null);
        TextInputEditText textInputEditText3 = (TextInputEditText) objArrS[4];
        this.a0 = textInputEditText3;
        textInputEditText3.setTag(null);
        this.M.setTag(null);
        this.N.setTag(null);
        this.P.setTag(null);
        this.Q.setTag(null);
        this.S.setTag(null);
        this.V.setTag(null);
        view.setTag(R.id.dataBinding, this);
        this.b0 = new lm0(this, 3);
        this.c0 = new lm0(this, 1);
        this.d0 = new lm0(this, 2);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (16 == i) {
            this.X = (z54) obj;
            synchronized (this) {
                this.e0 |= 16;
            }
            f(16);
            x();
        } else {
            if (38 != i) {
                return false;
            }
            this.W = (a64) obj;
            synchronized (this) {
                this.e0 |= 32;
            }
            f(38);
            x();
        }
        return true;
    }

    @Override // com.shabakaty.downloader.lm0.a
    public final void d(int i, View view) {
        if (i == 1) {
            z54 z54Var = this.X;
            if (z54Var != null) {
                z54Var.I0();
                return;
            }
            return;
        }
        if (i == 2) {
            z54 z54Var2 = this.X;
            if (z54Var2 != null) {
                z54Var2.x0();
                return;
            }
            return;
        }
        if (i != 3) {
            return;
        }
        z54 z54Var3 = this.X;
        if (z54Var3 != null) {
            z54Var3.a1();
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0067  */
    /* JADX WARN: Code duplicated, block: B:45:0x0081  */
    /* JADX WARN: Code duplicated, block: B:54:0x009c  */
    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        String value;
        String value2;
        String value3;
        synchronized (this) {
            j = this.e0;
            this.e0 = 0L;
        }
        a64 a64Var = this.W;
        int i = 0;
        if ((111 & j) != 0) {
            long j2 = j & 97;
            if (j2 != 0) {
                xv2<tj.a> xv2Var = a64Var != null ? a64Var.d : null;
                E(0, xv2Var);
                tj.a value4 = xv2Var != null ? xv2Var.getValue() : null;
                boolean zEquals = value4 != null ? value4.equals(tj.a.LOADING) : false;
                if (j2 != 0) {
                    j |= zEquals ? 256L : 128L;
                }
                if (!zEquals) {
                    i = 8;
                }
            }
            if ((j & 98) == 0) {
                value2 = null;
            } else {
                xv2<String> xv2Var2 = a64Var != null ? a64Var.h : null;
                E(1, xv2Var2);
                if (xv2Var2 != null) {
                    value2 = xv2Var2.getValue();
                } else {
                    value2 = null;
                }
            }
            if ((j & 100) == 0) {
                value3 = null;
            } else {
                xv2<String> xv2Var3 = a64Var != null ? a64Var.j : null;
                E(2, xv2Var3);
                if (xv2Var3 != null) {
                    value3 = xv2Var3.getValue();
                } else {
                    value3 = null;
                }
            }
            if ((104 & j) == 0) {
                value = null;
            } else {
                xv2<String> xv2Var4 = a64Var != null ? a64Var.i : null;
                E(3, xv2Var4);
                if (xv2Var4 != null) {
                    value = xv2Var4.getValue();
                } else {
                    value = null;
                }
            }
        } else {
            value = null;
            value2 = null;
            value3 = null;
        }
        if ((100 & j) != 0) {
            nl6.r(this.Y, value3);
        }
        if ((j & 98) != 0) {
            nl6.r(this.Z, value2);
        }
        if ((104 & j) != 0) {
            nl6.r(this.a0, value);
        }
        if ((j & 97) != 0) {
            this.M.setVisibility(i);
        }
        if ((j & 64) != 0) {
            MaterialButton materialButton = this.N;
            e3.a(materialButton, R.string.sign_up_txt, materialButton);
            st2.c(this.N, this.d0, null);
            TextView textView = this.P;
            d3.a(textView, R.string.already_have_an_account_txt, textView);
            MaterialButton materialButton2 = this.Q;
            e3.a(materialButton2, R.string.loginDialog_login, materialButton2);
            st2.c(this.Q, this.b0, null);
            st2.c(this.S, this.c0, null);
            TextView textView2 = this.V;
            d3.a(textView2, R.string.tap_to_choose_photo_txt, textView2);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.e0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.e0 = 64L;
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
                this.e0 |= 1;
            }
            return true;
        }
        if (i == 1) {
            if (i2 != 0) {
                return false;
            }
            synchronized (this) {
                this.e0 |= 2;
            }
            return true;
        }
        if (i == 2) {
            if (i2 != 0) {
                return false;
            }
            synchronized (this) {
                this.e0 |= 4;
            }
            return true;
        }
        if (i != 3) {
            return false;
        }
        if (i2 != 0) {
            return false;
        }
        synchronized (this) {
            this.e0 |= 8;
        }
        return true;
    }
}
