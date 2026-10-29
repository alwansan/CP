package com.shabakaty.downloader;

import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.cinemana.pro.R;
import com.shabakaty.cinemana.domain.models.local.home_page.FranchiseItem;
import com.shabakaty.cinemana.utils.StatusView;
import java.util.List;

/* JADX INFO: compiled from: FragmentFranchisesBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class pj1 extends oj1 {
    public final StatusView Q;
    public long R;

    /* JADX WARN: Illegal instructions before constructor call */
    public pj1(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 3, null, null);
        super(gl0Var, view, 1, (ConstraintLayout) objArrS[0], (RecyclerView) objArrS[1]);
        this.R = -1L;
        this.M.setTag(null);
        this.N.setTag(null);
        StatusView statusView = (StatusView) objArrS[2];
        this.Q = statusView;
        statusView.setTag(null);
        view.setTag(R.id.dataBinding, this);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (38 == i) {
            this.P = (mm1) obj;
            synchronized (this) {
                this.R |= 2;
            }
            f(38);
            x();
        } else {
            if (16 != i) {
                return false;
            }
            this.O = (dm1) obj;
            synchronized (this) {
                this.R |= 4;
            }
            f(16);
            x();
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0031  */
    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        List list;
        tj.a aVar;
        synchronized (this) {
            j = this.R;
            this.R = 0L;
        }
        mm1 mm1Var = this.P;
        dm1 dm1Var = this.O;
        long j2 = 11 & j;
        if (j2 == 0) {
            list = null;
            aVar = null;
        } else {
            mj<List<FranchiseItem>> mjVar = mm1Var != null ? mm1Var.f : null;
            E(0, mjVar);
            tj tjVar = mjVar != null ? (tj) mjVar.getValue() : null;
            if (tjVar != null) {
                aVar = tjVar.a;
                list = (List) tjVar.b;
            } else {
                list = null;
                aVar = null;
            }
        }
        long j3 = 12 & j;
        if ((j & 8) != 0) {
            RecyclerView recyclerView = this.N;
            nl6.q(recyclerView, recyclerView.getResources().getString(R.string.collections));
        }
        if (j2 != 0) {
            fo3.a(this.N, list, null, null);
            this.Q.setStatus(aVar);
        }
        if (j3 != 0) {
            this.Q.setNavigator(dm1Var);
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
