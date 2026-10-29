package com.shabakaty.downloader;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.domain.models.local.staff_info.StaffModel;
import com.shabakaty.cinemana.utils.StatusView;
import java.util.List;

/* JADX INFO: compiled from: FragmentStaffInfoBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class ok1 extends nk1 {
    public static final ViewDataBinding.e a0;
    public static final SparseIntArray b0;
    public final StatusView Y;
    public long Z;

    static {
        ViewDataBinding.e eVar = new ViewDataBinding.e(12);
        a0 = eVar;
        eVar.a(6, new String[]{"videos_layout", "videos_layout"}, new int[]{7, 8}, new int[]{R.layout.videos_layout, R.layout.videos_layout});
        SparseIntArray sparseIntArray = new SparseIntArray();
        b0 = sparseIntArray;
        sparseIntArray.put(R.id.staff_info_appbar, 9);
        sparseIntArray.put(R.id.actor_info_collapsing_toolbar, 10);
        sparseIntArray.put(R.id.staff_info_toolbar, 11);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ok1(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 12, a0, b0);
        super(gl0Var, view, 4, (CollapsingToolbarLayout) objArrS[10], (NestedScrollView) objArrS[5], (ConstraintLayout) objArrS[6], (CoordinatorLayout) objArrS[0], (AppBarLayout) objArrS[9], (SimpleDraweeView) objArrS[3], (SimpleDraweeView) objArrS[2], (a35) objArrS[7], (TextView) objArrS[4], (Toolbar) objArrS[11], (a35) objArrS[8]);
        this.Z = -1L;
        this.M.setTag(null);
        this.N.setTag(null);
        this.O.setTag(null);
        StatusView statusView = (StatusView) objArrS[1];
        this.Y = statusView;
        statusView.setTag(null);
        this.Q.setTag(null);
        this.R.setTag(null);
        a35 a35Var = this.S;
        if (a35Var != null) {
            a35Var.B = this;
        }
        this.T.setTag(null);
        a35 a35Var2 = this.V;
        if (a35Var2 != null) {
            a35Var2.B = this;
        }
        view.setTag(R.id.dataBinding, this);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void B(rh2 rh2Var) {
        super.B(rh2Var);
        this.S.B(rh2Var);
        this.V.B(rh2Var);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (16 == i) {
            this.X = (ib4) obj;
            synchronized (this) {
                this.Z |= 16;
            }
            f(16);
            x();
        } else {
            if (38 != i) {
                return false;
            }
            this.W = (mb4) obj;
            synchronized (this) {
                this.Z |= 32;
            }
            f(38);
            x();
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0034  */
    /* JADX WARN: Code duplicated, block: B:58:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:61:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:64:0x010c  */
    /* JADX WARN: Code duplicated, block: B:72:0x0131  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        tj.a value;
        String strA;
        String strA2;
        String str;
        List<VideoModel> listB;
        int i;
        String str2;
        List<VideoModel> listA;
        String str3;
        StaffModel staffModel;
        tj.a aVar;
        synchronized (this) {
            j = this.Z;
            this.Z = 0L;
        }
        ib4 ib4Var = this.X;
        mb4 mb4Var = this.W;
        if ((101 & j) != 0) {
            if ((j & 97) == 0) {
                value = null;
            } else {
                xv2<tj.a> xv2Var = mb4Var != null ? mb4Var.d : null;
                E(0, xv2Var);
                if (xv2Var != null) {
                    value = xv2Var.getValue();
                } else {
                    value = null;
                }
            }
            if ((j & 96) != 0) {
                ob4 ob4Var = mb4Var != null ? (ob4) mb4Var.j.getValue() : null;
                String str4 = ob4Var != null ? ob4Var.r : null;
                strA2 = el3.a(str4, "_img");
                strA = el3.a(str4, "_name");
            } else {
                strA = null;
                strA2 = null;
            }
            long j2 = j & 100;
            if (j2 != 0) {
                mj<StaffModel> mjVar = mb4Var != null ? mb4Var.i : null;
                E(2, mjVar);
                tj tjVar = mjVar != null ? (tj) mjVar.getValue() : null;
                if (tjVar != null) {
                    aVar = tjVar.a;
                    staffModel = (StaffModel) tjVar.b;
                } else {
                    staffModel = null;
                    aVar = null;
                }
                boolean z = aVar == tj.a.SUCCESS;
                if (j2 != 0) {
                    j |= z ? 256L : 128L;
                }
                if (staffModel != null) {
                    str3 = staffModel.imgThumbObjUrl;
                    listA = staffModel.a();
                    listB = staffModel.b();
                    str2 = staffModel.imgObjUrl;
                    str = staffModel.title;
                } else {
                    str = null;
                    str2 = null;
                    str3 = null;
                    listA = null;
                    listB = null;
                }
                i = z ? 0 : 8;
            }
            if ((100 & j) != 0) {
                this.M.setVisibility(i);
                oy1.c(this.Q, str2, null, null, str3);
                SimpleDraweeView simpleDraweeView = this.Q;
                Boolean bool = Boolean.TRUE;
                oy1.b(simpleDraweeView, bool, str2);
                oy1.c(this.R, str2, bool, 40, str3);
                this.S.P(listA);
                nl6.r(this.T, str);
                this.V.P(listB);
            }
            if ((80 & j) != 0) {
                this.Y.setNavigator(ib4Var);
                this.S.J(ib4Var);
                this.V.J(ib4Var);
            }
            if ((97 & j) != 0) {
                this.Y.setStatus(value);
            }
            if ((96 & j) != 0 && ViewDataBinding.G >= 21) {
                this.Q.setTransitionName(strA2);
                this.T.setTransitionName(strA);
            }
            if ((j & 64) != 0) {
                this.S.I(6);
                this.S.M(this.v.getResources().getString(R.string.txt_movies));
                this.S.N(Boolean.FALSE);
                this.V.I(4);
                this.V.M(this.v.getResources().getString(R.string.txt_tv_shows));
                this.V.N(Boolean.TRUE);
            }
            this.S.j();
            this.V.j();
        }
        value = null;
        strA = null;
        strA2 = null;
        str = null;
        listB = null;
        i = 0;
        str2 = null;
        listA = null;
        str3 = null;
        if ((100 & j) != 0) {
            this.M.setVisibility(i);
            oy1.c(this.Q, str2, null, null, str3);
            SimpleDraweeView simpleDraweeView2 = this.Q;
            Boolean bool2 = Boolean.TRUE;
            oy1.b(simpleDraweeView2, bool2, str2);
            oy1.c(this.R, str2, bool2, 40, str3);
            this.S.P(listA);
            nl6.r(this.T, str);
            this.V.P(listB);
        }
        if ((80 & j) != 0) {
            this.Y.setNavigator(ib4Var);
            this.S.J(ib4Var);
            this.V.J(ib4Var);
        }
        if ((97 & j) != 0) {
            this.Y.setStatus(value);
        }
        if ((96 & j) != 0) {
            this.Q.setTransitionName(strA2);
            this.T.setTransitionName(strA);
        }
        if ((j & 64) != 0) {
            this.S.I(6);
            this.S.M(this.v.getResources().getString(R.string.txt_movies));
            this.S.N(Boolean.FALSE);
            this.V.I(4);
            this.V.M(this.v.getResources().getString(R.string.txt_tv_shows));
            this.V.N(Boolean.TRUE);
        }
        this.S.j();
        this.V.j();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            if (this.Z != 0) {
                return true;
            }
            return this.S.o() || this.V.o();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.Z = 64L;
        }
        this.S.p();
        this.V.p();
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        if (i == 0) {
            if (i2 != 0) {
                return false;
            }
            synchronized (this) {
                this.Z |= 1;
            }
            return true;
        }
        if (i == 1) {
            if (i2 != 0) {
                return false;
            }
            synchronized (this) {
                this.Z |= 2;
            }
            return true;
        }
        if (i == 2) {
            if (i2 != 0) {
                return false;
            }
            synchronized (this) {
                this.Z |= 4;
            }
            return true;
        }
        if (i != 3) {
            return false;
        }
        if (i2 != 0) {
            return false;
        }
        synchronized (this) {
            this.Z |= 8;
        }
        return true;
    }
}
