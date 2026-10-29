package com.shabakaty.downloader;

import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.os.Handler;
import android.os.HandlerThread;
import com.cinemana.pro.R;
import java.lang.reflect.InvocationTargetException;
import java.util.Objects;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: CameraX.java */
/* JADX INFO: loaded from: classes.dex */
public final class tu {
    public static tu n;
    public static uu.b o;
    public final uu c;
    public final Executor d;
    public final Handler e;
    public final HandlerThread f;
    public qt g;
    public mt h;
    public ix4 i;
    public Context j;
    public static final Object m = new Object();
    public static pi2<Void> p = new vz1.a(new IllegalStateException("CameraX is not initialized."));
    public static pi2<Void> q = ko1.c(null);
    public final du a = new du();
    public final Object b = new Object();
    public int k = 1;
    public pi2<Void> l = ko1.c(null);

    public tu(uu uuVar) {
        Objects.requireNonNull(uuVar);
        this.c = uuVar;
        Executor executor = (Executor) uuVar.r.a(uu.v, null);
        Handler handler = (Handler) uuVar.r.a(uu.w, null);
        this.d = executor == null ? new pt() : executor;
        if (handler != null) {
            this.f = null;
            this.e = handler;
        } else {
            HandlerThread handlerThread = new HandlerThread("CameraX-scheduler", 10);
            this.f = handlerThread;
            handlerThread.start();
            this.e = yr1.a(handlerThread.getLooper());
        }
    }

    public static Application a(Context context) {
        for (Context applicationContext = context.getApplicationContext(); applicationContext instanceof ContextWrapper; applicationContext = ((ContextWrapper) applicationContext).getBaseContext()) {
            if (applicationContext instanceof Application) {
                return (Application) applicationContext;
            }
        }
        return null;
    }

    public static uu.b b(Context context) {
        ComponentCallbacks2 componentCallbacks2A = a(context);
        if (componentCallbacks2A instanceof uu.b) {
            return (uu.b) componentCallbacks2A;
        }
        try {
            return (uu.b) Class.forName(context.getApplicationContext().getResources().getString(R.string.androidx_camera_default_config_provider)).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Resources.NotFoundException | ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | NullPointerException | InvocationTargetException e) {
            vk2.b("CameraX", "Failed to retrieve default CameraXConfig.Provider from resources", e);
            return null;
        }
    }

    public static pi2<tu> c() {
        tu tuVar = n;
        if (tuVar == null) {
            return new vz1.a(new IllegalStateException("Must call CameraX.initialize() first"));
        }
        pi2<Void> pi2Var = p;
        nu nuVar = new nu(tuVar);
        Executor executorA = jl3.a();
        ky kyVar = new ky(new jo1(nuVar), pi2Var);
        pi2Var.f(kyVar, executorA);
        return kyVar;
    }

    public static void d(Context context) {
        int i = 0;
        fl3.i(n == null, "CameraX already initialized.");
        Objects.requireNonNull(o);
        tu tuVar = new tu(o.getCameraXConfig());
        n = tuVar;
        p = ar.a(new mu(tuVar, context, i));
    }

    public static pi2<Void> f() {
        tu tuVar = n;
        if (tuVar == null) {
            return q;
        }
        n = null;
        pi2<Void> pi2VarA = ar.a(new lu(tuVar, 0));
        q = pi2VarA;
        return pi2VarA;
    }

    public final void e() {
        synchronized (this.b) {
            this.k = 3;
        }
    }
}
