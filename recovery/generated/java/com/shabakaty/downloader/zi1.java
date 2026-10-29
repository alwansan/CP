package com.shabakaty.downloader;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.cinemana.pro.R;

/* JADX INFO: compiled from: FragmentDialogBottomSheetBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class zi1 extends yi1 {
    public static final SparseIntArray S;
    public final TextView Q;
    public long R;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        S = sparseIntArray;
        sparseIntArray.put(R.id.bottom_sheet_handle_view, 2);
        sparseIntArray.put(R.id.recycler_bottom_lists, 3);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public zi1(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 4, null, S);
        super(gl0Var, view, 1, (LinearLayout) objArrS[0], (View) objArrS[2], (RecyclerView) objArrS[3]);
        this.R = -1L;
        this.M.setTag(null);
        TextView textView = (TextView) objArrS[1];
        this.Q = textView;
        textView.setTag(null);
        view.setTag(R.id.dataBinding, this);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (38 == i) {
            this.P = (di2) obj;
            synchronized (this) {
                this.R |= 2;
            }
            f(38);
            x();
        } else {
            if (16 != i) {
                return false;
            }
            this.O = (vj) obj;
        }
        return true;
    }

    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        boolean zIsEmpty;
        synchronized (this) {
            j = this.R;
            this.R = 0L;
        }
        di2 di2Var = this.P;
        long j2 = j & 11;
        String value = null;
        int i = 0;
        if (j2 != 0) {
            xv2<String> xv2Var = di2Var != null ? di2Var.g : null;
            E(0, xv2Var);
            value = xv2Var != null ? xv2Var.getValue() : null;
            zIsEmpty = value != null ? value.isEmpty() : false;
            if (j2 != 0) {
                j = zIsEmpty ? j | 128 : j | 64;
            }
        } else {
            zIsEmpty = false;
        }
        boolean z = (j & 64) != 0 && value == null;
        long j3 = j & 11;
        if (j3 != 0) {
            boolean z2 = zIsEmpty ? true : z;
            if (j3 != 0) {
                j |= z2 ? 32L : 16L;
            }
            if (z2) {
                i = 8;
            }
        }
        if ((j & 11) != 0) {
            nl6.r(this.Q, value);
            this.Q.setVisibility(i);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.R != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.R = 8L;
        }
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
            this.R |= 1;
        }
        return true;
    }
}
