package com.shabakaty.cinemana.mod;

import android.view.View;
import com.shabakaty.downloader.s45;

/* JADX INFO: loaded from: classes2.dex */
public final class HideControllerRunnable implements Runnable {
    private final View target;

    public HideControllerRunnable(View view) {
        this.target = view;
    }

    @Override // java.lang.Runnable
    public void run() {
        View view = this.target;
        if (view != null) {
            s45.j(view);
        }
    }
}
