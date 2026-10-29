package com.shabakaty.downloader;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import com.shabakaty.cinemana.data.db.downloads.CinemanaDownloadItem;
import com.shabakaty.cinemana.helpers.casting.DLNAControllerService;
import com.shabakaty.cinemana.helpers.casting.DLNAControlsActivity;
import com.shabakaty.cinemana.ui.qr_login.QrLoginActivity;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class qh0 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int r = 0;
    public final /* synthetic */ Object s;
    public final /* synthetic */ Object t;

    public /* synthetic */ qh0(Activity activity, DLNAControllerService dLNAControllerService) {
        this.s = activity;
        this.t = dLNAControllerService;
    }

    public /* synthetic */ qh0(QrLoginActivity qrLoginActivity, String str) {
        this.s = qrLoginActivity;
        this.t = str;
    }

    public /* synthetic */ qh0(bx0 bx0Var, CinemanaDownloadItem cinemanaDownloadItem) {
        this.s = bx0Var;
        this.t = cinemanaDownloadItem;
    }

    public /* synthetic */ qh0(ew0 ew0Var, gz0 gz0Var) {
        this.s = ew0Var;
        this.t = gz0Var;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        switch (this.r) {
            case 0:
                Activity activity = (Activity) this.s;
                DLNAControllerService dLNAControllerService = (DLNAControllerService) this.t;
                DLNAControllerService dLNAControllerService2 = DLNAControllerService.G;
                j32.e(activity, "$activity");
                j32.e(dLNAControllerService, "this$0");
                Intent intent = new Intent(activity, (Class<?>) DLNAControlsActivity.class);
                intent.setFlags(268435456);
                intent.putExtra("VideoModelArg", dLNAControllerService.x);
                intent.putExtra("VideoModelArg", dLNAControllerService.x);
                intent.putExtra("VIDEO_URL", dLNAControllerService.z);
                activity.startActivity(intent);
                break;
            case 1:
                ew0 ew0Var = (ew0) this.s;
                gz0 gz0Var = (gz0) this.t;
                int i2 = ew0.x;
                j32.e(ew0Var, "this$0");
                j32.e(gz0Var, "$downloadsCollectionItem");
                jz0 jz0VarC2 = ew0Var.c2();
                nh3.y(jz0VarC2.e(), null, 0, new iz0(jz0VarC2, gz0Var, null), 3, null);
                break;
            case 2:
                bx0 bx0Var = (bx0) this.s;
                CinemanaDownloadItem cinemanaDownloadItem = (CinemanaDownloadItem) this.t;
                int i3 = bx0.z;
                j32.e(bx0Var, "this$0");
                j32.e(cinemanaDownloadItem, "$cinemanaDownloadItem");
                nh3.y(wt2.e(bx0Var), null, 0, new hx0(bx0Var, cinemanaDownloadItem, null), 3, null);
                break;
            default:
                QrLoginActivity qrLoginActivity = (QrLoginActivity) this.s;
                String str = (String) this.t;
                int i4 = QrLoginActivity.v;
                j32.e(qrLoginActivity, "this$0");
                j32.e(str, "$userCode");
                qrLoginActivity.k0(str);
                dialogInterface.cancel();
                break;
        }
    }
}
