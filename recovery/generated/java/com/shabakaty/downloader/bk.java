package com.shabakaty.downloader;

import java.util.Objects;

/* JADX INFO: compiled from: BaseRenderer.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class bk implements lr3, mr3 {
    public boolean A;
    public boolean B;
    public final int r;
    public nr3 t;
    public int u;
    public int v;
    public dx3 w;
    public wh1[] x;
    public long y;
    public final yh1 s = new yh1(0, (io2) null);
    public long z = Long.MIN_VALUE;

    public bk(int i) {
        this.r = i;
    }

    public final yh1 A() {
        this.s.b();
        return this.s;
    }

    public abstract void B();

    public void C(boolean z, boolean z2) {
    }

    public abstract void D(long j, boolean z);

    public void E() {
    }

    public void F() {
    }

    public void G() {
    }

    public abstract void H(wh1[] wh1VarArr, long j, long j2);

    public final int I(yh1 yh1Var, bn0 bn0Var, int i) {
        dx3 dx3Var = this.w;
        Objects.requireNonNull(dx3Var);
        int iH = dx3Var.h(yh1Var, bn0Var, i);
        if (iH == -4) {
            if (bn0Var.F()) {
                this.z = Long.MIN_VALUE;
                return this.A ? -4 : -3;
            }
            long j = bn0Var.v + this.y;
            bn0Var.v = j;
            this.z = Math.max(this.z, j);
        } else if (iH == -5) {
            wh1 wh1Var = (wh1) yh1Var.t;
            Objects.requireNonNull(wh1Var);
            if (wh1Var.G != Long.MAX_VALUE) {
                wh1.b bVarA = wh1Var.a();
                bVarA.o = wh1Var.G + this.y;
                yh1Var.t = bVarA.a();
            }
        }
        return iH;
    }

    @Override // com.shabakaty.downloader.lr3
    public final void f(int i) {
        this.u = i;
    }

    @Override // com.shabakaty.downloader.lr3
    public final void g() {
        md.e(this.v == 1);
        this.s.b();
        this.v = 0;
        this.w = null;
        this.x = null;
        this.A = false;
        B();
    }

    @Override // com.shabakaty.downloader.lr3
    public final int getState() {
        return this.v;
    }

    @Override // com.shabakaty.downloader.lr3
    public final void h(nr3 nr3Var, wh1[] wh1VarArr, dx3 dx3Var, long j, boolean z, boolean z2, long j2, long j3) {
        md.e(this.v == 0);
        this.t = nr3Var;
        this.v = 1;
        C(z, z2);
        r(wh1VarArr, dx3Var, j2, j3);
        D(j, z);
    }

    @Override // com.shabakaty.downloader.lr3
    public final boolean i() {
        return this.z == Long.MIN_VALUE;
    }

    @Override // com.shabakaty.downloader.lr3
    public final void j() {
        this.A = true;
    }

    @Override // com.shabakaty.downloader.lr3
    public final mr3 k() {
        return this;
    }

    @Override // com.shabakaty.downloader.lr3
    public /* synthetic */ void m(float f, float f2) {
        kr3.a(this, f, f2);
    }

    @Override // com.shabakaty.downloader.mr3
    public int n() {
        return 0;
    }

    @Override // com.shabakaty.downloader.vd3.b
    public void p(int i, Object obj) {
    }

    @Override // com.shabakaty.downloader.lr3
    public final dx3 q() {
        return this.w;
    }

    @Override // com.shabakaty.downloader.lr3
    public final void r(wh1[] wh1VarArr, dx3 dx3Var, long j, long j2) {
        md.e(!this.A);
        this.w = dx3Var;
        if (this.z == Long.MIN_VALUE) {
            this.z = j;
        }
        this.x = wh1VarArr;
        this.y = j2;
        H(wh1VarArr, j, j2);
    }

    @Override // com.shabakaty.downloader.lr3
    public final void reset() {
        md.e(this.v == 0);
        this.s.b();
        E();
    }

    @Override // com.shabakaty.downloader.lr3
    public final void s() {
        dx3 dx3Var = this.w;
        Objects.requireNonNull(dx3Var);
        dx3Var.b();
    }

    @Override // com.shabakaty.downloader.lr3
    public final void start() {
        md.e(this.v == 1);
        this.v = 2;
        F();
    }

    @Override // com.shabakaty.downloader.lr3
    public final void stop() {
        md.e(this.v == 2);
        this.v = 1;
        G();
    }

    @Override // com.shabakaty.downloader.lr3
    public final long t() {
        return this.z;
    }

    @Override // com.shabakaty.downloader.lr3
    public final void u(long j) {
        this.A = false;
        this.z = j;
        D(j, false);
    }

    @Override // com.shabakaty.downloader.lr3
    public final boolean v() {
        return this.A;
    }

    @Override // com.shabakaty.downloader.lr3
    public no2 w() {
        return null;
    }

    @Override // com.shabakaty.downloader.lr3
    public final int x() {
        return this.r;
    }

    public final i71 y(Throwable th, wh1 wh1Var, int i) {
        return z(th, wh1Var, false, i);
    }

    public final i71 z(Throwable th, wh1 wh1Var, boolean z, int i) {
        int iA;
        if (wh1Var == null || this.B) {
            iA = 4;
        } else {
            this.B = true;
            try {
                iA = a(wh1Var) & 7;
                this.B = false;
            } catch (i71 unused) {
                this.B = false;
                iA = 4;
            } catch (Throwable th2) {
                this.B = false;
                throw th2;
            }
        }
        return new i71(1, th, null, i, getName(), this.u, wh1Var, wh1Var == null ? 4 : iA, z);
    }
}
