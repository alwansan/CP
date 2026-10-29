package com.shabakaty.downloader;

import android.app.job.JobParameters;
import android.graphics.SurfaceTexture;
import android.hardware.camera2.TotalCaptureResult;
import android.net.Uri;
import android.os.Looper;
import android.util.Size;
import android.view.Surface;
import androidx.camera.view.PreviewView;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import com.google.android.exoplayer2.source.rtsp.RtspMediaSource;
import com.liulishuo.filedownloader.BuildConfig;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.regex.Matcher;
import zendesk.support.request.CellBase;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class or implements Runnable {
    public final /* synthetic */ int r = 5;
    public final /* synthetic */ Object s;
    public final /* synthetic */ Object t;

    public /* synthetic */ or(Surface surface, SurfaceTexture surfaceTexture) {
        this.s = surface;
        this.t = surfaceTexture;
    }

    public /* synthetic */ or(PreviewView.a aVar, mi4 mi4Var) {
        this.s = aVar;
        this.t = mi4Var;
    }

    public /* synthetic */ or(androidx.camera.view.d dVar, mi4 mi4Var) {
        this.s = dVar;
        this.t = mi4Var;
    }

    public /* synthetic */ or(androidx.camera.view.e eVar, mi4 mi4Var) {
        this.s = eVar;
        this.t = mi4Var;
    }

    public /* synthetic */ or(JobInfoSchedulerService jobInfoSchedulerService, JobParameters jobParameters) {
        this.s = jobInfoSchedulerService;
        this.t = jobParameters;
    }

    public /* synthetic */ or(com.google.android.exoplayer2.source.rtsp.d.c cVar, List list) {
        this.s = cVar;
        this.t = list;
    }

    public /* synthetic */ or(d7 d7Var, gz1.a aVar) {
        this.s = d7Var;
        this.t = aVar;
    }

    public /* synthetic */ or(du duVar, vt vtVar) {
        this.s = duVar;
        this.t = vtVar;
    }

    public /* synthetic */ or(hp0 hp0Var, String str) {
        this.s = hp0Var;
        this.t = str;
    }

    public /* synthetic */ or(if3.d dVar, mi4 mi4Var) {
        this.s = dVar;
        this.t = mi4Var;
    }

    public /* synthetic */ or(kj4 kj4Var, gj4 gj4Var) {
        this.s = kj4Var;
        this.t = gj4Var;
    }

    public /* synthetic */ or(ko0.c cVar, Uri uri) {
        this.s = cVar;
        this.t = uri;
    }

    public /* synthetic */ or(o25.a aVar, p25 p25Var) {
        this.s = aVar;
        this.t = p25Var;
    }

    public /* synthetic */ or(o25.a aVar, Exception exc) {
        this.s = aVar;
        this.t = exc;
    }

    public /* synthetic */ or(o25.a aVar, String str) {
        this.s = aVar;
        this.t = str;
    }

    public /* synthetic */ or(ps psVar, rs rsVar) {
        this.t = psVar;
        this.s = rsVar;
    }

    public /* synthetic */ or(ps psVar, ss ssVar) {
        this.t = psVar;
        this.s = ssVar;
    }

    public /* synthetic */ or(q71 q71Var, s71.d dVar) {
        this.s = q71Var;
        this.t = dVar;
    }

    public /* synthetic */ or(qh3 qh3Var, vz3 vz3Var) {
        this.s = qh3Var;
        this.t = vz3Var;
    }

    public /* synthetic */ or(s71 s71Var, vd3 vd3Var) {
        this.s = s71Var;
        this.t = vd3Var;
    }

    public /* synthetic */ or(sr.b bVar, TotalCaptureResult totalCaptureResult) {
        this.s = bVar;
        this.t = totalCaptureResult;
    }

    public /* synthetic */ or(sr srVar, ps psVar) {
        this.s = srVar;
        this.t = psVar;
    }

    public /* synthetic */ or(u14.c cVar, u14 u14Var) {
        this.s = cVar;
        this.t = u14Var;
    }

    public /* synthetic */ or(un0.e eVar, wh1 wh1Var) {
        this.s = eVar;
        this.t = wh1Var;
    }

    public /* synthetic */ or(vy2 vy2Var, vy2.b bVar) {
        this.s = vy2Var;
        this.t = bVar;
    }

    public /* synthetic */ or(xs2 xs2Var, gz1.a aVar) {
        this.s = xs2Var;
        this.t = aVar;
    }

    public /* synthetic */ or(yd ydVar, Runnable runnable) {
        this.s = ydVar;
        this.t = runnable;
    }

    public /* synthetic */ or(ye.a aVar, String str) {
        this.s = aVar;
        this.t = str;
    }

    public /* synthetic */ or(yr yrVar, ar.a aVar) {
        this.s = yrVar;
        this.t = aVar;
    }

    private final void a() {
        int i;
        vy2 vy2Var = (vy2) this.s;
        vy2.b bVar = (vy2.b) this.t;
        synchronized (vy2Var.c) {
            i = vy2Var.d;
        }
        bVar.a(i);
    }

    @Override // java.lang.Runnable
    public final void run() {
        long j;
        boolean z;
        long jQ0;
        List listA;
        int i = this.r;
        boolean z2 = true;
        z = true;
        boolean z3 = true;
        boolean z4 = false;
        long j2 = CellBase.ID_SYSTEM_MESSAGE_REQUEST_CLOSED;
        switch (i) {
            case 0:
                sr srVar = (sr) this.s;
                ps psVar = (ps) this.t;
                sr.a aVar = srVar.q;
                aVar.a.remove(psVar);
                aVar.b.remove(psVar);
                return;
            case 1:
                ((ps) this.t).b((ss) this.s);
                return;
            case 2:
                ((ps) this.t).c((rs) this.s);
                return;
            case 3:
                sr.b bVar = (sr.b) this.s;
                TotalCaptureResult totalCaptureResult = (TotalCaptureResult) this.t;
                int i2 = sr.b.c;
                Objects.requireNonNull(bVar);
                HashSet hashSet = new HashSet();
                for (sr.c cVar : bVar.a) {
                    if (cVar.a(totalCaptureResult)) {
                        hashSet.add(cVar);
                    }
                }
                if (hashSet.isEmpty()) {
                    return;
                }
                bVar.a.removeAll(hashSet);
                return;
            case 4:
                ((u14.c) this.s).a((u14) this.t, u14.e.SESSION_ERROR_SURFACE_NEEDS_RESET);
                return;
            case 5:
                Surface surface = (Surface) this.s;
                SurfaceTexture surfaceTexture = (SurfaceTexture) this.t;
                surface.release();
                surfaceTexture.release();
                return;
            case 6:
                yr yrVar = (yr) this.s;
                ar.a aVar2 = (ar.a) this.t;
                yr.e eVar = yr.e.RELEASING;
                if (yrVar.E == null) {
                    if (yrVar.u != yr.e.RELEASED) {
                        yrVar.E = ar.a(new ur(yrVar, z2 ? 1 : 0));
                    } else {
                        yrVar.E = ko1.c(null);
                    }
                }
                pi2<Void> pi2Var = yrVar.E;
                switch (yrVar.u.ordinal()) {
                    case 0:
                    case 1:
                        fl3.i(yrVar.z == null, null);
                        yrVar.x(eVar);
                        fl3.i(yrVar.r(), null);
                        yrVar.p();
                        break;
                    case 2:
                    case 4:
                    case 5:
                    case 6:
                        boolean zA = yrVar.x.a();
                        yrVar.x(eVar);
                        if (zA) {
                            fl3.i(yrVar.r(), null);
                            yrVar.p();
                        }
                        break;
                    case 3:
                        yrVar.x(eVar);
                        yrVar.m(false);
                        break;
                    default:
                        yrVar.o("release() ignored due to being in state: " + yrVar.u, null);
                        break;
                }
                ko1.e(pi2Var, aVar2);
                return;
            case 7:
                kj4 kj4Var = (kj4) this.s;
                gj4 gj4Var = (gj4) this.t;
                wv wvVar = kj4Var.b;
                synchronized (wvVar.b) {
                    wvVar.c.remove(kj4Var);
                    wvVar.d.remove(kj4Var);
                    break;
                }
                kj4Var.f.m(gj4Var);
                return;
            case 8:
                d7 d7Var = (d7) this.s;
                gz1.a aVar3 = (gz1.a) this.t;
                Objects.requireNonNull(d7Var);
                aVar3.a(d7Var);
                return;
            case 9:
                xs2 xs2Var = (xs2) this.s;
                gz1.a aVar4 = (gz1.a) this.t;
                Objects.requireNonNull(xs2Var);
                aVar4.a(xs2Var);
                return;
            case 10:
                if3.d dVar = (if3.d) this.s;
                mi4 mi4Var = (mi4) this.t;
                if3.c cVar2 = if3.r;
                ((PreviewView.a) dVar).a(mi4Var);
                return;
            case 11:
                du duVar = (du) this.s;
                vt vtVar = (vt) this.t;
                synchronized (duVar.a) {
                    duVar.c.remove(vtVar);
                    if (duVar.c.isEmpty()) {
                        Objects.requireNonNull(duVar.e);
                        duVar.e.a(null);
                        duVar.e = null;
                        duVar.d = null;
                    }
                    break;
                }
                return;
            case 12:
                hp0 hp0Var = (hp0) this.s;
                String str = (String) this.t;
                boolean z5 = hp0.f;
                Objects.requireNonNull(hp0Var);
                try {
                    hp0Var.e.get();
                    hp0Var.f("Surface terminated", hp0.h.decrementAndGet(), hp0.g.get());
                    return;
                } catch (Exception e) {
                    vk2.b("DeferrableSurface", "Unexpected surface termination for " + hp0Var + "\nStack Trace:\n" + str, null);
                    synchronized (hp0Var.a) {
                        try {
                            throw new IllegalArgumentException(String.format("DeferrableSurface %s [closed: %b, use_count: %s] terminated with unexpected exception.", hp0Var, Boolean.valueOf(hp0Var.c), Integer.valueOf(hp0Var.b)), e);
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            case 13:
                ((PreviewView.a) PreviewView.this.y).a((mi4) this.t);
                return;
            case 14:
                androidx.camera.view.d dVar2 = (androidx.camera.view.d) this.s;
                mi4 mi4Var2 = (mi4) this.t;
                androidx.camera.view.d.a aVar5 = dVar2.e;
                aVar5.a();
                aVar5.s = mi4Var2;
                Size size = mi4Var2.a;
                aVar5.r = size;
                aVar5.u = false;
                if (aVar5.b()) {
                    return;
                }
                vk2.a("SurfaceViewImpl", "Wait for new Surface creation.", null);
                androidx.camera.view.d.this.d.getHolder().setFixedSize(size.getWidth(), size.getHeight());
                return;
            case 15:
                androidx.camera.view.e eVar2 = (androidx.camera.view.e) this.s;
                mi4 mi4Var3 = (mi4) this.t;
                mi4 mi4Var4 = eVar2.g;
                if (mi4Var4 != null && mi4Var4 == mi4Var3) {
                    eVar2.g = null;
                    eVar2.f = null;
                }
                androidx.camera.view.c.a aVar6 = eVar2.k;
                if (aVar6 != null) {
                    ((ij4) aVar6).a();
                    eVar2.k = null;
                    return;
                }
                return;
            case 16:
                JobInfoSchedulerService jobInfoSchedulerService = (JobInfoSchedulerService) this.s;
                JobParameters jobParameters = (JobParameters) this.t;
                int i3 = JobInfoSchedulerService.r;
                jobInfoSchedulerService.jobFinished(jobParameters, false);
                return;
            case 17:
                q71 q71Var = (q71) this.s;
                s71.d dVar3 = (s71.d) this.t;
                int i4 = q71Var.v - dVar3.c;
                q71Var.v = i4;
                if (dVar3.d) {
                    q71Var.w = dVar3.e;
                    q71Var.x = true;
                }
                if (dVar3.f) {
                    q71Var.y = dVar3.g;
                }
                if (i4 == 0) {
                    nn4 nn4Var = dVar3.b.a;
                    if (!q71Var.C.a.q() && nn4Var.q()) {
                        q71Var.D = -1;
                        q71Var.E = 0L;
                    }
                    if (!nn4Var.q()) {
                        List listAsList = Arrays.asList(((wd3) nn4Var).i);
                        md.e(listAsList.size() == q71Var.l.size());
                        for (int i5 = 0; i5 < listAsList.size(); i5++) {
                            q71Var.l.get(i5).b = (nn4) listAsList.get(i5);
                        }
                    }
                    if (q71Var.x) {
                        if (dVar3.b.b.equals(q71Var.C.b) && dVar3.b.d == q71Var.C.s) {
                            z3 = false;
                        }
                        if (z3) {
                            if (nn4Var.q() || dVar3.b.b.a()) {
                                jQ0 = dVar3.b.d;
                            } else {
                                yc3 yc3Var = dVar3.b;
                                jQ0 = q71Var.q0(nn4Var, yc3Var.b, yc3Var.d);
                            }
                            j2 = jQ0;
                        }
                        z = z3;
                        j = j2;
                    } else {
                        j = -9223372036854775807L;
                        z = false;
                    }
                    q71Var.x = false;
                    q71Var.x0(dVar3.b, 1, q71Var.y, false, z, q71Var.w, j, -1);
                    return;
                }
                return;
            case 18:
                s71 s71Var = (s71) this.s;
                vd3 vd3Var = (vd3) this.t;
                Objects.requireNonNull(s71Var);
                try {
                    s71Var.c(vd3Var);
                    return;
                } catch (i71 e2) {
                    fk2.b("ExoPlayerImplInternal", "Unexpected error delivering message on external thread.", e2);
                    throw new RuntimeException(e2);
                }
            case 19:
                ye.a aVar7 = (ye.a) this.s;
                String str2 = (String) this.t;
                ye yeVar = aVar7.b;
                int i6 = sy4.a;
                yeVar.y(str2);
                return;
            case 20:
                un0.e eVar3 = (un0.e) this.s;
                wh1 wh1Var = (wh1) this.t;
                un0 un0Var = eVar3.u;
                if (un0Var.p == 0 || eVar3.t) {
                    return;
                }
                Looper looper = un0Var.t;
                Objects.requireNonNull(looper);
                eVar3.s = un0Var.e(looper, eVar3.r, wh1Var, false);
                eVar3.u.n.add(eVar3);
                return;
            case 21:
                yd ydVar = (yd) this.s;
                Runnable runnable = (Runnable) this.t;
                synchronized (ydVar.a) {
                    if (!ydVar.l) {
                        long j3 = ydVar.k - 1;
                        ydVar.k = j3;
                        if (j3 <= 0) {
                            if (j3 < 0) {
                                ydVar.c(new IllegalStateException());
                            } else {
                                ydVar.a();
                                try {
                                    runnable.run();
                                } catch (IllegalStateException e3) {
                                    ydVar.c(e3);
                                } catch (Exception e4) {
                                    ydVar.c(new IllegalStateException(e4));
                                }
                            }
                            break;
                        }
                    }
                    break;
                }
                return;
            case 22:
                qh3 qh3Var = (qh3) this.s;
                vz3 vz3Var = (vz3) this.t;
                qh3Var.P = qh3Var.I == null ? vz3Var : new vz3.b(CellBase.ID_SYSTEM_MESSAGE_REQUEST_CLOSED, 0L);
                qh3Var.Q = vz3Var.j();
                if (qh3Var.W == -1 && vz3Var.j() == CellBase.ID_SYSTEM_MESSAGE_REQUEST_CLOSED) {
                    z4 = true;
                }
                qh3Var.R = z4;
                qh3Var.S = z4 ? 7 : 1;
                ((rh3) qh3Var.x).z(qh3Var.Q, vz3Var.e(), qh3Var.R);
                if (qh3Var.M) {
                    return;
                }
                qh3Var.r();
                return;
            case 23:
                r4.a aVar8 = (r4.a) this.s;
                Objects.requireNonNull(aVar8);
                throw null;
            case 24:
                ko0.c cVar3 = (ko0.c) this.s;
                Uri uri = (Uri) this.t;
                cVar3.z = false;
                cVar3.b(uri);
                return;
            case 25:
                com.google.android.exoplayer2.source.rtsp.d.c cVar4 = (com.google.android.exoplayer2.source.rtsp.d.c) this.s;
                List list = (List) this.t;
                Objects.requireNonNull(cVar4);
                Matcher matcher = com.google.android.exoplayer2.source.rtsp.h.b.matcher((CharSequence) list.get(0));
                md.b(matcher.matches());
                String strGroup = matcher.group(1);
                Objects.requireNonNull(strGroup);
                int i7 = Integer.parseInt(strGroup);
                int iIndexOf = list.indexOf(BuildConfig.FLAVOR);
                md.b(iIndexOf > 0);
                List listSubList = list.subList(1, iIndexOf);
                com.google.android.exoplayer2.source.rtsp.e.b bVar2 = new com.google.android.exoplayer2.source.rtsp.e.b();
                for (int i8 = 0; i8 < listSubList.size(); i8++) {
                    String[] strArrQ = sy4.Q((String) listSubList.get(i8), ":\\s?");
                    if (strArrQ.length == 2) {
                        bVar2.a(strArrQ[0], strArrQ[1]);
                    }
                }
                com.google.android.exoplayer2.source.rtsp.e eVarB = bVar2.b();
                String str3 = com.google.android.exoplayer2.source.rtsp.h.h;
                Objects.requireNonNull(str3);
                Iterator it = list.subList(iIndexOf + 1, list.size()).iterator();
                StringBuilder sb = new StringBuilder();
                try {
                    if (it.hasNext()) {
                        Object next = it.next();
                        Objects.requireNonNull(next);
                        sb.append(next instanceof CharSequence ? (CharSequence) next : next.toString());
                        while (it.hasNext()) {
                            sb.append((CharSequence) str3);
                            Object next2 = it.next();
                            Objects.requireNonNull(next2);
                            sb.append(next2 instanceof CharSequence ? (CharSequence) next2 : next2.toString());
                        }
                    }
                    String string = sb.toString();
                    String strB = eVarB.b("CSeq");
                    Objects.requireNonNull(strB);
                    int i9 = Integer.parseInt(strB);
                    ev3 ev3Var = com.google.android.exoplayer2.source.rtsp.d.this.x.get(i9);
                    if (ev3Var == null) {
                        return;
                    }
                    com.google.android.exoplayer2.source.rtsp.d.this.x.remove(i9);
                    int i10 = ev3Var.b;
                    try {
                        if (i7 != 200) {
                            if (i7 == 401) {
                                com.google.android.exoplayer2.source.rtsp.d dVar4 = com.google.android.exoplayer2.source.rtsp.d.this;
                                if (dVar4.u != null && !dVar4.E) {
                                    String strB2 = eVarB.b("WWW-Authenticate");
                                    if (strB2 == null) {
                                        throw pa3.b("Missing WWW-Authenticate header in a 401 response.", null);
                                    }
                                    com.google.android.exoplayer2.source.rtsp.d.this.C = com.google.android.exoplayer2.source.rtsp.h.d(strB2);
                                    com.google.android.exoplayer2.source.rtsp.d.this.y.b();
                                    com.google.android.exoplayer2.source.rtsp.d.this.E = true;
                                    return;
                                }
                            }
                            com.google.android.exoplayer2.source.rtsp.d dVar5 = com.google.android.exoplayer2.source.rtsp.d.this;
                            String strE = com.google.android.exoplayer2.source.rtsp.h.e(i10);
                            StringBuilder sb2 = new StringBuilder(strE.length() + 12);
                            sb2.append(strE);
                            sb2.append(" ");
                            sb2.append(i7);
                            com.google.android.exoplayer2.source.rtsp.d.a(dVar5, new RtspMediaSource.b(sb2.toString()));
                            return;
                        }
                        switch (i10) {
                            case 1:
                            case 3:
                            case 7:
                            case 8:
                            case 9:
                            case 11:
                            case 12:
                                return;
                            case 2:
                                cVar4.a(new u74(i7, x14.b(string)));
                                return;
                            case 4:
                                cVar4.b(new u74(i7, com.google.android.exoplayer2.source.rtsp.h.c(eVarB.b("Public"))));
                                return;
                            case 5:
                                com.google.android.exoplayer2.source.rtsp.d dVar6 = com.google.android.exoplayer2.source.rtsp.d.this;
                                long j4 = dVar6.F;
                                if (j4 != CellBase.ID_SYSTEM_MESSAGE_REQUEST_CLOSED) {
                                    dVar6.e(jp.d(j4));
                                    return;
                                }
                                return;
                            case 6:
                                String strB3 = eVarB.b("Range");
                                fv3 fv3VarA = strB3 == null ? fv3.c : fv3.a(strB3);
                                String strB4 = eVarB.b("RTP-Info");
                                if (strB4 == null) {
                                    c0<Object> c0Var = com.google.common.collect.p.s;
                                    listA = oq3.v;
                                } else {
                                    listA = gv3.a(strB4, com.google.android.exoplayer2.source.rtsp.d.this.t);
                                }
                                cVar4.c(new dv3(i7, fv3VarA, listA));
                                return;
                            case 10:
                                String strB5 = eVarB.b("Session");
                                String strB6 = eVarB.b("Transport");
                                if (strB5 == null || strB6 == null) {
                                    throw pa3.b("Missing mandatory session or transport header", null);
                                }
                                Matcher matcher2 = com.google.android.exoplayer2.source.rtsp.h.d.matcher(strB5);
                                if (!matcher2.matches()) {
                                    throw pa3.b(strB5, null);
                                }
                                String strGroup2 = matcher2.group(1);
                                Objects.requireNonNull(strGroup2);
                                String strGroup3 = matcher2.group(2);
                                if (strGroup3 != null) {
                                    try {
                                        Integer.parseInt(strGroup3);
                                    } catch (NumberFormatException e5) {
                                        throw pa3.b(strB5, e5);
                                    }
                                    break;
                                }
                                com.google.android.exoplayer2.source.rtsp.d dVar7 = com.google.android.exoplayer2.source.rtsp.d.this;
                                dVar7.A = strGroup2;
                                dVar7.b();
                                return;
                            default:
                                throw new IllegalStateException();
                        }
                        com.google.android.exoplayer2.source.rtsp.d.a(com.google.android.exoplayer2.source.rtsp.d.this, new RtspMediaSource.b(e));
                        return;
                    } catch (pa3 e6) {
                        com.google.android.exoplayer2.source.rtsp.d.a(com.google.android.exoplayer2.source.rtsp.d.this, new RtspMediaSource.b(e6));
                        return;
                    }
                } catch (IOException e7) {
                    throw new AssertionError(e7);
                }
                break;
            case 26:
                a();
                return;
            case 27:
                o25.a aVar9 = (o25.a) this.s;
                p25 p25Var = (p25) this.t;
                o25 o25Var = aVar9.b;
                int i11 = sy4.a;
                o25Var.b(p25Var);
                return;
            case 28:
                o25.a aVar10 = (o25.a) this.s;
                String str4 = (String) this.t;
                o25 o25Var2 = aVar10.b;
                int i12 = sy4.a;
                o25Var2.h(str4);
                return;
            default:
                o25.a aVar11 = (o25.a) this.s;
                Exception exc = (Exception) this.t;
                o25 o25Var3 = aVar11.b;
                int i13 = sy4.a;
                o25Var3.a0(exc);
                return;
        }
    }
}
