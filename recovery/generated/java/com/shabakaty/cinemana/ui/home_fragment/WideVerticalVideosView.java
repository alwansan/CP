package com.shabakaty.cinemana.ui.home_fragment;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.ca1.ContinueActions262;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.downloader.ck;
import com.shabakaty.downloader.cl3;
import com.shabakaty.downloader.ej;
import com.shabakaty.downloader.fo3;
import com.shabakaty.downloader.i65;
import com.shabakaty.downloader.ih2;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.k65;
import com.shabakaty.downloader.kf2;
import com.shabakaty.downloader.l65;
import com.shabakaty.downloader.m65;
import com.shabakaty.downloader.n65;
import com.shabakaty.downloader.ne4;
import com.shabakaty.downloader.ng2;
import com.shabakaty.downloader.nh3;
import com.shabakaty.downloader.pk;
import com.shabakaty.downloader.qv4;
import com.shabakaty.downloader.r55;
import com.shabakaty.downloader.rh2;
import com.shabakaty.downloader.rm1;
import com.shabakaty.downloader.s45;
import com.shabakaty.downloader.tj;
import com.shabakaty.downloader.yk;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: WideVerticalVideosView.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R.\u0010\u000e\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR*\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u000f8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001d\u0010\u001c\u001a\u00020\u00178B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bRJ\u0010 \u001a\u0012\u0012\u0004\u0012\u00020\u001e\u0012\u0006\b\u0001\u0012\u00020\u001f\u0018\u00010\u001d2\u0016\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\u001e\u0012\u0006\b\u0001\u0012\u00020\u001f\u0018\u00010\u001d8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u001d\u0010*\u001a\u00020&8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b'\u0010\u0019\u001a\u0004\b(\u0010)R*\u0010,\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010+8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101RF\u00104\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001e03\u0018\u0001022\u0014\u0010\u0007\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001e03\u0018\u0001028\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b4\u00105\u001a\u0004\b6\u00107\"\u0004\b8\u00109¨\u0006:"}, d2 = {"Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Lcom/shabakaty/downloader/pk;", "listener", "Lcom/shabakaty/downloader/qv4;", "setItemsListener", BuildConfig.FLAVOR, "value", "Q", "Ljava/lang/String;", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "title", BuildConfig.FLAVOR, "R", "I", "getItemCount", "()I", "setItemCount", "(I)V", "itemCount", "Lcom/shabakaty/downloader/yk;", "baseWideVideosAdapter$delegate", "Lcom/shabakaty/downloader/kf2;", "getBaseWideVideosAdapter", "()Lcom/shabakaty/downloader/yk;", "baseWideVideosAdapter", "Lcom/shabakaty/downloader/ej;", "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;", "Landroidx/databinding/ViewDataBinding;", "adapter", "Lcom/shabakaty/downloader/ej;", "getAdapter", "()Lcom/shabakaty/downloader/ej;", "setAdapter", "(Lcom/shabakaty/downloader/ej;)V", "Lcom/shabakaty/downloader/i65;", "binding$delegate", "getBinding", "()Lcom/shabakaty/downloader/i65;", "binding", "Lkotlin/Function0;", "onScrolledToEnd", "Lcom/shabakaty/downloader/rm1;", "getOnScrolledToEnd", "()Lcom/shabakaty/downloader/rm1;", "setOnScrolledToEnd", "(Lcom/shabakaty/downloader/rm1;)V", "Lcom/shabakaty/downloader/tj;", BuildConfig.FLAVOR, "videos", "Lcom/shabakaty/downloader/tj;", "getVideos", "()Lcom/shabakaty/downloader/tj;", "setVideos", "(Lcom/shabakaty/downloader/tj;)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class WideVerticalVideosView extends ConstraintLayout implements pk {
    public static final /* synthetic */ int S = 0;
    public final kf2 J;
    public ej<VideoModel, ? extends ViewDataBinding> K;
    public final kf2 L;
    public RecyclerView.r M;
    public rm1<qv4> N;
    public pk O;
    public tj<List<VideoModel>> P;

    /* JADX INFO: renamed from: Q, reason: from kotlin metadata */
    public String title;

    /* JADX INFO: renamed from: R, reason: from kotlin metadata */
    public int itemCount;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WideVerticalVideosView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        j32.e(context, "context");
        j32.e(context, "context");
        boolean z = false;
        this.J = ng2.a(new k65(this));
        this.L = ng2.a(new l65(this));
        this.P = new tj<>(tj.a.EMPTY, null, null, null, 12);
        this.title = BuildConfig.FLAVOR;
        getBinding().N.setAccessibilityLiveRegion(0);
        setImportantForAccessibility(4);
        getBinding().N.setAdapter(getBaseWideVideosAdapter());
        RecyclerView recyclerView = getBinding().N;
        j32.d(recyclerView, "binding.videosRecycler");
        s45.a(recyclerView);
        if (this.M != null) {
            RecyclerView recyclerView2 = getBinding().N;
            RecyclerView.r rVar = this.M;
            j32.c(rVar);
            List<RecyclerView.r> list = recyclerView2.A0;
            if (list != null) {
                list.remove(rVar);
            }
        }
        this.M = new n65(this);
        RecyclerView recyclerView3 = getBinding().N;
        RecyclerView.r rVar2 = this.M;
        j32.c(rVar2);
        recyclerView3.j(rVar2);
        String str = this.title;
        if (str != null && !ne4.D(str)) {
            z = true;
        }
        if (!z) {
            TextView textView = getBinding().O;
            j32.d(textView, "binding.videosTitle");
            s45.j(textView);
        }
        getBinding().M.i();
        getBinding().M.setOnClickListener(new ck(this));
    }

    private final yk getBaseWideVideosAdapter() {
        return (yk) this.J.getValue();
    }

    @Override // com.shabakaty.downloader.pk
    public void a(VideoModel videoModel, View view) {
        if (ContinueActions262.interceptClick(this, videoModel, view)) {
            return;
        }
        j32.e(videoModel, "videoModel");
        pk pkVar = this.O;
        if (pkVar == null) {
            return;
        }
        pkVar.a(videoModel, view);
    }

    public final ej<VideoModel, ? extends ViewDataBinding> getAdapter() {
        return this.K;
    }

    public final i65 getBinding() {
        return (i65) this.L.getValue();
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

    public final tj<List<VideoModel>> getVideos() {
        return this.P;
    }

    public final void setAdapter(ej<VideoModel, ? extends ViewDataBinding> ejVar) {
        this.K = ejVar;
        getBinding().N.setAdapter(ejVar);
    }

    public final void setItemCount(int i) {
        this.itemCount = i;
        RecyclerView recyclerView = getBinding().N;
        j32.d(recyclerView, "binding.videosRecycler");
        tj<List<VideoModel>> tjVar = this.P;
        List<VideoModel> list = tjVar == null ? null : tjVar.b;
        Integer numValueOf = Integer.valueOf(i);
        tj<List<VideoModel>> tjVar2 = this.P;
        fo3.a(recyclerView, list, numValueOf, tjVar2 != null ? tjVar2.a : null);
    }

    public final void setItemsListener(pk pkVar) {
        j32.e(pkVar, "listener");
        this.O = pkVar;
    }

    public final void setOnScrolledToEnd(rm1<qv4> rm1Var) {
        this.N = rm1Var;
    }

    public final void setTitle(String str) {
        this.title = str;
        boolean z = false;
        if (str != null && (!ne4.D(str))) {
            z = true;
        }
        if (z) {
            TextView textView = getBinding().O;
            j32.d(textView, "binding.videosTitle");
            s45.l(textView);
        } else {
            TextView textView2 = getBinding().O;
            j32.d(textView2, "binding.videosTitle");
            s45.j(textView2);
        }
        getBinding().O.setText(str);
    }

    public final void setVideos(tj<List<VideoModel>> tjVar) {
        this.P = tjVar;
        List<VideoModel> list = tjVar == null ? null : tjVar.b;
        boolean z = false;
        if (list == null || list.isEmpty()) {
            RecyclerView recyclerView = getBinding().N;
            j32.d(recyclerView, "binding.videosRecycler");
            s45.j(recyclerView);
            TextView textView = getBinding().O;
            j32.d(textView, "binding.videosTitle");
            s45.j(textView);
            return;
        }
        Object context = getContext();
        j32.d(context, "context");
        rh2 rh2Var = context instanceof rh2 ? (rh2) context : null;
        ih2 ih2VarE = rh2Var == null ? null : cl3.e(rh2Var);
        if (ih2VarE != null) {
            nh3.y(ih2VarE, null, 0, new m65(this, null), 3, null);
        }
        RecyclerView recyclerView2 = getBinding().N;
        j32.d(recyclerView2, "binding.videosRecycler");
        s45.l(recyclerView2);
        String str = this.title;
        if (str != null && (!ne4.D(str))) {
            z = true;
        }
        if (z) {
            TextView textView2 = getBinding().O;
            j32.d(textView2, "binding.videosTitle");
            s45.l(textView2);
        } else {
            TextView textView3 = getBinding().O;
            j32.d(textView3, "binding.videosTitle");
            s45.j(textView3);
        }
        RecyclerView recyclerView3 = getBinding().N;
        j32.d(recyclerView3, "binding.videosRecycler");
        fo3.a(recyclerView3, tjVar == null ? null : tjVar.b, Integer.valueOf(this.itemCount), tjVar != null ? tjVar.a : null);
    }

    public final void t() {
        this.O = null;
        if (this.M != null) {
            RecyclerView recyclerView = getBinding().N;
            RecyclerView.r rVar = this.M;
            j32.c(rVar);
            List<RecyclerView.r> list = recyclerView.A0;
            if (list != null) {
                list.remove(rVar);
            }
            this.M = null;
        }
        getBinding().M.setOnClickListener(null);
        getBinding().N.setAdapter(null);
        for (r55 r55Var : getBinding().u) {
            if (r55Var != null) {
                r55Var.b();
            }
        }
    }
}
