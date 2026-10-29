package com.shabakaty.downloader;

import com.cinemana.pro.R;
import com.shabakaty.cinemana.domain.models.local.home_page.FranchiseItem;

/* JADX INFO: compiled from: HomeFranchisesAdapter.kt */
/* JADX INFO: loaded from: classes.dex */
public final class xt1 extends ej<FranchiseItem, t42> {
    public final int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xt1(int i, bm1 bm1Var) {
        super(w21.r, bm1Var);
        j32.e(bm1Var, "listener");
        this.d = i;
        setHasStableIds(true);
    }

    @Override // com.shabakaty.downloader.ej, androidx.recyclerview.widget.RecyclerView.e
    public int getItemCount() {
        if (this.d != 1) {
            return super.getItemCount();
        }
        int itemCount = super.getItemCount();
        if (itemCount > 5) {
            return 5;
        }
        return itemCount;
    }

    @Override // com.shabakaty.downloader.ej, androidx.recyclerview.widget.RecyclerView.e
    public long getItemId(int i) {
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public int getItemViewType(int i) {
        return this.d == 1 ? R.layout.item_franchise : R.layout.item_franchise_large;
    }

    @Override // com.shabakaty.downloader.ej
    public int i(int i) {
        return this.d == 1 ? R.layout.item_franchise : R.layout.item_franchise_large;
    }
}
