package com.shabakaty.downloader;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.shabakaty.cinemana.ui.home_fragment.HorizontalScrollVideosView;

/* JADX INFO: compiled from: HorizontalScrollVideosView.kt */
/* JADX INFO: loaded from: classes.dex */
public final class gv1 extends RecyclerView.r {
    public final /* synthetic */ HorizontalScrollVideosView a;
    public final /* synthetic */ LinearLayoutManager b;

    public gv1(HorizontalScrollVideosView horizontalScrollVideosView, LinearLayoutManager linearLayoutManager) {
        this.a = horizontalScrollVideosView;
        this.b = linearLayoutManager;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.r
    public void onScrolled(RecyclerView recyclerView, int i, int i2) {
        rm1<qv4> onScrolledToEnd;
        j32.e(recyclerView, "recyclerView");
        RecyclerView.e adapter = this.a.getBinding().N.getAdapter();
        Integer numValueOf = adapter == null ? null : Integer.valueOf(adapter.getItemCount());
        int iIntValue = numValueOf == null ? 0 : numValueOf.intValue() - 1;
        LinearLayoutManager linearLayoutManager = this.b;
        if ((linearLayoutManager != null ? linearLayoutManager.k1() : 0) != iIntValue || (onScrolledToEnd = this.a.getOnScrolledToEnd()) == null) {
            return;
        }
        onScrolledToEnd.invoke();
    }
}
