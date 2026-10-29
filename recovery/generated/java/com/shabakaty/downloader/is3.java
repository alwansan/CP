package com.shabakaty.downloader;

import android.view.ScaleGestureDetector;
import android.view.View;
import android.view.ViewPropertyAnimator;
import com.google.android.exoplayer2.ui.PlayerView;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: ResizeModeScaleListener.kt */
/* JADX INFO: loaded from: classes.dex */
public final class is3 implements ScaleGestureDetector.OnScaleGestureListener {
    public final PlayerView a;
    public int b = 1;
    public float c = 1.0f;
    public tm1<? super Integer, qv4> d;

    /* JADX INFO: compiled from: View.kt */
    public static final class a implements View.OnAttachStateChangeListener {
        public final /* synthetic */ View r;
        public final /* synthetic */ is3 s;

        public a(View view, is3 is3Var) {
            this.r = view;
            this.s = is3Var;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            j32.e(view, "view");
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            j32.e(view, "view");
            this.r.removeOnAttachStateChangeListener(this);
            this.s.d = null;
        }
    }

    public is3(PlayerView playerView) {
        this.a = playerView;
        WeakHashMap<View, b45> weakHashMap = c35.a;
        if (playerView.isAttachedToWindow()) {
            playerView.addOnAttachStateChangeListener(new a(playerView, this));
        } else {
            this.d = null;
        }
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
        int i = this.b;
        if (i != 1) {
            float f = this.c;
            if (f < (i == 6 ? 1.1d : 2.0d)) {
                if (f > (i == 6 ? 0.9d : 0.2d)) {
                    float scaleFactor = f * (scaleGestureDetector == null ? 1.0f : scaleGestureDetector.getScaleFactor());
                    this.c = scaleFactor;
                    if (scaleFactor > 1.0f) {
                        this.a.setScaleY(scaleFactor);
                        this.a.setScaleX(this.c);
                    } else {
                        View videoSurfaceView = this.a.getVideoSurfaceView();
                        if (videoSurfaceView != null) {
                            videoSurfaceView.setScaleY(this.c);
                        }
                        View videoSurfaceView2 = this.a.getVideoSurfaceView();
                        if (videoSurfaceView2 != null) {
                            videoSurfaceView2.setScaleX(this.c);
                        }
                    }
                }
            }
        }
        return true;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
        return true;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
        ViewPropertyAnimator viewPropertyAnimatorWithStartAction;
        ViewPropertyAnimator duration;
        ViewPropertyAnimator viewPropertyAnimatorAnimate;
        ViewPropertyAnimator duration2;
        ViewPropertyAnimator viewPropertyAnimatorScaleX;
        ViewPropertyAnimator duration3;
        ViewPropertyAnimator viewPropertyAnimatorScaleY;
        ViewPropertyAnimator viewPropertyAnimatorAnimate2;
        ViewPropertyAnimator duration4;
        ViewPropertyAnimator viewPropertyAnimatorScaleY2;
        if (this.b != 1) {
            View videoSurfaceView = this.a.getVideoSurfaceView();
            if (videoSurfaceView != null && (viewPropertyAnimatorAnimate2 = videoSurfaceView.animate()) != null && (duration4 = viewPropertyAnimatorAnimate2.setDuration(300L)) != null && (viewPropertyAnimatorScaleY2 = duration4.scaleY(1.0f)) != null) {
                viewPropertyAnimatorScaleY2.start();
            }
            ViewPropertyAnimator viewPropertyAnimatorAnimate3 = this.a.animate();
            if (viewPropertyAnimatorAnimate3 != null && (duration3 = viewPropertyAnimatorAnimate3.setDuration(300L)) != null && (viewPropertyAnimatorScaleY = duration3.scaleY(1.0f)) != null) {
                viewPropertyAnimatorScaleY.start();
            }
            View videoSurfaceView2 = this.a.getVideoSurfaceView();
            if (videoSurfaceView2 != null && (viewPropertyAnimatorAnimate = videoSurfaceView2.animate()) != null && (duration2 = viewPropertyAnimatorAnimate.setDuration(300L)) != null && (viewPropertyAnimatorScaleX = duration2.scaleX(1.0f)) != null) {
                viewPropertyAnimatorScaleX.start();
            }
            ViewPropertyAnimator viewPropertyAnimatorAnimate4 = this.a.animate();
            ViewPropertyAnimator viewPropertyAnimatorScaleX2 = null;
            if (viewPropertyAnimatorAnimate4 != null && (duration = viewPropertyAnimatorAnimate4.setDuration(300L)) != null) {
                viewPropertyAnimatorScaleX2 = duration.scaleX(1.0f);
            }
            if (viewPropertyAnimatorScaleX2 != null && (viewPropertyAnimatorWithStartAction = viewPropertyAnimatorScaleX2.withStartAction(new rr(this))) != null) {
                viewPropertyAnimatorWithStartAction.start();
            }
            this.c = 1.0f;
        }
    }
}
