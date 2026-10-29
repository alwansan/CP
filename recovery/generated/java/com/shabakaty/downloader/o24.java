package com.shabakaty.downloader;

import com.connectsdk.R;
import java.util.Objects;

/* JADX INFO: compiled from: Settings.kt */
/* JADX INFO: loaded from: classes.dex */
@pm0(c = "com.shabakaty.cinemana.utils.user.Settings$sync$1", f = "Settings.kt", l = {R.styleable.AppCompatTheme_colorError}, m = "invokeSuspend")
public final class o24 extends ui4 implements hn1<se0, ud0<? super qv4>, Object> {
    public int v;
    public final /* synthetic */ n24 w;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o24(n24 n24Var, ud0<? super o24> ud0Var) {
        super(2, ud0Var);
        this.w = n24Var;
    }

    @Override // com.shabakaty.downloader.hn1
    public Object o(se0 se0Var, ud0<? super qv4> ud0Var) {
        return new o24(this.w, ud0Var).t(qv4.a);
    }

    @Override // com.shabakaty.downloader.bj
    public final ud0<qv4> r(Object obj, ud0<?> ud0Var) {
        return new o24(this.w, ud0Var);
    }

    @Override // com.shabakaty.downloader.bj
    public final Object t(Object obj) {
        Object obj2 = te0.COROUTINE_SUSPENDED;
        int i = this.v;
        if (i == 0) {
            j96.i(obj);
            n24 n24Var = this.w;
            n34 n34Var = n24Var.a;
            String strH = n24Var.h();
            this.v = 1;
            Objects.requireNonNull(n34Var);
            Object objG = j96.g(new c44(strH, n34Var, null), this);
            if (objG != obj2) {
                objG = qv4.a;
            }
            if (objG == obj2) {
                return obj2;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            j96.i(obj);
        }
        n24 n24Var2 = this.w;
        e92 e92Var = n24Var2.e;
        if (e92Var != null) {
            bp.e(e92Var, null, 1, null);
            e92Var.b(null);
        }
        n24Var2.e = nh3.y(n24Var2.d, null, 0, new j24(n24Var2, null), 3, null);
        return qv4.a;
    }
}
