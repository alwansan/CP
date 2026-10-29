package com.shabakaty.downloader;

/* JADX INFO: compiled from: ObservableJust.java */
/* JADX INFO: loaded from: classes.dex */
public final class c53<T> extends t43<T> implements hx3<T> {
    public final T r;

    public c53(T t) {
        this.r = t;
    }

    @Override // com.shabakaty.downloader.hx3, java.util.concurrent.Callable
    public T call() {
        return this.r;
    }

    @Override // com.shabakaty.downloader.t43
    public void j(q53<? super T> q53Var) {
        i53 i53Var = new i53(q53Var, this.r);
        q53Var.c(i53Var);
        i53Var.run();
    }
}
