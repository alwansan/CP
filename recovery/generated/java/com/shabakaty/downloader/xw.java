package com.shabakaty.downloader;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import com.google.android.gms.cast.CastDevice;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-cast-framework@@19.0.0 */
/* JADX INFO: loaded from: classes.dex */
public class xw extends s14 {
    public static final pk2 m = new pk2("CastSession");
    public final Context c;
    public final Set<nw.d> d;
    public final xz6 e;
    public final vw f;
    public final o27 g;
    public final ae7 h;
    public qc7 i;
    public br3 j;
    public CastDevice k;
    public nw.a l;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-cast-framework@@19.0.0 */
    public class a implements gt3<nw.a> {
        public String a;

        public a(String str) {
            this.a = str;
        }

        @Override // com.shabakaty.downloader.gt3
        public final void onResult(ft3 ft3Var) {
            nw.a aVar = (nw.a) ft3Var;
            xw.this.l = aVar;
            try {
                if (!aVar.getStatus().W0()) {
                    xw.m.a("%s() -> failure result", this.a);
                    xw.this.e.y(aVar.getStatus().s);
                    return;
                }
                xw.m.a("%s() -> success result", this.a);
                xw.this.j = new br3(new oh5());
                xw xwVar = xw.this;
                xwVar.j.y(xwVar.i);
                xw.this.j.A();
                xw xwVar2 = xw.this;
                xwVar2.g.d(xwVar2.j, xwVar2.j());
                xw.this.e.j(aVar.l0(), aVar.p(), aVar.P0(), aVar.d());
            } catch (RemoteException e) {
                xw.m.b(e, "Unable to call %s on %s.", "methods", xz6.class.getSimpleName());
            }
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-cast-framework@@19.0.0 */
    public class b extends nw.d {
        public b(ol3 ol3Var) {
        }

        @Override // com.shabakaty.downloader.nw.d
        public final void onActiveInputStateChanged(int i) {
            Iterator it = new HashSet(xw.this.d).iterator();
            while (it.hasNext()) {
                ((nw.d) it.next()).onActiveInputStateChanged(i);
            }
        }

        @Override // com.shabakaty.downloader.nw.d
        public final void onApplicationDisconnected(int i) {
            xw.n(xw.this, i);
            xw.this.d(i);
            Iterator it = new HashSet(xw.this.d).iterator();
            while (it.hasNext()) {
                ((nw.d) it.next()).onApplicationDisconnected(i);
            }
        }

        @Override // com.shabakaty.downloader.nw.d
        public final void onApplicationMetadataChanged(nc ncVar) {
            Iterator it = new HashSet(xw.this.d).iterator();
            while (it.hasNext()) {
                ((nw.d) it.next()).onApplicationMetadataChanged(ncVar);
            }
        }

        @Override // com.shabakaty.downloader.nw.d
        public final void onApplicationStatusChanged() {
            Iterator it = new HashSet(xw.this.d).iterator();
            while (it.hasNext()) {
                ((nw.d) it.next()).onApplicationStatusChanged();
            }
        }

        @Override // com.shabakaty.downloader.nw.d
        public final void onStandbyStateChanged(int i) {
            Iterator it = new HashSet(xw.this.d).iterator();
            while (it.hasNext()) {
                ((nw.d) it.next()).onStandbyStateChanged(i);
            }
        }

        @Override // com.shabakaty.downloader.nw.d
        public final void onVolumeChanged() {
            Iterator it = new HashSet(xw.this.d).iterator();
            while (it.hasNext()) {
                ((nw.d) it.next()).onVolumeChanged();
            }
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-cast-framework@@19.0.0 */
    public class c extends pr6 {
        public c(ol3 ol3Var) {
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-cast-framework@@19.0.0 */
    public class d implements ha7 {
        public d(ol3 ol3Var) {
        }

        public final void a(int i) {
            try {
                xw.this.e.onConnectionFailed(new gb0(i));
            } catch (RemoteException e) {
                xw.m.b(e, "Unable to call %s on %s.", "onConnectionFailed", xz6.class.getSimpleName());
            }
        }
    }

    public xw(Context context, String str, String str2, vw vwVar, ae7 ae7Var, o27 o27Var) {
        super(context, str, str2);
        this.d = new HashSet();
        this.c = context.getApplicationContext();
        this.f = vwVar;
        this.g = o27Var;
        this.h = ae7Var;
        gx1 gx1VarI = i();
        xz6 xz6VarG0 = null;
        c cVar = new c(null);
        pk2 pk2Var = lg5.a;
        try {
            xz6VarG0 = lg5.a(context).G0(vwVar, gx1VarI, cVar);
        } catch (RemoteException | of5 e) {
            lg5.a.b(e, "Unable to call %s on %s.", "newCastSessionImpl", zg5.class.getSimpleName());
        }
        this.e = xz6VarG0;
    }

    public static void n(xw xwVar, int i) {
        o27 o27Var = xwVar.g;
        if (o27Var.l) {
            o27Var.l = false;
            br3 br3Var = o27Var.i;
            if (br3Var != null) {
                com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
                br3Var.g.remove(o27Var);
            }
            o27Var.c.g2(null);
            sm5 sm5Var = o27Var.e;
            if (sm5Var != null) {
                sm5Var.a();
            }
            sm5 sm5Var2 = o27Var.f;
            if (sm5Var2 != null) {
                sm5Var2.a();
            }
            MediaSessionCompat mediaSessionCompat = o27Var.k;
            if (mediaSessionCompat != null) {
                mediaSessionCompat.a.c(null);
                o27Var.k.e(null, null);
                MediaSessionCompat mediaSessionCompat2 = o27Var.k;
                mediaSessionCompat2.a.g(new MediaMetadataCompat(new Bundle()));
                o27Var.a(0, null);
                o27Var.k.d(false);
                o27Var.k.a.a();
                o27Var.k = null;
            }
            o27Var.i = null;
            o27Var.j = null;
            o27Var.h();
            if (i == 0) {
                o27Var.i();
            }
        }
        qc7 qc7Var = xwVar.i;
        if (qc7Var != null) {
            pd7 pd7Var = (pd7) qc7Var;
            o57 o57Var = pd7Var.f;
            if (o57Var != null) {
                ((vh5) o57Var).j();
                pd7Var.f = null;
            }
            xwVar.i = null;
        }
        xwVar.k = null;
        br3 br3Var2 = xwVar.j;
        if (br3Var2 != null) {
            br3Var2.y(null);
            xwVar.j = null;
        }
    }

    @Override // com.shabakaty.downloader.s14
    public void a(boolean z) {
        try {
            this.e.X0(z, 0);
        } catch (RemoteException e) {
            m.b(e, "Unable to call %s on %s.", "disconnectFromDevice", xz6.class.getSimpleName());
        }
        d(0);
    }

    @Override // com.shabakaty.downloader.s14
    public long b() {
        com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
        br3 br3Var = this.j;
        if (br3Var == null) {
            return 0L;
        }
        return br3Var.g() - this.j.b();
    }

    @Override // com.shabakaty.downloader.s14
    public void e(Bundle bundle) {
        this.k = CastDevice.o1(bundle);
    }

    @Override // com.shabakaty.downloader.s14
    public void f(Bundle bundle) {
        this.k = CastDevice.o1(bundle);
    }

    @Override // com.shabakaty.downloader.s14
    public void g(Bundle bundle) {
        o(bundle);
    }

    @Override // com.shabakaty.downloader.s14
    public void h(Bundle bundle) {
        o(bundle);
    }

    public CastDevice j() {
        com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
        return this.k;
    }

    public br3 k() {
        com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
        return this.j;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x001c  */
    public boolean l() {
        boolean z;
        com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
        qc7 qc7Var = this.i;
        if (qc7Var != null) {
            o57 o57Var = ((pd7) qc7Var).f;
            if (o57Var != null) {
                vh5 vh5Var = (vh5) o57Var;
                vh5Var.e();
                if (vh5Var.w) {
                    z = true;
                } else {
                    z = false;
                }
            } else {
                z = false;
            }
            if (z) {
                return true;
            }
        }
        return false;
    }

    public void m(boolean z) {
        o57 o57Var;
        com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
        qc7 qc7Var = this.i;
        if (qc7Var == null || (o57Var = ((pd7) qc7Var).f) == null) {
            return;
        }
        vh5 vh5Var = (vh5) o57Var;
        yk4.a aVarA = yk4.a();
        aVarA.a = new b00(vh5Var, z);
        vh5Var.c(1, aVarA.a());
    }

    public final void o(Bundle bundle) {
        uw uwVar;
        uw uwVar2;
        boolean zIsResuming;
        CastDevice castDeviceO1 = CastDevice.o1(bundle);
        this.k = castDeviceO1;
        if (castDeviceO1 == null) {
            com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
            try {
                zIsResuming = this.a.isResuming();
            } catch (RemoteException e) {
                s14.b.b(e, "Unable to call %s on %s.", "isResuming", ge7.class.getSimpleName());
                zIsResuming = false;
            }
            if (zIsResuming) {
                try {
                    this.a.J1(3103);
                    return;
                } catch (RemoteException e2) {
                    s14.b.b(e2, "Unable to call %s on %s.", "notifyFailedToResumeSession", ge7.class.getSimpleName());
                    return;
                }
            }
            try {
                this.a.r1(3101);
                return;
            } catch (RemoteException e3) {
                s14.b.b(e3, "Unable to call %s on %s.", "notifyFailedToStartSession", ge7.class.getSimpleName());
                return;
            }
        }
        qc7 qc7Var = this.i;
        if (qc7Var != null) {
            pd7 pd7Var = (pd7) qc7Var;
            o57 o57Var = pd7Var.f;
            if (o57Var != null) {
                ((vh5) o57Var).j();
                pd7Var.f = null;
            }
            this.i = null;
        }
        m.a("Acquiring a connection to Google Play Services for %s", this.k);
        ae7 ae7Var = this.h;
        Context context = this.c;
        CastDevice castDevice = this.k;
        vw vwVar = this.f;
        b bVar = new b(null);
        d dVar = new d(null);
        Objects.requireNonNull((qf5) ae7Var);
        pd7 pd7Var2 = new pd7(hf5.a, context, castDevice, vwVar, bVar, dVar);
        this.i = pd7Var2;
        o57 o57Var2 = pd7Var2.f;
        if (o57Var2 != null) {
            ((vh5) o57Var2).j();
            pd7Var2.f = null;
        }
        pd7.g.a("Acquiring a connection to Google Play Services for %s", castDevice);
        ye5 ye5Var = new ye5(pd7Var2, null);
        Bundle bundle2 = new Bundle();
        bundle2.putBoolean("com.google.android.gms.cast.EXTRA_CAST_FRAMEWORK_NOTIFICATION_ENABLED", (vwVar == null || (uwVar2 = vwVar.w) == null || uwVar2.u == null) ? false : true);
        bundle2.putBoolean("com.google.android.gms.cast.EXTRA_CAST_REMOTE_CONTROL_NOTIFICATION_ENABLED", (vwVar == null || (uwVar = vwVar.w) == null || !uwVar.v) ? false : true);
        nw.c.a aVar = new nw.c.a(castDevice, bVar);
        aVar.c = bundle2;
        nw.c cVar = new nw.c(aVar, null);
        com.google.android.gms.common.api.a<nw.c> aVar2 = nw.a;
        vh5 vh5Var = new vh5(context, cVar);
        vh5Var.E.add(ye5Var);
        pd7Var2.f = vh5Var;
        hl5 hl5Var = vh5Var.j;
        Looper looper = vh5Var.e;
        com.google.android.gms.common.internal.a.j(hl5Var, "Listener must not be null");
        com.google.android.gms.common.internal.a.j(looper, "Looper must not be null");
        com.google.android.gms.common.api.internal.d<L> dVar2 = new com.google.android.gms.common.api.internal.d<>(looper, hl5Var, "castDeviceControllerListenerKey");
        com.google.android.gms.common.api.internal.g gVar = new com.google.android.gms.common.api.internal.g(null);
        fq1 fq1Var = new fq1(vh5Var);
        tq3<A, zk4<Boolean>> tq3Var = di5.r;
        gVar.c = dVar2;
        gVar.a = fq1Var;
        gVar.b = tq3Var;
        gVar.d = new ia1[]{gh5.a};
        com.google.android.gms.common.internal.a.b(true, "Must set unregister function");
        com.google.android.gms.common.internal.a.b(gVar.c != null, "Must set holder");
        com.google.android.gms.common.api.internal.d.a<L> aVar3 = gVar.c.b;
        com.google.android.gms.common.internal.a.j(aVar3, "Key must not be null");
        com.google.android.gms.common.api.internal.d<L> dVar3 = gVar.c;
        za5 za5Var = new za5(gVar, dVar3, gVar.d, true);
        com.google.android.gms.common.api.internal.t tVar = new com.google.android.gms.common.api.internal.t(gVar, aVar3);
        Runnable runnable = ya5.r;
        com.google.android.gms.common.internal.a.j(dVar3.b, "Listener has already been released.");
        com.google.android.gms.common.api.internal.c cVar2 = vh5Var.i;
        Objects.requireNonNull(cVar2);
        com.google.android.gms.common.api.internal.y yVar = new com.google.android.gms.common.api.internal.y(new xa5(za5Var, tVar, runnable), new zk4());
        Handler handler = cVar2.B;
        handler.sendMessage(handler.obtainMessage(8, new wa5(yVar, cVar2.w.get(), vh5Var)));
    }
}
