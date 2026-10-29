package com.shabakaty.downloader;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.cardview.widget.CardView;
import androidx.lifecycle.LifecycleCoroutineScopeImpl;
import androidx.navigation.NavController;
import androidx.navigation.fragment.NavHostFragment;
import androidx.recyclerview.widget.RecyclerView;
import com.cinemana.pro.R;
import com.facebook.drawee.view.SimpleDraweeView;
import com.liulishuo.filedownloader.BuildConfig;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import com.shabakaty.cinemana.ca1.Continue106;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.domain.models.local.home_page.FranchiseItem;
import com.shabakaty.cinemana.domain.models.local.home_page.VideosGroup;
import com.shabakaty.cinemana.ui.home_activity.HomeActivity;
import com.shabakaty.cinemana.ui.home_fragment.HomeItem;
import com.shabakaty.cinemana.ui.home_fragment.HomeItems;
import com.shabakaty.cinemana.ui.home_fragment.ShowMorePageDataType;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;

/* JADX INFO: compiled from: HomeFragment.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00012\u00020\u0003B\u0007¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/shabakaty/downloader/vt1;", "Lcom/shabakaty/downloader/hj;", "Lcom/shabakaty/downloader/qj1;", "Lcom/shabakaty/downloader/wt1;", "Lcom/shabakaty/downloader/tu1;", "<init>", "()V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class vt1 extends hj<qj1, wt1, tu1> implements wt1 {
    public static final /* synthetic */ int z = 0;
    public yt1 x;
    public fu1 y;

    /* JADX INFO: compiled from: HomeFragment.kt */
    public static final class a extends af2 implements tm1<Throwable, qv4> {
        public a() {
            super(1);
        }

        @Override // com.shabakaty.downloader.tm1
        public qv4 invoke(Throwable th) {
            vt1 vt1Var = vt1.this;
            int i = vt1.z;
            Objects.requireNonNull(vt1Var);
            ih2 ih2VarE = cl3.e(vt1Var);
            nh3.y(new rd0(((LifecycleCoroutineScopeImpl) ih2VarE).s.plus(hu0.b)), null, 0, new ut1(vt1Var, null), 3, null);
            return qv4.a;
        }
    }

    public vt1() {
        super(R.layout.fragment_home);
        this.y = new fu1(this);
    }

    @Override // com.shabakaty.downloader.wt1
    public void D1(VideosGroup videosGroup) {
        NavController navControllerX1 = NavHostFragment.X1(this);
        j32.b(navControllerX1, "NavHostFragment.findNavController(this)");
        uo1.d(navControllerX1, new ShowMorePageDataType.Dynamic.Group(videosGroup.title, videosGroup.groupsID, videosGroup.hasPagination == 1));
    }

    @Override // com.shabakaty.downloader.wt1
    public void G(FranchiseItem franchiseItem) {
        NavController navControllerX1 = NavHostFragment.X1(this);
        j32.b(navControllerX1, "NavHostFragment.findNavController(this)");
        uo1.d(navControllerX1, new ShowMorePageDataType.Dynamic.Franchise(franchiseItem.displayName, franchiseItem.id));
    }

    @Override // com.shabakaty.downloader.wt1
    public void P(VideoModel videoModel, View view) {
        SimpleDraweeView simpleDraweeView;
        if (view == null || (simpleDraweeView = (SimpleDraweeView) view.findViewWithTag("VideoThumb")) == null) {
            return;
        }
        Bundle bundleA = ml3.a(new x93("LAUNCH_PLAYER_ARG", Boolean.TRUE));
        NavController navControllerX1 = NavHostFragment.X1(this);
        j32.b(navControllerX1, "NavHostFragment.findNavController(this)");
        uo1.e(navControllerX1, simpleDraweeView, videoModel, bundleA);
    }

    @Override // com.shabakaty.downloader.wt1
    public void W0(q14 q14Var) {
        j32.e(q14Var, FileDownloadModel.STATUS);
        Context contextRequireContext = requireContext();
        j32.d(contextRequireContext, "requireContext()");
        yc4.a(contextRequireContext, q14Var);
        requireActivity().finish();
    }

    @Override // com.shabakaty.downloader.wt1
    public void W1(q14.b.AbstractC0181b abstractC0181b) {
        j32.e(abstractC0181b, FileDownloadModel.STATUS);
        ji1 activity = getActivity();
        HomeActivity homeActivity = activity instanceof HomeActivity ? (HomeActivity) activity : null;
        if (homeActivity == null) {
            return;
        }
        j32.e(abstractC0181b, FileDownloadModel.STATUS);
        T t = homeActivity.t;
        j32.c(t);
        ((y2) t).R.setText(homeActivity.getString(abstractC0181b.d));
        T t2 = homeActivity.t;
        j32.c(t2);
        CardView cardView = ((y2) t2).P;
        j32.d(cardView, "binding.serviceDownBanner");
        s45.l(cardView);
        T t3 = homeActivity.t;
        j32.c(t3);
        ((y2) t3).P.setTranslationY(-1000.0f);
        T t4 = homeActivity.t;
        j32.c(t4);
        ((y2) t4).P.animate().translationY(0.0f).setDuration(800L).start();
    }

    @Override // com.shabakaty.downloader.hj
    public vj Z1() {
        return this;
    }

    @Override // com.shabakaty.downloader.wt1
    public void a(VideoModel videoModel, View view) {
        SimpleDraweeView simpleDraweeView;
        if (view == null || (simpleDraweeView = (SimpleDraweeView) view.findViewWithTag("VideoThumb")) == null) {
            return;
        }
        NavController navControllerX1 = NavHostFragment.X1(this);
        j32.b(navControllerX1, "NavHostFragment.findNavController(this)");
        uo1.e(navControllerX1, simpleDraweeView, videoModel, (4 & 4) != 0 ? ml3.a(new x93[0]) : null);
    }

    @Override // com.shabakaty.downloader.hj
    public Class<tu1> d2() {
        return tu1.class;
    }

    @Override // com.shabakaty.downloader.wt1
    public void e() {
        T t = this.t;
        j32.c(t);
        if (((qj1) t).N.getScrollState() == 1 || !b2(this)) {
            return;
        }
        T t2 = this.t;
        j32.c(t2);
        ((qj1) t2).N.q0(0);
    }

    @Override // com.shabakaty.downloader.vj
    public void o() {
        c2().p();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        this.y = null;
        this.x = null;
        super.onDestroy();
    }

    @Override // com.shabakaty.downloader.hj, androidx.fragment.app.Fragment
    public void onDestroyView() {
        T t = this.t;
        j32.c(t);
        ((qj1) t).N.setAdapter(null);
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        Continue106.refresh(this);
        if (b2(this)) {
            tu1 tu1VarC2 = c2();
            ((l92) nh3.y(tu1VarC2.e(), null, 0, new su1(tu1VarC2, null), 3, null)).x(false, true, new a());
        }
    }

    @Override // com.shabakaty.downloader.hj, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        j32.e(view, "view");
        super.onViewCreated(view, bundle);
        T t = this.t;
        j32.c(t);
        ((qj1) t).N.setAccessibilityLiveRegion(0);
        T t2 = this.t;
        j32.c(t2);
        ((qj1) t2).M.setImportantForAccessibility(4);
        f2(true, null);
        if (this.x == null) {
            this.x = new yt1(this);
        }
        T t3 = this.t;
        j32.c(t3);
        ((qj1) t3).N.setAdapter(this.x);
        T t4 = this.t;
        j32.c(t4);
        RecyclerView recyclerView = ((qj1) t4).N;
        j32.d(recyclerView, "binding.homePageMainRecycler");
        s45.a(recyclerView);
        Continue106.refresh(this);
    }

    @Override // com.shabakaty.downloader.vj
    public void q(int i) {
        j32.e(this, "this");
        qk.a.a(this, i);
    }

    @Override // com.shabakaty.downloader.qk
    public void s0(List<VideoModel> list, String str) {
        VideoModel videoModel;
        String str2;
        VideoModel videoModel2;
        if ("أكمل المشاهدة".equals(str) || "Continue Watching".equals(str)) {
            j32.f(this, "$this$findNavController");
            NavController navControllerX1 = NavHostFragment.X1(this);
            j32.b(navControllerX1, "NavHostFragment.findNavController(this)");
            if (str == null) {
                str = BuildConfig.FLAVOR;
            }
            if (list == null) {
                list = w21.r;
            }
            uo1.d(navControllerX1, new ShowMorePageDataType.Fixed.VideosList(str, list));
            return;
        }
        HomeItems value = c2().m.getValue();
        boolean z2 = false;
        HomeItem.Horizontal horizontal = null;
        Object obj = null;
        if (value != null) {
            for (Object obj2 : value.a()) {
                VideoModel videoModel3 = (VideoModel) m50.c0(((HomeItem.Horizontal) obj2).c(), 0);
                if (j32.a(videoModel3 == null ? null : videoModel3.listId, (list == null || (videoModel2 = (VideoModel) m50.c0(list, 0)) == null) ? null : videoModel2.listId)) {
                    obj = obj2;
                    break;
                }
            }
            horizontal = (HomeItem.Horizontal) obj;
        }
        boolean z3 = horizontal instanceof HomeItem.Horizontal.RecentlyAdded;
        String str3 = BuildConfig.FLAVOR;
        if (z3) {
            j32.f(this, "$this$findNavController");
            NavController navControllerX2 = NavHostFragment.X1(this);
            j32.b(navControllerX2, "NavHostFragment.findNavController(this)");
            if (str == null) {
                str = BuildConfig.FLAVOR;
            }
            if (list == null) {
                list = w21.r;
            }
            uo1.d(navControllerX2, new ShowMorePageDataType.Fixed.VideosList(str, list));
            return;
        }
        j32.f(this, "$this$findNavController");
        NavController navControllerX3 = NavHostFragment.X1(this);
        j32.b(navControllerX3, "NavHostFragment.findNavController(this)");
        if (str == null) {
            str = BuildConfig.FLAVOR;
        }
        if (list != null && (videoModel = (VideoModel) m50.c0(list, 0)) != null && (str2 = videoModel.listId) != null) {
            str3 = str2;
        }
        if (horizontal != null && horizontal.getHasPagination() == 1) {
            z2 = true;
        }
        uo1.d(navControllerX3, new ShowMorePageDataType.Dynamic.Group(str, str3, z2));
    }

    @Override // com.shabakaty.downloader.wt1
    public void x1() {
        FranchiseItem[] franchiseItemArr;
        HomeItem.Franchises franchises;
        List<FranchiseItem> list;
        x93[] x93VarArr = new x93[1];
        HomeItems value = c2().m.getValue();
        if (value == null || (franchises = value.franchises) == null || (list = franchises.franchises) == null) {
            franchiseItemArr = null;
        } else {
            Object[] array = list.toArray(new FranchiseItem[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            franchiseItemArr = (FranchiseItem[]) array;
        }
        if (franchiseItemArr == null) {
            franchiseItemArr = new FranchiseItem[0];
        }
        x93VarArr[0] = new x93("COLLECTIONS_ARG", franchiseItemArr);
        Bundle bundleA = ml3.a(x93VarArr);
        NavController navControllerX1 = NavHostFragment.X1(this);
        j32.b(navControllerX1, "NavHostFragment.findNavController(this)");
        navControllerX1.i(1103, bundleA, null, null);
    }
}
