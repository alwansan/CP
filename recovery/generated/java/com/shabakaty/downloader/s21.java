package com.shabakaty.downloader;

import com.connectsdk.service.airplay.PListParser;
import java.io.Serializable;

/* JADX INFO: compiled from: CoroutineContextImpl.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class s21 implements me0, Serializable {
    public static final s21 r = new s21();

    private final Object readResolve() {
        return r;
    }

    @Override // com.shabakaty.downloader.me0
    public <R> R fold(R r2, hn1<? super R, ? super me0.b, ? extends R> hn1Var) {
        j32.e(hn1Var, "operation");
        return r2;
    }

    @Override // com.shabakaty.downloader.me0
    public <E extends me0.b> E get(me0.c<E> cVar) {
        j32.e(cVar, PListParser.TAG_KEY);
        return null;
    }

    public int hashCode() {
        return 0;
    }

    @Override // com.shabakaty.downloader.me0
    public me0 minusKey(me0.c<?> cVar) {
        j32.e(cVar, PListParser.TAG_KEY);
        return this;
    }

    @Override // com.shabakaty.downloader.me0
    public me0 plus(me0 me0Var) {
        j32.e(me0Var, "context");
        return me0Var;
    }

    public String toString() {
        return "EmptyCoroutineContext";
    }
}
