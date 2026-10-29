package com.shabakaty.downloader;

import android.view.View;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;

/* JADX INFO: compiled from: GroupsViewBinding.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class dr1 extends ViewDataBinding {
    public final TextView M;
    public final RecyclerView N;
    public final MaterialButton O;

    public dr1(Object obj, View view, int i, TextView textView, RecyclerView recyclerView, MaterialButton materialButton) {
        super(obj, view, i);
        this.M = textView;
        this.N = recyclerView;
        this.O = materialButton;
    }
}
