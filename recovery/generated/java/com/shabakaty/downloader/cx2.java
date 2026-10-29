package com.shabakaty.downloader;

/* JADX INFO: compiled from: NavOptionsBuilder.kt */
/* JADX INFO: loaded from: classes.dex */
public final class cx2 {
    public boolean b;
    public final androidx.navigation.g.a a = new androidx.navigation.g.a();
    public int c = -1;

    public final void a(tm1<? super u7, qv4> tm1Var) {
        j32.f(tm1Var, "animBuilder");
        u7 u7Var = new u7();
        tm1Var.invoke(u7Var);
        androidx.navigation.g.a aVar = this.a;
        aVar.d = u7Var.a;
        aVar.e = u7Var.b;
        aVar.f = u7Var.c;
        aVar.g = u7Var.d;
    }

    public final void b(int i) {
        this.c = i;
    }
}
