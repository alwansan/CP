package com.shabakaty.downloader;

import android.os.Handler;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: CameraXConfig.java */
/* JADX INFO: loaded from: classes.dex */
public final class uu implements qk4<tu> {
    public static final o90.a<qt.a> s = new fg("camerax.core.appConfig.cameraFactoryProvider", qt.a.class, null);
    public static final o90.a<mt.a> t = new fg("camerax.core.appConfig.deviceSurfaceManagerProvider", mt.a.class, null);
    public static final o90.a<ix4.b> u = new fg("camerax.core.appConfig.useCaseConfigFactoryProvider", ix4.b.class, null);
    public static final o90.a<Executor> v = new fg("camerax.core.appConfig.cameraExecutor", Executor.class, null);
    public static final o90.a<Handler> w = new fg("camerax.core.appConfig.schedulerHandler", Handler.class, null);
    public static final o90.a<Integer> x = new fg("camerax.core.appConfig.minimumLoggingLevel", Integer.TYPE, null);
    public static final o90.a<fu> y = new fg("camerax.core.appConfig.availableCamerasLimiter", fu.class, null);
    public final k83 r;

    /* JADX INFO: compiled from: CameraXConfig.java */
    public static final class a {
        public final yv2 a;

        public a() {
            yv2 yv2VarY = yv2.y();
            this.a = yv2VarY;
            o90.a<Class<?>> aVar = qk4.i;
            Class cls = (Class) yv2VarY.a(aVar, null);
            if (cls != null && !cls.equals(tu.class)) {
                throw new IllegalArgumentException("Invalid target class configuration for " + this + ": " + cls);
            }
            o90.c cVar = o90.c.OPTIONAL;
            yv2VarY.A(aVar, cVar, tu.class);
            o90.a<String> aVar2 = qk4.h;
            if (yv2VarY.a(aVar2, null) == null) {
                yv2VarY.A(aVar2, cVar, tu.class.getCanonicalName() + "-" + UUID.randomUUID());
            }
        }
    }

    /* JADX INFO: compiled from: CameraXConfig.java */
    public interface b {
        uu getCameraXConfig();
    }

    public uu(k83 k83Var) {
        this.r = k83Var;
    }

    @Override // com.shabakaty.downloader.jn3, com.shabakaty.downloader.o90
    public /* synthetic */ Object a(o90.a aVar, Object obj) {
        return in3.g(this, aVar, obj);
    }

    @Override // com.shabakaty.downloader.jn3, com.shabakaty.downloader.o90
    public /* synthetic */ Set b() {
        return in3.e(this);
    }

    @Override // com.shabakaty.downloader.jn3, com.shabakaty.downloader.o90
    public /* synthetic */ o90.c c(o90.a aVar) {
        return in3.c(this, aVar);
    }

    @Override // com.shabakaty.downloader.jn3, com.shabakaty.downloader.o90
    public /* synthetic */ boolean d(o90.a aVar) {
        return in3.a(this, aVar);
    }

    @Override // com.shabakaty.downloader.jn3, com.shabakaty.downloader.o90
    public /* synthetic */ Object e(o90.a aVar) {
        return in3.f(this, aVar);
    }

    @Override // com.shabakaty.downloader.jn3
    public o90 h() {
        return this.r;
    }

    @Override // com.shabakaty.downloader.qk4
    public /* synthetic */ String m(String str) {
        return pk4.a(this, str);
    }

    @Override // com.shabakaty.downloader.o90
    public /* synthetic */ Object n(o90.a aVar, o90.c cVar) {
        return in3.h(this, aVar, cVar);
    }

    @Override // com.shabakaty.downloader.o90
    public /* synthetic */ void t(String str, o90.b bVar) {
        in3.b(this, str, bVar);
    }

    @Override // com.shabakaty.downloader.o90
    public /* synthetic */ Set u(o90.a aVar) {
        return in3.d(this, aVar);
    }
}
