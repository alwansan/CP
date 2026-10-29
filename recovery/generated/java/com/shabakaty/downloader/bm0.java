package com.shabakaty.downloader;

import android.annotation.SuppressLint;
import android.content.Context;
import java.io.File;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: DatabaseConfiguration.java */
/* JADX INFO: loaded from: classes.dex */
public class bm0 {
    public final zh4.c a;
    public final Context b;
    public final String c;
    public final vt3.c d;
    public final List<vt3.b> e;
    public final List<Object> f;
    public final List<wf> g;
    public final boolean h;
    public final int i;
    public final Executor j;
    public final Executor k;
    public final boolean l;
    public final boolean m;

    @SuppressLint({"LambdaLast"})
    public bm0(Context context, String str, zh4.c cVar, vt3.c cVar2, List list, boolean z, int i, Executor executor, Executor executor2, boolean z2, boolean z3, boolean z4, Set set, String str2, File file, Callable callable, List list2, List list3) {
        this.a = cVar;
        this.b = context;
        this.c = str;
        this.d = cVar2;
        this.e = list;
        this.h = z;
        this.i = i;
        this.j = executor;
        this.k = executor2;
        this.l = z3;
        this.m = z4;
        this.f = list2 == null ? Collections.emptyList() : list2;
        this.g = list3 == null ? Collections.emptyList() : list3;
    }

    public boolean a(int i, int i2) {
        return !((i > i2) && this.m) && this.l;
    }
}
