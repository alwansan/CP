package com.shabakaty.downloader;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.SparseBooleanArray;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import com.connectsdk.R;
import com.shabakaty.cinemana.player.PlayerDiagnosticLog;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.TimeoutException;
import zendesk.support.request.CellBase;

/* JADX INFO: compiled from: SimpleExoPlayer.java */
/* JADX INFO: loaded from: classes.dex */
public class s64 extends ak implements j71, j71.a {
    public int A;
    public int B;
    public ie C;
    public float D;
    public boolean E;
    public List<vg0> F;
    public boolean G;
    public boolean H;
    public os0 I;
    public p25 J;
    public final lr3[] b;
    public final b00 c = new b00(1);
    public final q71 d;
    public final c e;
    public final d f;
    public final CopyOnWriteArraySet<f25> g;
    public final CopyOnWriteArraySet<oe> h;
    public final CopyOnWriteArraySet<am4> i;
    public final CopyOnWriteArraySet<zs2> j;
    public final CopyOnWriteArraySet<ps0> k;
    public final k6 l;
    public final ne m;
    public final xd4 n;
    public final h55 o;
    public final r65 p;
    public final long q;
    public AudioTrack r;
    public Object s;
    public Surface t;
    public SurfaceHolder u;
    public ea4 v;
    public boolean w;
    public TextureView x;
    public int y;
    public int z;

    /* JADX INFO: compiled from: SimpleExoPlayer.java */
    public static final class b {
        public final Context a;
        public final or3 b;
        public w30 c;
        public lp4 d;
        public zq2 e;
        public fj2 f;
        public qi g;
        public k6 h;
        public Looper i;
        public ie j;
        public boolean k;
        public int l;
        public boolean m;
        public wz3 n;
        public long o;
        public long p;
        public ej2 q;
        public long r;
        public long s;
        public boolean t;

        public b(Context context, or3 or3Var) {
            in0 in0Var;
            do0 do0Var = new do0();
            ep0 ep0Var = new ep0(context);
            ro0 ro0Var = new ro0(context, do0Var);
            oo0 oo0Var = new oo0();
            com.google.common.collect.q<String, Integer> qVar = in0.n;
            synchronized (in0.class) {
                if (in0.u == null) {
                    in0.a aVar = new in0.a(context);
                    in0.u = new in0(aVar.a, aVar.b, aVar.c, aVar.d, aVar.e);
                }
                in0Var = in0.u;
            }
            w30 w30Var = w30.a;
            k6 k6Var = new k6(w30Var);
            this.a = context;
            this.b = or3Var;
            this.d = ep0Var;
            this.e = ro0Var;
            this.f = oo0Var;
            this.g = in0Var;
            this.h = k6Var;
            this.i = sy4.t();
            this.j = ie.f;
            this.l = 1;
            this.m = true;
            this.n = wz3.c;
            this.o = 5000L;
            this.p = 15000L;
            this.q = new no0(0.97f, 1.03f, 1000L, 1.0E-7f, jp.c(20L), jp.c(500L), 0.999f, null);
            this.c = w30Var;
            this.r = 500L;
            this.s = 2000L;
        }
    }

    /* JADX INFO: compiled from: SimpleExoPlayer.java */
    public final class c implements o25, ye, am4, zs2, SurfaceHolder.Callback, TextureView.SurfaceTextureListener, ea4.b, ne.b, je.b, xd4.b, bd3.c, j71.b {
        public c(a aVar) {
        }

        @Override // com.shabakaty.downloader.bd3.c
        public /* synthetic */ void A(boolean z) {
            cd3.s(this, z);
        }

        @Override // com.shabakaty.downloader.o25
        public void B(wh1 wh1Var, cn0 cn0Var) {
            Objects.requireNonNull(s64.this);
            s64.this.l.B(wh1Var, cn0Var);
        }

        @Override // com.shabakaty.downloader.ye
        public void C(zm0 zm0Var) {
            Objects.requireNonNull(s64.this);
            s64.this.l.C(zm0Var);
        }

        @Override // com.shabakaty.downloader.bd3.c
        public /* synthetic */ void D(dp2 dp2Var, int i) {
            cd3.f(this, dp2Var, i);
        }

        @Override // com.shabakaty.downloader.bd3.c
        public /* synthetic */ void E(bd3 bd3Var, bd3.d dVar) {
            cd3.b(this, bd3Var, dVar);
        }

        @Override // com.shabakaty.downloader.o25
        public void F(int i, long j) {
            s64.this.l.F(i, j);
        }

        @Override // com.shabakaty.downloader.bd3.c
        public /* synthetic */ void H(boolean z, int i) {
            cd3.n(this, z, i);
        }

        @Override // com.shabakaty.downloader.o25
        public void I(zm0 zm0Var) {
            s64.this.l.I(zm0Var);
            Objects.requireNonNull(s64.this);
            Objects.requireNonNull(s64.this);
        }

        @Override // com.shabakaty.downloader.ye
        public void J(wh1 wh1Var, cn0 cn0Var) {
            Objects.requireNonNull(s64.this);
            s64.this.l.J(wh1Var, cn0Var);
        }

        @Override // com.shabakaty.downloader.o25
        public void N(Object obj, long j) {
            s64.this.l.N(obj, j);
            s64 s64Var = s64.this;
            if (s64Var.s == obj) {
                Iterator<f25> it = s64Var.g.iterator();
                while (it.hasNext()) {
                    it.next().S();
                }
            }
        }

        @Override // com.shabakaty.downloader.bd3.c
        public /* synthetic */ void O(bd3.f fVar, bd3.f fVar2, int i) {
            cd3.p(this, fVar, fVar2, i);
        }

        @Override // com.shabakaty.downloader.bd3.c
        public /* synthetic */ void P(int i) {
            cd3.q(this, i);
        }

        @Override // com.shabakaty.downloader.bd3.c
        public /* synthetic */ void R(hp2 hp2Var) {
            cd3.g(this, hp2Var);
        }

        @Override // com.shabakaty.downloader.ye
        public void T(zm0 zm0Var) {
            s64.this.l.T(zm0Var);
            Objects.requireNonNull(s64.this);
            Objects.requireNonNull(s64.this);
        }

        @Override // com.shabakaty.downloader.o25
        public void U(zm0 zm0Var) {
            Objects.requireNonNull(s64.this);
            s64.this.l.U(zm0Var);
        }

        @Override // com.shabakaty.downloader.ye
        public void V(Exception exc) {
            s64.this.l.V(exc);
        }

        @Override // com.shabakaty.downloader.am4
        public void W(List<vg0> list) {
            s64 s64Var = s64.this;
            s64Var.F = list;
            Iterator<am4> it = s64Var.i.iterator();
            while (it.hasNext()) {
                it.next().W(list);
            }
        }

        @Override // com.shabakaty.downloader.ye
        public void Y(long j) {
            s64.this.l.Y(j);
        }

        @Override // com.shabakaty.downloader.ye
        public void Z(Exception exc) {
            s64.this.l.Z(exc);
        }

        @Override // com.shabakaty.downloader.bd3.c
        public /* synthetic */ void a(xc3 xc3Var) {
            cd3.l(this, xc3Var);
        }

        @Override // com.shabakaty.downloader.o25
        public void a0(Exception exc) {
            s64.this.l.a0(exc);
        }

        @Override // com.shabakaty.downloader.o25
        public void b(p25 p25Var) {
            s64 s64Var = s64.this;
            s64Var.J = p25Var;
            s64Var.l.b(p25Var);
            for (f25 f25Var : s64.this.g) {
                f25Var.b(p25Var);
                f25Var.K(p25Var.a, p25Var.b, p25Var.c, p25Var.d);
            }
        }

        @Override // com.shabakaty.downloader.bd3.c
        public void b0(boolean z, int i) {
            s64.i0(s64.this);
        }

        @Override // com.shabakaty.downloader.ye
        public void c(boolean z) {
            s64 s64Var = s64.this;
            if (s64Var.E == z) {
                return;
            }
            s64Var.E = z;
            s64Var.l.c(z);
            Iterator<oe> it = s64Var.h.iterator();
            while (it.hasNext()) {
                it.next().c(s64Var.E);
            }
        }

        @Override // com.shabakaty.downloader.bd3.c
        public /* synthetic */ void d(int i) {
            cd3.k(this, i);
        }

        @Override // com.shabakaty.downloader.ye
        public /* synthetic */ void e(wh1 wh1Var) {
            se.a(this, wh1Var);
        }

        @Override // com.shabakaty.downloader.bd3.c
        public /* synthetic */ void f(boolean z) {
            cd3.e(this, z);
        }

        @Override // com.shabakaty.downloader.zs2
        public void f0(ps2 ps2Var) {
            s64.this.l.f0(ps2Var);
            q71 q71Var = s64.this.d;
            hp2.b bVar = new hp2.b(q71Var.B, null);
            int i = 0;
            int i2 = 0;
            while (true) {
                ps2.b[] bVarArr = ps2Var.r;
                if (i2 >= bVarArr.length) {
                    break;
                }
                bVarArr[i2].D0(bVar);
                i2++;
            }
            hp2 hp2VarA = bVar.a();
            if (!hp2VarA.equals(q71Var.B)) {
                q71Var.B = hp2VarA;
                si2<bd3.c> si2Var = q71Var.i;
                si2Var.b(15, new p71(q71Var, i));
                si2Var.a();
            }
            Iterator<zs2> it = s64.this.j.iterator();
            while (it.hasNext()) {
                it.next().f0(ps2Var);
            }
        }

        @Override // com.shabakaty.downloader.bd3.c
        public /* synthetic */ void g(int i) {
            cd3.o(this, i);
        }

        @Override // com.shabakaty.downloader.o25
        public void h(String str) {
            s64.this.l.h(str);
        }

        @Override // com.shabakaty.downloader.bd3.c
        public /* synthetic */ void i(ad3 ad3Var) {
            cd3.i(this, ad3Var);
        }

        @Override // com.shabakaty.downloader.ye
        public void i0(int i, long j, long j2) {
            s64.this.l.i0(i, j, j2);
        }

        @Override // com.shabakaty.downloader.j71.b
        public void j(boolean z) {
            s64.i0(s64.this);
        }

        @Override // com.shabakaty.downloader.ea4.b
        public void k(Surface surface) {
            s64.this.r0(null);
        }

        @Override // com.shabakaty.downloader.bd3.c
        public /* synthetic */ void k0(cp4 cp4Var, ip4 ip4Var) {
            cd3.v(this, cp4Var, ip4Var);
        }

        @Override // com.shabakaty.downloader.bd3.c
        public /* synthetic */ void l(List list) {
            cd3.t(this, list);
        }

        @Override // com.shabakaty.downloader.o25
        public void l0(long j, int i) {
            s64.this.l.l0(j, i);
        }

        @Override // com.shabakaty.downloader.ea4.b
        public void m(Surface surface) {
            s64.this.r0(surface);
        }

        @Override // com.shabakaty.downloader.bd3.c
        public /* synthetic */ void m0(boolean z) {
            cd3.d(this, z);
        }

        @Override // com.shabakaty.downloader.o25
        public void n(String str, long j, long j2) {
            s64.this.l.n(str, j, j2);
        }

        @Override // com.shabakaty.downloader.bd3.c
        public void o(boolean z) {
            Objects.requireNonNull(s64.this);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
            s64 s64Var = s64.this;
            Objects.requireNonNull(s64Var);
            Surface surface = new Surface(surfaceTexture);
            s64Var.r0(surface);
            s64Var.t = surface;
            s64.this.m0(i, i2);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            s64.this.r0(null);
            s64.this.m0(0, 0);
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
            s64.this.m0(i, i2);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        @Override // com.shabakaty.downloader.bd3.c
        public /* synthetic */ void p() {
            cd3.r(this);
        }

        @Override // com.shabakaty.downloader.bd3.c
        public /* synthetic */ void q(bd3.b bVar) {
            cd3.a(this, bVar);
        }

        @Override // com.shabakaty.downloader.j71.b
        public /* synthetic */ void r(boolean z) {
            k71.a(this, z);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            s64.this.m0(i2, i3);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            s64 s64Var = s64.this;
            if (s64Var.w) {
                s64Var.r0(surfaceHolder.getSurface());
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            s64 s64Var = s64.this;
            if (s64Var.w) {
                s64Var.r0(null);
            }
            s64.this.m0(0, 0);
        }

        @Override // com.shabakaty.downloader.o25
        public /* synthetic */ void t(wh1 wh1Var) {
            l25.a(this, wh1Var);
        }

        @Override // com.shabakaty.downloader.bd3.c
        public void u(int i) {
            s64.i0(s64.this);
        }

        @Override // com.shabakaty.downloader.bd3.c
        public /* synthetic */ void w(xc3 xc3Var) {
            cd3.m(this, xc3Var);
        }

        @Override // com.shabakaty.downloader.bd3.c
        public /* synthetic */ void x(nn4 nn4Var, int i) {
            cd3.u(this, nn4Var, i);
        }

        @Override // com.shabakaty.downloader.ye
        public void y(String str) {
            s64.this.l.y(str);
        }

        @Override // com.shabakaty.downloader.ye
        public void z(String str, long j, long j2) {
            s64.this.l.z(str, j, j2);
        }
    }

    /* JADX INFO: compiled from: SimpleExoPlayer.java */
    public static final class d implements p05, au, vd3.b {
        public p05 r;
        public au s;
        public p05 t;
        public au u;

        public d(a aVar) {
        }

        @Override // com.shabakaty.downloader.p05
        public void a(long j, long j2, wh1 wh1Var, MediaFormat mediaFormat) {
            p05 p05Var = this.t;
            if (p05Var != null) {
                p05Var.a(j, j2, wh1Var, mediaFormat);
            }
            p05 p05Var2 = this.r;
            if (p05Var2 != null) {
                p05Var2.a(j, j2, wh1Var, mediaFormat);
            }
        }

        @Override // com.shabakaty.downloader.au
        public void c(long j, float[] fArr) {
            au auVar = this.u;
            if (auVar != null) {
                auVar.c(j, fArr);
            }
            au auVar2 = this.s;
            if (auVar2 != null) {
                auVar2.c(j, fArr);
            }
        }

        @Override // com.shabakaty.downloader.au
        public void e() {
            au auVar = this.u;
            if (auVar != null) {
                auVar.e();
            }
            au auVar2 = this.s;
            if (auVar2 != null) {
                auVar2.e();
            }
        }

        @Override // com.shabakaty.downloader.vd3.b
        public void p(int i, Object obj) {
            if (i == 6) {
                this.r = (p05) obj;
                return;
            }
            if (i == 7) {
                this.s = (au) obj;
                return;
            }
            if (i != 10000) {
                return;
            }
            ea4 ea4Var = (ea4) obj;
            if (ea4Var == null) {
                this.t = null;
                this.u = null;
            } else {
                this.t = ea4Var.getVideoFrameMetadataListener();
                this.u = ea4Var.getCameraMotionListener();
            }
        }
    }

    public s64(b bVar) throws Throwable {
        s64 s64Var;
        boolean z;
        try {
            Context applicationContext = bVar.a.getApplicationContext();
            this.l = bVar.h;
            this.C = bVar.j;
            this.y = bVar.l;
            this.E = false;
            this.q = bVar.s;
            c cVar = new c(null);
            this.e = cVar;
            this.f = new d(null);
            this.g = new CopyOnWriteArraySet<>();
            this.h = new CopyOnWriteArraySet<>();
            this.i = new CopyOnWriteArraySet<>();
            this.j = new CopyOnWriteArraySet<>();
            this.k = new CopyOnWriteArraySet<>();
            Handler handler = new Handler(bVar.i);
            this.b = bVar.b.a(handler, cVar, cVar, cVar, cVar);
            this.D = 1.0f;
            if (sy4.a < 21) {
                AudioTrack audioTrack = this.r;
                if (audioTrack != null && audioTrack.getAudioSessionId() != 0) {
                    this.r.release();
                    this.r = null;
                }
                if (this.r == null) {
                    this.r = new AudioTrack(3, 4000, 4, 2, 2, 0, 0);
                }
                this.B = this.r.getAudioSessionId();
            } else {
                UUID uuid = jp.a;
                AudioManager audioManager = (AudioManager) applicationContext.getSystemService("audio");
                this.B = audioManager == null ? -1 : audioManager.generateAudioSessionId();
            }
            this.F = Collections.emptyList();
            this.G = true;
            SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
            int[] iArr = {20, 21, 22, 23, 24, 25, 26, 27};
            for (int i = 0; i < 8; i++) {
                int i2 = iArr[i];
                md.e(!false);
                sparseBooleanArray.append(i2, true);
            }
            md.e(!false);
            try {
                q71 q71Var = new q71(this.b, bVar.d, bVar.e, bVar.f, bVar.g, this.l, bVar.m, bVar.n, bVar.o, bVar.p, bVar.q, bVar.r, false, bVar.c, bVar.i, this, new bd3.b(new xd1(sparseBooleanArray, null), null));
                s64Var = this;
                try {
                    s64Var.d = q71Var;
                    q71Var.i0(s64Var.e);
                    q71Var.j.add(s64Var.e);
                    je jeVar = new je(bVar.a, handler, s64Var.e);
                    if (jeVar.c) {
                        jeVar.a.unregisterReceiver(jeVar.b);
                        z = false;
                        jeVar.c = false;
                    } else {
                        z = false;
                    }
                    ne neVar = new ne(bVar.a, handler, s64Var.e);
                    s64Var.m = neVar;
                    neVar.c(bVar.k ? s64Var.C : null);
                    xd4 xd4Var = new xd4(bVar.a, handler, s64Var.e);
                    s64Var.n = xd4Var;
                    xd4Var.c(sy4.z(s64Var.C.c));
                    h55 h55Var = new h55(bVar.a);
                    s64Var.o = h55Var;
                    h55Var.c = z;
                    h55Var.a();
                    r65 r65Var = new r65(bVar.a);
                    s64Var.p = r65Var;
                    r65Var.c = z;
                    r65Var.a();
                    s64Var.I = k0(xd4Var);
                    s64Var.J = p25.e;
                    s64Var.o0(1, R.styleable.AppCompatTheme_textAppearanceLargePopupMenu, Integer.valueOf(s64Var.B));
                    s64Var.o0(2, R.styleable.AppCompatTheme_textAppearanceLargePopupMenu, Integer.valueOf(s64Var.B));
                    s64Var.o0(1, 3, s64Var.C);
                    s64Var.o0(2, 4, Integer.valueOf(s64Var.y));
                    s64Var.o0(1, R.styleable.AppCompatTheme_switchStyle, Boolean.valueOf(s64Var.E));
                    s64Var.o0(2, 6, s64Var.f);
                    s64Var.o0(6, 7, s64Var.f);
                    s64Var.c.b();
                } catch (Throwable th) {
                    th = th;
                    s64Var.c.b();
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                s64Var = this;
            }
        } catch (Throwable th3) {
            th = th3;
            s64Var = this;
        }
    }

    public static void i0(s64 s64Var) {
        int iH = s64Var.h();
        if (iH != 1) {
            if (iH == 2 || iH == 3) {
                s64Var.v0();
                boolean z = s64Var.d.C.p;
                h55 h55Var = s64Var.o;
                h55Var.d = s64Var.f() && !z;
                h55Var.a();
                r65 r65Var = s64Var.p;
                r65Var.d = s64Var.f();
                r65Var.a();
                return;
            }
            if (iH != 4) {
                throw new IllegalStateException();
            }
        }
        h55 h55Var2 = s64Var.o;
        h55Var2.d = false;
        h55Var2.a();
        r65 r65Var2 = s64Var.p;
        r65Var2.d = false;
        r65Var2.a();
    }

    public static os0 k0(xd4 xd4Var) {
        Objects.requireNonNull(xd4Var);
        return new os0(0, sy4.a >= 28 ? xd4Var.c.getStreamMinVolume(xd4Var.d) : 0, xd4Var.c.getStreamMaxVolume(xd4Var.d));
    }

    public static int l0(boolean z, int i) {
        return (!z || i == 1) ? 1 : 2;
    }

    @Override // com.shabakaty.downloader.bd3
    public long A() {
        v0();
        return this.d.r;
    }

    @Override // com.shabakaty.downloader.bd3
    public void B(bd3.e eVar) {
        Objects.requireNonNull(eVar);
        this.h.add(eVar);
        this.g.add(eVar);
        this.i.add(eVar);
        this.j.add(eVar);
        this.k.add(eVar);
        this.d.i0(eVar);
    }

    @Override // com.shabakaty.downloader.bd3
    public long C() {
        v0();
        return this.d.C();
    }

    @Override // com.shabakaty.downloader.bd3
    public List<vg0> E() {
        v0();
        return this.F;
    }

    @Override // com.shabakaty.downloader.bd3
    public int F() {
        v0();
        return this.d.F();
    }

    @Override // com.shabakaty.downloader.bd3
    public void H(SurfaceView surfaceView) {
        v0();
        SurfaceHolder holder = surfaceView == null ? null : surfaceView.getHolder();
        v0();
        if (holder == null || holder != this.u) {
            return;
        }
        j0();
    }

    @Override // com.shabakaty.downloader.bd3
    public int I() {
        v0();
        return this.d.C.m;
    }

    @Override // com.shabakaty.downloader.bd3
    public cp4 J() {
        v0();
        return this.d.C.h;
    }

    @Override // com.shabakaty.downloader.bd3
    public long K() {
        v0();
        return this.d.K();
    }

    @Override // com.shabakaty.downloader.bd3
    public nn4 L() {
        v0();
        return this.d.C.a;
    }

    @Override // com.shabakaty.downloader.bd3
    public Looper M() {
        return this.d.o;
    }

    @Override // com.shabakaty.downloader.bd3
    public boolean N() {
        v0();
        return this.d.u;
    }

    @Override // com.shabakaty.downloader.bd3
    public long O() {
        v0();
        return this.d.O();
    }

    @Override // com.shabakaty.downloader.bd3
    public void R(TextureView textureView) {
        v0();
        if (textureView == null) {
            j0();
            return;
        }
        n0();
        this.x = textureView;
        if (textureView.getSurfaceTextureListener() != null) {
            Log.w("SimpleExoPlayer", "Replacing existing SurfaceTextureListener.");
        }
        textureView.setSurfaceTextureListener(this.e);
        SurfaceTexture surfaceTexture = textureView.isAvailable() ? textureView.getSurfaceTexture() : null;
        if (surfaceTexture == null) {
            r0(null);
            m0(0, 0);
        } else {
            Surface surface = new Surface(surfaceTexture);
            r0(surface);
            this.t = surface;
            m0(textureView.getWidth(), textureView.getHeight());
        }
    }

    @Override // com.shabakaty.downloader.bd3
    public ip4 S() {
        v0();
        return new ip4(this.d.C.i.c);
    }

    @Override // com.shabakaty.downloader.bd3
    public hp2 U() {
        return this.d.B;
    }

    @Override // com.shabakaty.downloader.bd3
    public long V() {
        v0();
        return this.d.V();
    }

    @Override // com.shabakaty.downloader.bd3
    public long W() {
        v0();
        return this.d.q;
    }

    @Override // com.shabakaty.downloader.bd3
    public boolean a() {
        v0();
        return this.d.a();
    }

    @Override // com.shabakaty.downloader.bd3
    public long b() {
        v0();
        return jp.d(this.d.C.r);
    }

    @Override // com.shabakaty.downloader.bd3
    public ad3 c() {
        v0();
        return this.d.C.n;
    }

    @Override // com.shabakaty.downloader.bd3
    public void d(int i, long j) {
        v0();
        k6 k6Var = this.l;
        if (!k6Var.y) {
            t6.a aVarN0 = k6Var.n0();
            k6Var.y = true;
            s5 s5Var = new s5(aVarN0, 0);
            k6Var.v.put(-1, aVarN0);
            si2<t6> si2Var = k6Var.w;
            si2Var.b(-1, s5Var);
            si2Var.a();
        }
        this.d.d(i, j);
    }

    public final void diagnosticLogRendererStates() {
        lr3[] lr3VarArr = this.b;
        if (lr3VarArr != null) {
            int length = lr3VarArr.length;
            for (int i = 0; i < length; i++) {
                lr3 lr3Var = lr3VarArr[i];
                if (lr3Var != null) {
                    PlayerDiagnosticLog.event("renderer_snapshot index=" + i + " name=" + lr3Var.getName() + " state=" + lr3Var.getState() + " ready=" + Boolean.valueOf(lr3Var.b()) + " ended=" + Boolean.valueOf(lr3Var.d()));
                }
            }
        }
    }

    @Override // com.shabakaty.downloader.bd3
    public bd3.b e() {
        v0();
        return this.d.A;
    }

    @Override // com.shabakaty.downloader.bd3
    public boolean f() {
        v0();
        return this.d.C.l;
    }

    @Override // com.shabakaty.downloader.bd3
    public void g() {
        PlayerDiagnosticLog.event("player_state_refresh_g_enter");
        v0();
        boolean zF = f();
        int iE = this.m.e(zF, 2);
        u0(zF, iE, l0(zF, iE));
        this.d.g();
        PlayerDiagnosticLog.event("player_state_refresh_g_complete");
    }

    @Override // com.shabakaty.downloader.bd3
    public int h() {
        v0();
        return this.d.C.e;
    }

    @Override // com.shabakaty.downloader.bd3
    public void j(boolean z) {
        v0();
        this.d.j(z);
    }

    public void j0() {
        PlayerDiagnosticLog.event("surface_detach_enter");
        v0();
        n0();
        r0(null);
        m0(0, 0);
        PlayerDiagnosticLog.event("surface_detach_complete");
    }

    @Override // com.shabakaty.downloader.bd3
    public int k() {
        v0();
        Objects.requireNonNull(this.d);
        return 3000;
    }

    @Override // com.shabakaty.downloader.bd3
    public int l() {
        v0();
        return this.d.l();
    }

    @Override // com.shabakaty.downloader.bd3
    public void m(TextureView textureView) {
        v0();
        if (textureView == null || textureView != this.x) {
            return;
        }
        j0();
    }

    public final void m0(int i, int i2) {
        if (i == this.z && i2 == this.A) {
            return;
        }
        this.z = i;
        this.A = i2;
        this.l.g0(i, i2);
        Iterator<f25> it = this.g.iterator();
        while (it.hasNext()) {
            it.next().g0(i, i2);
        }
    }

    @Override // com.shabakaty.downloader.bd3
    public p25 n() {
        return this.J;
    }

    public final void n0() {
        if (this.v != null) {
            vd3 vd3VarJ0 = this.d.j0(this.f);
            vd3VarJ0.f(10000);
            vd3VarJ0.e(null);
            vd3VarJ0.d();
            ea4 ea4Var = this.v;
            ea4Var.r.remove(this.e);
            this.v = null;
        }
        TextureView textureView = this.x;
        if (textureView != null) {
            if (textureView.getSurfaceTextureListener() != this.e) {
                Log.w("SimpleExoPlayer", "SurfaceTextureListener already unset or replaced.");
            } else {
                this.x.setSurfaceTextureListener(null);
            }
            this.x = null;
        }
        SurfaceHolder surfaceHolder = this.u;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(this.e);
            this.u = null;
        }
    }

    @Override // com.shabakaty.downloader.bd3
    public void o(List<dp2> list, boolean z) {
        PlayerDiagnosticLog.environmentOnce();
        PlayerDiagnosticLog.event("media_item_refresh_request");
        diagnosticLogRendererStates();
        PlayerDiagnosticLog.value("refresh_playback_state", Integer.valueOf(h()));
        PlayerDiagnosticLog.value("refresh_is_loading", Boolean.valueOf(a()));
        int size = list.size();
        for (int i = 0; i < size; i++) {
            dp2 dp2Var = list.get(i);
            PlayerDiagnosticLog.value("media_refresh_item_id", dp2Var.a);
            dp2.g gVar = dp2Var.b;
            if (gVar != null) {
                PlayerDiagnosticLog.value("media_refresh_item_uri", gVar.a);
            }
        }
        PlayerDiagnosticLog.value("refresh_item_count", Integer.valueOf(size));
        PlayerDiagnosticLog.value("refresh_position_us", Long.valueOf(C()));
        PlayerDiagnosticLog.value("refresh_play_when_ready", Boolean.valueOf(f()));
        v0();
        this.d.o(list, z);
        diagnosticLogRendererStates();
        PlayerDiagnosticLog.event("media_item_refresh_request_dispatched");
    }

    public final void o0(int i, int i2, Object obj) {
        for (lr3 lr3Var : this.b) {
            if (lr3Var.x() == i) {
                vd3 vd3VarJ0 = this.d.j0(lr3Var);
                md.e(!vd3VarJ0.i);
                vd3VarJ0.e = i2;
                md.e(!vd3VarJ0.i);
                vd3VarJ0.f = obj;
                vd3VarJ0.d();
            }
        }
    }

    @Override // com.shabakaty.downloader.bd3
    public int p() {
        v0();
        return this.d.p();
    }

    public final void p0(SurfaceHolder surfaceHolder) {
        PlayerDiagnosticLog.event("surface_attach_enter");
        this.w = false;
        this.u = surfaceHolder;
        surfaceHolder.addCallback(this.e);
        Surface surface = this.u.getSurface();
        if (surface == null || !surface.isValid()) {
            m0(0, 0);
        } else {
            Rect surfaceFrame = this.u.getSurfaceFrame();
            m0(surfaceFrame.width(), surfaceFrame.height());
        }
        PlayerDiagnosticLog.event("surface_attach_complete");
    }

    public void q0(ad3 ad3Var) {
        v0();
        q71 q71Var = this.d;
        Objects.requireNonNull(q71Var);
        if (q71Var.C.n.equals(ad3Var)) {
            return;
        }
        yc3 yc3VarF = q71Var.C.f(ad3Var);
        q71Var.v++;
        ((yj4.b) ((yj4) q71Var.h.x).c(4, ad3Var)).b();
        q71Var.x0(yc3VarF, 0, 1, false, false, 5, CellBase.ID_SYSTEM_MESSAGE_REQUEST_CLOSED, -1);
    }

    @Override // com.shabakaty.downloader.bd3
    public void r(SurfaceView surfaceView) {
        v0();
        if (surfaceView instanceof m05) {
            n0();
            r0(surfaceView);
            p0(surfaceView.getHolder());
            return;
        }
        if (surfaceView instanceof ea4) {
            n0();
            this.v = (ea4) surfaceView;
            vd3 vd3VarJ0 = this.d.j0(this.f);
            vd3VarJ0.f(10000);
            vd3VarJ0.e(this.v);
            vd3VarJ0.d();
            this.v.r.add(this.e);
            r0(this.v.getVideoSurface());
            p0(surfaceView.getHolder());
            return;
        }
        SurfaceHolder holder = surfaceView == null ? null : surfaceView.getHolder();
        v0();
        if (holder == null) {
            j0();
            return;
        }
        n0();
        this.w = true;
        this.u = holder;
        holder.addCallback(this.e);
        Surface surface = holder.getSurface();
        if (surface == null || !surface.isValid()) {
            r0(null);
            m0(0, 0);
        } else {
            r0(surface);
            Rect surfaceFrame = holder.getSurfaceFrame();
            m0(surfaceFrame.width(), surfaceFrame.height());
        }
    }

    public final void r0(Object obj) {
        boolean z;
        ArrayList arrayList = new ArrayList();
        lr3[] lr3VarArr = this.b;
        int length = lr3VarArr.length;
        int i = 0;
        while (true) {
            z = true;
            if (i >= length) {
                break;
            }
            lr3 lr3Var = lr3VarArr[i];
            if (lr3Var.x() == 2) {
                vd3 vd3VarJ0 = this.d.j0(lr3Var);
                vd3VarJ0.f(1);
                md.e(true ^ vd3VarJ0.i);
                vd3VarJ0.f = obj;
                vd3VarJ0.d();
                arrayList.add(vd3VarJ0);
            }
            i++;
        }
        Object obj2 = this.s;
        if (obj2 == null || obj2 == obj) {
            z = false;
        } else {
            try {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((vd3) it.next()).a(this.q);
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            } catch (TimeoutException unused2) {
            }
            z = false;
            Object obj3 = this.s;
            Surface surface = this.t;
            if (obj3 == surface) {
                surface.release();
                this.t = null;
            }
        }
        this.s = obj;
        if (z) {
            this.d.v0(false, i71.b(new d81(3), 1003));
        }
    }

    @Override // com.shabakaty.downloader.bd3
    public void s(bd3.e eVar) {
        Objects.requireNonNull(eVar);
        this.h.remove(eVar);
        this.g.remove(eVar);
        this.i.remove(eVar);
        this.j.remove(eVar);
        this.k.remove(eVar);
        this.d.r0(eVar);
    }

    public void s0(float f) {
        v0();
        float fH = sy4.h(f, 0.0f, 1.0f);
        if (this.D == fH) {
            return;
        }
        this.D = fH;
        o0(1, 2, Float.valueOf(this.m.g * fH));
        this.l.r(fH);
        Iterator<oe> it = this.h.iterator();
        while (it.hasNext()) {
            it.next().r(fH);
        }
    }

    @Override // com.shabakaty.downloader.bd3
    public int t() {
        v0();
        return this.d.t();
    }

    @Deprecated
    public void t0(boolean z) {
        v0();
        this.m.e(f(), 1);
        this.d.v0(z, null);
        this.F = Collections.emptyList();
    }

    @Override // com.shabakaty.downloader.j71
    public j71.a u() {
        return this;
    }

    public final void u0(boolean z, int i, int i2) {
        PlayerDiagnosticLog.event("player_state_update_enter");
        PlayerDiagnosticLog.value("player_state_update_playing_flag", Boolean.valueOf(z));
        PlayerDiagnosticLog.value("player_state_update_reason", Integer.valueOf(i));
        PlayerDiagnosticLog.value("player_state_update_extra", Integer.valueOf(i2));
        PlayerDiagnosticLog.value("player_state_update_playback_state", Integer.valueOf(h()));
        PlayerDiagnosticLog.value("player_state_update_position_us", Long.valueOf(C()));
        int i3 = 0;
        boolean z2 = z && i != -1;
        if (z2 && i != 1) {
            i3 = 1;
        }
        this.d.u0(z2, i3, i2);
    }

    @Override // com.shabakaty.downloader.bd3
    public void v(int i) {
        v0();
        this.d.v(i);
    }

    public final void v0() {
        b00 b00Var = this.c;
        synchronized (b00Var) {
            boolean z = false;
            while (!b00Var.s) {
                try {
                    b00Var.wait();
                } catch (InterruptedException unused) {
                    z = true;
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
        if (Thread.currentThread() != this.d.o.getThread()) {
            String strN = sy4.n("Player is accessed on the wrong thread.\nCurrent thread: '%s'\nExpected thread: '%s'\nSee https://exoplayer.dev/issues/player-accessed-on-wrong-thread", Thread.currentThread().getName(), this.d.o.getThread().getName());
            if (this.G) {
                throw new IllegalStateException(strN);
            }
            fk2.d("SimpleExoPlayer", strN, this.H ? null : new IllegalStateException());
            this.H = true;
        }
    }

    @Override // com.shabakaty.downloader.bd3
    public int w() {
        v0();
        return this.d.t;
    }

    @Override // com.shabakaty.downloader.bd3
    public xc3 y() {
        v0();
        return this.d.C.f;
    }

    @Override // com.shabakaty.downloader.bd3
    public void z(boolean z) {
        v0();
        int iE = this.m.e(z, h());
        u0(z, iE, l0(z, iE));
    }
}
