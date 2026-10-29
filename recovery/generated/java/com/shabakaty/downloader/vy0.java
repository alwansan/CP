package com.shabakaty.downloader;

import com.shabakaty.downloader.services.DownloaderService;

/* JADX INFO: compiled from: downloader.kt */
/* JADX INFO: loaded from: classes.dex */
public final class vy0 {
    public static final kf2 a = ng2.a(c.r);
    public static final kf2 b = ng2.a(b.r);
    public static final kf2 c = ng2.a(a.r);

    /* JADX INFO: compiled from: downloader.kt */
    public static final class a extends af2 implements rm1<az0> {
        public static final a r = new a();

        public a() {
            super(0);
        }

        @Override // com.shabakaty.downloader.rm1
        public az0 invoke() throws xy0 {
            az0 az0VarA = vy0.a();
            if (az0VarA == null) {
                az0VarA = ((x02) ((qj4) vy0.a).getValue()).b;
                if (!(az0VarA != null)) {
                    az0VarA = null;
                }
                if (az0VarA == null) {
                    throw xy0.r;
                }
            }
            return az0VarA;
        }
    }

    /* JADX INFO: compiled from: downloader.kt */
    public static final class b extends af2 implements rm1<i44> {
        public static final b r = new b();

        public b() {
            super(0);
        }

        @Override // com.shabakaty.downloader.rm1
        public i44 invoke() throws xy0 {
            i44 i44VarA = vy0.a();
            if (i44VarA == null) {
                i44VarA = ((x02) ((qj4) vy0.a).getValue()).a;
                if (!(i44VarA != null)) {
                    i44VarA = null;
                }
                if (i44VarA == null) {
                    throw xy0.r;
                }
            }
            return i44VarA;
        }
    }

    /* JADX INFO: compiled from: downloader.kt */
    public static final class c extends af2 implements rm1<x02> {
        public static final c r = new c();

        public c() {
            super(0);
        }

        @Override // com.shabakaty.downloader.rm1
        public x02 invoke() {
            x02.b bVar = x02.c;
            x02 x02Var = x02.e;
            if (x02Var == null) {
                synchronized (bVar) {
                    if (x02.e != null) {
                        x02Var = x02.e;
                        j32.c(x02Var);
                    } else {
                        x02Var = (x02) ((x02.a) x02.d).invoke();
                        x02.e = x02Var;
                    }
                }
            }
            return x02Var;
        }
    }

    public static final ey0 a() {
        DownloaderService downloaderService;
        DownloaderService.Companion aVar = DownloaderService.INSTANCE;
        boolean z = DownloaderService.y;
        if (!z) {
            return null;
        }
        if (z) {
            downloaderService = DownloaderService.z;
        } else {
            DownloaderService.z = null;
            downloaderService = null;
        }
        if (downloaderService == null) {
            return null;
        }
        ey0 ey0Var = downloaderService.t;
        if (ey0Var != null) {
            return ey0Var;
        }
        j32.l("downloadManager");
        throw null;
    }

    public static final az0 b() {
        return (az0) ((qj4) c).getValue();
    }

    public static final i44 c() {
        return (i44) ((qj4) b).getValue();
    }
}
