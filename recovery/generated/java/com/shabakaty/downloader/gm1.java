package com.shabakaty.downloader;

import com.shabakaty.cinemana.ui.home_fragment.FranchisesRecyclerView;

/* JADX INFO: compiled from: FranchisesRecyclerView.kt */
/* JADX INFO: loaded from: classes.dex */
public final class gm1 extends af2 implements rm1<xt1> {
    public final /* synthetic */ FranchisesRecyclerView r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gm1(FranchisesRecyclerView franchisesRecyclerView) {
        super(0);
        this.r = franchisesRecyclerView;
    }

    @Override // com.shabakaty.downloader.rm1
    public xt1 invoke() {
        return new xt1(1, this.r);
    }
}
