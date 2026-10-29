package com.shabakaty.downloader;

import com.connectsdk.service.DLNAService;
import com.connectsdk.service.capability.MediaControl;
import com.shabakaty.cinemana.CinemanaApplication;
import com.shabakaty.cinemana.helpers.casting.DLNAControllerService;
import com.shabakaty.cinemana.helpers.casting.DLNAControlsActivity;
import com.shabakaty.cinemana.ui.home_activity.CastButton;
import com.shabakaty.usermanagement.utils.LoginState;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f00 implements xc0 {
    public final /* synthetic */ int r = 0;
    public final /* synthetic */ Object s;

    public /* synthetic */ f00(CinemanaApplication cinemanaApplication) {
        this.s = cinemanaApplication;
    }

    public /* synthetic */ f00(DLNAControllerService dLNAControllerService) {
        this.s = dLNAControllerService;
    }

    public /* synthetic */ f00(DLNAControlsActivity dLNAControlsActivity) {
        this.s = dLNAControlsActivity;
    }

    public /* synthetic */ f00(CastButton castButton) {
        this.s = castButton;
    }

    public /* synthetic */ f00(by0 by0Var) {
        this.s = by0Var;
    }

    public /* synthetic */ f00(rm1 rm1Var) {
        this.s = rm1Var;
    }

    public /* synthetic */ f00(tm1 tm1Var) {
        this.s = tm1Var;
    }

    @Override // com.shabakaty.downloader.xc0
    public final void accept(Object obj) {
        int i = 1;
        switch (this.r) {
            case 0:
                CinemanaApplication cinemanaApplication = (CinemanaApplication) this.s;
                LoginState loginState = (LoginState) obj;
                int i2 = CinemanaApplication.B;
                j32.e(cinemanaApplication, "this$0");
                if (loginState == LoginState.ZOMBIE) {
                    cinemanaApplication.j().logout().m(ay3.c).a(new zc0(do1.d, do1.e));
                }
                break;
            case 1:
                DLNAControllerService dLNAControllerService = (DLNAControllerService) this.s;
                DLNAControllerService dLNAControllerService2 = DLNAControllerService.G;
                j32.e(dLNAControllerService, "this$0");
                if (d15.A || DLNAControllerService.H) {
                    j51.b().i(new zw(Boolean.TRUE, 0));
                } else {
                    j51.b().i(new zw(Boolean.FALSE, 0));
                }
                j51.b().i(new tu0(tu0.f, dLNAControllerService.u));
                break;
            case 2:
                DLNAControlsActivity dLNAControlsActivity = (DLNAControlsActivity) this.s;
                int i3 = DLNAControlsActivity.E;
                j32.e(dLNAControlsActivity, "this$0");
                DLNAService dLNAService = DLNAControllerService.c().u;
                dLNAControlsActivity.B = dLNAService != null ? dLNAService.getMediaControl() : null;
                new Thread(new bi0(dLNAControlsActivity, i)).start();
                MediaControl mediaControl = dLNAControlsActivity.B;
                if (mediaControl != null) {
                    mediaControl.getPosition(new ii0(dLNAControlsActivity));
                    break;
                }
                break;
            case 3:
                rm1 rm1Var = (rm1) this.s;
                Throwable th = (Throwable) obj;
                j32.e(rm1Var, "$onError");
                j32.d(th, "it");
                wt2.j(th);
                rm1Var.invoke();
                break;
            case 4:
                tm1 tm1Var = (tm1) this.s;
                j32.e(tm1Var, "$onSuccess");
                T t = ((tj) obj).b;
                j32.c(t);
                tm1Var.invoke(t);
                break;
            case 5:
                CastButton castButton = (CastButton) this.s;
                int i4 = CastButton.z;
                j32.e(castButton, "this$0");
                castButton.u.M.setEnabled(true);
                castButton.u.M.p();
                mu0 mu0Var = castButton.x;
                if (mu0Var != null) {
                    mu0Var.h();
                }
                castButton.x = null;
                break;
            default:
                by0 by0Var = (by0) this.s;
                j32.e(by0Var, "this$0");
                by0Var.h.postValue((List) obj);
                break;
        }
    }
}
