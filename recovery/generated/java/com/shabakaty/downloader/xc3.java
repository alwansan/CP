package com.shabakaty.downloader;

/* JADX INFO: compiled from: PlaybackException.java */
/* JADX INFO: loaded from: classes.dex */
public class xc3 extends Exception {
    public final int r;
    public final long s;

    static {
        ex4 ex4Var = ex4.v;
    }

    public xc3(String str, Throwable th, int i, long j) {
        super(str, th);
        this.r = i;
        this.s = j;
    }
}
