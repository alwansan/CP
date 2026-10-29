package com.shabakaty.downloader;

import android.app.NotificationManager;
import android.content.Context;
import android.content.DialogInterface;
import android.provider.Settings;
import com.cinemana.pro.R;
import com.connectsdk.device.ConnectableDevice;
import com.connectsdk.service.DLNAService;
import com.shabakaty.cinemana.helpers.casting.DLNAControllerService;
import com.shabakaty.cinemana.ui.home_activity.HomeActivity;
import com.shabakaty.cinemana.utils.download.DownloadActionsHandlerScope;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ph0 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int r = 0;
    public final /* synthetic */ Object s;

    public /* synthetic */ ph0(DLNAControllerService dLNAControllerService) {
        this.s = dLNAControllerService;
    }

    public /* synthetic */ ph0(DownloadActionsHandlerScope downloadActionsHandlerScope) {
        this.s = downloadActionsHandlerScope;
    }

    public /* synthetic */ ph0(jb jbVar) {
        this.s = jbVar;
    }

    public /* synthetic */ ph0(vg4 vg4Var) {
        this.s = vg4Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        final int i2 = 0;
        final int i3 = 1;
        switch (this.r) {
            case 0:
                DLNAControllerService dLNAControllerService = (DLNAControllerService) this.s;
                DLNAControllerService dLNAControllerService2 = DLNAControllerService.G;
                j32.e(dLNAControllerService, "this$0");
                DLNAService dLNAService = dLNAControllerService.u;
                if (dLNAService != null) {
                    dLNAService.disconnect();
                }
                ConnectableDevice connectableDevice = dLNAControllerService.v;
                if (connectableDevice != null) {
                    connectableDevice.disconnect();
                }
                DLNAControllerService.H = false;
                NotificationManager notificationManager = dLNAControllerService.C;
                if (notificationManager != null) {
                    notificationManager.cancelAll();
                    break;
                }
                break;
            case 1:
                jg3 jg3Var = (jg3) this.s;
                int i4 = jg3.y;
                j32.e(jg3Var, "this$0");
                final zu1 zu1Var = (zu1) ((HomeActivity) jg3Var.requireActivity()).F();
                if (zu1Var.j.isLoggedIn()) {
                    Context context = zu1Var.m.get();
                    String string = Settings.Secure.getString(context != null ? context.getContentResolver() : null, "android_id");
                    sx4 sx4Var = zu1Var.l;
                    j32.d(string, "deviceId");
                    Objects.requireNonNull(sx4Var);
                    f74 f74VarD = uv3.d(sx4Var.a.B(string));
                    zc0 zc0Var = new zc0(new xc0() { // from class: com.shabakaty.downloader.yu1
                        @Override // com.shabakaty.downloader.xc0
                        public final void accept(Object obj) {
                            switch (i2) {
                                case 0:
                                    zu1 zu1Var2 = zu1Var;
                                    j32.e(zu1Var2, "this$0");
                                    zu1Var2.k.b(false);
                                    vd5.u("logged out successfully", "UserData");
                                    zu1Var2.i(new bv1(zu1Var2, null));
                                    break;
                                default:
                                    zu1 zu1Var3 = zu1Var;
                                    Throwable th = (Throwable) obj;
                                    j32.e(zu1Var3, "this$0");
                                    ((eu1) zu1Var3.f()).q(R.string.logout_failed_msg);
                                    zu1Var3.k.b(true);
                                    vd5.u(j32.j("failed logging out: ", th), "UserData");
                                    j32.d(th, "it");
                                    wt2.j(th);
                                    break;
                            }
                        }
                    }, new xc0() { // from class: com.shabakaty.downloader.yu1
                        @Override // com.shabakaty.downloader.xc0
                        public final void accept(Object obj) {
                            switch (i3) {
                                case 0:
                                    zu1 zu1Var2 = zu1Var;
                                    j32.e(zu1Var2, "this$0");
                                    zu1Var2.k.b(false);
                                    vd5.u("logged out successfully", "UserData");
                                    zu1Var2.i(new bv1(zu1Var2, null));
                                    break;
                                default:
                                    zu1 zu1Var3 = zu1Var;
                                    Throwable th = (Throwable) obj;
                                    j32.e(zu1Var3, "this$0");
                                    ((eu1) zu1Var3.f()).q(R.string.logout_failed_msg);
                                    zu1Var3.k.b(true);
                                    vd5.u(j32.j("failed logging out: ", th), "UserData");
                                    j32.d(th, "it");
                                    wt2.j(th);
                                    break;
                            }
                        }
                    });
                    f74VarD.a(zc0Var);
                    tp6.a(zc0Var, zu1Var.b);
                }
                zi2.i(jg3Var.c2().d);
                dialogInterface.cancel();
                break;
            case 2:
                jb jbVar = (jb) this.s;
                int i5 = jb.x;
                j32.e(jbVar, "this$0");
                rb rbVarC2 = jbVar.c2();
                ((l92) rbVarC2.i(new qb(rbVarC2, null))).x(false, true, new mb(jbVar));
                dialogInterface.cancel();
                break;
            case 3:
                vg4 vg4Var = (vg4) this.s;
                int i6 = vg4.x;
                j32.e(vg4Var, "this$0");
                ih4 ih4VarC2 = vg4Var.c2();
                e92 e92VarI = ih4VarC2.i(new bh4(ih4VarC2, null));
                vl2 vl2Var = wl2.a;
                zg4 zg4Var = new zg4(vg4Var);
                j32.e(vl2Var, "context");
                ((l92) e92VarI).x(false, true, new ug4(vl2Var, zg4Var));
                dialogInterface.cancel();
                break;
            default:
                DownloadActionsHandlerScope downloadActionsHandlerScope = (DownloadActionsHandlerScope) this.s;
                j32.e(downloadActionsHandlerScope, "this$0");
                nh3.y(downloadActionsHandlerScope.g(), null, 0, new gv0(downloadActionsHandlerScope, null), 3, null);
                break;
        }
    }
}
