package com.shabakaty.downloader;

import android.media.ImageReader;
import android.util.Size;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: ImageAnalysis.java */
/* JADX INFO: loaded from: classes.dex */
public final class fy1 extends cx4 {
    public static final d p = new d();
    public final iy1 l;
    public final Object m;
    public a n;
    public hp0 o;

    /* JADX INFO: compiled from: ImageAnalysis.java */
    public interface a {
        void a(fz1 fz1Var);
    }

    /* JADX INFO: compiled from: ImageAnalysis.java */
    @Retention(RetentionPolicy.SOURCE)
    public @interface b {
    }

    /* JADX INFO: compiled from: ImageAnalysis.java */
    public static final class c implements dz1.a<c>, hx4.a<fy1, ky1, c> {
        public final yv2 a;

        public c(yv2 yv2Var) {
            this.a = yv2Var;
            o90.a<Class<?>> aVar = qk4.i;
            Class cls = (Class) yv2Var.a(aVar, null);
            if (cls != null && !cls.equals(fy1.class)) {
                throw new IllegalArgumentException("Invalid target class configuration for " + this + ": " + cls);
            }
            o90.c cVar = o90.c.OPTIONAL;
            yv2Var.A(aVar, cVar, fy1.class);
            o90.a<String> aVar2 = qk4.h;
            if (yv2Var.a(aVar2, null) == null) {
                yv2Var.A(aVar2, cVar, fy1.class.getCanonicalName() + "-" + UUID.randomUUID());
            }
        }

        @Override // com.shabakaty.downloader.dz1.a
        public c a(Size size) {
            this.a.A(dz1.d, o90.c.OPTIONAL, size);
            return this;
        }

        @Override // com.shabakaty.downloader.p81
        public wv2 b() {
            return this.a;
        }

        @Override // com.shabakaty.downloader.dz1.a
        public c d(int i) {
            this.a.A(dz1.c, o90.c.OPTIONAL, Integer.valueOf(i));
            return this;
        }

        @Override // com.shabakaty.downloader.hx4.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public ky1 c() {
            return new ky1(k83.x(this.a));
        }
    }

    /* JADX INFO: compiled from: ImageAnalysis.java */
    public static final class d {
        public static final ky1 a;

        static {
            Size size = new Size(640, 480);
            Size size2 = new Size(1920, 1080);
            yv2 yv2VarY = yv2.y();
            c cVar = new c(yv2VarY);
            o90.a<Size> aVar = dz1.e;
            o90.c cVar2 = o90.c.OPTIONAL;
            yv2VarY.A(aVar, cVar2, size);
            yv2VarY.A(dz1.f, cVar2, size2);
            yv2VarY.A(hx4.o, cVar2, 1);
            yv2VarY.A(dz1.b, cVar2, 0);
            a = cVar.c();
        }
    }

    public fy1(ky1 ky1Var) {
        super(ky1Var);
        this.m = new Object();
        if (((Integer) ((ky1) this.f).a(ky1.s, 0)).intValue() == 1) {
            this.l = new jy1();
        } else {
            this.l = new ly1((Executor) ky1Var.a(xm4.j, jl3.e()));
        }
    }

    @Override // com.shabakaty.downloader.cx4
    public hx4<?> c(boolean z, ix4 ix4Var) {
        o90 o90VarA = ix4Var.a(ix4.a.IMAGE_ANALYSIS);
        if (z) {
            Objects.requireNonNull(p);
            o90VarA = n90.a(o90VarA, d.a);
        }
        if (o90VarA == null) {
            return null;
        }
        return ((c) f(o90VarA)).c();
    }

    @Override // com.shabakaty.downloader.cx4
    public hx4.a<?, ?, ?> f(o90 o90Var) {
        return new c(yv2.z(o90Var));
    }

    @Override // com.shabakaty.downloader.cx4
    public void k() {
        this.l.e = true;
    }

    @Override // com.shabakaty.downloader.cx4
    public void m() {
        hl3.b();
        hp0 hp0Var = this.o;
        if (hp0Var != null) {
            hp0Var.a();
            this.o = null;
        }
        iy1 iy1Var = this.l;
        iy1Var.e = false;
        iy1Var.d();
    }

    @Override // com.shabakaty.downloader.cx4
    public Size o(Size size) {
        this.k = q(b(), (ky1) this.f, size).e();
        return size;
    }

    public u14.b q(String str, ky1 ky1Var, Size size) {
        hl3.b();
        Executor executor = (Executor) ky1Var.a(xm4.j, jl3.e());
        Objects.requireNonNull(executor);
        int iIntValue = ((Integer) ((ky1) this.f).a(ky1.s, 0)).intValue() == 1 ? ((Integer) ((ky1) this.f).a(ky1.t, 6)).intValue() : 4;
        o90.a<hz1> aVar = ky1.u;
        nw3 nw3Var = ((hz1) ky1Var.a(aVar, null)) != null ? new nw3(((hz1) ky1Var.a(aVar, null)).a(size.getWidth(), size.getHeight(), d(), iIntValue, 0L)) : new nw3(new d7(ImageReader.newInstance(size.getWidth(), size.getHeight(), d(), iIntValue)));
        r();
        nw3Var.e(this.l, executor);
        u14.b bVarF = u14.b.f(ky1Var);
        hp0 hp0Var = this.o;
        if (hp0Var != null) {
            hp0Var.a();
        }
        wz1 wz1Var = new wz1(nw3Var.a());
        this.o = wz1Var;
        wz1Var.d().f(new rr(nw3Var), jl3.i());
        bVarF.d(this.o);
        bVarF.e.add(new ey1(this, str, ky1Var, size));
        return bVarF;
    }

    public final void r() {
        vt vtVarA = a();
        if (vtVarA != null) {
            this.l.b = vtVarA.l().e(((dz1) this.f).v(0));
        }
    }

    public String toString() {
        StringBuilder sbA = um3.a("ImageAnalysis:");
        sbA.append(e());
        return sbA.toString();
    }
}
