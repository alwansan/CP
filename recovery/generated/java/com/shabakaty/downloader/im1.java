package com.shabakaty.downloader;

import android.content.Context;
import androidx.lifecycle.LiveData;
import com.shabakaty.cinemana.domain.models.local.home_page.FranchiseItem;
import com.shabakaty.cinemana.ui.home_fragment.FranchisesRecyclerView;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: Delegates.kt */
/* JADX INFO: loaded from: classes.dex */
public final class im1 extends g53<LiveData<tj<List<FranchiseItem>>>> {
    public final /* synthetic */ FranchisesRecyclerView b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public im1(Object obj, FranchisesRecyclerView franchisesRecyclerView) {
        super(null);
        this.b = franchisesRecyclerView;
    }

    @Override // com.shabakaty.downloader.g53
    public void c(jd2<?> jd2Var, LiveData<tj<List<FranchiseItem>>> liveData, LiveData<tj<List<FranchiseItem>>> liveData2) {
        LiveData<tj<List<FranchiseItem>>> liveData3 = liveData2;
        LiveData<tj<List<FranchiseItem>>> liveData4 = liveData;
        if (this.b.getFranchisesLive() == null || !j32.a(liveData4, liveData3)) {
            FranchisesRecyclerView franchisesRecyclerView = this.b;
            LiveData<tj<List<FranchiseItem>>> franchisesLive = franchisesRecyclerView.getFranchisesLive();
            if (franchisesLive != null) {
                franchisesLive.removeObserver(new em1(franchisesRecyclerView.Z0, 0));
            }
            Context context = franchisesRecyclerView.getContext();
            Objects.requireNonNull(context, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
            r9 r9Var = (r9) context;
            LiveData<tj<List<FranchiseItem>>> franchisesLive2 = franchisesRecyclerView.getFranchisesLive();
            if (franchisesLive2 == null) {
                return;
            }
            franchisesLive2.observe(r9Var, new em1(franchisesRecyclerView.Z0, 1));
        }
    }
}
