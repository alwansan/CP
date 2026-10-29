package com.shabakaty.downloader;

import android.content.DialogInterface;
import com.shabakaty.cinemana.ui.qr_login.QrLoginActivity;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ck3 implements DialogInterface.OnClickListener {
    public static final /* synthetic */ ck3 s = new ck3(0);
    public static final /* synthetic */ ck3 t = new ck3(1);
    public final /* synthetic */ int r;

    public /* synthetic */ ck3(int i) {
        this.r = i;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        switch (this.r) {
            case 0:
                int i2 = QrLoginActivity.v;
                dialogInterface.cancel();
                break;
            default:
                dialogInterface.dismiss();
                break;
        }
    }
}
