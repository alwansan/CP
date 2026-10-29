package com.shabakaty.cinemana.player;

import android.content.Context;
import android.util.AttributeSet;
import com.cinemana.pro.R;
import com.facebook.drawee.generic.GenericDraweeHierarchy;
import com.facebook.drawee.view.SimpleDraweeView;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.rr;
import com.shabakaty.downloader.wt2;
import kotlin.Metadata;

/* JADX INFO: compiled from: FastForwardRewindButton.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\b\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\b\u0010\u0006J\u0017\u0010\n\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\n\u0010\u0006R$\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00028\u0002@BX\u0082\u000e¢\u0006\f\n\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcom/shabakaty/cinemana/player/FastForwardRewindButton;", "Lcom/facebook/drawee/view/SimpleDraweeView;", BuildConfig.FLAVOR, "forward", "Lcom/shabakaty/downloader/qv4;", "setIsFastForward", "(Ljava/lang/Boolean;)V", "hidden", "setInnerEpisodesHidden", "ready", "setPlayerReady", "value", "B", "Z", "setForward", "(Z)V", "isForward", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class FastForwardRewindButton extends SimpleDraweeView {
    public boolean A;

    /* JADX INFO: renamed from: B, reason: from kotlin metadata */
    public boolean isForward;
    public boolean z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FastForwardRewindButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        j32.e(context, "context");
        j32.e(context, "context");
        this.z = true;
        this.isForward = true;
        GenericDraweeHierarchy hierarchy = getHierarchy();
        if (hierarchy != null) {
            hierarchy.r(R.drawable.ic_fast_forward);
        }
        setAlpha(0.0f);
        setEnabled(false);
        g();
        setBackground(wt2.h(context, R.drawable.ripple));
    }

    private final void setForward(boolean z) {
        if (z != this.isForward) {
            this.isForward = z;
            if (z) {
                GenericDraweeHierarchy hierarchy = getHierarchy();
                if (hierarchy != null) {
                    hierarchy.r(R.drawable.ic_fast_forward);
                }
            } else {
                GenericDraweeHierarchy hierarchy2 = getHierarchy();
                if (hierarchy2 != null) {
                    hierarchy2.r(R.drawable.ic_rewind);
                }
            }
            g();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: setVisibility$lambda-0, reason: not valid java name */
    public static final void m75setVisibility$lambda0(FastForwardRewindButton fastForwardRewindButton) {
        j32.e(fastForwardRewindButton, "this$0");
        fastForwardRewindButton.setEnabled(fastForwardRewindButton.z && fastForwardRewindButton.A);
    }

    public final void g() {
        float f;
        boolean z = this.z;
        if (z && this.A) {
            f = 1.0f;
        } else {
            f = !z ? 0.0f : 0.3f;
        }
        animate().alpha(f).setDuration(500L).withStartAction(new rr(this)).start();
    }

    public final void setInnerEpisodesHidden(Boolean hidden) {
        if (hidden == null || j32.a(hidden, Boolean.valueOf(this.z))) {
            return;
        }
        this.z = hidden.booleanValue();
        g();
    }

    public final void setIsFastForward(Boolean forward) {
        if (forward == null || j32.a(forward, Boolean.valueOf(this.isForward))) {
            return;
        }
        setForward(forward.booleanValue());
        g();
    }

    public final void setPlayerReady(Boolean ready) {
        if (ready == null || j32.a(ready, Boolean.valueOf(this.A))) {
            return;
        }
        this.A = ready.booleanValue();
        g();
    }
}
