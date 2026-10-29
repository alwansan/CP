package com.shabakaty.downloader;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;

/* JADX INFO: compiled from: LifecycleFrameLayout.kt */
/* JADX INFO: loaded from: classes.dex */
public class ph2 extends FrameLayout implements rh2 {
    public final kf2 r;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ph2(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4);
        j32.e(context, "context");
    }

    public ph2(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
        this.r = ng2.a(new oh2(this));
    }

    private final n35 getDispatcher() {
        return (n35) this.r.getValue();
    }

    @Override // com.shabakaty.downloader.rh2
    public androidx.lifecycle.e getLifecycle() {
        return getDispatcher().a;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        n35 dispatcher = getDispatcher();
        dispatcher.a(androidx.lifecycle.e.b.ON_START);
        dispatcher.a(androidx.lifecycle.e.b.ON_CREATE);
        super.onAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        n35 dispatcher = getDispatcher();
        dispatcher.a(androidx.lifecycle.e.b.ON_STOP);
        dispatcher.a(androidx.lifecycle.e.b.ON_DESTROY);
        super.onDetachedFromWindow();
    }
}
