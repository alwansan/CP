package com.shabakaty.downloader;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.SearchView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.navigation.NavController;
import androidx.navigation.fragment.NavHostFragment;
import com.cinemana.pro.R;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.tabs.TabLayout;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: SearchFragment.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00012\u00020\u00032\u00020\u00052\u00020\u0006B\u0007¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/shabakaty/downloader/yy3;", "Lcom/shabakaty/downloader/hj;", "Lcom/shabakaty/downloader/fk1;", "Lcom/shabakaty/downloader/dz3;", "Lcom/shabakaty/downloader/hz3;", "Lcom/shabakaty/downloader/pk;", "Lcom/google/android/material/tabs/TabLayout$d;", "<init>", "()V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class yy3 extends hj<fk1, dz3, hz3> implements dz3, pk, TabLayout.d {
    public yy3() {
        super(R.layout.fragment_search);
    }

    @Override // com.shabakaty.downloader.dz3
    public void E0() {
        j32.f(this, "$this$findNavController");
        NavController navControllerX1 = NavHostFragment.X1(this);
        j32.b(navControllerX1, "NavHostFragment.findNavController(this)");
        navControllerX1.i(3102, null, null, null);
    }

    @Override // com.google.android.material.tabs.TabLayout.c
    public void E1(TabLayout.f fVar) {
    }

    @Override // com.google.android.material.tabs.TabLayout.c
    public void F(TabLayout.f fVar) {
    }

    @Override // com.shabakaty.downloader.dz3
    public void F1(int i) {
        if (i == 1) {
            T t = this.t;
            j32.c(t);
            TabLayout tabLayout = ((fk1) t).S;
            T t2 = this.t;
            j32.c(t2);
            tabLayout.j(((fk1) t2).S.g(1), true);
            return;
        }
        T t3 = this.t;
        j32.c(t3);
        TabLayout tabLayout2 = ((fk1) t3).S;
        T t4 = this.t;
        j32.c(t4);
        tabLayout2.j(((fk1) t4).S.g(2), true);
    }

    @Override // com.shabakaty.downloader.dz3
    public void T() {
        j32.e(this, "this");
    }

    @Override // com.shabakaty.downloader.dz3
    public String T1() {
        uj2.b bVar = uj2.c;
        Resources resources = getResources();
        j32.d(resources, "resources");
        String language = bVar.b(resources).getLanguage();
        j32.d(language, "LocaleManager.getLocale(resources).language");
        return language;
    }

    @Override // com.shabakaty.downloader.hj
    public vj Z1() {
        return this;
    }

    @Override // com.shabakaty.downloader.pk
    public void a(VideoModel videoModel, View view) {
        SimpleDraweeView simpleDraweeView;
        j32.e(videoModel, "videoModel");
        hz3 hz3VarC2 = c2();
        nh3.y(hl3.e(hz3VarC2), null, 0, new gz3(hz3VarC2, videoModel, null), 3, null);
        if (view == null || (simpleDraweeView = (SimpleDraweeView) view.findViewWithTag("VideoThumb")) == null) {
            return;
        }
        NavController navControllerX1 = NavHostFragment.X1(this);
        j32.b(navControllerX1, "NavHostFragment.findNavController(this)");
        uo1.e(navControllerX1, simpleDraweeView, videoModel, (4 & 4) != 0 ? ml3.a(new x93[0]) : null);
    }

    @Override // com.shabakaty.downloader.hj
    public Class<hz3> d2() {
        return hz3.class;
    }

    @Override // com.shabakaty.downloader.hj
    public boolean e2() {
        String value = c2().v.getValue();
        if (value == null || ne4.D(value)) {
            return false;
        }
        T t = this.t;
        j32.c(t);
        ((fk1) t).N.e(true, true, true);
        c2().v.setValue(BuildConfig.FLAVOR);
        T t2 = this.t;
        j32.c(t2);
        ((fk1) t2).Q.setQuery(BuildConfig.FLAVOR, false);
        zi2.l(c2().y);
        zi2.l(c2().x);
        hz3 hz3VarC2 = c2();
        hz3VarC2.g = false;
        hz3VarC2.h = false;
        hz3VarC2.i = 0;
        hz3VarC2.j = 0;
        hz3 hz3VarC3 = c2();
        hz3VarC3.s.setValue(hz3VarC3.n());
        hz3VarC3.n.setValue(0);
        hz3VarC3.o.setValue(0);
        hz3VarC3.m.setValue(BuildConfig.FLAVOR);
        hz3VarC3.p.setValue(0);
        return true;
    }

    @Override // com.shabakaty.downloader.dz3
    public void f(int i) {
        hz3.o(c2(), null, Integer.valueOf(i), 1);
    }

    @Override // com.shabakaty.downloader.dz3
    public void f1() {
        j32.e(this, "this");
    }

    @Override // com.shabakaty.downloader.dz3
    public void l1(String str) {
        if (!j32.a(str, c2().v.getValue())) {
            hz3.o(c2(), str, null, 2);
        }
        T t = this.t;
        j32.c(t);
        AppBarLayout appBarLayout = ((fk1) t).N;
        j32.d(appBarLayout, "binding.searchAppBarLayout");
        boolean z = appBarLayout.getHeight() - appBarLayout.getBottom() == 0;
        if (!b2(this) || z) {
            return;
        }
        T t2 = this.t;
        j32.c(t2);
        ((fk1) t2).N.e(true, true, true);
    }

    @Override // com.shabakaty.downloader.vj
    public void o() {
        hz3.o(c2(), null, null, 3);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        if (b2(this)) {
            c2().k.h();
        }
        super.onDestroy();
    }

    @Override // com.shabakaty.downloader.hj, androidx.fragment.app.Fragment
    public void onDestroyView() {
        T t = this.t;
        j32.c(t);
        ((fk1) t).O.t();
        T t2 = this.t;
        j32.c(t2);
        ((fk1) t2).R.setAdapter(null);
        T t3 = this.t;
        j32.c(t3);
        SearchView searchView = ((fk1) t3).Q;
        j32.d(searchView, "binding.searchView");
        st2.i(searchView, null);
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        T t = this.t;
        j32.c(t);
        AppBarLayout appBarLayout = ((fk1) t).N;
        j32.d(appBarLayout, "binding.searchAppBarLayout");
        boolean z = true;
        if (!(appBarLayout.getHeight() - appBarLayout.getBottom() == 0)) {
            T t2 = this.t;
            j32.c(t2);
            ((fk1) t2).N.e(true, true, true);
        }
        T t3 = this.t;
        j32.c(t3);
        CharSequence query = ((fk1) t3).Q.getQuery();
        if (query == null || ne4.D(query)) {
            String value = c2().v.getValue();
            if (value != null && !ne4.D(value)) {
                z = false;
            }
            if (!z) {
                T t4 = this.t;
                j32.c(t4);
                ((fk1) t4).Q.setQuery(c2().v.getValue(), false);
            }
        }
        super.onResume();
    }

    @Override // com.shabakaty.downloader.hj, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        j32.e(view, "view");
        super.onViewCreated(view, bundle);
        c2().m();
        T t = this.t;
        j32.c(t);
        ViewGroup.LayoutParams layoutParams = ((fk1) t).N.getLayoutParams();
        CoordinatorLayout.f fVar = layoutParams instanceof CoordinatorLayout.f ? (CoordinatorLayout.f) layoutParams : null;
        CoordinatorLayout.c behavior = fVar == null ? null : fVar.a;
        if (behavior == null) {
            behavior = new AppBarLayout.Behavior(getContext(), null);
        }
        AppBarLayout.Behavior behavior2 = behavior instanceof AppBarLayout.Behavior ? (AppBarLayout.Behavior) behavior : null;
        if (behavior2 != null) {
            behavior2.o = new xy3();
        }
        T t2 = this.t;
        j32.c(t2);
        ViewGroup.LayoutParams layoutParams2 = ((fk1) t2).N.getLayoutParams();
        CoordinatorLayout.f fVar2 = layoutParams2 instanceof CoordinatorLayout.f ? (CoordinatorLayout.f) layoutParams2 : null;
        if (fVar2 != null) {
            fVar2.b(behavior2);
        }
        T t3 = this.t;
        j32.c(t3);
        ((fk1) t3).O.setItemsListener(this);
        T t4 = this.t;
        j32.c(t4);
        TabLayout tabLayout = ((fk1) t4).S;
        if (!tabLayout.a0.contains(this)) {
            tabLayout.a0.add(this);
        }
        T t5 = this.t;
        j32.c(t5);
        ((fk1) t5).R.c(c2().r, false);
    }

    @Override // com.google.android.material.tabs.TabLayout.c
    public void p0(TabLayout.f fVar) {
        c2().r = fVar == null ? 0 : fVar.d;
    }

    @Override // com.shabakaty.downloader.vj
    public void q(int i) {
        vj.a.a(this, i);
    }

    @Override // com.shabakaty.downloader.qk
    public void s0(List<VideoModel> list, String str) {
    }
}
