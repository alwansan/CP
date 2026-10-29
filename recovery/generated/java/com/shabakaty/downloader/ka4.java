package com.shabakaty.downloader;

/* JADX INFO: compiled from: SplashViewModel.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ka4 extends xk<fa4> {
    public final ff3 f;
    public final ou1 g;
    public final String h;
    public final String i;
    public final kf2 j;
    public final kf2 k;
    public final kf2 l;
    public final int m;
    public int n;
    public long o;

    /* JADX INFO: compiled from: SplashViewModel.kt */
    public static final class a extends af2 implements rm1<vr3> {
        public a() {
            super(0);
        }

        @Override // com.shabakaty.downloader.rm1
        public vr3 invoke() {
            vr3.a aVar = new vr3.a();
            aVar.k(ka4.this.h);
            return aVar.b();
        }
    }

    /* JADX INFO: compiled from: SplashViewModel.kt */
    public static final class b extends af2 implements rm1<a63> {
        public static final b r = new b();

        public b() {
            super(0);
        }

        @Override // com.shabakaty.downloader.rm1
        public a63 invoke() {
            return new a63(new a63.a());
        }
    }

    /* JADX INFO: compiled from: SplashViewModel.kt */
    public static final class c extends af2 implements rm1<vr3> {
        public c() {
            super(0);
        }

        @Override // com.shabakaty.downloader.rm1
        public vr3 invoke() {
            vr3.a aVar = new vr3.a();
            aVar.k(ka4.this.i);
            return aVar.b();
        }
    }

    public ka4(ff3 ff3Var, ou1 ou1Var) {
        j32.e(ff3Var, "prefsManager");
        j32.e(ou1Var, "homePageUseCases");
        this.f = ff3Var;
        this.g = ou1Var;
        this.h = "https://cinemana.shabakaty.cc/hacheckphp.php";
        this.i = "https://api.github.com";
        this.j = ng2.a(b.r);
        this.k = ng2.a(new a());
        this.l = ng2.a(new c());
        this.m = 3;
    }

    public final void l() {
        f().U();
    }

    public final void m() {
        f().U();
    }
}
