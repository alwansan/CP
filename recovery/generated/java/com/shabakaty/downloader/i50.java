package com.shabakaty.downloader;

import java.util.Collection;

/* JADX INFO: compiled from: IteratorsJVM.kt */
/* JADX INFO: loaded from: classes2.dex */
public class i50 extends iq6 {
    public static final <T> int O(Iterable<? extends T> iterable, int i) {
        j32.e(iterable, "<this>");
        return iterable instanceof Collection ? ((Collection) iterable).size() : i;
    }
}
