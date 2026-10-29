package com.shabakaty.downloader;

/* JADX INFO: compiled from: Futures.java */
/* JADX INFO: loaded from: classes.dex */
public class jo1 implements od<Object, Object> {
    public final /* synthetic */ rn1 a;

    public jo1(rn1 rn1Var) {
        this.a = rn1Var;
    }

    @Override // com.shabakaty.downloader.od
    public pi2<Object> apply(Object obj) {
        return ko1.c(this.a.apply(obj));
    }
}
