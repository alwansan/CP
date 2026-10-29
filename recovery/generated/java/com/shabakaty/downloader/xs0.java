package com.shabakaty.downloader;

import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.google.android.material.button.MaterialButton;

/* JADX INFO: compiled from: DialogChangePasswordBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class xs0 extends ws0 implements lm0.a {
    public static final ViewDataBinding.e T;
    public final mm0 R;
    public long S;

    static {
        ViewDataBinding.e eVar = new ViewDataBinding.e(5);
        T = eVar;
        eVar.a(0, new String[]{"item_edit_profile_input", "item_edit_profile_input", "item_edit_profile_input"}, new int[]{2, 3, 4}, new int[]{R.layout.item_edit_profile_input, R.layout.item_edit_profile_input, R.layout.item_edit_profile_input});
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public xs0(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 5, T, null);
        super(gl0Var, view, 3, (r42) objArrS[4], (r42) objArrS[3], (r42) objArrS[2], (MaterialButton) objArrS[1]);
        this.S = -1L;
        ((ConstraintLayout) objArrS[0]).setTag(null);
        r42 r42Var = this.M;
        if (r42Var != null) {
            r42Var.B = this;
        }
        r42 r42Var2 = this.N;
        if (r42Var2 != null) {
            r42Var2.B = this;
        }
        r42 r42Var3 = this.O;
        if (r42Var3 != null) {
            r42Var3.B = this;
        }
        this.P.setTag(null);
        view.setTag(R.id.dataBinding, this);
        this.R = new lm0(this, 1);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void B(rh2 rh2Var) {
        super.B(rh2Var);
        this.O.B(rh2Var);
        this.N.B(rh2Var);
        this.M.B(rh2Var);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (38 != i) {
            return false;
        }
        G((dl2) obj);
        return true;
    }

    @Override // com.shabakaty.downloader.ws0
    public void G(dl2 dl2Var) {
        this.Q = dl2Var;
        synchronized (this) {
            this.S |= 8;
        }
        f(38);
        x();
    }

    @Override // com.shabakaty.downloader.lm0.a
    public final void d(int i, View view) {
        dl2 dl2Var = this.Q;
        if (dl2Var != null) {
            if (ne4.D(dl2Var.s) || dl2Var.s.length() != 6) {
                ((yk2) dl2Var.f()).q(R.string.security_code_empty_txt);
                return;
            }
            if (!j32.a(dl2Var.q, dl2Var.r)) {
                ((yk2) dl2Var.f()).q(R.string.passwords_dont_match_txt);
            } else if (q44.a(dl2Var.q)) {
                dl2Var.h.resetPassword(dl2Var.k, dl2Var.p, dl2Var.q, dl2Var.r, dl2Var.s);
            } else {
                ((yk2) dl2Var.f()).q(R.string.short_password_txt);
            }
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        synchronized (this) {
            j = this.S;
            this.S = 0L;
        }
        if ((j & 16) != 0) {
            this.M.G(this.v.getResources().getString(R.string.security_code_txt));
            this.N.G(this.v.getResources().getString(R.string.confirm_password_txt));
            this.O.G(this.v.getResources().getString(R.string.new_password_txt));
            MaterialButton materialButton = this.P;
            e3.a(materialButton, R.string.submit, materialButton);
            st2.c(this.P, this.R, null);
        }
        this.O.j();
        this.N.j();
        this.M.j();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            if (this.S != 0) {
                return true;
            }
            return this.O.o() || this.N.o() || this.M.o();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.S = 16L;
        }
        this.O.p();
        this.N.p();
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
                this.S |= 1;
            }
            return true;
        }
        if (i == 1) {
            if (i2 != 0) {
                return false;
            }
            synchronized (this) {
                this.S |= 2;
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
            this.S |= 4;
        }
        return true;
    }
}
