package com.shabakaty.downloader;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import androidx.recyclerview.widget.RecyclerView;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-cast-framework@@19.0.0 */
/* JADX INFO: loaded from: classes.dex */
public class tw {
    public static tw l;
    public final Context a;
    public final so6 b;
    public final y14 c;
    public final vk6 d;
    public final vw e;
    public tk5 f;
    public cg5 g;
    public final List<a24> h;
    public u46 i;
    public SharedPreferences j;
    public static final pk2 k = new pk2("CastContext");
    public static final Object m = new Object();

    public tw(Context context, vw vwVar, List<a24> list, tk5 tk5Var) {
        so6 so6VarY0;
        j87 j87VarJ0;
        se7 se7VarR;
        Context applicationContext = context.getApplicationContext();
        this.a = applicationContext;
        this.e = vwVar;
        this.f = tk5Var;
        this.h = list;
        if (TextUtils.isEmpty(vwVar.r)) {
            this.g = null;
        } else {
            this.g = new cg5(applicationContext, vwVar, this.f);
        }
        HashMap map = new HashMap();
        cg5 cg5Var = this.g;
        if (cg5Var != null) {
            map.put(cg5Var.b, cg5Var.c);
        }
        if (list != null) {
            for (a24 a24Var : list) {
                com.google.android.gms.common.internal.a.j(a24Var, "Additional SessionProvider must not be null.");
                String str = a24Var.b;
                com.google.android.gms.common.internal.a.g(str, "Category for SessionProvider must not be null or empty string.");
                com.google.android.gms.common.internal.a.b(!map.containsKey(str), String.format("SessionProvider for category %s already added", str));
                map.put(str, a24Var.c);
            }
        }
        Context context2 = this.a;
        try {
            so6VarY0 = lg5.a(context2).y0(new p43(context2.getApplicationContext()), vwVar, tk5Var, map);
        } catch (RemoteException e) {
            lg5.a.b(e, "Unable to call %s on %s.", "newCastContextImpl", zg5.class.getSimpleName());
            so6VarY0 = null;
        }
        this.b = so6VarY0;
        try {
            j87VarJ0 = so6VarY0.j0();
        } catch (RemoteException e2) {
            k.b(e2, "Unable to call %s on %s.", "getDiscoveryManagerImpl", so6.class.getSimpleName());
            j87VarJ0 = null;
        }
        this.d = j87VarJ0 == null ? null : new vk6(j87VarJ0);
        try {
            se7VarR = this.b.R();
        } catch (RemoteException e3) {
            k.b(e3, "Unable to call %s on %s.", "getSessionManagerImpl", so6.class.getSimpleName());
            se7VarR = null;
        }
        y14 y14Var = se7VarR != null ? new y14(se7VarR, this.a) : null;
        this.c = y14Var;
        if (y14Var != null) {
            new i06(this.a);
            com.google.android.gms.common.internal.a.g("PrecacheManager", "The log tag cannot be null or empty.");
        }
        i06 i06Var = new i06(this.a);
        yk4.a aVarA = yk4.a();
        aVarA.a = new yh1(i06Var, new String[]{"com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_ENABLED", "com.google.android.gms.cast.FLAG_FIRELOG_UPLOAD_MODE", "com.google.android.gms.cast.FLAG_CLIENT_FEATURE_USAGE_ANALYTICS_ENABLED"});
        aVarA.c = new ia1[]{gh5.b};
        aVarA.b = false;
        Object objC = i06Var.c(0, aVarA.a());
        ae5 ae5Var = new ae5(this, 0);
        ye7 ye7Var = (ye7) objC;
        Objects.requireNonNull(ye7Var);
        ye7Var.c(dl4.a, ae5Var);
    }

    public static tw d(Context context) {
        com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
        if (l == null) {
            synchronized (m) {
                if (l == null) {
                    l83 l83VarF = f(context.getApplicationContext());
                    try {
                        l = new tw(context, l83VarF.b(context.getApplicationContext()), l83VarF.a(context.getApplicationContext()), new tk5(androidx.mediarouter.media.g.d(context)));
                    } catch (of5 e) {
                        throw new RuntimeException(e);
                    }
                }
            }
        }
        return l;
    }

    public static tw e(Context context) {
        com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
        try {
            return d(context);
        } catch (RuntimeException e) {
            pk2 pk2Var = k;
            Log.e(pk2Var.a, pk2Var.e("Failed to load module from Google Play services. Cast will not work properly. Might due to outdated Google Play services. Ignoring this failure silently.", e));
            return null;
        }
    }

    public static l83 f(Context context) {
        try {
            Bundle bundle = z85.a(context).a(context.getPackageName(), RecyclerView.b0.FLAG_IGNORE).metaData;
            if (bundle == null) {
                k.c("Bundle is null", new Object[0]);
            }
            String string = bundle.getString("com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME");
            if (string != null) {
                return (l83) Class.forName(string).asSubclass(l83.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            }
            throw new IllegalStateException("The fully qualified name of the implementation of OptionsProvider must be provided as a metadata in the AndroidManifest.xml with key com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME.");
        } catch (PackageManager.NameNotFoundException | ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | NullPointerException | InvocationTargetException e) {
            throw new IllegalStateException("Failed to initialize CastContext.", e);
        }
    }

    public vw a() {
        com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
        return this.e;
    }

    public androidx.mediarouter.media.f b() {
        com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
        try {
            return androidx.mediarouter.media.f.b(this.b.U0());
        } catch (RemoteException e) {
            k.b(e, "Unable to call %s on %s.", "getMergedSelectorAsBundle", so6.class.getSimpleName());
            return null;
        }
    }

    public y14 c() {
        com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
        return this.c;
    }
}
