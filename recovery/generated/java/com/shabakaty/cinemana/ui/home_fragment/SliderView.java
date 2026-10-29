package com.shabakaty.cinemana.ui.home_fragment;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.r;
import com.rd.PageIndicatorView;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.j35;
import com.shabakaty.downloader.kf2;
import com.shabakaty.downloader.m50;
import com.shabakaty.downloader.ng2;
import com.shabakaty.downloader.t04;
import com.shabakaty.downloader.uu1;
import com.shabakaty.downloader.v84;
import com.shabakaty.downloader.w84;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: SliderView.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u00012\u00020\u0002J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006R$\u0010\u0010\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001d\u0010\u0016\u001a\u00020\u00118B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0017"}, d2 = {"Lcom/shabakaty/cinemana/ui/home_fragment/SliderView;", "Landroidx/recyclerview/widget/RecyclerView;", "Lcom/shabakaty/downloader/v84;", "listener", "Lcom/shabakaty/downloader/qv4;", "setItemsListener", "Lcom/rd/PageIndicatorView;", "pageIndicatorView", "setupWithIndicator", "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Slider;", "b1", "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Slider;", "getSliderItem", "()Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Slider;", "setSliderItem", "(Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Slider;)V", "sliderItem", "Lcom/shabakaty/downloader/uu1;", "homeSliderAdapter$delegate", "Lcom/shabakaty/downloader/kf2;", "getHomeSliderAdapter", "()Lcom/shabakaty/downloader/uu1;", "homeSliderAdapter", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class SliderView extends RecyclerView implements v84 {
    public RecyclerView.r Y0;
    public final kf2 Z0;
    public v84 a1;

    /* JADX INFO: renamed from: b1, reason: from kotlin metadata */
    public HomeItem.Slider sliderItem;

    /* JADX INFO: compiled from: SliderView.kt */
    public static final class a extends RecyclerView.r {
        public final /* synthetic */ PageIndicatorView b;

        public a(PageIndicatorView pageIndicatorView) {
            this.b = pageIndicatorView;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void onScrolled(RecyclerView recyclerView, int i, int i2) {
            j32.e(recyclerView, "recyclerView");
            super.onScrolled(recyclerView, i, i2);
            float fComputeHorizontalScrollOffset = SliderView.this.computeHorizontalScrollOffset();
            View view = (View) m50.c0(t04.J(j35.a(SliderView.this)), 0);
            this.b.setSelection((int) (fComputeHorizontalScrollOffset / (view != null ? view.getWidth() - 60 : 0)));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SliderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        j32.e(context, "context");
        j32.e(context, "context");
        this.Z0 = ng2.a(new w84(this));
        setAdapter(getHomeSliderAdapter());
        new r().a(this);
    }

    private final uu1 getHomeSliderAdapter() {
        return (uu1) this.Z0.getValue();
    }

    @Override // com.shabakaty.downloader.pk
    public void a(VideoModel videoModel, View view) {
        j32.e(videoModel, "videoModel");
        v84 v84Var = this.a1;
        if (v84Var == null) {
            return;
        }
        v84Var.a(videoModel, view);
    }

    @Override // com.shabakaty.downloader.v84
    public void g(VideoModel videoModel, View view) {
        j32.e(videoModel, "videoModel");
        v84 v84Var = this.a1;
        if (v84Var == null) {
            return;
        }
        v84Var.g(videoModel, view);
    }

    public final HomeItem.Slider getSliderItem() {
        return this.sliderItem;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.a1 = null;
    }

    public final void setItemsListener(v84 v84Var) {
        j32.e(v84Var, "listener");
        this.a1 = v84Var;
    }

    public final void setSliderItem(HomeItem.Slider slider) {
        this.sliderItem = slider;
    }

    public final void setupWithIndicator(PageIndicatorView pageIndicatorView) {
        List<VideoModel> list;
        j32.e(pageIndicatorView, "pageIndicatorView");
        HomeItem.Slider slider = this.sliderItem;
        int size = 0;
        if (slider != null && (list = slider.videos) != null) {
            size = list.size();
        }
        if (size != pageIndicatorView.getCount()) {
            pageIndicatorView.setCount(size);
        }
        RecyclerView.r rVar = this.Y0;
        if (rVar != null) {
            j32.c(rVar);
            List<RecyclerView.r> list2 = this.A0;
            if (list2 != null) {
                list2.remove(rVar);
            }
        }
        a aVar = new a(pageIndicatorView);
        this.Y0 = aVar;
        j32.c(aVar);
        j(aVar);
    }
}
