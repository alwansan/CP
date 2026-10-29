package com.shabakaty.cinemana.ui.splash;

import android.view.animation.Animation;

/* JADX INFO: compiled from: SplashActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a implements Animation.AnimationListener {
    public final /* synthetic */ SplashActivity a;

    public a(SplashActivity splashActivity) {
        this.a = splashActivity;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        SplashActivity splashActivity = this.a;
        int i = SplashActivity.x;
        splashActivity.F().l();
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }
}
