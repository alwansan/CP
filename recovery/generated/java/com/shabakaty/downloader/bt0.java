package com.shabakaty.downloader;

import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.google.android.material.button.MaterialButton;

/* JADX INFO: compiled from: DialogForgotPasswordBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class bt0 extends at0 implements lm0.a {
    public static final ViewDataBinding.e R;
    public final mm0 P;
    public long Q;

    static {
        ViewDataBinding.e eVar = new ViewDataBinding.e(3);
        R = eVar;
        eVar.a(0, new String[]{"item_edit_profile_input"}, new int[]{2}, new int[]{R.layout.item_edit_profile_input});
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public bt0(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 3, R, null);
        super(gl0Var, view, 1, (r42) objArrS[2], (MaterialButton) objArrS[1]);
        this.Q = -1L;
        r42 r42Var = this.M;
        if (r42Var != null) {
            r42Var.B = this;
        }
        this.N.setTag(null);
        ((ConstraintLayout) objArrS[0]).setTag(null);
        view.setTag(R.id.dataBinding, this);
        this.P = new lm0(this, 1);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void B(rh2 rh2Var) {
        super.B(rh2Var);
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

    @Override // com.shabakaty.downloader.at0
    public void G(dl2 dl2Var) {
        this.O = dl2Var;
        synchronized (this) {
            this.Q |= 2;
        }
        f(38);
        x();
    }

    @Override // com.shabakaty.downloader.lm0.a
    public final void d(int i, View view) {
        dl2 dl2Var = this.O;
        if (dl2Var != null) {
            if (!((mq3) dl2Var.l.getValue()).a(dl2Var.p)) {
                ((yk2) dl2Var.f()).q(R.string.incorrect_email_txt);
            } else {
                dl2Var.h.forgotPassword(dl2Var.m, dl2Var.p);
                ((yk2) dl2Var.f()).b1();
            }
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        synchronized (this) {
            j = this.Q;
            this.Q = 0L;
        }
        dl2 dl2Var = this.O;
        long j2 = 6 & j;
        String str = (j2 == 0 || dl2Var == null) ? null : dl2Var.p;
        if ((j & 4) != 0) {
            this.M.G(this.v.getResources().getString(R.string.email_txt));
            MaterialButton materialButton = this.N;
            e3.a(materialButton, R.string.submit, materialButton);
            st2.c(this.N, this.P, null);
        }
        if (j2 != 0) {
            this.M.I(str);
        }
        this.M.j();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            if (this.Q != 0) {
                return true;
            }
            return this.M.o();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.Q = 4L;
        }
        this.M.p();
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
            this.Q |= 1;
        }
        return true;
    }
}
