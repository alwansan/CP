package com.shabakaty.downloader;

import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.cinemana.pro.R;
import com.shabakaty.cinemana.data.db.downloads.CinemanaDownloadItem;
import java.util.List;

/* JADX INFO: compiled from: FragmentDownloadItemsBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class fj1 extends ej1 {
    public final TextView Q;
    public long R;

    /* JADX WARN: Illegal instructions before constructor call */
    public fj1(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 5, null, null);
        super(gl0Var, view, 1, (TextView) objArrS[3], (RecyclerView) objArrS[1], (AppCompatImageView) objArrS[2]);
        this.R = -1L;
        this.M.setTag(null);
        this.N.setTag(null);
        this.O.setTag(null);
        ((ConstraintLayout) objArrS[0]).setTag(null);
        TextView textView = (TextView) objArrS[4];
        this.Q = textView;
        textView.setTag(null);
        view.setTag(R.id.dataBinding, this);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (38 != i) {
            return false;
        }
        this.P = (by0) obj;
        synchronized (this) {
            this.R |= 2;
        }
        f(38);
        x();
        return true;
    }

    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        List<CinemanaDownloadItem> value;
        boolean zIsEmpty;
        int i;
        long j2;
        long j3;
        synchronized (this) {
            j = this.R;
            this.R = 0L;
        }
        by0 by0Var = this.P;
        long j4 = j & 7;
        int i2 = 0;
        if (j4 != 0) {
            xv2<List<CinemanaDownloadItem>> xv2Var = by0Var != null ? by0Var.h : null;
            E(0, xv2Var);
            value = xv2Var != null ? xv2Var.getValue() : null;
            zIsEmpty = value != null ? value.isEmpty() : false;
            if (j4 != 0) {
                j = zIsEmpty ? j | 16 : j | 8;
            }
        } else {
            value = null;
            zIsEmpty = false;
        }
        boolean z = (j & 8) != 0 && value == null;
        long j5 = j & 7;
        if (j5 != 0) {
            boolean z2 = zIsEmpty ? true : z;
            if (j5 != 0) {
                if (z2) {
                    j2 = j | 64;
                    j3 = 256;
                } else {
                    j2 = j | 32;
                    j3 = 128;
                }
                j = j2 | j3;
            }
            int i3 = z2 ? 0 : 8;
            i = z2 ? 8 : 0;
            i2 = i3;
        } else {
            i = 0;
        }
        if ((j & 7) != 0) {
            this.M.setVisibility(i2);
            this.N.setVisibility(i);
            fo3.a(this.N, value, null, null);
            this.O.setVisibility(i2);
            this.Q.setVisibility(i2);
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
            this.R = 4L;
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
