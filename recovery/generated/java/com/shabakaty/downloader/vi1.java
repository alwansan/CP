package com.shabakaty.downloader;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.google.android.material.button.MaterialButton;

/* JADX INFO: compiled from: FragmentCommentsRulesBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class vi1 extends ui1 {
    public static final SparseIntArray Q;
    public long P;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        Q = sparseIntArray;
        sparseIntArray.put(R.id.rules_header_text_view, 2);
        sparseIntArray.put(R.id.rules_list_view, 3);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public vi1(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 4, null, Q);
        super(gl0Var, view, 0, (MaterialButton) objArrS[1], (TextView) objArrS[2], (ListView) objArrS[3]);
        this.P = -1L;
        this.M.setTag(null);
        ((LinearLayout) objArrS[0]).setTag(null);
        view.setTag(R.id.dataBinding, this);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        return true;
    }

    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        synchronized (this) {
            j = this.P;
            this.P = 0L;
        }
        if ((j & 1) != 0) {
            MaterialButton materialButton = this.M;
            e3.a(materialButton, R.string.txt_ok, materialButton);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.P != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.P = 1L;
        }
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        return false;
    }
}
