package com.shabakaty.downloader;

import android.view.LayoutInflater;
import com.cinemana.pro.R;
import com.shabakaty.cinemana.ui.home_fragment.FranchisesView;

/* JADX INFO: compiled from: FranchisesView.kt */
/* JADX INFO: loaded from: classes.dex */
public final class jm1 extends af2 implements rm1<km1> {
    public final /* synthetic */ FranchisesView r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jm1(FranchisesView franchisesView) {
        super(0);
        this.r = franchisesView;
    }

    @Override // com.shabakaty.downloader.rm1
    public km1 invoke() {
        FranchisesView franchisesView = this.r;
        int i = FranchisesView.M;
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(franchisesView.getContext());
        j32.d(layoutInflaterFrom, "from(context)");
        return (km1) vd5.m(layoutInflaterFrom, R.layout.franchises_view, franchisesView, true);
    }
}
