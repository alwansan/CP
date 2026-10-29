package com.shabakaty.downloader;

import java.io.Serializable;

/* JADX INFO: compiled from: Lambda.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class af2<R> implements tn1<R>, Serializable {
    public final int arity;

    public af2(int i) {
        this.arity = i;
    }

    @Override // com.shabakaty.downloader.tn1
    public int getArity() {
        return this.arity;
    }

    public String toString() {
        String strG = dq3.a.g(this);
        j32.d(strG, "renderLambdaToString(this)");
        return strG;
    }
}
