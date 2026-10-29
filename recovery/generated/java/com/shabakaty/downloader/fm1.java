package com.shabakaty.downloader;

import com.shabakaty.cinemana.domain.models.local.home_page.FranchiseItem;
import com.shabakaty.cinemana.ui.home_fragment.FranchisesRecyclerView;
import java.util.List;

/* JADX INFO: compiled from: FranchisesRecyclerView.kt */
/* JADX INFO: loaded from: classes.dex */
public final class fm1 extends af2 implements tm1<tj<List<FranchiseItem>>, qv4> {
    public final /* synthetic */ FranchisesRecyclerView r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fm1(FranchisesRecyclerView franchisesRecyclerView) {
        super(1);
        this.r = franchisesRecyclerView;
    }

    @Override // com.shabakaty.downloader.tm1
    public qv4 invoke(tj<List<FranchiseItem>> tjVar) {
        this.r.setFranchises(tjVar);
        return qv4.a;
    }
}
