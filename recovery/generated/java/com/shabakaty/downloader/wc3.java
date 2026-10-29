package com.shabakaty.downloader;

import android.content.Context;
import android.widget.SeekBar;
import com.shabakaty.cinemana.ca1.Continue106;
import com.shabakaty.cinemana.ca1.Player94;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.player.PlayerDiagnosticLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: PlaybackEventsHandler.kt */
/* JADX INFO: loaded from: classes.dex */
public final class wc3 implements bd3.c, SeekBar.OnSeekBarChangeListener {
    public long A;
    public int B;
    public Integer C;
    public mu0 D;
    public t43<Long> E;
    public boolean F;
    public List<o84> G;
    public o84 H;
    public s64 r;
    public final VideoModel s;
    public Context t;
    public zc3 u;
    public int v;
    public boolean w;
    public final kf2 x;
    public long y;
    public long z;

    /* JADX INFO: compiled from: PlaybackEventsHandler.kt */
    public static final class a extends af2 implements rm1<ja3> {
        public a() {
            super(0);
        }

        @Override // com.shabakaty.downloader.rm1
        public ja3 invoke() {
            wc3 wc3Var = wc3.this;
            s64 s64Var = wc3Var.r;
            List<String> list = wc3Var.s.skippingDurations.start;
            ArrayList arrayList = new ArrayList(i50.O(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(Double.valueOf(Double.parseDouble((String) it.next())));
            }
            List<String> list2 = wc3.this.s.skippingDurations.end;
            ArrayList arrayList2 = new ArrayList(i50.O(list2, 10));
            Iterator<T> it2 = list2.iterator();
            while (it2.hasNext()) {
                arrayList2.add(Double.valueOf(Double.parseDouble((String) it2.next())));
            }
            return new ja3(s64Var, arrayList, arrayList2);
        }
    }

    public wc3(s64 s64Var, VideoModel videoModel, Context context) {
        j32.e(s64Var, "player");
        j32.e(videoModel, "videoModel");
        this.r = s64Var;
        this.s = videoModel;
        this.t = context;
        this.w = true;
        this.x = ng2.a(new a());
        t43 t43VarA = uv3.a(t43.f(1L, TimeUnit.SECONDS).k(new g54(ay3.c)));
        vc3 vc3Var = new vc3(this, 1);
        xc0<? super Throwable> xc0Var = do1.d;
        j2 j2Var = do1.c;
        this.E = new d53(t43VarA.d(vc3Var, xc0Var, j2Var, j2Var), new gu1(this));
        this.G = new ArrayList();
    }

    public static final void h(wc3 wc3Var, Long l) {
        long jO;
        zc3 zc3Var;
        Continue106.nativeTick(wc3Var);
        j32.e(wc3Var, "this$0");
        if (wc3Var.w) {
            wc3Var.v++;
        } else {
            long jC = (wc3Var.r.C() + ((long) 500)) / ((long) 1000);
            Context context = wc3Var.t;
            j32.e(context, "context");
            if (q5.g == null) {
                synchronized (q5.class) {
                    if (q5.g == null) {
                        new q5(context, null);
                    }
                }
            }
            q5 q5Var = q5.g;
            if (q5Var != null) {
                q5Var.d(wc3Var.s.nb, 3, Long.valueOf(jC));
            }
            wc3Var.v = 0;
        }
        if (wc3Var.r.f()) {
            int i = wc3Var.B;
            if (i >= 180) {
                wc3Var.B = 0;
                long jC2 = (wc3Var.r.C() + ((long) 500)) / ((long) 1000);
                Context context2 = wc3Var.t;
                j32.e(context2, "context");
                if (q5.g == null) {
                    synchronized (q5.class) {
                        if (q5.g == null) {
                            new q5(context2, null);
                        }
                    }
                }
                q5 q5Var2 = q5.g;
                if (q5Var2 != null) {
                    q5Var2.d(wc3Var.s.nb, 1, Long.valueOf(jC2));
                }
            } else {
                wc3Var.B = i + 1;
            }
        }
        s64 s64Var = wc3Var.r;
        s64Var.v0();
        q71 q71Var = s64Var.d;
        if (q71Var.a()) {
            yc3 yc3Var = q71Var.C;
            jO = yc3Var.k.equals(yc3Var.b) ? jp.d(q71Var.C.q) : q71Var.K();
        } else {
            jO = q71Var.O();
        }
        wc3Var.A = jO;
        wc3Var.j(wc3Var.r.C());
        wc3Var.c().a();
        if (l.longValue() % 5 == 0 && wc3Var.r.h() == 3 && (zc3Var = wc3Var.u) != null) {
            zc3Var.j(wc3Var.y);
        }
    }

    @Override // com.shabakaty.downloader.bd3.c
    public /* synthetic */ void A(boolean z) {
        cd3.s(this, z);
    }

    @Override // com.shabakaty.downloader.bd3.c
    public /* synthetic */ void D(dp2 dp2Var, int i) {
        cd3.f(this, dp2Var, i);
    }

    @Override // com.shabakaty.downloader.bd3.c
    public /* synthetic */ void E(bd3 bd3Var, bd3.d dVar) {
        cd3.b(this, bd3Var, dVar);
    }

    @Override // com.shabakaty.downloader.bd3.c
    public void H(boolean z, int i) {
        zc3 zc3Var;
        PlayerDiagnosticLog.value("player_playback_state", Integer.valueOf(i));
        PlayerDiagnosticLog.value("player_is_loading", Boolean.valueOf(this.r.a()));
        PlayerDiagnosticLog.value("player_state_position_us", Long.valueOf(this.r.C()));
        PlayerDiagnosticLog.value("player_duration_us", Long.valueOf(this.r.X()));
        PlayerDiagnosticLog.value("player_play_when_ready", Boolean.valueOf(z));
        boolean z2 = i == 2;
        this.w = z2;
        if (!z2 && (zc3Var = this.u) != null) {
            zc3Var.f(!z);
        }
        zc3 zc3Var2 = this.u;
        if (zc3Var2 != null) {
            zc3Var2.b(i == 2);
        }
        if (i == 1) {
            this.r.g();
        } else if (i == 3) {
            zc3 zc3Var3 = this.u;
            if (zc3Var3 != null) {
                zc3Var3.g();
            }
        } else if (i == 4) {
            long jX = this.r.X();
            long jC = this.r.C();
            zc3 zc3Var4 = this.u;
            if (zc3Var4 != null) {
                zc3Var4.i(jX, jC);
            }
        }
        this.r.diagnosticLogRendererStates();
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

    @Override // com.shabakaty.downloader.bd3.c
    public void a(xc3 xc3Var) {
        zc3 zc3Var;
        PlayerDiagnosticLog.event("player_error_callback");
        PlayerDiagnosticLog.value("player_error_exception", xc3Var);
        Throwable cause = xc3Var.getCause();
        if (cause != null) {
            PlayerDiagnosticLog.value("player_error_cause", cause);
        }
        j32.e(xc3Var, "e");
        wt2.j(xc3Var);
        Throwable cause2 = xc3Var.getCause();
        if (((cause2 == null ? null : cause2.getCause()) instanceof NullPointerException) || (zc3Var = this.u) == null) {
            return;
        }
        zc3Var.a(xc3Var);
    }

    public final void b() {
        zc3 zc3Var;
        if (this.H != null || !e()) {
            if (this.H == null || e()) {
                return;
            }
            o84 o84Var = this.H;
            if (o84Var != null && (zc3Var = this.u) != null) {
                zc3Var.k(o84Var);
            }
            this.H = null;
            return;
        }
        Integer num = this.C;
        if (num != null) {
            this.H = (o84) m50.c0(this.G, num.intValue());
        }
        o84 o84Var2 = this.H;
        if (o84Var2 == null) {
            return;
        }
        long j = o84Var2.s;
        o84 o84Var3 = (o84) m50.k0(this.G);
        if (!(o84Var3 != null && j == o84Var3.s) || this.r.X() <= 0 || o84Var2.s <= this.r.X() * 0.9d) {
            zc3 zc3Var2 = this.u;
            if (zc3Var2 == null) {
                return;
            }
            zc3Var2.h(o84Var2, false);
            return;
        }
        zc3 zc3Var3 = this.u;
        if (zc3Var3 == null) {
            return;
        }
        zc3Var3.h(o84Var2, true);
    }

    @Override // com.shabakaty.downloader.bd3.c
    public /* synthetic */ void b0(boolean z, int i) {
        cd3.h(this, z, i);
    }

    public final ja3 c() {
        return (ja3) this.x.getValue();
    }

    @Override // com.shabakaty.downloader.bd3.c
    public /* synthetic */ void d(int i) {
        cd3.k(this, i);
    }

    public final boolean e() {
        int i = 0;
        for (Object obj : this.G) {
            int i2 = i + 1;
            if (i < 0) {
                iq6.x();
                throw null;
            }
            o84 o84Var = (o84) obj;
            long j = this.y;
            if (j >= o84Var.r && j <= o84Var.s - ((long) 2000)) {
                this.C = Integer.valueOf(i);
                return true;
            }
            i = i2;
        }
        this.C = null;
        return false;
    }

    @Override // com.shabakaty.downloader.bd3.c
    public /* synthetic */ void f(boolean z) {
        cd3.e(this, z);
    }

    @Override // com.shabakaty.downloader.bd3.c
    public /* synthetic */ void g(int i) {
        cd3.o(this, i);
    }

    @Override // com.shabakaty.downloader.bd3.c
    public /* synthetic */ void i(ad3 ad3Var) {
        cd3.i(this, ad3Var);
    }

    public final void j(long j) {
        this.z = j;
        if (this.F || this.y == j) {
            return;
        }
        this.y = j;
        zc3 zc3Var = this.u;
        if (zc3Var != null) {
            zc3Var.c(j, this.A);
        }
        b();
    }

    @Override // com.shabakaty.downloader.bd3.c
    public /* synthetic */ void k0(cp4 cp4Var, ip4 ip4Var) {
        cd3.v(this, cp4Var, ip4Var);
    }

    @Override // com.shabakaty.downloader.bd3.c
    public /* synthetic */ void l(List list) {
        cd3.t(this, list);
    }

    @Override // com.shabakaty.downloader.bd3.c
    public /* synthetic */ void m0(boolean z) {
        cd3.d(this, z);
    }

    @Override // com.shabakaty.downloader.bd3.c
    public /* synthetic */ void o(boolean z) {
        cd3.c(this, z);
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        j32.e(seekBar, "seekBar");
        if (z) {
            Player94.scrubMove(seekBar, i, this.r);
        }
        long j = i;
        if (!this.F || this.y == j) {
            return;
        }
        this.y = j;
        zc3 zc3Var = this.u;
        if (zc3Var != null) {
            zc3Var.c(j, this.A);
        }
        b();
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
        Player94.scrubStart(seekBar);
        j32.e(seekBar, "seekBar");
        this.F = true;
        zc3 zc3Var = this.u;
        if (zc3Var == null) {
            return;
        }
        zc3Var.d();
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        Player94.scrubStop(seekBar, this.r);
        j32.e(seekBar, "seekBar");
        this.F = false;
        zc3 zc3Var = this.u;
        if (zc3Var == null) {
            return;
        }
        zc3Var.e();
    }

    @Override // com.shabakaty.downloader.bd3.c
    public void p() {
    }

    @Override // com.shabakaty.downloader.bd3.c
    public /* synthetic */ void q(bd3.b bVar) {
        cd3.a(this, bVar);
    }

    @Override // com.shabakaty.downloader.bd3.c
    public /* synthetic */ void u(int i) {
        cd3.j(this, i);
    }

    @Override // com.shabakaty.downloader.bd3.c
    public /* synthetic */ void w(xc3 xc3Var) {
        cd3.m(this, xc3Var);
    }

    @Override // com.shabakaty.downloader.bd3.c
    public /* synthetic */ void x(nn4 nn4Var, int i) {
        cd3.u(this, nn4Var, i);
    }
}
