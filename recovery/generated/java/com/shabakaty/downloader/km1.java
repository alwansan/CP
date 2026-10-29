package com.shabakaty.downloader;

import android.view.View;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.button.MaterialButton;
import com.shabakaty.cinemana.ui.home_fragment.FranchisesRecyclerView;

/* JADX INFO: compiled from: FranchisesViewBinding.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class km1 extends ViewDataBinding {
    public final TextView M;
    public final FranchisesRecyclerView N;
    public final MaterialButton O;

    public km1(Object obj, View view, int i, TextView textView, FranchisesRecyclerView franchisesRecyclerView, MaterialButton materialButton) {
        super(obj, view, i);
        this.M = textView;
        this.N = franchisesRecyclerView;
        this.O = materialButton;
    }
}
