package com.shabakaty.cinemana.ui.home_activity;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import androidx.fragment.app.FragmentContainerView;
import androidx.mediarouter.app.MediaRouteButton;
import com.cinemana.pro.R;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.shabakaty.cinemana.ui.home_activity.CastButton;
import com.shabakaty.downloader.cl3;
import com.shabakaty.downloader.dt3;
import com.shabakaty.downloader.f00;
import com.shabakaty.downloader.f74;
import com.shabakaty.downloader.hl0;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.j96;
import com.shabakaty.downloader.m74;
import com.shabakaty.downloader.mu0;
import com.shabakaty.downloader.nh3;
import com.shabakaty.downloader.ph2;
import com.shabakaty.downloader.pw;
import com.shabakaty.downloader.qv4;
import com.shabakaty.downloader.qw;
import com.shabakaty.downloader.r74;
import com.shabakaty.downloader.uv3;
import com.shabakaty.downloader.wt2;
import com.shabakaty.downloader.xw;
import com.shabakaty.downloader.xz;
import com.shabakaty.downloader.yz;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;

/* JADX INFO: compiled from: CastButton.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001d\b\u0007\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0018¢\u0006\u0004\b\u001a\u0010\u001bJ\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016R$\u0010\r\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR$\u0010\u0015\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u001c"}, d2 = {"Lcom/shabakaty/cinemana/ui/home_activity/CastButton;", "Lcom/shabakaty/downloader/ph2;", "Landroid/view/View$OnClickListener;", "l", "Lcom/shabakaty/downloader/qv4;", "setOnClickListener", "Landroid/view/View;", "s", "Landroid/view/View;", "getTouchDetector", "()Landroid/view/View;", "setTouchDetector", "(Landroid/view/View;)V", "touchDetector", "Landroidx/fragment/app/FragmentContainerView;", "t", "Landroidx/fragment/app/FragmentContainerView;", "getFragmentContainer", "()Landroidx/fragment/app/FragmentContainerView;", "setFragmentContainer", "(Landroidx/fragment/app/FragmentContainerView;)V", "fragmentContainer", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class CastButton extends ph2 {
    public static final /* synthetic */ int z = 0;

    /* JADX INFO: renamed from: s, reason: from kotlin metadata */
    public View touchDetector;

    /* JADX INFO: renamed from: t, reason: from kotlin metadata */
    public FragmentContainerView fragmentContainer;
    public qw u;
    public FloatingActionButton v;
    public MediaRouteButton w;
    public mu0 x;
    public final f74<Integer> y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CastButton(Context context, AttributeSet attributeSet) {
        Object objB;
        super(context, attributeSet, 0, 4);
        j32.e(context, "context");
        ViewDataBinding viewDataBindingB = hl0.b(LayoutInflater.from(getContext()), R.layout.cast_button, this, true);
        j32.d(viewDataBindingB, "inflate(\n\t\t\tLayoutInflat…\n\t\t\tcontainer,\n\t\t\ttrue\n\t)");
        qw qwVar = (qw) viewDataBindingB;
        this.u = qwVar;
        FloatingActionButton floatingActionButton = qwVar.M;
        j32.d(floatingActionButton, "binding.dlnaCastButton");
        this.v = floatingActionButton;
        MediaRouteButton mediaRouteButton = this.u.N;
        j32.d(mediaRouteButton, "binding.mediaRouteButton");
        this.w = mediaRouteButton;
        Objects.requireNonNull(1, "item is null");
        this.y = new m74(uv3.b(new r74(1).c(1500L, TimeUnit.MILLISECONDS)), new f00(this));
        setAlpha(0.7f);
        this.v.i();
        try {
            Context applicationContext = getContext().getApplicationContext();
            j32.d(applicationContext, "context.applicationContext");
            if (yz.f == null) {
                yz.f = new yz(applicationContext);
            }
            yz yzVar = yz.f;
            if (yzVar != null) {
                yzVar.d = new xz(yzVar);
                yzVar.e.c().a(yzVar.d, xw.class);
                yzVar.c = yzVar.e.c().c();
            }
            Context applicationContext2 = getContext().getApplicationContext();
            j32.d(applicationContext2, "context.applicationContext");
            if (yz.f == null) {
                yz.f = new yz(applicationContext2);
            }
            yz yzVar2 = yz.f;
            if (yzVar2 != null) {
                FloatingActionButton floatingActionButton2 = this.v;
                j32.e(floatingActionButton2, "<set-?>");
                yzVar2.b = floatingActionButton2;
            }
            objB = qv4.a;
        } catch (Throwable th) {
            objB = j96.b(th);
        }
        Throwable thA = dt3.a(objB);
        if (thA != null) {
            wt2.j(thA);
        }
        nh3.y(cl3.e(this), null, 0, new pw(this, null), 3, null);
    }

    public final FragmentContainerView getFragmentContainer() {
        return this.fragmentContainer;
    }

    public final View getTouchDetector() {
        return this.touchDetector;
    }

    @Override // com.shabakaty.downloader.ph2, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        View view = this.touchDetector;
        if (view == null) {
            return;
        }
        view.setOnTouchListener(new View.OnTouchListener() { // from class: com.shabakaty.downloader.ow
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                mu0 mu0Var;
                CastButton castButton = this.r;
                int i = CastButton.z;
                j32.e(castButton, "this$0");
                if (motionEvent == null) {
                    return false;
                }
                FragmentContainerView fragmentContainer = castButton.getFragmentContainer();
                if (fragmentContainer != null) {
                    fragmentContainer.dispatchTouchEvent(motionEvent);
                }
                if (castButton.v.l()) {
                    castButton.v.setEnabled(false);
                    castButton.v.i();
                    mu0 mu0Var2 = castButton.x;
                    if (mu0Var2 != null) {
                        if (!mu0Var2.n() && (mu0Var = castButton.x) != null) {
                            mu0Var.h();
                        }
                        castButton.x = null;
                    }
                    castButton.x = castButton.y.k(n5.w, uh0.v);
                }
                return true;
            }
        });
    }

    @Override // com.shabakaty.downloader.ph2, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        mu0 mu0Var;
        mu0 mu0Var2 = this.x;
        if (mu0Var2 != null) {
            if (!mu0Var2.n() && (mu0Var = this.x) != null) {
                mu0Var.h();
            }
            this.x = null;
        }
        super.onDetachedFromWindow();
    }

    public final void setFragmentContainer(FragmentContainerView fragmentContainerView) {
        this.fragmentContainer = fragmentContainerView;
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.v.setOnClickListener(onClickListener);
    }

    public final void setTouchDetector(View view) {
        this.touchDetector = view;
    }
}
