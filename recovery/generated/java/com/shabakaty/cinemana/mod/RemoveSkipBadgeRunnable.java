package com.shabakaty.cinemana.mod;

import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes2.dex */
public final class RemoveSkipBadgeRunnable implements Runnable {
    private final ViewGroup parent;
    private final View view;

    public RemoveSkipBadgeRunnable(ViewGroup viewGroup, View view) {
        this.parent = viewGroup;
        this.view = view;
    }

    @Override // java.lang.Runnable
    public void run() {
        ViewGroup viewGroup = this.parent;
        View view = this.view;
        if (viewGroup == null || view == null) {
            return;
        }
        viewGroup.removeView(view);
    }
}
