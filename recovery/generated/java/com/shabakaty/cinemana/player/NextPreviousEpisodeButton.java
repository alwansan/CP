package com.shabakaty.cinemana.player;

import android.content.Context;
import android.util.AttributeSet;
import com.cinemana.pro.R;
import com.facebook.drawee.generic.GenericDraweeHierarchy;
import com.facebook.drawee.view.SimpleDraweeView;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.lr;
import com.shabakaty.downloader.wt2;
import kotlin.Metadata;

/* JADX INFO: compiled from: NextPreviousEpisodeButton.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\b\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\b\u0010\u0006J\u0017\u0010\n\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\n\u0010\u0006J\u0017\u0010\f\u001a\u00020\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\f\u0010\u0006J\u0017\u0010\u000e\u001a\u00020\u00042\b\u0010\r\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u000e\u0010\u0006R$\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u00028\u0002@BX\u0082\u000e¢\u0006\f\n\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R.\u0010\u001c\u001a\u0004\u0018\u00010\u00152\b\u0010\u000f\u001a\u0004\u0018\u00010\u00158\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006\u001d"}, d2 = {"Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;", "Lcom/facebook/drawee/view/SimpleDraweeView;", BuildConfig.FLAVOR, "next", "Lcom/shabakaty/downloader/qv4;", "setIsNext", "(Ljava/lang/Boolean;)V", "hidden", "setInnerEpisodesHidden", "hasNext", "setHasNextEpisode", "hasPrevious", "setHasPreviousEpisode", "ready", "setPlayerReady", "value", "D", "Z", "setNext", "(Z)V", "isNext", BuildConfig.FLAVOR, "E", "Ljava/lang/String;", "getKind", "()Ljava/lang/String;", "setKind", "(Ljava/lang/String;)V", "kind", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class NextPreviousEpisodeButton extends SimpleDraweeView {
    public static final /* synthetic */ int F = 0;
    public boolean A;
    public boolean B;
    public boolean C;

    /* JADX INFO: renamed from: D, reason: from kotlin metadata */
    public boolean isNext;

    /* JADX INFO: renamed from: E, reason: from kotlin metadata */
    public String kind;
    public boolean z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NextPreviousEpisodeButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        j32.e(context, "context");
        j32.e(context, "context");
        this.z = true;
        this.isNext = true;
        this.kind = "1";
        GenericDraweeHierarchy hierarchy = getHierarchy();
        if (hierarchy != null) {
            hierarchy.r(R.drawable.ic_next_episode);
        }
        setAlpha(0.0f);
        setEnabled(false);
        f();
        setBackground(wt2.h(context, R.drawable.ripple));
    }

    private final void setNext(boolean z) {
        if (z != this.isNext) {
            this.isNext = z;
            if (z) {
                GenericDraweeHierarchy hierarchy = getHierarchy();
                if (hierarchy != null) {
                    hierarchy.r(R.drawable.ic_next_episode);
                }
            } else {
                GenericDraweeHierarchy hierarchy2 = getHierarchy();
                if (hierarchy2 != null) {
                    hierarchy2.r(R.drawable.ic_previous_episode);
                }
            }
            f();
        }
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0036  */
    public final void f() {
        boolean zA = j32.a(this.kind, "2");
        float f = 1.0f;
        if (zA) {
            boolean z = this.isNext;
            if ((!z || !this.z || !this.C || !this.A) && (z || !this.z || !this.C || !this.B)) {
                if (this.z) {
                    f = 0.3f;
                } else {
                    f = 0.0f;
                }
            }
        } else {
            f = 0.0f;
        }
        animate().alpha(f).setDuration(500L).withStartAction(new lr(this, zA)).start();
    }

    public final String getKind() {
        return this.kind;
    }

    public final void setHasNextEpisode(Boolean hasNext) {
        if (hasNext == null || j32.a(hasNext, Boolean.valueOf(this.A))) {
            return;
        }
        this.A = hasNext.booleanValue();
        f();
    }

    public final void setHasPreviousEpisode(Boolean hasPrevious) {
        if (hasPrevious == null || j32.a(hasPrevious, Boolean.valueOf(this.B))) {
            return;
        }
        this.B = hasPrevious.booleanValue();
        f();
    }

    public final void setInnerEpisodesHidden(Boolean hidden) {
        if (hidden == null || j32.a(hidden, Boolean.valueOf(this.z))) {
            return;
        }
        this.z = hidden.booleanValue();
        f();
    }

    public final void setIsNext(Boolean next) {
        if (next == null || j32.a(next, Boolean.valueOf(this.isNext))) {
            return;
        }
        setNext(next.booleanValue());
        f();
    }

    public final void setKind(String str) {
        if (str == null || j32.a(this.kind, str)) {
            return;
        }
        this.kind = str;
        f();
    }

    public final void setPlayerReady(Boolean ready) {
        if (ready == null || j32.a(ready, Boolean.valueOf(this.C))) {
            return;
        }
        this.C = ready.booleanValue();
        f();
    }
}
