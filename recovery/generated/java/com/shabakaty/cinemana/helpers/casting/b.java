package com.shabakaty.cinemana.helpers.casting;

import com.shabakaty.downloader.hn1;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.j96;
import com.shabakaty.downloader.pm0;
import com.shabakaty.downloader.qv4;
import com.shabakaty.downloader.se0;
import com.shabakaty.downloader.u2;
import com.shabakaty.downloader.ud0;
import com.shabakaty.downloader.ui4;

/* JADX INFO: compiled from: DLNAControlsActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@pm0(c = "com.shabakaty.cinemana.helpers.casting.DLNAControlsActivity$onDlnaNotificationEvent$1$onSuccess$1", f = "DLNAControlsActivity.kt", l = {}, m = "invokeSuspend")
public final class b extends ui4 implements hn1<se0, ud0<? super qv4>, Object> {
    public final /* synthetic */ DLNAControlsActivity v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(DLNAControlsActivity dLNAControlsActivity, ud0<? super b> ud0Var) {
        super(2, ud0Var);
        this.v = dLNAControlsActivity;
    }

    @Override // com.shabakaty.downloader.hn1
    public Object o(se0 se0Var, ud0<? super qv4> ud0Var) {
        DLNAControlsActivity dLNAControlsActivity = this.v;
        new b(dLNAControlsActivity, ud0Var);
        qv4 qv4Var = qv4.a;
        j96.i(qv4Var);
        T t = dLNAControlsActivity.t;
        j32.c(t);
        ((u2) t).S.setMax(100);
        return qv4Var;
    }

    @Override // com.shabakaty.downloader.bj
    public final ud0<qv4> r(Object obj, ud0<?> ud0Var) {
        return new b(this.v, ud0Var);
    }

    @Override // com.shabakaty.downloader.bj
    public final Object t(Object obj) {
        j96.i(obj);
        T t = this.v.t;
        j32.c(t);
        ((u2) t).S.setMax(100);
        return qv4.a;
    }
}
