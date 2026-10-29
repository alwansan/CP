package com.shabakaty.downloader;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.SearchView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.databinding.ViewDataBinding;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.tabs.TabLayout;
import com.shabakaty.cinemana.ui.home_fragment.WideVerticalVideosView;

/* JADX INFO: compiled from: FragmentSearchBinding.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class fk1 extends ViewDataBinding {
    public final MaterialButton M;
    public final AppBarLayout N;
    public final WideVerticalVideosView O;
    public final CoordinatorLayout P;
    public final SearchView Q;
    public final ViewPager2 R;
    public final TabLayout S;
    public hz3 T;
    public dz3 U;

    public fk1(Object obj, View view, int i, AppCompatImageView appCompatImageView, MaterialButton materialButton, AppBarLayout appBarLayout, WideVerticalVideosView wideVerticalVideosView, CoordinatorLayout coordinatorLayout, SearchView searchView, ViewPager2 viewPager2, TabLayout tabLayout) {
        super(obj, view, i);
        this.M = materialButton;
        this.N = appBarLayout;
        this.O = wideVerticalVideosView;
        this.P = coordinatorLayout;
        this.Q = searchView;
        this.R = viewPager2;
        this.S = tabLayout;
    }
}
