package com.shabakaty.downloader;

/* JADX INFO: compiled from: ContinuationImpl.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class xd0 extends bj {
    public final me0 s;
    public transient ud0<Object> t;

    public xd0(ud0<Object> ud0Var, me0 me0Var) {
        super(ud0Var);
        this.s = me0Var;
    }

    @Override // com.shabakaty.downloader.ud0
    public me0 a() {
        me0 me0Var = this.s;
        j32.c(me0Var);
        return me0Var;
    }

    @Override // com.shabakaty.downloader.bj
    public void v() {
        ud0<?> ud0Var = this.t;
        if (ud0Var != null && ud0Var != this) {
            me0 me0VarA = a();
            int i = yd0.e;
            me0.b bVar = me0VarA.get(yd0.a.r);
            j32.c(bVar);
            ((yd0) bVar).w(ud0Var);
        }
        this.t = h80.r;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xd0(ud0<Object> ud0Var) {
        super(ud0Var);
        me0 me0VarA = ud0Var == null ? null : ud0Var.a();
        this.s = me0VarA;
    }
}
