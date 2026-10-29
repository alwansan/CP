package com.shabakaty.downloader;

import android.graphics.SurfaceTexture;
import android.media.MediaCodec;
import android.view.Menu;
import android.view.MenuItem;
import android.view.Surface;
import androidx.cardview.widget.CardView;
import com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource;
import com.shabakaty.cinemana.player.FastForwardRewindButton;
import com.shabakaty.cinemana.ui.home_activity.HomeActivity;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class rr implements Runnable {
    public final /* synthetic */ int r = 16;
    public final /* synthetic */ Object s;

    public /* synthetic */ rr(FastForwardRewindButton fastForwardRewindButton) {
        this.s = fastForwardRewindButton;
    }

    public /* synthetic */ rr(ea4 ea4Var) {
        this.s = ea4Var;
    }

    public /* synthetic */ rr(ly1 ly1Var) {
        this.s = ly1Var;
    }

    public /* synthetic */ rr(mi4 mi4Var) {
        this.s = mi4Var;
    }

    public /* synthetic */ rr(nj4 nj4Var) {
        this.s = nj4Var;
    }

    public /* synthetic */ rr(nw3 nw3Var) {
        this.s = nw3Var;
    }

    public /* synthetic */ rr(p75 p75Var) {
        this.s = p75Var;
    }

    public /* synthetic */ rr(pi2 pi2Var) {
        this.s = pi2Var;
    }

    public /* synthetic */ rr(ps psVar) {
        this.s = psVar;
    }

    public /* synthetic */ rr(wv.a aVar) {
        this.s = aVar;
    }

    private final void a() {
        v32 v32Var = (v32) this.s;
        synchronized (v32Var) {
            v32Var.f = false;
            v32.b bVar = v32Var.h;
            synchronized (bVar) {
                Arrays.fill(bVar.b, false);
                bVar.d = true;
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.r) {
            case 0:
                ((ps) this.s).a();
                return;
            case 1:
                yr.f.b bVar = (yr.f.b) this.s;
                if (bVar.s) {
                    return;
                }
                fl3.i(bVar.t.f.u == yr.e.w, null);
                bVar.t.f.s(true);
                return;
            case 2:
                wv.a aVar = (wv.a) this.s;
                int i = wv.a.b;
                Objects.requireNonNull(aVar);
                LinkedHashSet<gj4> linkedHashSet = new LinkedHashSet();
                synchronized (wv.this.b) {
                    linkedHashSet.addAll(new LinkedHashSet(wv.this.e));
                    linkedHashSet.addAll(new LinkedHashSet(wv.this.c));
                    break;
                }
                for (gj4 gj4Var : linkedHashSet) {
                    gj4Var.b().m(gj4Var);
                }
                return;
            case 3:
                nj4.s((nj4) this.s);
                return;
            case 4:
                nw3 nw3Var = (nw3) this.s;
                synchronized (nw3Var.a) {
                    nw3Var.c = true;
                    nw3Var.d.c();
                    if (nw3Var.b == 0) {
                        nw3Var.close();
                    }
                    break;
                }
                return;
            case 5:
                ly1 ly1Var = (ly1) this.s;
                synchronized (ly1Var.g) {
                    ly1Var.i = null;
                    fz1 fz1Var = ly1Var.h;
                    if (fz1Var != null) {
                        ly1Var.h = null;
                        ly1Var.e(fz1Var);
                    }
                    break;
                }
                return;
            case 6:
                eg3 eg3Var = (eg3) this.s;
                synchronized (eg3Var.i) {
                    if (eg3Var.k) {
                        return;
                    }
                    eg3Var.l.close();
                    eg3Var.m.release();
                    eg3Var.r.a();
                    eg3Var.k = true;
                    return;
                }
            case 7:
                ((mi4) this.s).d.cancel(true);
                return;
            case 8:
                yr.c cVar = (yr.c) ((gu.b) this.s);
                if (cVar.c.u == yr.e.s) {
                    cVar.c.s(false);
                    return;
                }
                return;
            case 9:
                ((pi2) this.s).cancel(true);
                return;
            case 10:
                androidx.camera.view.d dVar = (androidx.camera.view.d) this.s;
                androidx.camera.view.c.a aVar2 = dVar.f;
                if (aVar2 != null) {
                    ((ij4) aVar2).a();
                    dVar.f = null;
                    return;
                }
                return;
            case 11:
                a();
                return;
            case 12:
                p75 p75Var = (p75) this.s;
                p75Var.d.a(new cu(p75Var));
                return;
            case 13:
                xd4 xd4Var = (xd4) this.s;
                int i2 = xd4.c.b;
                xd4Var.d();
                return;
            case 14:
                un0.e eVar = (un0.e) this.s;
                if (eVar.t) {
                    return;
                }
                p01 p01Var = eVar.s;
                if (p01Var != null) {
                    p01Var.b(eVar.r);
                }
                eVar.u.n.remove(eVar);
                eVar.t = true;
                return;
            case 15:
                ((tn0) this.s).b(null);
                return;
            case 16:
                ((MediaCodec) this.s).start();
                return;
            case 17:
                ((com.google.android.exoplayer2.source.hls.c) ((com.google.android.exoplayer2.source.hls.d.b) this.s)).i();
                return;
            case 18:
                SsMediaSource ssMediaSource = (SsMediaSource) this.s;
                int i3 = SsMediaSource.Q;
                ssMediaSource.z();
                return;
            case 19:
                com.google.android.exoplayer2.ui.b bVar2 = (com.google.android.exoplayer2.ui.b) this.s;
                int i4 = com.google.android.exoplayer2.ui.b.h0;
                bVar2.g(false);
                return;
            case 20:
                ea4 ea4Var = (ea4) this.s;
                Surface surface = ea4Var.y;
                if (surface != null) {
                    Iterator<ea4.b> it = ea4Var.r.iterator();
                    while (it.hasNext()) {
                        it.next().k(surface);
                    }
                }
                SurfaceTexture surfaceTexture = ea4Var.x;
                if (surfaceTexture != null) {
                    surfaceTexture.release();
                }
                if (surface != null) {
                    surface.release();
                }
                ea4Var.x = null;
                ea4Var.y = null;
                return;
            case 21:
                lc1 lc1Var = (lc1) this.s;
                Object obj = lc1.m;
                lc1Var.b(false);
                return;
            case 22:
                FastForwardRewindButton.m75setVisibility$lambda0((FastForwardRewindButton) this.s);
                return;
            case 23:
                is3 is3Var = (is3) this.s;
                j32.e(is3Var, "this$0");
                if (is3Var.c > 1.0f) {
                    is3Var.a.setResizeMode(4);
                    tm1<? super Integer, qv4> tm1Var = is3Var.d;
                    if (tm1Var == null) {
                        return;
                    }
                    tm1Var.invoke(4);
                    return;
                }
                is3Var.a.setResizeMode(0);
                tm1<? super Integer, qv4> tm1Var2 = is3Var.d;
                if (tm1Var2 == null) {
                    return;
                }
                tm1Var2.invoke(0);
                return;
            case 24:
                HomeActivity homeActivity = (HomeActivity) this.s;
                int i5 = HomeActivity.D;
                j32.e(homeActivity, "this$0");
                T t = homeActivity.t;
                j32.c(t);
                CardView cardView = ((y2) t).P;
                j32.d(cardView, "binding.serviceDownBanner");
                s45.j(cardView);
                return;
            default:
                hx2 hx2Var = (hx2) this.s;
                int i6 = hx2.A;
                j32.e(hx2Var, "this$0");
                Menu menu = hx2Var.m0().getMenu();
                j32.d(menu, "bottomNavigationView.menu");
                MenuItem item = menu.getItem(0);
                j32.d(item, "getItem(index)");
                item.setChecked(true);
                return;
        }
    }
}
