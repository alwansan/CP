package com.shabakaty.downloader;

import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.cinemana.pro.R;
import com.shabakaty.cinemana.ca1.Continue106;
import com.shabakaty.cinemana.ui.home_fragment.HomeItem;
import com.shabakaty.cinemana.ui.home_fragment.HomeItems;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: FragmentHomeBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class rj1 extends qj1 {
    public long Q;

    /* JADX WARN: Illegal instructions before constructor call */
    public rj1(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 2, null, null);
        super(gl0Var, view, 2, (ConstraintLayout) objArrS[0], (RecyclerView) objArrS[1]);
        this.Q = -1L;
        this.M.setTag(null);
        this.N.setTag(null);
        view.setTag(R.id.dataBinding, this);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (38 == i) {
            this.P = (tu1) obj;
            synchronized (this) {
                this.Q |= 4;
            }
            f(38);
            x();
        } else {
            if (16 != i) {
                return false;
            }
            this.O = (wt1) obj;
        }
        return true;
    }

    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        tj.a value;
        ArrayList arrayList;
        List<? extends RecyclerView.e<? extends RecyclerView.b0>> listF;
        List<? extends RecyclerView.e<? extends RecyclerView.b0>> listF2;
        xv2<HomeItems> xv2Var;
        xv2<tj.a> xv2Var2;
        synchronized (this) {
            j = this.Q;
            this.Q = 0L;
        }
        tu1 tu1Var = this.P;
        long j2 = 23 & j;
        if (j2 != 0) {
            if (tu1Var != null) {
                xv2Var2 = tu1Var.d;
                xv2Var = tu1Var.m;
            } else {
                xv2Var = null;
                xv2Var2 = null;
            }
            E(0, xv2Var2);
            E(1, xv2Var);
            value = xv2Var2 != null ? xv2Var2.getValue() : null;
            HomeItems value2 = xv2Var != null ? xv2Var.getValue() : null;
            if (value2 != null) {
                arrayList = new ArrayList();
                HomeItem.Slider slider = value2.sliderItem;
                if (slider != null) {
                    arrayList.add(slider);
                }
                HomeItem.Horizontal.FeaturedMovies featuredMovies = value2.featuredMovies;
                if (featuredMovies != null) {
                    arrayList.add(featuredMovies);
                }
                HomeItem.Ad ad = value2.ad;
                if (ad != null) {
                    arrayList.add(ad);
                }
                HomeItem.Horizontal.FeaturedTvShows featuredTvShows = value2.featuredTvShows;
                if (featuredTvShows != null) {
                    arrayList.add(featuredTvShows);
                }
                HomeItem.Horizontal.RecentlyAdded recentlyAdded = value2.recentlyAdded;
                if (recentlyAdded != null) {
                    arrayList.add(recentlyAdded);
                }
                List<HomeItem.Horizontal.SecondGroupsSlice> list = value2.secondGroupSlice;
                if (list != null) {
                    arrayList.addAll(list);
                }
                HomeItem.Franchises franchises = value2.franchises;
                if (franchises != null) {
                    arrayList.add(franchises);
                }
                HomeItem.BottomGroups bottomGroups = value2.bottomGroups;
                if (bottomGroups != null) {
                    arrayList.add(bottomGroups);
                }
            } else {
                arrayList = null;
            }
        } else {
            value = null;
            arrayList = null;
        }
        if ((j & 16) != 0) {
            nl6.q(this.N, this.N.getResources().getString(R.string.txt_home) + "list");
        }
        if (j2 != 0) {
            RecyclerView recyclerView = this.N;
            j32.e(recyclerView, "<this>");
            if (arrayList == null) {
                return;
            }
            RecyclerView.e adapter = recyclerView.getAdapter();
            androidx.recyclerview.widget.g gVar = adapter instanceof androidx.recyclerview.widget.g ? (androidx.recyclerview.widget.g) adapter : null;
            RecyclerView.e eVar = (gVar == null || (listF2 = gVar.f()) == null) ? null : (RecyclerView.e) m50.c0(listF2, 1);
            w93 w93Var = eVar instanceof w93 ? (w93) eVar : null;
            RecyclerView.e eVar2 = (gVar == null || (listF = gVar.f()) == null) ? null : (RecyclerView.e) m50.c0(listF, 0);
            yt1 yt1Var = eVar2 instanceof yt1 ? (yt1) eVar2 : null;
            if (value != null && w93Var != null) {
                w93Var.e(iq6.o(value));
            }
            if (yt1Var == null) {
                return;
            }
            List listDecorate = Continue106.decorate(arrayList);
            j32.e(listDecorate, "items");
            et0<HomeItem> et0Var = yt1Var.d;
            List list2 = yt1Var.c;
            Objects.requireNonNull(et0Var);
            j32.e(list2, "oldList");
            j32.e(listDecorate, "newList");
            et0Var.a = list2;
            et0Var.b = listDecorate;
            androidx.recyclerview.widget.j.d dVarA = androidx.recyclerview.widget.j.a(et0Var.c);
            yt1Var.c = listDecorate;
            dVarA.a(new androidx.recyclerview.widget.b(yt1Var));
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
            this.Q = 16L;
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
                this.Q |= 1;
            }
            return true;
        }
        if (i != 1) {
            return false;
        }
        if (i2 != 0) {
            return false;
        }
        synchronized (this) {
            this.Q |= 2;
        }
        return true;
    }
}
