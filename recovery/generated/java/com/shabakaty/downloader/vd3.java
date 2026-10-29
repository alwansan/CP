package com.shabakaty.downloader;

import android.os.Looper;
import android.util.Log;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: PlayerMessage.java */
/* JADX INFO: loaded from: classes.dex */
public final class vd3 {
    public final b a;
    public final a b;
    public final w30 c;
    public final nn4 d;
    public int e;
    public Object f;
    public Looper g;
    public int h;
    public boolean i;
    public boolean j;
    public boolean k;

    /* JADX INFO: compiled from: PlayerMessage.java */
    public interface a {
    }

    /* JADX INFO: compiled from: PlayerMessage.java */
    public interface b {
        void p(int i, Object obj);
    }

    public vd3(a aVar, b bVar, nn4 nn4Var, int i, w30 w30Var, Looper looper) {
        this.b = aVar;
        this.a = bVar;
        this.d = nn4Var;
        this.g = looper;
        this.c = w30Var;
        this.h = i;
    }

    public synchronized boolean a(long j) {
        boolean z;
        md.e(this.i);
        md.e(this.g.getThread() != Thread.currentThread());
        long jD = this.c.d() + j;
        while (true) {
            z = this.k;
            if (z || j <= 0) {
                break;
            }
            this.c.c();
            wait(j);
            j = jD - this.c.d();
        }
        if (!z) {
            throw new TimeoutException("Message delivery timed out.");
        }
        return this.j;
    }

    public synchronized boolean b() {
        return false;
    }

    public synchronized void c(boolean z) {
        this.j = z | this.j;
        this.k = true;
        notifyAll();
    }

    public vd3 d() {
        md.e(!this.i);
        this.i = true;
        s71 s71Var = (s71) this.b;
        synchronized (s71Var) {
            if (s71Var.O || !s71Var.y.isAlive()) {
                Log.w("ExoPlayerImplInternal", "Ignoring messages sent after release.");
                c(false);
            } else {
                ((yj4.b) ((yj4) s71Var.x).c(14, this)).b();
            }
        }
        return this;
    }

    public vd3 e(Object obj) {
        md.e(!this.i);
        this.f = obj;
        return this;
    }

    public vd3 f(int i) {
        md.e(!this.i);
        this.e = i;
        return this;
    }
}
