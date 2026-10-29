package com.shabakaty.downloader;

import android.view.View;
import androidx.databinding.ViewDataBinding;
import androidx.mediarouter.app.MediaRouteButton;
import com.google.android.material.floatingactionbutton.FloatingActionButton;

/* JADX INFO: compiled from: CastButtonBinding.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class qw extends ViewDataBinding {
    public final FloatingActionButton M;
    public final MediaRouteButton N;

    public qw(Object obj, View view, int i, FloatingActionButton floatingActionButton, MediaRouteButton mediaRouteButton) {
        super(obj, view, i);
        this.M = floatingActionButton;
        this.N = mediaRouteButton;
    }
}
