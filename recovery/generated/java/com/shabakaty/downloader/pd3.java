package com.shabakaty.downloader;

/* JADX INFO: compiled from: PlayerBottomSheetController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class pd3 extends af2 implements tm1<Boolean, qv4> {
    public final /* synthetic */ ed3 r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pd3(ed3 ed3Var) {
        super(1);
        this.r = ed3Var;
    }

    @Override // com.shabakaty.downloader.tm1
    public qv4 invoke(Boolean bool) {
        boolean zBooleanValue = bool.booleanValue();
        sd3 sd3Var = this.r.d;
        if (sd3Var != null) {
            sd3Var.p(zBooleanValue);
        }
        return qv4.a;
    }
}
