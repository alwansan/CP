package com.shabakaty.downloader;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* JADX INFO: compiled from: Configuration.java */
/* JADX INFO: loaded from: classes.dex */
public final class y90 {
    public final Executor a = a();
    public final Executor b = a();
    public final m85 c;
    public final n12 d;
    public final fq1 e;
    public final int f;
    public final int g;
    public final int h;

    /* JADX INFO: compiled from: Configuration.java */
    public static final class a {
        public int a = 4;
    }

    /* JADX INFO: compiled from: Configuration.java */
    public interface b {
        y90 a();
    }

    public y90(a aVar) {
        String str = m85.a;
        this.c = new l85();
        this.d = new m12();
        this.e = new fq1(2);
        this.f = aVar.a;
        this.g = Integer.MAX_VALUE;
        this.h = 20;
    }

    public final Executor a() {
        return Executors.newFixedThreadPool(Math.max(2, Math.min(Runtime.getRuntime().availableProcessors() - 1, 4)));
    }
}
