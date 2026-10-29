package com.shabakaty.downloader;

import androidx.databinding.ViewDataBinding;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: WeakListener.java */
/* JADX INFO: loaded from: classes.dex */
public class r55<T> extends WeakReference<ViewDataBinding> {
    public final h53<T> a;
    public final int b;
    public T c;

    public r55(ViewDataBinding viewDataBinding, int i, h53<T> h53Var, ReferenceQueue<ViewDataBinding> referenceQueue) {
        super(viewDataBinding, referenceQueue);
        this.b = i;
        this.a = h53Var;
    }

    public ViewDataBinding a() {
        ViewDataBinding viewDataBinding = (ViewDataBinding) get();
        if (viewDataBinding == null) {
            b();
        }
        return viewDataBinding;
    }

    public boolean b() {
        boolean z;
        T t = this.c;
        if (t != null) {
            this.a.removeListener(t);
            z = true;
        } else {
            z = false;
        }
        this.c = null;
        return z;
    }
}
