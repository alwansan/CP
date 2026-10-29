package com.shabakaty.downloader;

import android.app.Application;
import com.google.errorprone.annotations.ForOverride;

/* JADX INFO: compiled from: DaggerApplication.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class vk0 extends Application implements ms1 {
    public volatile iu0<Object> r;

    @Override // com.shabakaty.downloader.ms1
    public e7<Object> a() {
        c();
        return this.r;
    }

    @ForOverride
    public abstract e7<? extends vk0> b();

    public final void c() {
        if (this.r == null) {
            synchronized (this) {
                if (this.r == null) {
                    ((uk0) b()).a(this);
                    if (this.r == null) {
                        throw new IllegalStateException("The AndroidInjector returned from applicationInjector() did not inject the DaggerApplication");
                    }
                }
            }
        }
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        c();
    }
}
