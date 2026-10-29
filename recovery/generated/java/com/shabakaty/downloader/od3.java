package com.shabakaty.downloader;

import com.cinemana.pro.R;

/* JADX INFO: compiled from: PlayerBottomSheetController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class od3 extends af2 implements tm1<Boolean, qv4> {
    public final /* synthetic */ ed3 r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public od3(ed3 ed3Var) {
        super(1);
        this.r = ed3Var;
    }

    @Override // com.shabakaty.downloader.tm1
    public qv4 invoke(Boolean bool) {
        if (bool.booleanValue()) {
            sd3 sd3Var = this.r.d;
            if (sd3Var != null) {
                sd3Var.o(R.string.on, "yes");
            }
        } else {
            sd3 sd3Var2 = this.r.d;
            if (sd3Var2 != null) {
                sd3Var2.o(R.string.off, "no");
            }
        }
        return qv4.a;
    }
}
