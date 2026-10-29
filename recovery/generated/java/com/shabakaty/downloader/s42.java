package com.shabakaty.downloader;

import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import java.util.HashMap;

/* JADX INFO: compiled from: ItemEditProfileInputBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class s42 extends r42 {
    public final TextInputEditText R;
    public long S;

    /* JADX WARN: Illegal instructions before constructor call */
    public s42(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 4, null, null);
        super(gl0Var, view, 0, (TextInputLayout) objArrS[2], (TextView) objArrS[1]);
        this.S = -1L;
        this.M.setTag(null);
        this.N.setTag(null);
        ((ConstraintLayout) objArrS[0]).setTag(null);
        TextInputEditText textInputEditText = (TextInputEditText) objArrS[3];
        this.R = textInputEditText;
        textInputEditText.setTag(null);
        view.setTag(R.id.dataBinding, this);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (14 == i) {
            G((String) obj);
        } else if (19 == i) {
            H((Boolean) obj);
        } else {
            if (29 != i) {
                return false;
            }
            I((String) obj);
        }
        return true;
    }

    @Override // com.shabakaty.downloader.r42
    public void G(String str) {
        this.O = str;
        synchronized (this) {
            this.S |= 1;
        }
        f(14);
        x();
    }

    @Override // com.shabakaty.downloader.r42
    public void H(Boolean bool) {
        this.Q = bool;
        synchronized (this) {
            this.S |= 2;
        }
        f(19);
        x();
    }

    @Override // com.shabakaty.downloader.r42
    public void I(String str) {
        this.P = str;
        synchronized (this) {
            this.S |= 4;
        }
        f(29);
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        synchronized (this) {
            j = this.S;
            this.S = 0L;
        }
        String str = this.O;
        Boolean bool = this.Q;
        String str2 = this.P;
        long j2 = 9 & j;
        long j3 = 10 & j;
        long j4 = j & 12;
        if (j3 != 0) {
            TextInputLayout textInputLayout = this.M;
            HashMap<Integer, String> map = st2.a;
            j32.e(textInputLayout, "<this>");
            if (j32.a(bool, Boolean.TRUE)) {
                textInputLayout.setEndIconMode(1);
                textInputLayout.setTextAlignment(2);
                textInputLayout.setTextDirection(3);
                EditText editText = textInputLayout.getEditText();
                if (editText != null) {
                    editText.setTransformationMethod(new PasswordTransformationMethod());
                }
            }
        }
        if (j2 != 0) {
            nl6.r(this.N, str);
        }
        if (j4 != 0) {
            nl6.r(this.R, str2);
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
        return false;
    }
}
