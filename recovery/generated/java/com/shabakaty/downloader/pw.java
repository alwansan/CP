package com.shabakaty.downloader;

import android.content.Context;
import android.content.Intent;
import com.shabakaty.cinemana.helpers.casting.DLNAControllerService;
import com.shabakaty.cinemana.ui.home_activity.CastButton;

/* JADX INFO: compiled from: CastButton.kt */
/* JADX INFO: loaded from: classes.dex */
@pm0(c = "com.shabakaty.cinemana.ui.home_activity.CastButton$initCast$3", f = "CastButton.kt", l = {}, m = "invokeSuspend")
public final class pw extends ui4 implements hn1<se0, ud0<? super qv4>, Object> {
    public /* synthetic */ Object v;
    public final /* synthetic */ CastButton w;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pw(CastButton castButton, ud0<? super pw> ud0Var) {
        super(2, ud0Var);
        this.w = castButton;
    }

    @Override // com.shabakaty.downloader.hn1
    public Object o(se0 se0Var, ud0<? super qv4> ud0Var) {
        pw pwVar = new pw(this.w, ud0Var);
        pwVar.v = se0Var;
        qv4 qv4Var = qv4.a;
        pwVar.t(qv4Var);
        return qv4Var;
    }

    @Override // com.shabakaty.downloader.bj
    public final ud0<qv4> r(Object obj, ud0<?> ud0Var) {
        pw pwVar = new pw(this.w, ud0Var);
        pwVar.v = obj;
        return pwVar;
    }

    @Override // com.shabakaty.downloader.bj
    public final Object t(Object obj) {
        Context applicationContext;
        j96.i(obj);
        if (nh3.t((se0) this.v)) {
            Context context = this.w.getContext();
            if (context != null && (applicationContext = context.getApplicationContext()) != null) {
                applicationContext.startService(new Intent(this.w.getContext(), (Class<?>) DLNAControllerService.class));
            }
            CastButton castButton = this.w;
            castButton.setOnClickListener(new ck(castButton));
        }
        return qv4.a;
    }
}
