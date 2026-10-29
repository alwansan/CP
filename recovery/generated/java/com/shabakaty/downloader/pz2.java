package com.shabakaty.downloader;

import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: compiled from: NoSearchResultsLayoutBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class pz2 extends oz2 {
    public final ConstraintLayout Q;
    public long R;

    /* JADX WARN: Illegal instructions before constructor call */
    public pz2(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 3, null, null);
        super(gl0Var, view, 3, (TextView) objArrS[1], (TextView) objArrS[2]);
        this.R = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArrS[0];
        this.Q = constraintLayout;
        constraintLayout.setTag(null);
        this.M.setTag(null);
        this.N.setTag(null);
        view.setTag(R.id.dataBinding, this);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (33 == i) {
            G((Integer) obj);
        } else {
            if (38 != i) {
                return false;
            }
            H((hz3) obj);
        }
        return true;
    }

    @Override // com.shabakaty.downloader.oz2
    public void G(Integer num) {
        this.O = num;
        synchronized (this) {
            this.R |= 8;
        }
        f(33);
        x();
    }

    @Override // com.shabakaty.downloader.oz2
    public void H(hz3 hz3Var) {
        this.P = hz3Var;
        synchronized (this) {
            this.R |= 16;
        }
        f(38);
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        int iZ;
        String value;
        tj.a aVar;
        tj.a aVar2;
        xv2<String> xv2Var;
        mj<List<VideoModel>> mjVar;
        mj<List<VideoModel>> mjVar2;
        synchronized (this) {
            j = this.R;
            this.R = 0L;
        }
        Integer num = this.O;
        hz3 hz3Var = this.P;
        long j2 = 63 & j;
        boolean z = true;
        if (j2 != 0) {
            iZ = ViewDataBinding.z(num);
            if (hz3Var != null) {
                mjVar = hz3Var.y;
                mjVar2 = hz3Var.x;
                xv2Var = hz3Var.v;
            } else {
                xv2Var = null;
                mjVar = null;
                mjVar2 = null;
            }
            E(0, mjVar);
            E(1, mjVar2);
            E(2, xv2Var);
            tj tjVar = mjVar != null ? (tj) mjVar.getValue() : null;
            tj tjVar2 = mjVar2 != null ? (tj) mjVar2.getValue() : null;
            value = xv2Var != null ? xv2Var.getValue() : null;
            aVar = tjVar != null ? tjVar.a : null;
            aVar2 = tjVar2 != null ? tjVar2.a : null;
        } else {
            iZ = 0;
            value = null;
            aVar = null;
            aVar2 = null;
        }
        if (j2 != 0) {
            ConstraintLayout constraintLayout = this.Q;
            HashMap<Integer, String> map = st2.a;
            tj.a aVar3 = tj.a.EMPTY;
            j32.e(constraintLayout, "<this>");
            j32.e(aVar, "tvShow");
            j32.e(aVar2, "movies");
            String string = value != null ? re4.m0(value).toString() : null;
            if (string == null || string.length() == 0) {
                s45.j(constraintLayout);
            } else {
                if (iZ == 1 ? aVar2 != aVar3 : iZ == 2 ? aVar != aVar3 : aVar2 != aVar3 || aVar != aVar3) {
                    z = false;
                }
                if (z) {
                    s45.l(constraintLayout);
                } else {
                    s45.j(constraintLayout);
                }
            }
        }
        if ((j & 32) != 0) {
            TextView textView = this.M;
            d3.a(textView, R.string.no_results_txt, textView);
            TextView textView2 = this.N;
            d3.a(textView2, R.string.try_a_new_search_or_choose_filters_txt, textView2);
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
            this.R = 32L;
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
                this.R |= 1;
            }
            return true;
        }
        if (i == 1) {
            if (i2 != 0) {
                return false;
            }
            synchronized (this) {
                this.R |= 2;
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
            this.R |= 4;
        }
        return true;
    }
}
