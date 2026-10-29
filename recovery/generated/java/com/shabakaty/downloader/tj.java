package com.shabakaty.downloader;

/* JADX INFO: compiled from: BaseModel.kt */
/* JADX INFO: loaded from: classes.dex */
public final class tj<T> {
    public a a;
    public T b;
    public String c = null;

    /* JADX INFO: compiled from: BaseModel.kt */
    public enum a {
        SUCCESS,
        ERROR,
        LOADING,
        EMPTY
    }

    /* JADX WARN: Multi-variable type inference failed */
    public tj(a aVar, Object obj, Throwable th, String str, int i) {
        this.a = aVar;
        this.b = obj;
    }

    public final void a(a aVar) {
        this.a = aVar;
    }
}
