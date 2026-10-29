package com.shabakaty.downloader;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.shabakaty.cinemana.ui.home_fragment.WideVerticalVideosView;
import java.util.Objects;

/* JADX INFO: compiled from: WideVerticalVideosView.kt */
/* JADX INFO: loaded from: classes.dex */
public final class n65 extends RecyclerView.r {
    public final /* synthetic */ WideVerticalVideosView a;

    public n65(WideVerticalVideosView wideVerticalVideosView) {
        this.a = wideVerticalVideosView;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.r
    public void onScrollStateChanged(RecyclerView recyclerView, int i) {
        rm1<qv4> onScrolledToEnd;
        j32.e(recyclerView, "recyclerView");
        super.onScrollStateChanged(recyclerView, i);
        if (recyclerView.canScrollVertically(1) || (onScrolledToEnd = this.a.getOnScrolledToEnd()) == null) {
            return;
        }
        onScrolledToEnd.invoke();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.r
    public void onScrolled(RecyclerView recyclerView, int i, int i2) {
        j32.e(recyclerView, "recyclerView");
        super.onScrolled(recyclerView, i, i2);
        RecyclerView.m layoutManager = recyclerView.getLayoutManager();
        Objects.requireNonNull(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
        View viewN1 = linearLayoutManager.n1(0, linearLayoutManager.K(), true, false);
        int iZ = viewN1 == null ? -1 : linearLayoutManager.Z(viewN1);
        if (!(i2 < 0) || iZ <= 5) {
            this.a.getBinding().M.i();
        } else {
            this.a.getBinding().M.p();
        }
    }
}
