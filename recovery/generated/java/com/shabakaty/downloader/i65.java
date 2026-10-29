package com.shabakaty.downloader;

import android.view.View;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.floatingactionbutton.FloatingActionButton;

/* JADX INFO: compiled from: WideVerticalVideosLayoutBinding.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class i65 extends ViewDataBinding {
    public final FloatingActionButton M;
    public final RecyclerView N;
    public final TextView O;

    public i65(Object obj, View view, int i, FloatingActionButton floatingActionButton, RecyclerView recyclerView, TextView textView) {
        super(obj, view, i);
        this.M = floatingActionButton;
        this.N = recyclerView;
        this.O = textView;
    }
}
