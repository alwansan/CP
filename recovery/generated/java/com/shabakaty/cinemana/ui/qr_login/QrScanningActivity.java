package com.shabakaty.cinemana.ui.qr_login;

import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.util.Size;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.camera.lifecycle.b;
import androidx.camera.view.PreviewView;
import com.cinemana.pro.R;
import com.shabakaty.cinemana.ui.qr_login.QrScanningActivity;
import com.shabakaty.cinemana.utils.ViewFinderOverlay;
import com.shabakaty.downloader.bg3;
import com.shabakaty.downloader.fl3;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.jl3;
import com.shabakaty.downloader.jo1;
import com.shabakaty.downloader.ky;
import com.shabakaty.downloader.ld0;
import com.shabakaty.downloader.ol3;
import com.shabakaty.downloader.pi2;
import com.shabakaty.downloader.r9;
import com.shabakaty.downloader.tk1;
import com.shabakaty.downloader.tu;
import com.shabakaty.downloader.uu;
import com.shabakaty.downloader.vk2;
import java.util.LinkedHashSet;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Metadata;

/* JADX INFO: compiled from: QrScanningActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/shabakaty/cinemana/ui/qr_login/QrScanningActivity;", "Lcom/shabakaty/downloader/r9;", "<init>", "()V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class QrScanningActivity extends r9 {
    public static final /* synthetic */ int u = 0;
    public pi2<b> r;
    public tk1 s;
    public ExecutorService t;

    @Override // com.shabakaty.downloader.ji1, androidx.activity.ComponentActivity, com.shabakaty.downloader.p80, android.app.Activity
    public void onCreate(Bundle bundle) {
        final int i;
        pi2<tu> pi2VarC;
        super.onCreate(bundle);
        final int i2 = 0;
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_qr_scanning, (ViewGroup) null, false);
        int i3 = R.id.cameraPreview;
        PreviewView previewView = (PreviewView) ol3.c(viewInflate, R.id.cameraPreview);
        if (previewView != null) {
            i3 = R.id.overlay;
            ViewFinderOverlay viewFinderOverlay = (ViewFinderOverlay) ol3.c(viewInflate, R.id.overlay);
            if (viewFinderOverlay != null) {
                tk1 tk1Var = new tk1((FrameLayout) viewInflate, previewView, viewFinderOverlay);
                this.s = tk1Var;
                setContentView((FrameLayout) tk1Var.s);
                b bVar = b.c;
                Object obj = tu.m;
                synchronized (tu.m) {
                    i = 1;
                    boolean z = tu.o != null;
                    pi2VarC = tu.c();
                    if (pi2VarC.isDone()) {
                        try {
                            try {
                                pi2VarC.get();
                            } catch (InterruptedException e) {
                                throw new RuntimeException("Unexpected thread interrupt. Should not be possible since future is already complete.", e);
                            }
                        } catch (ExecutionException unused) {
                            tu.f();
                            pi2VarC = null;
                        }
                    }
                    if (pi2VarC == null) {
                        if (!z) {
                            uu.b bVarB = tu.b(this);
                            if (bVarB == null) {
                                throw new IllegalStateException("CameraX is not configured properly. The most likely cause is you did not include a default implementation in your build such as 'camera-camera2'.");
                            }
                            fl3.i(tu.o == null, "CameraX has already been configured. To use a different configuration, shutdown() must be called.");
                            tu.o = bVarB;
                            Integer num = (Integer) bVarB.getCameraXConfig().a(uu.x, null);
                            if (num != null) {
                                vk2.a = num.intValue();
                            }
                        }
                        tu.d(this);
                        pi2VarC = tu.c();
                    }
                }
                bg3 bg3Var = bg3.b;
                Executor executorA = jl3.a();
                ky kyVar = new ky(new jo1(bg3Var), pi2VarC);
                pi2VarC.f(kyVar, executorA);
                this.r = kyVar;
                ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
                j32.d(executorServiceNewSingleThreadExecutor, "newSingleThreadExecutor()");
                this.t = executorServiceNewSingleThreadExecutor;
                pi2<b> pi2Var = this.r;
                if (pi2Var == null) {
                    j32.l("cameraProviderFuture");
                    throw null;
                }
                pi2Var.f(new Runnable(this) { // from class: com.shabakaty.downloader.gk3
                    public final /* synthetic */ QrScanningActivity s;

                    {
                        this.s = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() throws ExecutionException, InterruptedException {
                        switch (i2) {
                            case 0:
                                QrScanningActivity qrScanningActivity = this.s;
                                int i4 = QrScanningActivity.u;
                                j32.e(qrScanningActivity, "this$0");
                                pi2<androidx.camera.lifecycle.b> pi2Var2 = qrScanningActivity.r;
                                if (pi2Var2 == null) {
                                    j32.l("cameraProviderFuture");
                                    throw null;
                                }
                                androidx.camera.lifecycle.b bVar2 = pi2Var2.get();
                                if (qrScanningActivity.isDestroyed() || qrScanningActivity.isFinishing()) {
                                    return;
                                }
                                if (bVar2 != null) {
                                    bVar2.b();
                                }
                                yv2 yv2VarY = yv2.y();
                                if3.b bVar3 = new if3.b(yv2VarY);
                                o90.a<Integer> aVar = dz1.b;
                                if (yv2VarY.a(aVar, null) != null && yv2VarY.a(dz1.d, null) != null) {
                                    throw new IllegalArgumentException("Cannot use both setTargetResolution and setTargetAspectRatio on the same config.");
                                }
                                if3 if3Var = new if3(bVar3.c());
                                LinkedHashSet linkedHashSet = new LinkedHashSet();
                                linkedHashSet.add(new bh2(1));
                                fu fuVar = new fu(linkedHashSet);
                                yv2 yv2VarY2 = yv2.y();
                                fy1.c cVar = new fy1.c(yv2VarY2);
                                tk1 tk1Var2 = qrScanningActivity.s;
                                if (tk1Var2 == null) {
                                    j32.l("binding");
                                    throw null;
                                }
                                int width = ((PreviewView) tk1Var2.t).getWidth();
                                tk1 tk1Var3 = qrScanningActivity.s;
                                if (tk1Var3 == null) {
                                    j32.l("binding");
                                    throw null;
                                }
                                Size size = new Size(width, ((PreviewView) tk1Var3.t).getHeight());
                                o90.a<Size> aVar2 = dz1.d;
                                o90.c cVar2 = o90.c.OPTIONAL;
                                yv2VarY2.A(aVar2, cVar2, size);
                                yv2VarY2.A(ky1.s, cVar2, 0);
                                if (yv2VarY2.a(aVar, null) != null && yv2VarY2.a(aVar2, null) != null) {
                                    throw new IllegalArgumentException("Cannot use both setTargetResolution and setTargetAspectRatio on the same config.");
                                }
                                final fy1 fy1Var = new fy1(cVar.c());
                                new ik3(fy1Var, qrScanningActivity).enable();
                                final sl2 sl2Var = new sl2(new hk3(qrScanningActivity, fy1Var, bVar2));
                                ExecutorService executorService = qrScanningActivity.t;
                                if (executorService == null) {
                                    j32.l("cameraExecutor");
                                    throw null;
                                }
                                synchronized (fy1Var.m) {
                                    fy1Var.l.f(executorService, new fy1.a() { // from class: com.shabakaty.downloader.dy1
                                        @Override // com.shabakaty.downloader.fy1.a
                                        public final void a(fz1 fz1Var) {
                                            fy1 fy1Var2 = fy1Var;
                                            fy1.a aVar3 = sl2Var;
                                            Rect rect = fy1Var2.i;
                                            if (rect != null) {
                                                fz1Var.L0(rect);
                                            }
                                            aVar3.a(fz1Var);
                                        }
                                    });
                                    if (fy1Var.n == null) {
                                        fy1Var.c = 1;
                                        fy1Var.i();
                                    }
                                    fy1Var.n = sl2Var;
                                    break;
                                }
                                tk1 tk1Var4 = qrScanningActivity.s;
                                if (tk1Var4 == null) {
                                    j32.l("binding");
                                    throw null;
                                }
                                if3.d surfaceProvider = ((PreviewView) tk1Var4.t).getSurfaceProvider();
                                Executor executor = if3.s;
                                hl3.b();
                                if (surfaceProvider == null) {
                                    if3Var.l = null;
                                    if3Var.c = 2;
                                    if3Var.i();
                                } else {
                                    if3Var.l = surfaceProvider;
                                    if3Var.m = executor;
                                    if3Var.c = 1;
                                    if3Var.i();
                                    if (if3Var.p) {
                                        if (if3Var.r()) {
                                            if3Var.s();
                                            if3Var.p = false;
                                        }
                                    } else if (if3Var.g != null) {
                                        if3Var.k = if3Var.q(if3Var.b(), (jf3) if3Var.f, if3Var.g).e();
                                        if3Var.h();
                                    }
                                }
                                if (bVar2 == null) {
                                    return;
                                }
                                bVar2.a(qrScanningActivity, fuVar, fy1Var, if3Var);
                                return;
                            default:
                                QrScanningActivity qrScanningActivity2 = this.s;
                                int i5 = QrScanningActivity.u;
                                j32.e(qrScanningActivity2, "this$0");
                                tk1 tk1Var5 = qrScanningActivity2.s;
                                if (tk1Var5 == null) {
                                    j32.l("binding");
                                    throw null;
                                }
                                ViewFinderOverlay viewFinderOverlay2 = (ViewFinderOverlay) tk1Var5.u;
                                float width2 = viewFinderOverlay2.getWidth();
                                float height = viewFinderOverlay2.getHeight();
                                float f = 100;
                                float f2 = (80 * width2) / f;
                                float f3 = (36 * height) / f;
                                float f4 = 2;
                                float f5 = width2 / f4;
                                float f6 = height / f4;
                                float f7 = f2 / f4;
                                float f8 = f3 / f4;
                                viewFinderOverlay2.v = new RectF(f5 - f7, f6 - f8, f5 + f7, f6 + f8);
                                viewFinderOverlay2.invalidate();
                                return;
                        }
                    }
                }, ld0.d(this));
                tk1 tk1Var2 = this.s;
                if (tk1Var2 != null) {
                    ((ViewFinderOverlay) tk1Var2.u).post(new Runnable(this) { // from class: com.shabakaty.downloader.gk3
                        public final /* synthetic */ QrScanningActivity s;

                        {
                            this.s = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() throws ExecutionException, InterruptedException {
                            switch (i) {
                                case 0:
                                    QrScanningActivity qrScanningActivity = this.s;
                                    int i4 = QrScanningActivity.u;
                                    j32.e(qrScanningActivity, "this$0");
                                    pi2<androidx.camera.lifecycle.b> pi2Var2 = qrScanningActivity.r;
                                    if (pi2Var2 == null) {
                                        j32.l("cameraProviderFuture");
                                        throw null;
                                    }
                                    androidx.camera.lifecycle.b bVar2 = pi2Var2.get();
                                    if (qrScanningActivity.isDestroyed() || qrScanningActivity.isFinishing()) {
                                        return;
                                    }
                                    if (bVar2 != null) {
                                        bVar2.b();
                                    }
                                    yv2 yv2VarY = yv2.y();
                                    if3.b bVar3 = new if3.b(yv2VarY);
                                    o90.a<Integer> aVar = dz1.b;
                                    if (yv2VarY.a(aVar, null) != null && yv2VarY.a(dz1.d, null) != null) {
                                        throw new IllegalArgumentException("Cannot use both setTargetResolution and setTargetAspectRatio on the same config.");
                                    }
                                    if3 if3Var = new if3(bVar3.c());
                                    LinkedHashSet linkedHashSet = new LinkedHashSet();
                                    linkedHashSet.add(new bh2(1));
                                    fu fuVar = new fu(linkedHashSet);
                                    yv2 yv2VarY2 = yv2.y();
                                    fy1.c cVar = new fy1.c(yv2VarY2);
                                    tk1 tk1Var3 = qrScanningActivity.s;
                                    if (tk1Var3 == null) {
                                        j32.l("binding");
                                        throw null;
                                    }
                                    int width = ((PreviewView) tk1Var3.t).getWidth();
                                    tk1 tk1Var4 = qrScanningActivity.s;
                                    if (tk1Var4 == null) {
                                        j32.l("binding");
                                        throw null;
                                    }
                                    Size size = new Size(width, ((PreviewView) tk1Var4.t).getHeight());
                                    o90.a<Size> aVar2 = dz1.d;
                                    o90.c cVar2 = o90.c.OPTIONAL;
                                    yv2VarY2.A(aVar2, cVar2, size);
                                    yv2VarY2.A(ky1.s, cVar2, 0);
                                    if (yv2VarY2.a(aVar, null) != null && yv2VarY2.a(aVar2, null) != null) {
                                        throw new IllegalArgumentException("Cannot use both setTargetResolution and setTargetAspectRatio on the same config.");
                                    }
                                    final fy1 fy1Var = new fy1(cVar.c());
                                    new ik3(fy1Var, qrScanningActivity).enable();
                                    final fy1.a sl2Var = new sl2(new hk3(qrScanningActivity, fy1Var, bVar2));
                                    ExecutorService executorService = qrScanningActivity.t;
                                    if (executorService == null) {
                                        j32.l("cameraExecutor");
                                        throw null;
                                    }
                                    synchronized (fy1Var.m) {
                                        fy1Var.l.f(executorService, new fy1.a() { // from class: com.shabakaty.downloader.dy1
                                            @Override // com.shabakaty.downloader.fy1.a
                                            public final void a(fz1 fz1Var) {
                                                fy1 fy1Var2 = fy1Var;
                                                fy1.a aVar3 = sl2Var;
                                                Rect rect = fy1Var2.i;
                                                if (rect != null) {
                                                    fz1Var.L0(rect);
                                                }
                                                aVar3.a(fz1Var);
                                            }
                                        });
                                        if (fy1Var.n == null) {
                                            fy1Var.c = 1;
                                            fy1Var.i();
                                        }
                                        fy1Var.n = sl2Var;
                                        break;
                                    }
                                    tk1 tk1Var5 = qrScanningActivity.s;
                                    if (tk1Var5 == null) {
                                        j32.l("binding");
                                        throw null;
                                    }
                                    if3.d surfaceProvider = ((PreviewView) tk1Var5.t).getSurfaceProvider();
                                    Executor executor = if3.s;
                                    hl3.b();
                                    if (surfaceProvider == null) {
                                        if3Var.l = null;
                                        if3Var.c = 2;
                                        if3Var.i();
                                    } else {
                                        if3Var.l = surfaceProvider;
                                        if3Var.m = executor;
                                        if3Var.c = 1;
                                        if3Var.i();
                                        if (if3Var.p) {
                                            if (if3Var.r()) {
                                                if3Var.s();
                                                if3Var.p = false;
                                            }
                                        } else if (if3Var.g != null) {
                                            if3Var.k = if3Var.q(if3Var.b(), (jf3) if3Var.f, if3Var.g).e();
                                            if3Var.h();
                                        }
                                    }
                                    if (bVar2 == null) {
                                        return;
                                    }
                                    bVar2.a(qrScanningActivity, fuVar, fy1Var, if3Var);
                                    return;
                                default:
                                    QrScanningActivity qrScanningActivity2 = this.s;
                                    int i5 = QrScanningActivity.u;
                                    j32.e(qrScanningActivity2, "this$0");
                                    tk1 tk1Var6 = qrScanningActivity2.s;
                                    if (tk1Var6 == null) {
                                        j32.l("binding");
                                        throw null;
                                    }
                                    ViewFinderOverlay viewFinderOverlay2 = (ViewFinderOverlay) tk1Var6.u;
                                    float width2 = viewFinderOverlay2.getWidth();
                                    float height = viewFinderOverlay2.getHeight();
                                    float f = 100;
                                    float f2 = (80 * width2) / f;
                                    float f3 = (36 * height) / f;
                                    float f4 = 2;
                                    float f5 = width2 / f4;
                                    float f6 = height / f4;
                                    float f7 = f2 / f4;
                                    float f8 = f3 / f4;
                                    viewFinderOverlay2.v = new RectF(f5 - f7, f6 - f8, f5 + f7, f6 + f8);
                                    viewFinderOverlay2.invalidate();
                                    return;
                            }
                        }
                    });
                    return;
                } else {
                    j32.l("binding");
                    throw null;
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i3)));
    }

    @Override // com.shabakaty.downloader.r9, com.shabakaty.downloader.ji1, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        ExecutorService executorService = this.t;
        if (executorService != null) {
            executorService.shutdown();
        } else {
            j32.l("cameraExecutor");
            throw null;
        }
    }
}
