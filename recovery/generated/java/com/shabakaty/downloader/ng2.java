package com.shabakaty.downloader;

/* JADX INFO: compiled from: LazyJVM.kt */
/* JADX INFO: loaded from: classes2.dex */
public class ng2 {
    public static final <T> kf2<T> a(rm1<? extends T> rm1Var) {
        j32.e(rm1Var, "initializer");
        return new qj4(rm1Var, null, 2);
    }

    public static final <T> kf2<T> b(kotlin.a aVar, rm1<? extends T> rm1Var) {
        j32.e(rm1Var, "initializer");
        int iOrdinal = aVar.ordinal();
        if (iOrdinal == 0) {
            return new qj4(rm1Var, null, 2);
        }
        if (iOrdinal == 1) {
            return new ww3(rm1Var);
        }
        if (iOrdinal == 2) {
            return new fw4(rm1Var);
        }
        throw new rz2();
    }
}
