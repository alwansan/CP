package com.shabakaty.cinemana.ui.home_fragment;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.ca1.Continue106;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.downloader.ck;
import com.shabakaty.downloader.cv1;
import com.shabakaty.downloader.ev1;
import com.shabakaty.downloader.fo3;
import com.shabakaty.downloader.fv1;
import com.shabakaty.downloader.gv1;
import com.shabakaty.downloader.hn1;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.jj;
import com.shabakaty.downloader.kf2;
import com.shabakaty.downloader.ne4;
import com.shabakaty.downloader.ng2;
import com.shabakaty.downloader.nl6;
import com.shabakaty.downloader.pk;
import com.shabakaty.downloader.qv4;
import com.shabakaty.downloader.r55;
import com.shabakaty.downloader.rm1;
import com.shabakaty.downloader.s45;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: HorizontalScrollVideosView.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\u00020\u00012\u00020\u0002J\u0010\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J*\u0010\u000b\u001a\u00020\u00042\"\u0010\n\u001a\u001e\u0012\f\u0012\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0004\u0012\u00020\u00040\u0006R*\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0019\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\"\u0010!\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u001d\u0010'\u001a\u00020\"8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&R\u001d\u0010,\u001a\u00020(8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b)\u0010$\u001a\u0004\b*\u0010+R*\u0010.\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010-8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103R.\u00105\u001a\u0004\u0018\u00010\"2\b\u00104\u001a\u0004\u0018\u00010\"8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b5\u00106\u001a\u0004\b7\u0010&\"\u0004\b8\u00109¨\u0006:"}, d2 = {"Lcom/shabakaty/cinemana/ui/home_fragment/HorizontalScrollVideosView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Lcom/shabakaty/downloader/pk;", "listener", "Lcom/shabakaty/downloader/qv4;", "setItemsListener", "Lkotlin/Function2;", BuildConfig.FLAVOR, "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;", BuildConfig.FLAVOR, "onSeeMoreListener", "setOnSeeMoreClickListener", "Q", "Ljava/util/List;", "getVideos", "()Ljava/util/List;", "setVideos", "(Ljava/util/List;)V", "videos", "R", "Ljava/lang/String;", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "title", BuildConfig.FLAVOR, "S", "I", "getItemCount", "()I", "setItemCount", "(I)V", "itemCount", "Lcom/shabakaty/downloader/jj;", "baseHorizontalVideosAdapter$delegate", "Lcom/shabakaty/downloader/kf2;", "getBaseHorizontalVideosAdapter", "()Lcom/shabakaty/downloader/jj;", "baseHorizontalVideosAdapter", "Lcom/shabakaty/downloader/cv1;", "binding$delegate", "getBinding", "()Lcom/shabakaty/downloader/cv1;", "binding", "Lkotlin/Function0;", "onScrolledToEnd", "Lcom/shabakaty/downloader/rm1;", "getOnScrolledToEnd", "()Lcom/shabakaty/downloader/rm1;", "setOnScrolledToEnd", "(Lcom/shabakaty/downloader/rm1;)V", "value", "adapter", "Lcom/shabakaty/downloader/jj;", "getAdapter", "setAdapter", "(Lcom/shabakaty/downloader/jj;)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class HorizontalScrollVideosView extends ConstraintLayout implements pk {
    public static final /* synthetic */ int T = 0;
    public final kf2 J;
    public hn1<? super List<VideoModel>, ? super String, qv4> K;
    public final kf2 L;
    public RecyclerView.r M;
    public rm1<qv4> N;
    public jj O;
    public pk P;

    /* JADX INFO: renamed from: Q, reason: from kotlin metadata */
    public List<VideoModel> videos;

    /* JADX INFO: renamed from: R, reason: from kotlin metadata */
    public String title;

    /* JADX INFO: renamed from: S, reason: from kotlin metadata */
    public int itemCount;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HorizontalScrollVideosView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        j32.e(context, "context");
        j32.e(context, "context");
        boolean z = false;
        this.J = ng2.a(new ev1(this));
        this.L = ng2.a(new fv1(this));
        this.title = BuildConfig.FLAVOR;
        getBinding().M.setOnClickListener(new ck(this));
        getBinding().N.setAdapter(getBaseHorizontalVideosAdapter());
        RecyclerView.m layoutManager = getBinding().N.getLayoutManager();
        LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
        if (this.M != null) {
            RecyclerView recyclerView = getBinding().N;
            RecyclerView.r rVar = this.M;
            j32.c(rVar);
            List<RecyclerView.r> list = recyclerView.A0;
            if (list != null) {
                list.remove(rVar);
            }
        }
        this.M = new gv1(this, linearLayoutManager);
        RecyclerView recyclerView2 = getBinding().N;
        RecyclerView.r rVar2 = this.M;
        j32.c(rVar2);
        recyclerView2.j(rVar2);
        String str = this.title;
        if (str != null && !ne4.D(str)) {
            z = true;
        }
        if (z) {
            return;
        }
        TextView textView = getBinding().O;
        j32.d(textView, "binding.videosTitle");
        s45.j(textView);
    }

    private final jj getBaseHorizontalVideosAdapter() {
        return (jj) this.J.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final cv1 getBinding() {
        return (cv1) this.L.getValue();
    }

    @Override // com.shabakaty.downloader.pk
    public void a(VideoModel videoModel, View view) {
        if (Continue106.open(this, videoModel)) {
            return;
        }
        j32.e(videoModel, "videoModel");
        pk pkVar = this.P;
        if (pkVar == null) {
            return;
        }
        pkVar.a(videoModel, view);
    }

    /* JADX INFO: renamed from: getAdapter, reason: from getter */
    public final jj getO() {
        return this.O;
    }

    public final int getItemCount() {
        return this.itemCount;
    }

    public final rm1<qv4> getOnScrolledToEnd() {
        return this.N;
    }

    public final String getTitle() {
        return this.title;
    }

    public final List<VideoModel> getVideos() {
        return this.videos;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.P = null;
        this.M = null;
        for (r55 r55Var : getBinding().u) {
            if (r55Var != null) {
                r55Var.b();
            }
        }
        this.K = null;
    }

    public final void setAdapter(jj jjVar) {
        this.O = jjVar;
        getBinding().N.setAdapter(jjVar);
        RecyclerView recyclerView = getBinding().N;
        j32.d(recyclerView, "binding.videosRecycler");
        s45.a(recyclerView);
    }

    public final void setItemCount(int i) {
        this.itemCount = i;
    }

    public final void setItemsListener(pk pkVar) {
        this.P = pkVar;
    }

    public final void setOnScrolledToEnd(rm1<qv4> rm1Var) {
        this.N = rm1Var;
    }

    public final void setOnSeeMoreClickListener(hn1<? super List<VideoModel>, ? super String, qv4> hn1Var) {
        j32.e(hn1Var, "onSeeMoreListener");
        this.K = hn1Var;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public final void setVideos(List<VideoModel> list) {
        this.videos = list;
    }

    public final void u() {
        String str = this.title;
        if (str != null && (ne4.D(str) ^ true)) {
            TextView textView = getBinding().O;
            j32.d(textView, "binding.videosTitle");
            s45.l(textView);
        } else {
            TextView textView2 = getBinding().O;
            j32.d(textView2, "binding.videosTitle");
            s45.j(textView2);
        }
        TextView textView3 = getBinding().O;
        String str2 = this.title;
        textView3.setText(str2 == null ? null : nl6.z(str2));
        RecyclerView recyclerView = getBinding().N;
        j32.d(recyclerView, "binding.videosRecycler");
        nl6.q(recyclerView, nl6.z(this.title));
        List<VideoModel> list = this.videos;
        if ((list == null || list.isEmpty()) ? false : true) {
            RecyclerView recyclerView2 = getBinding().N;
            j32.d(recyclerView2, "binding.videosRecycler");
            s45.l(recyclerView2);
            RecyclerView recyclerView3 = getBinding().N;
            j32.d(recyclerView3, "binding.videosRecycler");
            fo3.a(recyclerView3, this.videos, Integer.valueOf(this.itemCount), null);
        } else {
            RecyclerView recyclerView4 = getBinding().N;
            j32.d(recyclerView4, "binding.videosRecycler");
            s45.j(recyclerView4);
            TextView textView4 = getBinding().O;
            j32.d(textView4, "binding.videosTitle");
            s45.j(textView4);
        }
        Continue106.row(this);
    }
}
