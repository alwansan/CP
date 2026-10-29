package com.shabakaty.downloader;

import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.LiveData;
import androidx.recyclerview.widget.RecyclerView;
import com.cinemana.pro.R;
import java.util.List;

/* JADX INFO: compiled from: FragmentDownloadCollectionsBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class dj1 extends cj1 {
    public long R;

    /* JADX WARN: Illegal instructions before constructor call */
    public dj1(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 5, null, null);
        super(gl0Var, view, 1, (RecyclerView) objArrS[1], (AppCompatImageView) objArrS[2], (TextView) objArrS[4], (TextView) objArrS[3]);
        this.R = -1L;
        this.M.setTag(null);
        this.N.setTag(null);
        this.O.setTag(null);
        ((ConstraintLayout) objArrS[0]).setTag(null);
        this.P.setTag(null);
        view.setTag(R.id.dataBinding, this);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (38 != i) {
            return false;
        }
        this.Q = (jz0) obj;
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
        List<gz0> value;
        boolean zIsEmpty;
        synchronized (this) {
            j = this.R;
            this.R = 0L;
        }
        jz0 jz0Var = this.Q;
        long j2 = j & 7;
        int i = 0;
        if (j2 != 0) {
            LiveData<List<gz0>> liveData = jz0Var != null ? jz0Var.g : null;
            E(0, liveData);
            value = liveData != null ? liveData.getValue() : null;
            zIsEmpty = value != null ? value.isEmpty() : false;
            if (j2 != 0) {
                j = zIsEmpty ? j | 16 : j | 8;
            }
        } else {
            value = null;
            zIsEmpty = false;
        }
        boolean z = (j & 8) != 0 && value == null;
        long j3 = j & 7;
        if (j3 != 0) {
            boolean z2 = zIsEmpty ? true : z;
            if (j3 != 0) {
                j |= z2 ? 64L : 32L;
            }
            if (!z2) {
                i = 8;
            }
        }
        if ((j & 7) != 0) {
            fo3.a(this.M, value, null, null);
            this.N.setVisibility(i);
            this.O.setVisibility(i);
            this.P.setVisibility(i);
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
