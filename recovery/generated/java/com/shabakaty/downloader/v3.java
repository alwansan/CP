package com.shabakaty.downloader;

import android.view.View;
import androidx.appcompat.widget.Toolbar;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.appbar.AppBarLayout;

/* JADX INFO: compiled from: ActivitySettingsBinding.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class v3 extends ViewDataBinding {
    public final AppBarLayout M;
    public final Toolbar N;

    public v3(Object obj, View view, int i, AppBarLayout appBarLayout, Toolbar toolbar) {
        super(obj, view, i);
        this.M = appBarLayout;
        this.N = toolbar;
    }
}
