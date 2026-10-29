package com.shabakaty.downloader;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: SharedSQLiteStatement.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class f54 {
    public final AtomicBoolean a = new AtomicBoolean(false);
    public final vt3 b;
    public volatile ci4 c;

    public f54(vt3 vt3Var) {
        this.b = vt3Var;
    }

    public ci4 a() {
        this.b.a();
        if (!this.a.compareAndSet(false, true)) {
            return b();
        }
        if (this.c == null) {
            this.c = b();
        }
        return this.c;
    }

    public final ci4 b() {
        String strC = c();
        vt3 vt3Var = this.b;
        vt3Var.a();
        vt3Var.b();
        return vt3Var.d.getWritableDatabase().Q(strC);
    }

    public abstract String c();

    public void d(ci4 ci4Var) {
        if (ci4Var == this.c) {
            this.a.set(false);
        }
    }
}
