package com.shabakaty.cinemana.utils;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.d;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.button.MaterialButton;
import com.liulishuo.filedownloader.BuildConfig;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import com.shabakaty.downloader.aj;
import com.shabakaty.downloader.cd4;
import com.shabakaty.downloader.ck;
import com.shabakaty.downloader.dd4;
import com.shabakaty.downloader.dt3;
import com.shabakaty.downloader.hj;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.j96;
import com.shabakaty.downloader.jl3;
import com.shabakaty.downloader.kf2;
import com.shabakaty.downloader.ng2;
import com.shabakaty.downloader.s45;
import com.shabakaty.downloader.tj;
import com.shabakaty.downloader.vj;
import kotlin.Metadata;

/* JADX INFO: compiled from: StatusView.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R.\u0010\u0013\u001a\u0004\u0018\u00010\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00118\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001d\u0010\u001e\u001a\u00020\u00198F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d¨\u0006\u001f"}, d2 = {"Lcom/shabakaty/cinemana/utils/StatusView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", BuildConfig.FLAVOR, "J", "Ljava/lang/String;", "getMessage", "()Ljava/lang/String;", "setMessage", "(Ljava/lang/String;)V", "message", "Lcom/shabakaty/downloader/vj;", "navigator", "Lcom/shabakaty/downloader/vj;", "getNavigator", "()Lcom/shabakaty/downloader/vj;", "setNavigator", "(Lcom/shabakaty/downloader/vj;)V", "Lcom/shabakaty/downloader/tj$a;", "value", FileDownloadModel.STATUS, "Lcom/shabakaty/downloader/tj$a;", "getStatus", "()Lcom/shabakaty/downloader/tj$a;", "setStatus", "(Lcom/shabakaty/downloader/tj$a;)V", "Lcom/shabakaty/downloader/dd4;", "binding$delegate", "Lcom/shabakaty/downloader/kf2;", "getBinding", "()Lcom/shabakaty/downloader/dd4;", "binding", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class StatusView extends ConstraintLayout {
    public static final /* synthetic */ int N = 0;

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    public String message;
    public vj K;
    public tj.a L;
    public final kf2 M;

    /* JADX INFO: compiled from: StatusView.kt */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[tj.a.values().length];
            iArr[0] = 1;
            iArr[1] = 2;
            iArr[2] = 3;
            iArr[3] = 4;
            a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StatusView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0, 0);
        j32.e(context, "context");
        j32.e(context, "context");
        setAccessibilityLiveRegion(2);
        this.M = ng2.a(new cd4(context, this));
    }

    public final dd4 getBinding() {
        return (dd4) this.M.getValue();
    }

    public final String getMessage() {
        return this.message;
    }

    /* JADX INFO: renamed from: getNavigator, reason: from getter */
    public final vj getK() {
        return this.K;
    }

    /* JADX INFO: renamed from: getStatus, reason: from getter */
    public final tj.a getL() {
        return this.L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        Object objB;
        Object objB2;
        super.onAttachedToWindow();
        setStatus(this.L);
        try {
            d dVarB = jl3.b(this);
            d dVar = (hj) dVarB;
            if (dVar instanceof vj) {
                setNavigator((vj) dVar);
            }
            objB = (hj) dVarB;
        } catch (Throwable th) {
            objB = j96.b(th);
        }
        if (dt3.a(objB) != null) {
            try {
                Fragment fragmentB = jl3.b(this);
                aj ajVar = (aj) fragmentB;
                if (ajVar instanceof vj) {
                    setNavigator((vj) ajVar);
                } else if (ajVar.getParentFragment() instanceof vj) {
                    d parentFragment = ajVar.getParentFragment();
                    setNavigator(parentFragment instanceof vj ? (vj) parentFragment : null);
                }
                objB2 = (aj) fragmentB;
            } catch (Throwable th2) {
                objB2 = j96.b(th2);
            }
            if (dt3.a(objB2) != null && (getContext() instanceof vj)) {
                Object context = getContext();
                setNavigator(context instanceof vj ? (vj) context : null);
            }
        }
        getBinding().Q.setOnClickListener(new ck(this));
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        this.K = null;
        setStatus(this.L);
        super.onDetachedFromWindow();
    }

    public final void setMessage(String str) {
        this.message = str;
    }

    public final void setNavigator(vj vjVar) {
        this.K = vjVar;
    }

    public final void setStatus(tj.a aVar) {
        this.L = aVar;
        int i = aVar == null ? -1 : a.a[aVar.ordinal()];
        if (i == 1) {
            t();
            return;
        }
        if (i != 2) {
            if (i != 3) {
                if (i != 4) {
                    t();
                    return;
                } else {
                    t();
                    return;
                }
            }
            s45.l(this);
            MaterialButton materialButton = getBinding().Q;
            j32.d(materialButton, "binding.statusRetryButton");
            s45.j(materialButton);
            TextView textView = getBinding().N;
            j32.d(textView, "binding.statusErrorText");
            s45.j(textView);
            TextView textView2 = getBinding().O;
            j32.d(textView2, "binding.statusErrorTextSecondary");
            s45.j(textView2);
            SimpleDraweeView simpleDraweeView = getBinding().M;
            j32.d(simpleDraweeView, "binding.errorImage");
            s45.j(simpleDraweeView);
            ProgressBar progressBar = getBinding().P;
            j32.d(progressBar, "binding.statusProgressBar");
            s45.l(progressBar);
            return;
        }
        s45.l(this);
        MaterialButton materialButton2 = getBinding().Q;
        j32.d(materialButton2, "binding.statusRetryButton");
        s45.l(materialButton2);
        TextView textView3 = getBinding().N;
        j32.d(textView3, "binding.statusErrorText");
        s45.l(textView3);
        TextView textView4 = getBinding().O;
        j32.d(textView4, "binding.statusErrorTextSecondary");
        s45.l(textView4);
        SimpleDraweeView simpleDraweeView2 = getBinding().M;
        j32.d(simpleDraweeView2, "binding.errorImage");
        s45.l(simpleDraweeView2);
        ProgressBar progressBar2 = getBinding().P;
        j32.d(progressBar2, "binding.statusProgressBar");
        s45.j(progressBar2);
        if (this.message != null) {
            getBinding().N.setText(this.message);
            TextView textView5 = getBinding().O;
            j32.d(textView5, "binding.statusErrorTextSecondary");
            s45.j(textView5);
            this.message = null;
        }
    }

    public final void t() {
        s45.j(this);
        MaterialButton materialButton = getBinding().Q;
        j32.d(materialButton, "binding.statusRetryButton");
        s45.j(materialButton);
        TextView textView = getBinding().N;
        j32.d(textView, "binding.statusErrorText");
        s45.j(textView);
        TextView textView2 = getBinding().O;
        j32.d(textView2, "binding.statusErrorTextSecondary");
        s45.j(textView2);
        SimpleDraweeView simpleDraweeView = getBinding().M;
        j32.d(simpleDraweeView, "binding.errorImage");
        s45.j(simpleDraweeView);
        ProgressBar progressBar = getBinding().P;
        j32.d(progressBar, "binding.statusProgressBar");
        s45.j(progressBar);
    }
}
