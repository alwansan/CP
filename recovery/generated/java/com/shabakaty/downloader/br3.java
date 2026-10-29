package com.shabakaty.downloader;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.MediaError;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import java.io.IOException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-cast-framework@@19.0.0 */
/* JADX INFO: loaded from: classes.dex */
public class br3 implements nw.e {
    public static final /* synthetic */ int k = 0;
    public final oh5 c;
    public final e d;
    public final pp2 e;
    public qc7 f;
    public final List<b> g = new CopyOnWriteArrayList();
    public final List<a> h = new CopyOnWriteArrayList();
    public final Map<d, i> i = new ConcurrentHashMap();
    public final Map<Long, i> j = new ConcurrentHashMap();
    public final Object a = new Object();
    public final Handler b = new p36(Looper.getMainLooper());

    /* JADX INFO: compiled from: com.google.android.gms:play-services-cast-framework@@19.0.0 */
    public static abstract class a {
        public void a() {
        }

        public void b() {
        }

        public void c() {
        }

        public void d() {
        }

        public void e() {
        }

        public void f() {
        }

        public void g(int[] iArr) {
        }

        public void h(int[] iArr, int i) {
        }

        public void i(sp2[] sp2VarArr) {
        }

        public void j(int[] iArr) {
        }

        public void k(int[] iArr) {
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-cast-framework@@19.0.0 */
    @Deprecated
    public interface b {
        void b();

        void f();

        void onMetadataUpdated();

        void onStatusUpdated();

        void p();

        void q();
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-cast-framework@@19.0.0 */
    public interface c extends ft3 {
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-cast-framework@@19.0.0 */
    public interface d {
        void a(long j, long j2);
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-cast-framework@@19.0.0 */
    public class e implements ni5 {
        public qc7 a;
        public long b = 0;

        public e() {
        }

        @Override // com.shabakaty.downloader.ni5
        public final long j() {
            long j = this.b + 1;
            this.b = j;
            return j;
        }

        @Override // com.shabakaty.downloader.ni5
        public final void k(String str, String str2, long j, String str3) {
            nb3 nb3VarA;
            qc7 qc7Var = this.a;
            if (qc7Var == null) {
                throw new IllegalStateException("No GoogleApiClient available");
            }
            o57 o57Var = ((pd7) qc7Var).f;
            if (o57Var != null) {
                vh5 vh5Var = (vh5) o57Var;
                yw.d(str);
                if (TextUtils.isEmpty(str2)) {
                    throw new IllegalArgumentException("The message payload cannot be null or empty");
                }
                if (str2.length() > 524288) {
                    pk2 pk2Var = vh5.F;
                    Log.w(pk2Var.a, pk2Var.e("Message send failed. Message exceeds maximum size", new Object[0]));
                    throw new IllegalArgumentException("Message exceeds maximum size524288");
                }
                yk4.a aVarA = yk4.a();
                aVarA.a = new np4(vh5Var, str, str2, 5);
                nb3VarA = ic6.a(vh5Var.c(1, aVarA.a()), ue7.a, me7.a);
            } else {
                nb3VarA = null;
            }
            nb3VarA.c(new bl5(this, j));
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-cast-framework@@19.0.0 */
    public static class f extends BasePendingResult<c> {
        public f() {
            super(null);
        }

        @Override // com.google.android.gms.common.api.internal.BasePendingResult
        public final ft3 e(Status status) {
            return new cl5(status);
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-cast-framework@@19.0.0 */
    public abstract class g extends BasePendingResult<c> {
        public pj5 o;
        public final boolean p;

        public g(boolean z) {
            super(null);
            this.p = z;
            this.o = new rl5(this, br3.this);
        }

        @Override // com.google.android.gms.common.api.internal.BasePendingResult
        public /* synthetic */ ft3 e(Status status) {
            return new il5(status);
        }

        public abstract void m();

        public final void n() {
            if (!this.p) {
                Iterator<b> it = br3.this.g.iterator();
                while (it.hasNext()) {
                    it.next().q();
                }
                Iterator<a> it2 = br3.this.h.iterator();
                while (it2.hasNext()) {
                    it2.next().e();
                }
            }
            try {
                synchronized (br3.this.a) {
                    m();
                }
            } catch (xh5 unused) {
                a(new il5(new Status(2100, null)));
            }
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-cast-framework@@19.0.0 */
    public static final class h implements c {
        public final Status r;

        public h(Status status, JSONObject jSONObject, MediaError mediaError) {
            this.r = status;
        }

        @Override // com.shabakaty.downloader.ft3
        public final Status getStatus() {
            return this.r;
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-cast-framework@@19.0.0 */
    public class i {
        public final Set<d> a = new HashSet();
        public final long b;
        public final Runnable c;
        public boolean d;

        public i(long j) {
            this.b = j;
            this.c = new gn5(this, br3.this);
        }

        public final void a() {
            br3.this.b.removeCallbacks(this.c);
            this.d = true;
            br3.this.b.postDelayed(this.c, this.b);
        }
    }

    static {
        String str = oh5.w;
    }

    public br3(oh5 oh5Var) {
        e eVar = new e();
        this.d = eVar;
        this.c = oh5Var;
        oh5Var.h = new te7(this);
        oh5Var.c = eVar;
        this.e = new pp2(this);
    }

    public static nb3<c> w(int i2, String str) {
        f fVar = new f();
        fVar.a(new cl5(new Status(i2, null)));
        return fVar;
    }

    public static g x(g gVar) {
        try {
            gVar.n();
        } catch (IllegalArgumentException e2) {
            throw e2;
        } catch (Throwable unused) {
            gVar.a(new il5(new Status(2100, null)));
        }
        return gVar;
    }

    public final void A() {
        qc7 qc7Var = this.f;
        if (qc7Var == null) {
            return;
        }
        try {
            com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
            ((pd7) qc7Var).b(this.c.b, this);
        } catch (IOException unused) {
        }
        com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
        if (C()) {
            x(new bf7(this));
        } else {
            w(17, null);
        }
    }

    public final boolean B() {
        com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
        dr2 dr2VarE = e();
        return dr2VarE != null && dr2VarE.v == 5;
    }

    public final boolean C() {
        return this.f != null;
    }

    public boolean a(d dVar, long j) {
        com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
        if (this.i.containsKey(dVar)) {
            return false;
        }
        i iVar = this.j.get(Long.valueOf(j));
        if (iVar == null) {
            iVar = new i(j);
            this.j.put(Long.valueOf(j), iVar);
        }
        iVar.a.add(dVar);
        this.i.put(dVar, iVar);
        if (!h()) {
            return true;
        }
        iVar.a();
        return true;
    }

    public long b() {
        long jD;
        synchronized (this.a) {
            com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
            jD = this.c.d();
        }
        return jD;
    }

    public sp2 c() {
        com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
        dr2 dr2VarE = e();
        if (dr2VarE == null) {
            return null;
        }
        return dr2VarE.D1(dr2VarE.C);
    }

    public MediaInfo d() {
        MediaInfo mediaInfoE;
        synchronized (this.a) {
            com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
            mediaInfoE = this.c.e();
        }
        return mediaInfoE;
    }

    public dr2 e() {
        dr2 dr2Var;
        synchronized (this.a) {
            com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
            dr2Var = this.c.f;
        }
        return dr2Var;
    }

    public int f() {
        int i2;
        synchronized (this.a) {
            com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
            dr2 dr2VarE = e();
            i2 = dr2VarE != null ? dr2VarE.v : 1;
        }
        return i2;
    }

    public long g() {
        long jF;
        synchronized (this.a) {
            com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
            jF = this.c.f();
        }
        return jF;
    }

    public boolean h() {
        com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
        return i() || B() || m() || l() || k();
    }

    public boolean i() {
        com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
        dr2 dr2VarE = e();
        return dr2VarE != null && dr2VarE.v == 4;
    }

    public boolean j() {
        com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
        MediaInfo mediaInfoD = d();
        return mediaInfoD != null && mediaInfoD.s == 2;
    }

    public boolean k() {
        com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
        dr2 dr2VarE = e();
        return (dr2VarE == null || dr2VarE.C == 0) ? false : true;
    }

    public boolean l() {
        int i2;
        com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
        dr2 dr2VarE = e();
        if (dr2VarE != null) {
            if (dr2VarE.v == 3) {
                return true;
            }
            if (j()) {
                synchronized (this.a) {
                    com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
                    dr2 dr2VarE2 = e();
                    i2 = dr2VarE2 != null ? dr2VarE2.w : 0;
                }
                if (i2 == 2) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean m() {
        com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
        dr2 dr2VarE = e();
        return dr2VarE != null && dr2VarE.v == 2;
    }

    public boolean n() {
        com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
        dr2 dr2VarE = e();
        return dr2VarE != null && dr2VarE.I;
    }

    public final boolean o() {
        com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
        if (!j()) {
            return true;
        }
        dr2 dr2VarE = e();
        return (dr2VarE == null || !dr2VarE.E1(2L) || dr2VarE.L == null) ? false : true;
    }

    @Override // com.shabakaty.downloader.nw.e
    public void onMessageReceived(CastDevice castDevice, String str, String str2) {
        this.c.v(str2);
    }

    public nb3<c> p(JSONObject jSONObject) {
        com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
        if (!C()) {
            return w(17, null);
        }
        ag5 ag5Var = new ag5(this, null);
        x(ag5Var);
        return ag5Var;
    }

    public nb3<c> q(JSONObject jSONObject) {
        com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
        if (!C()) {
            return w(17, null);
        }
        jg5 jg5Var = new jg5(this, null);
        x(jg5Var);
        return jg5Var;
    }

    public void r(d dVar) {
        com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
        i iVarRemove = this.i.remove(dVar);
        if (iVarRemove != null) {
            iVarRemove.a.remove(dVar);
            if (!iVarRemove.a.isEmpty()) {
                return;
            }
            this.j.remove(Long.valueOf(iVarRemove.b));
            br3.this.b.removeCallbacks(iVarRemove.c);
            iVarRemove.d = false;
        }
    }

    @Deprecated
    public nb3<c> s(long j) {
        return t(new pq2(j, 0, false, null, null));
    }

    public nb3<c> t(pq2 pq2Var) {
        com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
        if (!C()) {
            return w(17, null);
        }
        mk5 mk5Var = new mk5(this, pq2Var);
        x(mk5Var);
        return mk5Var;
    }

    public nb3<c> u(long[] jArr) {
        com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
        if (!C()) {
            return w(17, null);
        }
        kg7 kg7Var = new kg7(this, jArr);
        x(kg7Var);
        return kg7Var;
    }

    public void v() {
        com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
        int iF = f();
        if (iF == 4 || iF == 2) {
            com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
            if (C()) {
                x(new dj5(this, null));
                return;
            } else {
                w(17, null);
                return;
            }
        }
        com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
        if (C()) {
            x(new vj5(this, null));
        } else {
            w(17, null);
        }
    }

    public final void y(qc7 qc7Var) {
        qc7 qc7Var2 = this.f;
        if (qc7Var2 == qc7Var) {
            return;
        }
        if (qc7Var2 != null) {
            this.c.r();
            this.e.a();
            try {
                qc7 qc7Var3 = this.f;
                com.google.android.gms.common.internal.a.e("Must be called from the main thread.");
                ((pd7) qc7Var3).a(this.c.b);
            } catch (IOException unused) {
            }
            this.d.a = null;
            this.b.removeCallbacksAndMessages(null);
        }
        this.f = qc7Var;
        if (qc7Var != null) {
            this.d.a = qc7Var;
        }
    }

    public final void z(Set<d> set) {
        HashSet hashSet = new HashSet(set);
        if (m() || l() || i() || B()) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                ((d) it.next()).a(b(), g());
            }
        } else {
            if (!k()) {
                Iterator it2 = hashSet.iterator();
                while (it2.hasNext()) {
                    ((d) it2.next()).a(0L, 0L);
                }
                return;
            }
            sp2 sp2VarC = c();
            if (sp2VarC == null || sp2VarC.r == null) {
                return;
            }
            Iterator it3 = hashSet.iterator();
            while (it3.hasNext()) {
                ((d) it3.next()).a(0L, sp2VarC.r.v);
            }
        }
    }
}
