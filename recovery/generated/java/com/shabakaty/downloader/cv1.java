package com.shabakaty.downloader;

import android.view.View;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;

/* JADX INFO: compiled from: HorizontalScrollVideosLayoutBinding.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class cv1 extends ViewDataBinding {
    public final MaterialButton M;
    public final RecyclerView N;
    public final TextView O;

    public cv1(Object obj, View view, int i, MaterialButton materialButton, RecyclerView recyclerView, TextView textView) {
        super(obj, view, i);
        this.M = materialButton;
        this.N = recyclerView;
        this.O = textView;
    }
}
