package com.shabakaty.downloader;

import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class jp0 implements Runnable {
    public final /* synthetic */ int r = 1;
    public final /* synthetic */ Object s;
    public final /* synthetic */ Object t;
    public final /* synthetic */ long u;

    public /* synthetic */ jp0(o25.a aVar, Object obj, long j) {
        this.s = aVar;
        this.t = obj;
        this.u = j;
    }

    public /* synthetic */ jp0(pi2 pi2Var, ar.a aVar, long j) {
        this.s = pi2Var;
        this.t = aVar;
        this.u = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.r) {
            case 0:
                pi2 pi2Var = (pi2) this.s;
                ar.a aVar = (ar.a) this.t;
                long j = this.u;
                if (!pi2Var.isDone()) {
                    aVar.c(new TimeoutException("Cannot complete surfaceList within " + j));
                    pi2Var.cancel(true);
                }
                break;
            default:
                o25.a aVar2 = (o25.a) this.s;
                Object obj = this.t;
                long j2 = this.u;
                o25 o25Var = aVar2.b;
                int i = sy4.a;
                o25Var.N(obj, j2);
                break;
        }
    }
}
