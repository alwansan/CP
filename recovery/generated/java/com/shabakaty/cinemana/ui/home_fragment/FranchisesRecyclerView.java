package com.shabakaty.cinemana.ui.home_fragment;

import android.content.Context;
import android.util.AttributeSet;
import androidx.lifecycle.LiveData;
import androidx.recyclerview.widget.RecyclerView;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.domain.models.local.home_page.FranchiseItem;
import com.shabakaty.downloader.a41;
import com.shabakaty.downloader.bm1;
import com.shabakaty.downloader.fm1;
import com.shabakaty.downloader.gm1;
import com.shabakaty.downloader.hm1;
import com.shabakaty.downloader.hn3;
import com.shabakaty.downloader.im1;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.kf2;
import com.shabakaty.downloader.ng2;
import com.shabakaty.downloader.qv4;
import com.shabakaty.downloader.tj;
import com.shabakaty.downloader.tm1;
import com.shabakaty.downloader.xt1;
import java.util.List;
import kotlin.Metadata;
import kotlin.reflect.KProperty;

/* JADX INFO: compiled from: FranchisesRecyclerView.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u001d\u0010\u000b\u001a\u00020\u00068B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nRK\u0010\u0016\u001a\u0012\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r\u0018\u00010\f2\u0016\u0010\u000f\u001a\u0012\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r\u0018\u00010\f8B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015RW\u0010\u001d\u001a\u0018\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r0\f\u0018\u00010\u00172\u001c\u0010\u000f\u001a\u0018\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r0\f\u0018\u00010\u00178F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b\u0018\u0010\u0011\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006\u001e"}, d2 = {"Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;", "Landroidx/recyclerview/widget/RecyclerView;", "Lcom/shabakaty/downloader/bm1;", "listener", "Lcom/shabakaty/downloader/qv4;", "setFranchisesListener", "Lcom/shabakaty/downloader/xt1;", "homeFranchisesAdapter$delegate", "Lcom/shabakaty/downloader/kf2;", "getHomeFranchisesAdapter", "()Lcom/shabakaty/downloader/xt1;", "homeFranchisesAdapter", "Lcom/shabakaty/downloader/tj;", BuildConfig.FLAVOR, "Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;", "<set-?>", "franchises$delegate", "Lcom/shabakaty/downloader/hn3;", "getFranchises", "()Lcom/shabakaty/downloader/tj;", "setFranchises", "(Lcom/shabakaty/downloader/tj;)V", "franchises", "Landroidx/lifecycle/LiveData;", "franchisesLive$delegate", "getFranchisesLive", "()Landroidx/lifecycle/LiveData;", "setFranchisesLive", "(Landroidx/lifecycle/LiveData;)V", "franchisesLive", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class FranchisesRecyclerView extends RecyclerView implements bm1 {
    public static final /* synthetic */ KProperty<Object>[] d1 = {a41.a(FranchisesRecyclerView.class, "franchises", "getFranchises()Lcom/shabakaty/cinemana/data/base/BaseModel;", 0), a41.a(FranchisesRecyclerView.class, "franchisesLive", "getFranchisesLive()Landroidx/lifecycle/LiveData;", 0)};
    public final kf2 Y0;
    public tm1<? super tj<List<FranchiseItem>>, qv4> Z0;
    public bm1 a1;
    public final hn3 b1;
    public final hn3 c1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FranchisesRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        j32.e(context, "context");
        j32.e(context, "context");
        this.Y0 = ng2.a(new gm1(this));
        this.Z0 = new fm1(this);
        this.b1 = new hm1(new tj(tj.a.EMPTY, null, null, null, 12), this);
        this.c1 = new im1(null, this);
        setAdapter(getHomeFranchisesAdapter());
    }

    private final tj<List<FranchiseItem>> getFranchises() {
        return (tj) this.b1.a(this, d1[0]);
    }

    private final xt1 getHomeFranchisesAdapter() {
        return (xt1) this.Y0.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setFranchises(tj<List<FranchiseItem>> tjVar) {
        this.b1.b(this, d1[0], tjVar);
    }

    @Override // com.shabakaty.downloader.bm1
    public void V0(FranchiseItem franchiseItem) {
        j32.e(franchiseItem, "franchiseItem");
        bm1 bm1Var = this.a1;
        if (bm1Var == null) {
            return;
        }
        bm1Var.V0(franchiseItem);
    }

    public final LiveData<tj<List<FranchiseItem>>> getFranchisesLive() {
        return (LiveData) this.c1.a(this, d1[1]);
    }

    public final void setFranchisesListener(bm1 bm1Var) {
        j32.e(bm1Var, "listener");
        this.a1 = bm1Var;
    }

    public final void setFranchisesLive(LiveData<tj<List<FranchiseItem>>> liveData) {
        this.c1.b(this, d1[1], liveData);
    }
}
