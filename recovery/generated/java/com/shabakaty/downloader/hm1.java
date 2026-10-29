package com.shabakaty.downloader;

import com.shabakaty.cinemana.domain.models.local.home_page.FranchiseItem;
import com.shabakaty.cinemana.ui.home_fragment.FranchisesRecyclerView;
import java.util.List;

/* JADX INFO: compiled from: Delegates.kt */
/* JADX INFO: loaded from: classes.dex */
public final class hm1 extends g53<tj<List<FranchiseItem>>> {
    public final /* synthetic */ Object b;
    public final /* synthetic */ FranchisesRecyclerView c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hm1(Object obj, FranchisesRecyclerView franchisesRecyclerView) {
        super(obj);
        this.b = obj;
        this.c = franchisesRecyclerView;
    }

    @Override // com.shabakaty.downloader.g53
    public void c(jd2<?> jd2Var, tj<List<FranchiseItem>> tjVar, tj<List<FranchiseItem>> tjVar2) {
        tj<List<FranchiseItem>> tjVar3 = tjVar2;
        List<FranchiseItem> list = tjVar3 == null ? null : tjVar3.b;
        if (list == null || list.isEmpty()) {
            s45.j(this.c);
        } else {
            s45.l(this.c);
            fo3.a(this.c, tjVar3 == null ? null : tjVar3.b, 5, tjVar3 != null ? tjVar3.a : null);
        }
    }
}
