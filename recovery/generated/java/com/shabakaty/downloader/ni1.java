package com.shabakaty.downloader;

import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.cinemana.pro.R;
import com.shabakaty.cinemana.domain.models.local.categories.NewCategoryItem;
import com.shabakaty.cinemana.utils.StatusView;
import java.util.List;

/* JADX INFO: compiled from: FragmentCategoriesBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class ni1 extends mi1 {
    public final StatusView P;
    public long Q;

    /* JADX WARN: Illegal instructions before constructor call */
    public ni1(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 3, null, null);
        super(gl0Var, view, 1, (RecyclerView) objArrS[2]);
        this.Q = -1L;
        this.M.setTag(null);
        ((ConstraintLayout) objArrS[0]).setTag(null);
        StatusView statusView = (StatusView) objArrS[1];
        this.P = statusView;
        statusView.setTag(null);
        view.setTag(R.id.dataBinding, this);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (38 == i) {
            this.N = (kx) obj;
            synchronized (this) {
                this.Q |= 2;
            }
            f(38);
            x();
        } else {
            if (16 != i) {
                return false;
            }
            this.O = (gx) obj;
            synchronized (this) {
                this.Q |= 4;
            }
            f(16);
            x();
        }
        return true;
    }

    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        tj.a aVar;
        List list;
        synchronized (this) {
            j = this.Q;
            this.Q = 0L;
        }
        kx kxVar = this.N;
        gx gxVar = this.O;
        long j2 = j & 11;
        int i = 0;
        if (j2 != 0) {
            mj<List<NewCategoryItem>> mjVar = kxVar != null ? kxVar.g : null;
            E(0, mjVar);
            tj tjVar = mjVar != null ? (tj) mjVar.getValue() : null;
            if (tjVar != null) {
                list = (List) tjVar.b;
                aVar = tjVar.a;
            } else {
                aVar = null;
                list = null;
            }
            boolean z = aVar == tj.a.SUCCESS;
            if (j2 != 0) {
                j |= z ? 32L : 16L;
            }
            if (!z) {
                i = 8;
            }
        } else {
            aVar = null;
            list = null;
        }
        long j3 = 12 & j;
        if ((11 & j) != 0) {
            this.M.setVisibility(i);
            fo3.a(this.M, list, null, null);
            this.P.setStatus(aVar);
        }
        if ((j & 8) != 0) {
            RecyclerView recyclerView = this.M;
            nl6.q(recyclerView, recyclerView.getResources().getString(R.string.txt_categories));
            fo3.c(this.M, 2);
        }
        if (j3 != 0) {
            this.P.setNavigator(gxVar);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.Q != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.Q = 8L;
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
            this.Q |= 1;
        }
        return true;
    }
}
