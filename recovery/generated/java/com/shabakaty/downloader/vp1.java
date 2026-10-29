package com.shabakaty.downloader;

import android.content.Context;
import android.os.Handler;
import android.view.GestureDetector;

/* JADX INFO: compiled from: GestureDetectorCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class vp1 {
    public final a a;

    /* JADX INFO: compiled from: GestureDetectorCompat.java */
    public interface a {
    }

    /* JADX INFO: compiled from: GestureDetectorCompat.java */
    public static class b implements a {
        public final GestureDetector a;

        public b(Context context, GestureDetector.OnGestureListener onGestureListener, Handler handler) {
            this.a = new GestureDetector(context, onGestureListener, handler);
        }
    }

    public vp1(Context context, GestureDetector.OnGestureListener onGestureListener) {
        this.a = new b(context, onGestureListener, null);
    }
}
