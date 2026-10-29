package com.shabakaty.downloader;

import com.shabakaty.cinemana.CinemanaApplication;
import com.shabakaty.cinemana.data.db.settings.SettingsEntity;
import zendesk.support.request.CellBase;

/* JADX INFO: compiled from: CinemanaApplication.kt */
/* JADX INFO: loaded from: classes.dex */
@pm0(c = "com.shabakaty.cinemana.CinemanaApplication$setTheme$1", f = "CinemanaApplication.kt", l = {274}, m = "invokeSuspend")
public final class m00 extends ui4 implements hn1<se0, ud0<? super qv4>, Object> {
    public int v;
    public final /* synthetic */ CinemanaApplication w;

    /* JADX INFO: compiled from: CinemanaApplication.kt */
    @pm0(c = "com.shabakaty.cinemana.CinemanaApplication$setTheme$1$2", f = "CinemanaApplication.kt", l = {}, m = "invokeSuspend")
    public static final class a extends ui4 implements hn1<ky4, ud0<? super qv4>, Object> {
        public /* synthetic */ Object v;

        public a(ud0<? super a> ud0Var) {
            super(2, ud0Var);
        }

        @Override // com.shabakaty.downloader.hn1
        public Object o(ky4 ky4Var, ud0<? super qv4> ud0Var) {
            a aVar = new a(ud0Var);
            aVar.v = ky4Var;
            qv4 qv4Var = qv4.a;
            aVar.t(qv4Var);
            return qv4Var;
        }

        @Override // com.shabakaty.downloader.bj
        public final ud0<qv4> r(Object obj, ud0<?> ud0Var) {
            a aVar = new a(ud0Var);
            aVar.v = obj;
            return aVar;
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            j96.i(obj);
            if (((ky4) this.v) instanceof ky4.b) {
                z9.z(1);
            } else {
                z9.z(2);
            }
            return qv4.a;
        }
    }

    /* JADX INFO: compiled from: SafeCollector.common.kt */
    public static final class b implements te1<ky4> {
        public final /* synthetic */ te1 r;

        /* JADX INFO: compiled from: Collect.kt */
        public static final class a implements ue1<SettingsEntity> {
            public final /* synthetic */ ue1 r;

            /* JADX INFO: renamed from: com.shabakaty.downloader.m00$b$a$a, reason: collision with other inner class name */
            @pm0(c = "com.shabakaty.cinemana.CinemanaApplication$setTheme$1$invokeSuspend$$inlined$map$1$2", f = "CinemanaApplication.kt", l = {135}, m = "emit")
            public static final class C0162a extends xd0 {
                public /* synthetic */ Object u;
                public int v;

                public C0162a(ud0 ud0Var) {
                    super(ud0Var);
                }

                @Override // com.shabakaty.downloader.bj
                public final Object t(Object obj) {
                    this.u = obj;
                    this.v |= CellBase.GROUP_ID_SYSTEM_MESSAGE;
                    return a.this.b(null, this);
                }
            }

            public a(ue1 ue1Var, b bVar) {
                this.r = ue1Var;
            }

            /* JADX WARN: Code duplicated, block: B:7:0x0013  */
            @Override // com.shabakaty.downloader.ue1
            public Object b(Object obj, ud0 ud0Var) {
                C0162a c0162a;
                if (ud0Var instanceof C0162a) {
                    c0162a = (C0162a) ud0Var;
                    int i = c0162a.v;
                    if ((i & CellBase.GROUP_ID_SYSTEM_MESSAGE) != 0) {
                        c0162a.v = i - CellBase.GROUP_ID_SYSTEM_MESSAGE;
                    } else {
                        c0162a = new C0162a(ud0Var);
                    }
                } else {
                    c0162a = new C0162a(ud0Var);
                }
                Object obj2 = c0162a.u;
                te0 te0Var = te0.COROUTINE_SUSPENDED;
                int i2 = c0162a.v;
                if (i2 == 0) {
                    j96.i(obj2);
                    ue1 ue1Var = this.r;
                    ky4 ky4Var = ((SettingsEntity) obj).appSettings.theme;
                    c0162a.v = 1;
                    if (ue1Var.b(ky4Var, c0162a) == te0Var) {
                        return te0Var;
                    }
                } else {
                    if (i2 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    j96.i(obj2);
                }
                return qv4.a;
            }
        }

        public b(te1 te1Var) {
            this.r = te1Var;
        }

        @Override // com.shabakaty.downloader.te1
        public Object d(ue1<? super ky4> ue1Var, ud0 ud0Var) {
            Object objD = this.r.d(new a(ue1Var, this), ud0Var);
            return objD == te0.COROUTINE_SUSPENDED ? objD : qv4.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m00(CinemanaApplication cinemanaApplication, ud0<? super m00> ud0Var) {
        super(2, ud0Var);
        this.w = cinemanaApplication;
    }

    @Override // com.shabakaty.downloader.hn1
    public Object o(se0 se0Var, ud0<? super qv4> ud0Var) {
        return new m00(this.w, ud0Var).t(qv4.a);
    }

    @Override // com.shabakaty.downloader.bj
    public final ud0<qv4> r(Object obj, ud0<?> ud0Var) {
        return new m00(this.w, ud0Var);
    }

    @Override // com.shabakaty.downloader.bj
    public final Object t(Object obj) {
        te0 te0Var = te0.COROUTINE_SUSPENDED;
        int i = this.v;
        if (i == 0) {
            j96.i(obj);
            n24 n24Var = this.w.y;
            if (n24Var == null) {
                j32.l("settings");
                throw null;
            }
            b bVar = new b(n24Var.h);
            a aVar = new a(null);
            this.v = 1;
            if (zy.e(bVar, aVar, this) == te0Var) {
                return te0Var;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            j96.i(obj);
        }
        return qv4.a;
    }
}
