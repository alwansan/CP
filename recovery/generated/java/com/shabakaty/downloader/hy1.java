package com.shabakaty.downloader;

import android.content.Context;
import android.content.Intent;
import android.view.Surface;
import com.connectsdk.discovery.CapabilityFilter;
import com.connectsdk.discovery.DiscoveryManager;
import com.connectsdk.discovery.provider.CastDiscoveryProvider;
import com.connectsdk.discovery.provider.SSDPDiscoveryProvider;
import com.connectsdk.discovery.provider.ZeroconfDiscoveryProvider;
import com.connectsdk.service.AirPlayService;
import com.connectsdk.service.CastService;
import com.connectsdk.service.DIALService;
import com.connectsdk.service.DLNAService;
import com.connectsdk.service.WebOSTVService;
import com.shabakaty.cinemana.helpers.casting.DLNAControllerService;
import com.shabakaty.cinemana.ui.qr_login.QrScanningActivity;
import java.util.Objects;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class hy1 implements Runnable {
    public final /* synthetic */ int r = 1;
    public final /* synthetic */ Object s;
    public final /* synthetic */ Object t;
    public final /* synthetic */ Object u;
    public final /* synthetic */ Object v;

    public /* synthetic */ hy1(androidx.camera.view.e eVar, Surface surface, pi2 pi2Var, mi4 mi4Var) {
        this.s = eVar;
        this.t = surface;
        this.u = pi2Var;
        this.v = mi4Var;
    }

    public /* synthetic */ hy1(DLNAControllerService dLNAControllerService, Context context, CapabilityFilter capabilityFilter, CapabilityFilter capabilityFilter2) {
        this.s = dLNAControllerService;
        this.t = context;
        this.u = capabilityFilter;
        this.v = capabilityFilter2;
    }

    public /* synthetic */ hy1(fy1 fy1Var, androidx.camera.lifecycle.b bVar, QrScanningActivity qrScanningActivity, String str) {
        this.s = fy1Var;
        this.t = bVar;
        this.u = qrScanningActivity;
        this.v = str;
    }

    public /* synthetic */ hy1(iy1 iy1Var, fz1 fz1Var, fy1.a aVar, ar.a aVar2) {
        this.s = iy1Var;
        this.t = fz1Var;
        this.u = aVar;
        this.v = aVar2;
    }

    public /* synthetic */ hy1(wo0 wo0Var, oq4 oq4Var, br4 br4Var, n51 n51Var) {
        this.s = wo0Var;
        this.t = oq4Var;
        this.u = br4Var;
        this.v = n51Var;
    }

    public /* synthetic */ hy1(yq2.a aVar, yq2 yq2Var, uq2.a aVar2, fp2 fp2Var) {
        this.s = aVar;
        this.t = yq2Var;
        this.u = aVar2;
        this.v = fp2Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.r) {
            case 0:
                iy1 iy1Var = (iy1) this.s;
                fz1 fz1Var = (fz1) this.t;
                fy1.a aVar = (fy1.a) this.u;
                ar.a aVar2 = (ar.a) this.v;
                if (!iy1Var.e) {
                    aVar2.c(new y73("ImageAnalysis is detached"));
                    return;
                } else {
                    aVar.a(new h24(fz1Var, new hh(fz1Var.N0().a(), fz1Var.N0().getTimestamp(), iy1Var.b)));
                    aVar2.a(null);
                    return;
                }
            case 1:
                androidx.camera.view.e eVar = (androidx.camera.view.e) this.s;
                Surface surface = (Surface) this.t;
                pi2<mi4.f> pi2Var = (pi2) this.u;
                mi4 mi4Var = (mi4) this.v;
                Objects.requireNonNull(eVar);
                vk2.a("TextureViewImpl", "Safe to release surface.", null);
                androidx.camera.view.c.a aVar3 = eVar.k;
                if (aVar3 != null) {
                    ((ij4) aVar3).a();
                    eVar.k = null;
                }
                surface.release();
                if (eVar.f == pi2Var) {
                    eVar.f = null;
                }
                if (eVar.g == mi4Var) {
                    eVar.g = null;
                    return;
                }
                return;
            case 2:
                wo0 wo0Var = (wo0) this.s;
                oq4 oq4Var = (oq4) this.t;
                br4 br4Var = (br4) this.u;
                n51 n51Var = (n51) this.v;
                Logger logger = wo0.f;
                Objects.requireNonNull(wo0Var);
                try {
                    nq4 nq4Var = wo0Var.c.get(oq4Var.b());
                    if (nq4Var == null) {
                        String str = String.format("Transport backend '%s' is not registered", oq4Var.b());
                        wo0.f.warning(str);
                        br4Var.d(new IllegalArgumentException(str));
                    } else {
                        wo0Var.e.a(new ij4(wo0Var, oq4Var, nq4Var.a(n51Var)));
                        br4Var.d(null);
                    }
                    return;
                } catch (Exception e) {
                    wo0.f.warning("Error scheduling event " + e.getMessage());
                    br4Var.d(e);
                    return;
                }
            case 3:
                ((yq2) this.t).v(((yq2.a) this.s).a, (uq2.a) this.u, (fp2) this.v);
                return;
            case 4:
                DLNAControllerService dLNAControllerService = (DLNAControllerService) this.s;
                Context context = (Context) this.t;
                CapabilityFilter capabilityFilter = (CapabilityFilter) this.u;
                CapabilityFilter capabilityFilter2 = (CapabilityFilter) this.v;
                DLNAControllerService dLNAControllerService2 = DLNAControllerService.G;
                j32.e(dLNAControllerService, "this$0");
                j32.e(context, "$context");
                j32.e(capabilityFilter, "$videoFilter");
                j32.e(capabilityFilter2, "$imageCapabilities");
                mu0 mu0Var = dLNAControllerService.s;
                if (mu0Var != null && (mu0Var.n() ^ true)) {
                    DiscoveryManager.init(context);
                    DiscoveryManager.getInstance().registerDeviceService(AirPlayService.class, ZeroconfDiscoveryProvider.class);
                    DiscoveryManager.getInstance().registerDeviceService(DIALService.class, SSDPDiscoveryProvider.class);
                    DiscoveryManager.getInstance().registerDeviceService(DLNAService.class, SSDPDiscoveryProvider.class);
                    DiscoveryManager.getInstance().registerDeviceService(WebOSTVService.class, SSDPDiscoveryProvider.class);
                    DiscoveryManager.getInstance().registerDeviceService(CastService.class, CastDiscoveryProvider.class);
                    DiscoveryManager.getInstance().setCapabilityFilters(capabilityFilter, capabilityFilter2);
                    DiscoveryManager.getInstance().addListener(new wh0(dLNAControllerService));
                    DiscoveryManager.getInstance().setPairingLevel(DiscoveryManager.PairingLevel.OFF);
                    DiscoveryManager.getInstance().start();
                    return;
                }
                return;
            default:
                fy1 fy1Var = (fy1) this.s;
                androidx.camera.lifecycle.b bVar = (androidx.camera.lifecycle.b) this.t;
                QrScanningActivity qrScanningActivity = (QrScanningActivity) this.u;
                String str2 = (String) this.v;
                j32.e(fy1Var, "$imageAnalysis");
                j32.e(qrScanningActivity, "this$0");
                j32.e(str2, "$result");
                synchronized (fy1Var.m) {
                    fy1Var.l.f(null, null);
                    if (fy1Var.n != null) {
                        fy1Var.c = 2;
                        fy1Var.i();
                    }
                    fy1Var.n = null;
                    break;
                }
                if (bVar != null) {
                    bVar.b();
                }
                Intent intent = qrScanningActivity.getIntent();
                j32.d(intent, "intent");
                intent.putExtra("UserCode", str2);
                qrScanningActivity.setResult(-1, intent);
                qrScanningActivity.finish();
                return;
        }
    }
}
