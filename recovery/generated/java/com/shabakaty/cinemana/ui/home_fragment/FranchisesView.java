package com.shabakaty.cinemana.ui.home_fragment;

import android.content.Context;
import android.util.AttributeSet;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.lifecycle.LiveData;
import com.shabakaty.cinemana.domain.models.local.home_page.FranchiseItem;
import com.shabakaty.downloader.bm1;
import com.shabakaty.downloader.ck;
import com.shabakaty.downloader.em1;
import com.shabakaty.downloader.fo3;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.jm1;
import com.shabakaty.downloader.kf2;
import com.shabakaty.downloader.km1;
import com.shabakaty.downloader.ng2;
import com.shabakaty.downloader.qv4;
import com.shabakaty.downloader.rm1;
import com.shabakaty.downloader.s45;
import com.shabakaty.downloader.tj;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: FranchisesView.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R$\u0010\r\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001d\u0010\u0013\u001a\u00020\u000e8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R*\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006\u001b"}, d2 = {"Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Lcom/shabakaty/downloader/bm1;", "listener", "Lcom/shabakaty/downloader/qv4;", "setCollectionsListener", "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Franchises;", "L", "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Franchises;", "getFranchises", "()Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Franchises;", "setFranchises", "(Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Franchises;)V", "franchises", "Lcom/shabakaty/downloader/km1;", "binding$delegate", "Lcom/shabakaty/downloader/kf2;", "getBinding", "()Lcom/shabakaty/downloader/km1;", "binding", "Lkotlin/Function0;", "seeMoreClickListener", "Lcom/shabakaty/downloader/rm1;", "getSeeMoreClickListener", "()Lcom/shabakaty/downloader/rm1;", "setSeeMoreClickListener", "(Lcom/shabakaty/downloader/rm1;)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class FranchisesView extends ConstraintLayout {
    public static final /* synthetic */ int M = 0;
    public rm1<qv4> J;
    public final kf2 K;

    /* JADX INFO: renamed from: L, reason: from kotlin metadata */
    public HomeItem.Franchises franchises;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FranchisesView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        j32.e(context, "context");
        j32.e(context, "context");
        this.K = ng2.a(new jm1(this));
        getBinding().O.setOnClickListener(new ck(this));
    }

    private final km1 getBinding() {
        return (km1) this.K.getValue();
    }

    public final HomeItem.Franchises getFranchises() {
        return this.franchises;
    }

    public final rm1<qv4> getSeeMoreClickListener() {
        return this.J;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.J = null;
        FranchisesRecyclerView franchisesRecyclerView = getBinding().N;
        franchisesRecyclerView.a1 = null;
        LiveData<tj<List<FranchiseItem>>> franchisesLive = franchisesRecyclerView.getFranchisesLive();
        if (franchisesLive != null) {
            franchisesLive.removeObserver(new em1(franchisesRecyclerView.Z0, 2));
        }
        franchisesRecyclerView.setFranchisesLive(null);
    }

    public final void setCollectionsListener(bm1 bm1Var) {
        j32.e(bm1Var, "listener");
        getBinding().N.setFranchisesListener(bm1Var);
    }

    public final void setFranchises(HomeItem.Franchises franchises) {
        this.franchises = franchises;
    }

    public final void setSeeMoreClickListener(rm1<qv4> rm1Var) {
        this.J = rm1Var;
    }

    public final void t() {
        List<FranchiseItem> list;
        HomeItem.Franchises franchises = this.franchises;
        boolean z = false;
        if (franchises != null && (list = franchises.franchises) != null && !list.isEmpty()) {
            z = true;
        }
        if (!z) {
            s45.j(this);
            return;
        }
        s45.l(this);
        FranchisesRecyclerView franchisesRecyclerView = getBinding().N;
        j32.d(franchisesRecyclerView, "binding.homePageFranchisesView");
        HomeItem.Franchises franchises2 = this.franchises;
        fo3.b(franchisesRecyclerView, franchises2 == null ? null : franchises2.franchises, 5, null, 4);
    }
}
