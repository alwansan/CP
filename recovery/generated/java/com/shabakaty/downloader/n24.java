package com.shabakaty.downloader;

import com.connectsdk.R;
import com.shabakaty.cinemana.ca1.Ui8;
import com.shabakaty.cinemana.data.db.settings.AppSettingsEntity;
import com.shabakaty.cinemana.data.db.settings.FilterSettingsEntity;
import com.shabakaty.cinemana.data.db.settings.SettingsEntity;
import com.shabakaty.usermanagement.UserManagement;
import java.util.Objects;
import zendesk.support.request.CellBase;

/* JADX INFO: compiled from: Settings.kt */
/* JADX INFO: loaded from: classes.dex */
public final class n24 {
    public final n34 a;
    public final UserManagement b;
    public final ff3 c;
    public final pc d;
    public e92 e;
    public boolean f;
    public final dw2<SettingsEntity> g;
    public final gc4<SettingsEntity> h;
    public final te1<tx4> i;

    /* JADX INFO: compiled from: Settings.kt */
    @pm0(c = "com.shabakaty.cinemana.utils.user.Settings", f = "Settings.kt", l = {R.styleable.AppCompatTheme_ratingBarStyle, R.styleable.AppCompatTheme_seekBarStyle}, m = "fillGuestSettingsFromUser")
    public static final class a extends xd0 {
        public Object u;
        public /* synthetic */ Object v;
        public int x;

        public a(ud0<? super a> ud0Var) {
            super(ud0Var);
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            this.v = obj;
            this.x |= CellBase.GROUP_ID_SYSTEM_MESSAGE;
            return n24.this.b(this);
        }
    }

    /* JADX INFO: compiled from: Settings.kt */
    @pm0(c = "com.shabakaty.cinemana.utils.user.Settings", f = "Settings.kt", l = {R.styleable.AppCompatTheme_listPopupWindowStyle}, m = "logout")
    public static final class b extends xd0 {
        public Object u;
        public /* synthetic */ Object v;
        public int x;

        public b(ud0<? super b> ud0Var) {
            super(ud0Var);
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            this.v = obj;
            this.x |= CellBase.GROUP_ID_SYSTEM_MESSAGE;
            return n24.this.j(this);
        }
    }

    /* JADX INFO: compiled from: Settings.kt */
    @pm0(c = "com.shabakaty.cinemana.utils.user.Settings$logout$2", f = "Settings.kt", l = {R.styleable.AppCompatTheme_listPreferredItemHeightLarge, R.styleable.AppCompatTheme_listPreferredItemHeightSmall}, m = "invokeSuspend")
    public static final class c extends ui4 implements hn1<se0, ud0<? super qv4>, Object> {
        public int v;

        public c(ud0<? super c> ud0Var) {
            super(2, ud0Var);
        }

        @Override // com.shabakaty.downloader.hn1
        public Object o(se0 se0Var, ud0<? super qv4> ud0Var) {
            return n24.this.new c(ud0Var).t(qv4.a);
        }

        @Override // com.shabakaty.downloader.bj
        public final ud0<qv4> r(Object obj, ud0<?> ud0Var) {
            return n24.this.new c(ud0Var);
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            te0 te0Var = te0.COROUTINE_SUSPENDED;
            int i = this.v;
            if (i != 0) {
                if (i == 1) {
                    j96.i(obj);
                } else {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    j96.i(obj);
                }
                return qv4.a;
            }
            j96.i(obj);
            this.v = 1;
            if (rm3.f(2000L, this) == te0Var) {
                return te0Var;
            }
            n24 n24Var = n24.this;
            this.v = 2;
            if (n24Var.k(this) == te0Var) {
                return te0Var;
            }
            return qv4.a;
        }
    }

    /* JADX INFO: compiled from: Settings.kt */
    @pm0(c = "com.shabakaty.cinemana.utils.user.Settings", f = "Settings.kt", l = {R.styleable.AppCompatTheme_panelBackground, R.styleable.AppCompatTheme_panelMenuListTheme}, m = "notifyChanges")
    public static final class d extends xd0 {
        public Object u;
        public /* synthetic */ Object v;
        public int x;

        public d(ud0<? super d> ud0Var) {
            super(ud0Var);
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            this.v = obj;
            this.x |= CellBase.GROUP_ID_SYSTEM_MESSAGE;
            return n24.this.k(this);
        }
    }

    /* JADX INFO: compiled from: Settings.kt */
    @pm0(c = "com.shabakaty.cinemana.utils.user.Settings", f = "Settings.kt", l = {152}, m = "sendData")
    public static final class e extends xd0 {
        public Object u;
        public /* synthetic */ Object v;
        public int x;

        public e(ud0<? super e> ud0Var) {
            super(ud0Var);
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            this.v = obj;
            this.x |= CellBase.GROUP_ID_SYSTEM_MESSAGE;
            return n24.this.l(this);
        }
    }

    /* JADX INFO: compiled from: SafeCollector.common.kt */
    public static final class f implements te1<tx4> {
        public final /* synthetic */ te1 r;

        /* JADX INFO: compiled from: Collect.kt */
        public static final class a implements ue1<SettingsEntity> {
            public final /* synthetic */ ue1 r;

            /* JADX INFO: renamed from: com.shabakaty.downloader.n24$f$a$a, reason: collision with other inner class name */
            @pm0(c = "com.shabakaty.cinemana.utils.user.Settings$special$$inlined$map$1$2", f = "Settings.kt", l = {135}, m = "emit")
            public static final class C0169a extends xd0 {
                public /* synthetic */ Object u;
                public int v;

                public C0169a(ud0 ud0Var) {
                    super(ud0Var);
                }

                @Override // com.shabakaty.downloader.bj
                public final Object t(Object obj) {
                    this.u = obj;
                    this.v |= CellBase.GROUP_ID_SYSTEM_MESSAGE;
                    return a.this.b(null, this);
                }
            }

            public a(ue1 ue1Var, f fVar) {
                this.r = ue1Var;
            }

            /* JADX WARN: Code duplicated, block: B:7:0x0013  */
            @Override // com.shabakaty.downloader.ue1
            public Object b(Object obj, ud0 ud0Var) {
                C0169a c0169a;
                if (ud0Var instanceof C0169a) {
                    c0169a = (C0169a) ud0Var;
                    int i = c0169a.v;
                    if ((i & CellBase.GROUP_ID_SYSTEM_MESSAGE) != 0) {
                        c0169a.v = i - CellBase.GROUP_ID_SYSTEM_MESSAGE;
                    } else {
                        c0169a = new C0169a(ud0Var);
                    }
                } else {
                    c0169a = new C0169a(ud0Var);
                }
                Object obj2 = c0169a.u;
                te0 te0Var = te0.COROUTINE_SUSPENDED;
                int i2 = c0169a.v;
                if (i2 == 0) {
                    j96.i(obj2);
                    ue1 ue1Var = this.r;
                    tx4 tx4Var = ((SettingsEntity) obj).appSettings.language;
                    c0169a.v = 1;
                    if (ue1Var.b(tx4Var, c0169a) == te0Var) {
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

        public f(te1 te1Var) {
            this.r = te1Var;
        }

        @Override // com.shabakaty.downloader.te1
        public Object d(ue1<? super tx4> ue1Var, ud0 ud0Var) {
            Object objD = this.r.d(new a(ue1Var, this), ud0Var);
            return objD == te0.COROUTINE_SUSPENDED ? objD : qv4.a;
        }
    }

    /* JADX INFO: compiled from: Settings.kt */
    @pm0(c = "com.shabakaty.cinemana.utils.user.Settings", f = "Settings.kt", l = {141}, m = "stageParentalLevel")
    public static final class g extends xd0 {
        public Object u;
        public /* synthetic */ Object v;
        public int x;

        public g(ud0<? super g> ud0Var) {
            super(ud0Var);
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            this.v = obj;
            this.x |= CellBase.GROUP_ID_SYSTEM_MESSAGE;
            return n24.this.p(null, this);
        }
    }

    /* JADX INFO: compiled from: Settings.kt */
    @pm0(c = "com.shabakaty.cinemana.utils.user.Settings", f = "Settings.kt", l = {146}, m = "stageShowContentWithNoSubtitles")
    public static final class h extends xd0 {
        public Object u;
        public /* synthetic */ Object v;
        public int x;

        public h(ud0<? super h> ud0Var) {
            super(ud0Var);
        }

        @Override // com.shabakaty.downloader.bj
        public final Object t(Object obj) {
            this.v = obj;
            this.x |= CellBase.GROUP_ID_SYSTEM_MESSAGE;
            return n24.this.q(false, this);
        }
    }

    public n24(n34 n34Var, UserManagement userManagement, ff3 ff3Var, pc pcVar) {
        j32.e(n34Var, "settingsUseCases");
        j32.e(userManagement, "userManagement");
        j32.e(ff3Var, "prefsManager");
        j32.e(pcVar, "applicationScope");
        this.a = n34Var;
        this.b = userManagement;
        this.c = ff3Var;
        this.d = pcVar;
        dw2<SettingsEntity> dw2VarA = ic4.a(new SettingsEntity(h(), null, null, null, 14));
        this.g = dw2VarA;
        this.h = dw2VarA;
        this.i = new f(dw2VarA);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public static final Object a(n24 n24Var, ud0 ud0Var) {
        k24 k24Var;
        Objects.requireNonNull(n24Var);
        if (ud0Var instanceof k24) {
            k24Var = (k24) ud0Var;
            int i = k24Var.x;
            if ((i & CellBase.GROUP_ID_SYSTEM_MESSAGE) != 0) {
                k24Var.x = i - CellBase.GROUP_ID_SYSTEM_MESSAGE;
            } else {
                k24Var = new k24(n24Var, ud0Var);
            }
        } else {
            k24Var = new k24(n24Var, ud0Var);
        }
        Object objG = k24Var.v;
        te0 te0Var = te0.COROUTINE_SUSPENDED;
        int i2 = k24Var.x;
        if (i2 == 0) {
            j96.i(objG);
            n34 n34Var = n24Var.a;
            l24 l24Var = new l24(n24Var);
            k24Var.u = n24Var;
            k24Var.x = 1;
            Objects.requireNonNull(n34Var);
            objG = j96.g(new b44(n34Var, l24Var, null), k24Var);
            if (objG == te0Var) {
                return te0Var;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            n24Var = (n24) k24Var.u;
            j96.i(objG);
        }
        return new bf1((te1) objG, new m24(n24Var, null));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(ud0<? super qv4> ud0Var) {
        a aVar;
        n24 n24Var;
        if (ud0Var instanceof a) {
            aVar = (a) ud0Var;
            int i = aVar.x;
            if ((i & CellBase.GROUP_ID_SYSTEM_MESSAGE) != 0) {
                aVar.x = i - CellBase.GROUP_ID_SYSTEM_MESSAGE;
            } else {
                aVar = new a(ud0Var);
            }
        } else {
            aVar = new a(ud0Var);
        }
        Object objG = aVar.v;
        te0 te0Var = te0.COROUTINE_SUSPENDED;
        int i2 = aVar.x;
        if (i2 != 0) {
            if (i2 == 1) {
                n24Var = (n24) aVar.u;
                j96.i(objG);
            } else {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                j96.i(objG);
            }
            return qv4.a;
        }
        j96.i(objG);
        n34 n34Var = this.a;
        String strH = h();
        aVar.u = this;
        aVar.x = 1;
        Objects.requireNonNull(n34Var);
        objG = j96.g(new o34(n34Var, strH, null), aVar);
        if (objG == te0Var) {
            return te0Var;
        }
        n24Var = this;
        SettingsEntity settingsEntity = (SettingsEntity) objG;
        if (settingsEntity != null) {
            settingsEntity.userId = "-_GUEST_-";
            FilterSettingsEntity filterSettingsEntity = settingsEntity.filterSettings;
            if (filterSettingsEntity.parentalLevel instanceof ia3.a) {
                filterSettingsEntity.parentalLevel = ia3.b.d;
            }
            n34 n34Var2 = n24Var.a;
            aVar.u = null;
            aVar.x = 2;
            Objects.requireNonNull(n34Var2);
            Object objG2 = j96.g(new e44(n34Var2, settingsEntity, null), aVar);
            if (objG2 != te0Var) {
                objG2 = qv4.a;
            }
            if (objG2 == te0Var) {
                return te0Var;
            }
        }
        return qv4.a;
    }

    public final AppSettingsEntity c() {
        return this.h.getValue().appSettings;
    }

    public final FilterSettingsEntity d() {
        return this.h.getValue().filterSettings;
    }

    public final ia3 e() {
        return d().parentalLevel;
    }

    public final boolean f() {
        return d().skipInAppropriateScenes;
    }

    public final pg4 g() {
        return this.h.getValue().subtitlesSettings;
    }

    public final String h() {
        return this.b.isLoggedIn() ? this.b.getUserId() : "-_GUEST_-";
    }

    public final boolean i() {
        return j32.a(c().language, tx4.b.b);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object j(ud0<? super qv4> ud0Var) {
        b bVar;
        n24 n24Var;
        if (ud0Var instanceof b) {
            bVar = (b) ud0Var;
            int i = bVar.x;
            if ((i & CellBase.GROUP_ID_SYSTEM_MESSAGE) != 0) {
                bVar.x = i - CellBase.GROUP_ID_SYSTEM_MESSAGE;
            } else {
                bVar = new b(ud0Var);
            }
        } else {
            bVar = new b(ud0Var);
        }
        Object obj = bVar.v;
        te0 te0Var = te0.COROUTINE_SUSPENDED;
        int i2 = bVar.x;
        if (i2 == 0) {
            j96.i(obj);
            bVar.u = this;
            bVar.x = 1;
            if (b(bVar) == te0Var) {
                return te0Var;
            }
            n24Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            n24Var = (n24) bVar.u;
            j96.i(obj);
        }
        nh3.y(n24Var.d, null, 0, n24Var.new c(null), 3, null);
        return qv4.a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object k(ud0<? super qv4> ud0Var) {
        d dVar;
        n24 n24Var;
        if (ud0Var instanceof d) {
            dVar = (d) ud0Var;
            int i = dVar.x;
            if ((i & CellBase.GROUP_ID_SYSTEM_MESSAGE) != 0) {
                dVar.x = i - CellBase.GROUP_ID_SYSTEM_MESSAGE;
            } else {
                dVar = new d(ud0Var);
            }
        } else {
            dVar = new d(ud0Var);
        }
        Object objG = dVar.v;
        te0 te0Var = te0.COROUTINE_SUSPENDED;
        int i2 = dVar.x;
        if (i2 != 0) {
            if (i2 == 1) {
                n24Var = (n24) dVar.u;
                j96.i(objG);
            } else {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                j96.i(objG);
            }
            return qv4.a;
        }
        j96.i(objG);
        n34 n34Var = this.a;
        String strH = h();
        dVar.u = this;
        dVar.x = 1;
        Objects.requireNonNull(n34Var);
        objG = j96.g(new o34(n34Var, strH, null), dVar);
        if (objG == te0Var) {
            return te0Var;
        }
        n24Var = this;
        SettingsEntity settingsEntity = (SettingsEntity) objG;
        if (settingsEntity != null) {
            n34 n34Var2 = n24Var.a;
            dVar.u = null;
            dVar.x = 2;
            Objects.requireNonNull(n34Var2);
            Object objG2 = j96.g(new e44(n34Var2, settingsEntity, null), dVar);
            if (objG2 != te0Var) {
                objG2 = qv4.a;
            }
            if (objG2 == te0Var) {
                return te0Var;
            }
        }
        return qv4.a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object l(ud0<? super qv4> ud0Var) {
        e eVar;
        n24 n24Var;
        if (ud0Var instanceof e) {
            eVar = (e) ud0Var;
            int i = eVar.x;
            if ((i & CellBase.GROUP_ID_SYSTEM_MESSAGE) != 0) {
                eVar.x = i - CellBase.GROUP_ID_SYSTEM_MESSAGE;
            } else {
                eVar = new e(ud0Var);
            }
        } else {
            eVar = new e(ud0Var);
        }
        Object obj = eVar.v;
        te0 te0Var = te0.COROUTINE_SUSPENDED;
        int i2 = eVar.x;
        if (i2 == 0) {
            j96.i(obj);
            if (this.f && !j32.a(h(), "-_GUEST_-")) {
                n34 n34Var = this.a;
                SettingsEntity value = this.h.getValue();
                eVar.u = this;
                eVar.x = 1;
                Objects.requireNonNull(n34Var);
                if (j96.g(new p34(value, n34Var, null), eVar) == te0Var) {
                    return te0Var;
                }
            }
            n24Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            n24Var = (n24) eVar.u;
            j96.i(obj);
        }
        n24Var.f = false;
        return qv4.a;
    }

    public final Object m(int i, ud0<? super qv4> ud0Var) {
        n34 n34Var = this.a;
        String strH = h();
        Objects.requireNonNull(n34Var);
        Object objG = j96.g(new v34(n34Var, i, strH, null), ud0Var);
        te0 te0Var = te0.COROUTINE_SUSPENDED;
        if (objG != te0Var) {
            objG = qv4.a;
        }
        return objG == te0Var ? objG : qv4.a;
    }

    public final Object n(boolean z, ud0<? super qv4> ud0Var) {
        n34 n34Var = this.a;
        String strH = h();
        Objects.requireNonNull(n34Var);
        Object objG = j96.g(new x34(n34Var, z, strH, null), ud0Var);
        te0 te0Var = te0.COROUTINE_SUSPENDED;
        if (objG != te0Var) {
            objG = qv4.a;
        }
        return objG == te0Var ? objG : qv4.a;
    }

    public final Object o(hg4 hg4Var, ud0<? super qv4> ud0Var) {
        Ui8.saveNative(this, hg4Var);
        n34 n34Var = this.a;
        String strH = h();
        Objects.requireNonNull(n34Var);
        Object objG = j96.g(new z34(n34Var, hg4Var, strH, null), ud0Var);
        te0 te0Var = te0.COROUTINE_SUSPENDED;
        if (objG != te0Var) {
            objG = qv4.a;
        }
        return objG == te0Var ? objG : qv4.a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object p(ia3 ia3Var, ud0<? super qv4> ud0Var) {
        g gVar;
        n24 n24Var;
        if (ud0Var instanceof g) {
            gVar = (g) ud0Var;
            int i = gVar.x;
            if ((i & CellBase.GROUP_ID_SYSTEM_MESSAGE) != 0) {
                gVar.x = i - CellBase.GROUP_ID_SYSTEM_MESSAGE;
            } else {
                gVar = new g(ud0Var);
            }
        } else {
            gVar = new g(ud0Var);
        }
        Object obj = gVar.v;
        Object obj2 = te0.COROUTINE_SUSPENDED;
        int i2 = gVar.x;
        if (i2 == 0) {
            j96.i(obj);
            n34 n34Var = this.a;
            String strH = h();
            gVar.u = this;
            gVar.x = 1;
            Objects.requireNonNull(n34Var);
            Object objG = j96.g(new d44(n34Var, ia3Var, strH, null), gVar);
            if (objG != obj2) {
                objG = qv4.a;
            }
            if (objG == obj2) {
                return obj2;
            }
            n24Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            n24Var = (n24) gVar.u;
            j96.i(obj);
        }
        n24Var.f = true;
        return qv4.a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object q(boolean z, ud0<? super qv4> ud0Var) {
        h hVar;
        n24 n24Var;
        if (ud0Var instanceof h) {
            hVar = (h) ud0Var;
            int i = hVar.x;
            if ((i & CellBase.GROUP_ID_SYSTEM_MESSAGE) != 0) {
                hVar.x = i - CellBase.GROUP_ID_SYSTEM_MESSAGE;
            } else {
                hVar = new h(ud0Var);
            }
        } else {
            hVar = new h(ud0Var);
        }
        Object obj = hVar.v;
        Object obj2 = te0.COROUTINE_SUSPENDED;
        int i2 = hVar.x;
        if (i2 == 0) {
            j96.i(obj);
            n34 n34Var = this.a;
            String strH = h();
            hVar.u = this;
            hVar.x = 1;
            Objects.requireNonNull(n34Var);
            Object objG = j96.g(new f44(n34Var, z, strH, null), hVar);
            if (objG != obj2) {
                objG = qv4.a;
            }
            if (objG == obj2) {
                return obj2;
            }
            n24Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            n24Var = (n24) hVar.u;
            j96.i(obj);
        }
        n24Var.f = true;
        return qv4.a;
    }
}
