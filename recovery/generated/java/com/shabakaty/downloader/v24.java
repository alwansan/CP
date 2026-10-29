package com.shabakaty.downloader;

import android.database.Cursor;
import android.os.CancellationSignal;
import com.shabakaty.cinemana.data.db.settings.AppSettingsEntity;
import com.shabakaty.cinemana.data.db.settings.FilterSettingsEntity;
import com.shabakaty.cinemana.data.db.settings.SettingsEntity;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: SettingsDao_Impl.java */
/* JADX INFO: loaded from: classes.dex */
public final class v24 implements u24 {
    public final vt3 a;
    public final x31<SettingsEntity> b;
    public final zl2 c = new zl2(20);
    public final xl2 d = new xl2(13);
    public final cp6 e = new cp6(6);
    public final kd f = new kd(5);
    public final wt2 g = new wt2(13);
    public final ll3 h = new ll3(14);
    public final w31<SettingsEntity> i;
    public final f54 j;
    public final f54 k;
    public final f54 l;
    public final f54 m;
    public final f54 n;
    public final f54 o;
    public final f54 p;
    public final f54 q;
    public final f54 r;
    public final f54 s;
    public final f54 t;
    public final f54 u;
    public final f54 v;

    /* JADX INFO: compiled from: SettingsDao_Impl.java */
    public class a extends f54 {
        public a(v24 v24Var, vt3 vt3Var) {
            super(vt3Var);
        }

        @Override // com.shabakaty.downloader.f54
        public String c() {
            return "UPDATE settings SET subtitles_subtitleBackgroundColor = ? WHERE userId = ?";
        }
    }

    /* JADX INFO: compiled from: SettingsDao_Impl.java */
    public class a0 extends f54 {
        public a0(v24 v24Var, vt3 vt3Var) {
            super(vt3Var);
        }

        @Override // com.shabakaty.downloader.f54
        public String c() {
            return "UPDATE settings SET filter_parentalLevel = ? WHERE userId = ?";
        }
    }

    /* JADX INFO: compiled from: SettingsDao_Impl.java */
    public class b extends f54 {
        public b(v24 v24Var, vt3 vt3Var) {
            super(vt3Var);
        }

        @Override // com.shabakaty.downloader.f54
        public String c() {
            return "UPDATE settings SET filter_skipInAppropriateScenes =?  WHERE userId = ?";
        }
    }

    /* JADX INFO: compiled from: SettingsDao_Impl.java */
    public class b0 extends f54 {
        public b0(v24 v24Var, vt3 vt3Var) {
            super(vt3Var);
        }

        @Override // com.shabakaty.downloader.f54
        public String c() {
            return "UPDATE settings SET subtitles_subtitleFontFamily = ? WHERE userId = ?";
        }
    }

    /* JADX INFO: compiled from: SettingsDao_Impl.java */
    public class c extends f54 {
        public c(v24 v24Var, vt3 vt3Var) {
            super(vt3Var);
        }

        @Override // com.shabakaty.downloader.f54
        public String c() {
            return "UPDATE settings SET app_seekPeriod =?  WHERE userId = ?";
        }
    }

    /* JADX INFO: compiled from: SettingsDao_Impl.java */
    public class c0 extends f54 {
        public c0(v24 v24Var, vt3 vt3Var) {
            super(vt3Var);
        }

        @Override // com.shabakaty.downloader.f54
        public String c() {
            return "UPDATE settings SET subtitles_subtitleFontScale = ? WHERE userId = ?";
        }
    }

    /* JADX INFO: compiled from: SettingsDao_Impl.java */
    public class d extends f54 {
        public d(v24 v24Var, vt3 vt3Var) {
            super(vt3Var);
        }

        @Override // com.shabakaty.downloader.f54
        public String c() {
            return "UPDATE settings SET filter_showContentWithNoSubtitle =?  WHERE userId = ?";
        }
    }

    /* JADX INFO: compiled from: SettingsDao_Impl.java */
    public class d0 extends f54 {
        public d0(v24 v24Var, vt3 vt3Var) {
            super(vt3Var);
        }

        @Override // com.shabakaty.downloader.f54
        public String c() {
            return "UPDATE settings SET subtitles_subtitleEdge = ? WHERE userId = ?";
        }
    }

    /* JADX INFO: compiled from: SettingsDao_Impl.java */
    public class e extends f54 {
        public e(v24 v24Var, vt3 vt3Var) {
            super(vt3Var);
        }

        @Override // com.shabakaty.downloader.f54
        public String c() {
            return "UPDATE settings SET app_showSubtitles =?  WHERE userId = ?";
        }
    }

    /* JADX INFO: compiled from: SettingsDao_Impl.java */
    public class e0 extends f54 {
        public e0(v24 v24Var, vt3 vt3Var) {
            super(vt3Var);
        }

        @Override // com.shabakaty.downloader.f54
        public String c() {
            return "UPDATE settings SET subtitles_subtitleEdgeColor = ? WHERE userId = ?";
        }
    }

    /* JADX INFO: compiled from: SettingsDao_Impl.java */
    public class f extends f54 {
        public f(v24 v24Var, vt3 vt3Var) {
            super(vt3Var);
        }

        @Override // com.shabakaty.downloader.f54
        public String c() {
            return "UPDATE settings SET app_theme =?";
        }
    }

    /* JADX INFO: compiled from: SettingsDao_Impl.java */
    public class f0 extends f54 {
        public f0(v24 v24Var, vt3 vt3Var) {
            super(vt3Var);
        }

        @Override // com.shabakaty.downloader.f54
        public String c() {
            return "UPDATE settings SET subtitles_subtitleColor = ? WHERE userId = ?";
        }
    }

    /* JADX INFO: compiled from: SettingsDao_Impl.java */
    public class g extends f54 {
        public g(v24 v24Var, vt3 vt3Var) {
            super(vt3Var);
        }

        @Override // com.shabakaty.downloader.f54
        public String c() {
            return "UPDATE settings SET app_language = ?";
        }
    }

    /* JADX INFO: compiled from: SettingsDao_Impl.java */
    public class h implements Callable<qv4> {
        public final /* synthetic */ SettingsEntity r;

        public h(SettingsEntity settingsEntity) {
            this.r = settingsEntity;
        }

        @Override // java.util.concurrent.Callable
        public qv4 call() {
            vt3 vt3Var = v24.this.a;
            vt3Var.a();
            vt3Var.i();
            try {
                v24.this.b.f(this.r);
                v24.this.a.n();
                return qv4.a;
            } finally {
                v24.this.a.j();
            }
        }
    }

    /* JADX INFO: compiled from: SettingsDao_Impl.java */
    public class i implements Callable<qv4> {
        public final /* synthetic */ SettingsEntity r;

        public i(SettingsEntity settingsEntity) {
            this.r = settingsEntity;
        }

        @Override // java.util.concurrent.Callable
        public qv4 call() {
            vt3 vt3Var = v24.this.a;
            vt3Var.a();
            vt3Var.i();
            try {
                v24.this.i.f(this.r);
                v24.this.a.n();
                return qv4.a;
            } finally {
                v24.this.a.j();
            }
        }
    }

    /* JADX INFO: compiled from: SettingsDao_Impl.java */
    public class j extends x31<SettingsEntity> {
        public j(vt3 vt3Var) {
            super(vt3Var);
        }

        @Override // com.shabakaty.downloader.f54
        public String c() {
            return "INSERT OR REPLACE INTO `settings` (`userId`,`filter_parentalLevel`,`filter_skipInAppropriateScenes`,`filter_showContentWithNoSubtitle`,`app_language`,`app_theme`,`app_seekPeriod`,`app_showSubtitles`,`subtitles_subtitleColor`,`subtitles_subtitleEdgeColor`,`subtitles_subtitleBackgroundColor`,`subtitles_subtitleEdge`,`subtitles_subtitleFontScale`,`subtitles_subtitleFontFamily`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        @Override // com.shabakaty.downloader.x31
        public void e(ci4 ci4Var, SettingsEntity settingsEntity) {
            SettingsEntity settingsEntity2 = settingsEntity;
            String str = settingsEntity2.userId;
            if (str == null) {
                ci4Var.T0(1);
            } else {
                ci4Var.I(1, str);
            }
            FilterSettingsEntity filterSettingsEntity = settingsEntity2.filterSettings;
            if (filterSettingsEntity != null) {
                String strE = v24.this.c.e(filterSettingsEntity.parentalLevel);
                if (strE == null) {
                    ci4Var.T0(2);
                } else {
                    ci4Var.I(2, strE);
                }
                ci4Var.h0(3, filterSettingsEntity.skipInAppropriateScenes ? 1L : 0L);
                ci4Var.h0(4, filterSettingsEntity.showContentWithNoSubtitle ? 1L : 0L);
            } else {
                ci4Var.T0(2);
                ci4Var.T0(3);
                ci4Var.T0(4);
            }
            AppSettingsEntity appSettingsEntity = settingsEntity2.appSettings;
            if (appSettingsEntity != null) {
                String strC = v24.this.d.c(appSettingsEntity.language);
                if (strC == null) {
                    ci4Var.T0(5);
                } else {
                    ci4Var.I(5, strC);
                }
                ci4Var.h0(6, v24.this.e.a(appSettingsEntity.theme));
                ci4Var.h0(7, appSettingsEntity.seekPeriod);
                ci4Var.h0(8, appSettingsEntity.showSubtitles ? 1L : 0L);
            } else {
                ci4Var.T0(5);
                ci4Var.T0(6);
                ci4Var.T0(7);
                ci4Var.T0(8);
            }
            pg4 pg4Var = settingsEntity2.subtitlesSettings;
            if (pg4Var == null) {
                ci4Var.T0(9);
                ci4Var.T0(10);
                ci4Var.T0(11);
                ci4Var.T0(12);
                ci4Var.T0(13);
                ci4Var.T0(14);
                return;
            }
            ci4Var.h0(9, pg4Var.a);
            ci4Var.h0(10, pg4Var.b);
            ci4Var.h0(11, pg4Var.c);
            ci4Var.h0(12, v24.this.f.d(pg4Var.d));
            ci4Var.T(13, v24.this.g.d(pg4Var.e));
            String strC2 = v24.this.h.c(pg4Var.f);
            if (strC2 == null) {
                ci4Var.T0(14);
            } else {
                ci4Var.I(14, strC2);
            }
        }
    }

    /* JADX INFO: compiled from: SettingsDao_Impl.java */
    public class k implements Callable<qv4> {
        public final /* synthetic */ ia3 r;
        public final /* synthetic */ String s;

        public k(ia3 ia3Var, String str) {
            this.r = ia3Var;
            this.s = str;
        }

        @Override // java.util.concurrent.Callable
        public qv4 call() {
            ci4 ci4VarA = v24.this.j.a();
            String strE = v24.this.c.e(this.r);
            if (strE == null) {
                ci4VarA.T0(1);
            } else {
                ci4VarA.I(1, strE);
            }
            String str = this.s;
            if (str == null) {
                ci4VarA.T0(2);
            } else {
                ci4VarA.I(2, str);
            }
            vt3 vt3Var = v24.this.a;
            vt3Var.a();
            vt3Var.i();
            try {
                ci4VarA.P();
                v24.this.a.n();
                qv4 qv4Var = qv4.a;
                v24.this.a.j();
                f54 f54Var = v24.this.j;
                if (ci4VarA == f54Var.c) {
                    f54Var.a.set(false);
                }
                return qv4Var;
            } catch (Throwable th) {
                v24.this.a.j();
                v24.this.j.d(ci4VarA);
                throw th;
            }
        }
    }

    /* JADX INFO: compiled from: SettingsDao_Impl.java */
    public class l implements Callable<qv4> {
        public final /* synthetic */ gg4 r;
        public final /* synthetic */ String s;

        public l(gg4 gg4Var, String str) {
            this.r = gg4Var;
            this.s = str;
        }

        @Override // java.util.concurrent.Callable
        public qv4 call() {
            ci4 ci4VarA = v24.this.k.a();
            String strC = v24.this.h.c(this.r);
            if (strC == null) {
                ci4VarA.T0(1);
            } else {
                ci4VarA.I(1, strC);
            }
            String str = this.s;
            if (str == null) {
                ci4VarA.T0(2);
            } else {
                ci4VarA.I(2, str);
            }
            vt3 vt3Var = v24.this.a;
            vt3Var.a();
            vt3Var.i();
            try {
                ci4VarA.P();
                v24.this.a.n();
                qv4 qv4Var = qv4.a;
                v24.this.a.j();
                f54 f54Var = v24.this.k;
                if (ci4VarA == f54Var.c) {
                    f54Var.a.set(false);
                }
                return qv4Var;
            } catch (Throwable th) {
                v24.this.a.j();
                v24.this.k.d(ci4VarA);
                throw th;
            }
        }
    }

    /* JADX INFO: compiled from: SettingsDao_Impl.java */
    public class m implements Callable<qv4> {
        public final /* synthetic */ hg4 r;
        public final /* synthetic */ String s;

        public m(hg4 hg4Var, String str) {
            this.r = hg4Var;
            this.s = str;
        }

        @Override // java.util.concurrent.Callable
        public qv4 call() {
            ci4 ci4VarA = v24.this.l.a();
            ci4VarA.T(1, v24.this.g.d(this.r));
            String str = this.s;
            if (str == null) {
                ci4VarA.T0(2);
            } else {
                ci4VarA.I(2, str);
            }
            vt3 vt3Var = v24.this.a;
            vt3Var.a();
            vt3Var.i();
            try {
                ci4VarA.P();
                v24.this.a.n();
                return qv4.a;
            } finally {
                v24.this.a.j();
                f54 f54Var = v24.this.l;
                if (ci4VarA == f54Var.c) {
                    f54Var.a.set(false);
                }
            }
        }
    }

    /* JADX INFO: compiled from: SettingsDao_Impl.java */
    public class n implements Callable<qv4> {
        public final /* synthetic */ fg4 r;
        public final /* synthetic */ String s;

        public n(fg4 fg4Var, String str) {
            this.r = fg4Var;
            this.s = str;
        }

        @Override // java.util.concurrent.Callable
        public qv4 call() {
            ci4 ci4VarA = v24.this.m.a();
            ci4VarA.h0(1, v24.this.f.d(this.r));
            String str = this.s;
            if (str == null) {
                ci4VarA.T0(2);
            } else {
                ci4VarA.I(2, str);
            }
            vt3 vt3Var = v24.this.a;
            vt3Var.a();
            vt3Var.i();
            try {
                ci4VarA.P();
                v24.this.a.n();
                return qv4.a;
            } finally {
                v24.this.a.j();
                f54 f54Var = v24.this.m;
                if (ci4VarA == f54Var.c) {
                    f54Var.a.set(false);
                }
            }
        }
    }

    /* JADX INFO: compiled from: SettingsDao_Impl.java */
    public class o implements Callable<qv4> {
        public final /* synthetic */ int r;
        public final /* synthetic */ String s;

        public o(int i, String str) {
            this.r = i;
            this.s = str;
        }

        @Override // java.util.concurrent.Callable
        public qv4 call() {
            ci4 ci4VarA = v24.this.n.a();
            ci4VarA.h0(1, this.r);
            String str = this.s;
            if (str == null) {
                ci4VarA.T0(2);
            } else {
                ci4VarA.I(2, str);
            }
            vt3 vt3Var = v24.this.a;
            vt3Var.a();
            vt3Var.i();
            try {
                ci4VarA.P();
                v24.this.a.n();
                return qv4.a;
            } finally {
                v24.this.a.j();
                f54 f54Var = v24.this.n;
                if (ci4VarA == f54Var.c) {
                    f54Var.a.set(false);
                }
            }
        }
    }

    /* JADX INFO: compiled from: SettingsDao_Impl.java */
    public class p implements Callable<qv4> {
        public final /* synthetic */ int r;
        public final /* synthetic */ String s;

        public p(int i, String str) {
            this.r = i;
            this.s = str;
        }

        @Override // java.util.concurrent.Callable
        public qv4 call() {
            ci4 ci4VarA = v24.this.o.a();
            ci4VarA.h0(1, this.r);
            String str = this.s;
            if (str == null) {
                ci4VarA.T0(2);
            } else {
                ci4VarA.I(2, str);
            }
            vt3 vt3Var = v24.this.a;
            vt3Var.a();
            vt3Var.i();
            try {
                ci4VarA.P();
                v24.this.a.n();
                return qv4.a;
            } finally {
                v24.this.a.j();
                f54 f54Var = v24.this.o;
                if (ci4VarA == f54Var.c) {
                    f54Var.a.set(false);
                }
            }
        }
    }

    /* JADX INFO: compiled from: SettingsDao_Impl.java */
    public class q implements Callable<qv4> {
        public final /* synthetic */ int r;
        public final /* synthetic */ String s;

        public q(int i, String str) {
            this.r = i;
            this.s = str;
        }

        @Override // java.util.concurrent.Callable
        public qv4 call() {
            ci4 ci4VarA = v24.this.p.a();
            ci4VarA.h0(1, this.r);
            String str = this.s;
            if (str == null) {
                ci4VarA.T0(2);
            } else {
                ci4VarA.I(2, str);
            }
            vt3 vt3Var = v24.this.a;
            vt3Var.a();
            vt3Var.i();
            try {
                ci4VarA.P();
                v24.this.a.n();
                return qv4.a;
            } finally {
                v24.this.a.j();
                f54 f54Var = v24.this.p;
                if (ci4VarA == f54Var.c) {
                    f54Var.a.set(false);
                }
            }
        }
    }

    /* JADX INFO: compiled from: SettingsDao_Impl.java */
    public class r implements Callable<qv4> {
        public final /* synthetic */ boolean r;
        public final /* synthetic */ String s;

        public r(boolean z, String str) {
            this.r = z;
            this.s = str;
        }

        @Override // java.util.concurrent.Callable
        public qv4 call() {
            ci4 ci4VarA = v24.this.q.a();
            ci4VarA.h0(1, this.r ? 1L : 0L);
            String str = this.s;
            if (str == null) {
                ci4VarA.T0(2);
            } else {
                ci4VarA.I(2, str);
            }
            vt3 vt3Var = v24.this.a;
            vt3Var.a();
            vt3Var.i();
            try {
                ci4VarA.P();
                v24.this.a.n();
                return qv4.a;
            } finally {
                v24.this.a.j();
                f54 f54Var = v24.this.q;
                if (ci4VarA == f54Var.c) {
                    f54Var.a.set(false);
                }
            }
        }
    }

    /* JADX INFO: compiled from: SettingsDao_Impl.java */
    public class s implements Callable<qv4> {
        public final /* synthetic */ int r;
        public final /* synthetic */ String s;

        public s(int i, String str) {
            this.r = i;
            this.s = str;
        }

        @Override // java.util.concurrent.Callable
        public qv4 call() {
            ci4 ci4VarA = v24.this.r.a();
            ci4VarA.h0(1, this.r);
            String str = this.s;
            if (str == null) {
                ci4VarA.T0(2);
            } else {
                ci4VarA.I(2, str);
            }
            vt3 vt3Var = v24.this.a;
            vt3Var.a();
            vt3Var.i();
            try {
                ci4VarA.P();
                v24.this.a.n();
                return qv4.a;
            } finally {
                v24.this.a.j();
                f54 f54Var = v24.this.r;
                if (ci4VarA == f54Var.c) {
                    f54Var.a.set(false);
                }
            }
        }
    }

    /* JADX INFO: compiled from: SettingsDao_Impl.java */
    public class t implements Callable<qv4> {
        public final /* synthetic */ boolean r;
        public final /* synthetic */ String s;

        public t(boolean z, String str) {
            this.r = z;
            this.s = str;
        }

        @Override // java.util.concurrent.Callable
        public qv4 call() {
            ci4 ci4VarA = v24.this.s.a();
            ci4VarA.h0(1, this.r ? 1L : 0L);
            String str = this.s;
            if (str == null) {
                ci4VarA.T0(2);
            } else {
                ci4VarA.I(2, str);
            }
            vt3 vt3Var = v24.this.a;
            vt3Var.a();
            vt3Var.i();
            try {
                ci4VarA.P();
                v24.this.a.n();
                return qv4.a;
            } finally {
                v24.this.a.j();
                f54 f54Var = v24.this.s;
                if (ci4VarA == f54Var.c) {
                    f54Var.a.set(false);
                }
            }
        }
    }

    /* JADX INFO: compiled from: SettingsDao_Impl.java */
    public class u implements Callable<qv4> {
        public final /* synthetic */ boolean r;
        public final /* synthetic */ String s;

        public u(boolean z, String str) {
            this.r = z;
            this.s = str;
        }

        @Override // java.util.concurrent.Callable
        public qv4 call() {
            ci4 ci4VarA = v24.this.t.a();
            ci4VarA.h0(1, this.r ? 1L : 0L);
            String str = this.s;
            if (str == null) {
                ci4VarA.T0(2);
            } else {
                ci4VarA.I(2, str);
            }
            vt3 vt3Var = v24.this.a;
            vt3Var.a();
            vt3Var.i();
            try {
                ci4VarA.P();
                v24.this.a.n();
                return qv4.a;
            } finally {
                v24.this.a.j();
                f54 f54Var = v24.this.t;
                if (ci4VarA == f54Var.c) {
                    f54Var.a.set(false);
                }
            }
        }
    }

    /* JADX INFO: compiled from: SettingsDao_Impl.java */
    public class v implements Callable<qv4> {
        public final /* synthetic */ ky4 r;

        public v(ky4 ky4Var) {
            this.r = ky4Var;
        }

        @Override // java.util.concurrent.Callable
        public qv4 call() {
            ci4 ci4VarA = v24.this.u.a();
            ci4VarA.h0(1, v24.this.e.a(this.r));
            vt3 vt3Var = v24.this.a;
            vt3Var.a();
            vt3Var.i();
            try {
                ci4VarA.P();
                v24.this.a.n();
                return qv4.a;
            } finally {
                v24.this.a.j();
                f54 f54Var = v24.this.u;
                if (ci4VarA == f54Var.c) {
                    f54Var.a.set(false);
                }
            }
        }
    }

    /* JADX INFO: compiled from: SettingsDao_Impl.java */
    public class w implements Callable<qv4> {
        public final /* synthetic */ tx4 r;

        public w(tx4 tx4Var) {
            this.r = tx4Var;
        }

        @Override // java.util.concurrent.Callable
        public qv4 call() {
            ci4 ci4VarA = v24.this.v.a();
            String strC = v24.this.d.c(this.r);
            if (strC == null) {
                ci4VarA.T0(1);
            } else {
                ci4VarA.I(1, strC);
            }
            vt3 vt3Var = v24.this.a;
            vt3Var.a();
            vt3Var.i();
            try {
                ci4VarA.P();
                v24.this.a.n();
                qv4 qv4Var = qv4.a;
                v24.this.a.j();
                f54 f54Var = v24.this.v;
                if (ci4VarA == f54Var.c) {
                    f54Var.a.set(false);
                }
                return qv4Var;
            } catch (Throwable th) {
                v24.this.a.j();
                v24.this.v.d(ci4VarA);
                throw th;
            }
        }
    }

    /* JADX INFO: compiled from: SettingsDao_Impl.java */
    public class x implements Callable<SettingsEntity> {
        public final /* synthetic */ yt3 r;

        public x(yt3 yt3Var) {
            this.r = yt3Var;
        }

        @Override // java.util.concurrent.Callable
        public SettingsEntity call() {
            SettingsEntity settingsEntity;
            FilterSettingsEntity filterSettingsEntity;
            AppSettingsEntity appSettingsEntity;
            pg4 pg4Var;
            Cursor cursorB = lh0.b(v24.this.a, this.r, false, null);
            try {
                int iB = yg0.b(cursorB, "userId");
                int iB2 = yg0.b(cursorB, "filter_parentalLevel");
                int iB3 = yg0.b(cursorB, "filter_skipInAppropriateScenes");
                int iB4 = yg0.b(cursorB, "filter_showContentWithNoSubtitle");
                int iB5 = yg0.b(cursorB, "app_language");
                int iB6 = yg0.b(cursorB, "app_theme");
                int iB7 = yg0.b(cursorB, "app_seekPeriod");
                int iB8 = yg0.b(cursorB, "app_showSubtitles");
                int iB9 = yg0.b(cursorB, "subtitles_subtitleColor");
                int iB10 = yg0.b(cursorB, "subtitles_subtitleEdgeColor");
                int iB11 = yg0.b(cursorB, "subtitles_subtitleBackgroundColor");
                int iB12 = yg0.b(cursorB, "subtitles_subtitleEdge");
                int iB13 = yg0.b(cursorB, "subtitles_subtitleFontScale");
                int iB14 = yg0.b(cursorB, "subtitles_subtitleFontFamily");
                if (cursorB.moveToFirst()) {
                    String string = cursorB.isNull(iB) ? null : cursorB.getString(iB);
                    if (cursorB.isNull(iB2) && cursorB.isNull(iB3) && cursorB.isNull(iB4)) {
                        string = string;
                        filterSettingsEntity = null;
                    } else {
                        filterSettingsEntity = new FilterSettingsEntity(v24.this.c.f(cursorB.isNull(iB2) ? null : cursorB.getString(iB2)), cursorB.getInt(iB3) != 0, cursorB.getInt(iB4) != 0);
                    }
                    if (cursorB.isNull(iB5) && cursorB.isNull(iB6) && cursorB.isNull(iB7) && cursorB.isNull(iB8)) {
                        appSettingsEntity = null;
                    } else {
                        tx4 tx4VarB = v24.this.d.b(cursorB.isNull(iB5) ? null : cursorB.getString(iB5));
                        int i = cursorB.getInt(iB6);
                        Objects.requireNonNull(v24.this.e);
                        appSettingsEntity = new AppSettingsEntity(tx4VarB, i == 2 ? ky4.b.b : ky4.a.b, cursorB.getInt(iB7), cursorB.getInt(iB8) != 0);
                    }
                    if (cursorB.isNull(iB9) && cursorB.isNull(iB10) && cursorB.isNull(iB11) && cursorB.isNull(iB12) && cursorB.isNull(iB13) && cursorB.isNull(iB14)) {
                        pg4Var = null;
                    } else {
                        pg4Var = new pg4(cursorB.getInt(iB9), cursorB.getInt(iB10), cursorB.getInt(iB11), v24.this.f.c(cursorB.getInt(iB12)), v24.this.g.c(cursorB.getFloat(iB13)), v24.this.h.e(cursorB.isNull(iB14) ? null : cursorB.getString(iB14)));
                    }
                    settingsEntity = new SettingsEntity(string, filterSettingsEntity, appSettingsEntity, pg4Var);
                } else {
                    settingsEntity = null;
                }
                return settingsEntity;
            } finally {
                cursorB.close();
                this.r.c();
            }
        }
    }

    /* JADX INFO: compiled from: SettingsDao_Impl.java */
    public class y implements Callable<List<SettingsEntity>> {
        public final /* synthetic */ yt3 r;

        public y(yt3 yt3Var) {
            this.r = yt3Var;
        }

        @Override // java.util.concurrent.Callable
        public List<SettingsEntity> call() {
            FilterSettingsEntity filterSettingsEntity;
            AppSettingsEntity appSettingsEntity;
            int i;
            int i2;
            pg4 pg4Var;
            Cursor cursorB = lh0.b(v24.this.a, this.r, false, null);
            try {
                int iB = yg0.b(cursorB, "userId");
                int iB2 = yg0.b(cursorB, "filter_parentalLevel");
                int iB3 = yg0.b(cursorB, "filter_skipInAppropriateScenes");
                int iB4 = yg0.b(cursorB, "filter_showContentWithNoSubtitle");
                int iB5 = yg0.b(cursorB, "app_language");
                int iB6 = yg0.b(cursorB, "app_theme");
                int iB7 = yg0.b(cursorB, "app_seekPeriod");
                int iB8 = yg0.b(cursorB, "app_showSubtitles");
                int iB9 = yg0.b(cursorB, "subtitles_subtitleColor");
                int iB10 = yg0.b(cursorB, "subtitles_subtitleEdgeColor");
                int iB11 = yg0.b(cursorB, "subtitles_subtitleBackgroundColor");
                int iB12 = yg0.b(cursorB, "subtitles_subtitleEdge");
                int iB13 = yg0.b(cursorB, "subtitles_subtitleFontScale");
                int iB14 = yg0.b(cursorB, "subtitles_subtitleFontFamily");
                int i3 = iB13;
                ArrayList arrayList = new ArrayList(cursorB.getCount());
                while (cursorB.moveToNext()) {
                    String string = cursorB.isNull(iB) ? null : cursorB.getString(iB);
                    if (cursorB.isNull(iB2) && cursorB.isNull(iB3) && cursorB.isNull(iB4)) {
                        iB = iB;
                        iB2 = iB2;
                        iB3 = iB3;
                        iB4 = iB4;
                        filterSettingsEntity = null;
                    } else {
                        filterSettingsEntity = new FilterSettingsEntity(v24.this.c.f(cursorB.isNull(iB2) ? null : cursorB.getString(iB2)), cursorB.getInt(iB3) != 0, cursorB.getInt(iB4) != 0);
                    }
                    if (cursorB.isNull(iB5) && cursorB.isNull(iB6) && cursorB.isNull(iB7) && cursorB.isNull(iB8)) {
                        iB6 = iB6;
                        appSettingsEntity = null;
                    } else {
                        tx4 tx4VarB = v24.this.d.b(cursorB.isNull(iB5) ? null : cursorB.getString(iB5));
                        int i4 = cursorB.getInt(iB6);
                        Objects.requireNonNull(v24.this.e);
                        appSettingsEntity = new AppSettingsEntity(tx4VarB, i4 == 2 ? ky4.b.b : ky4.a.b, cursorB.getInt(iB7), cursorB.getInt(iB8) != 0);
                    }
                    if (cursorB.isNull(iB9) && cursorB.isNull(iB10) && cursorB.isNull(iB11) && cursorB.isNull(iB12)) {
                        i2 = i3;
                        if (cursorB.isNull(i2)) {
                            i = iB14;
                            if (cursorB.isNull(i)) {
                                pg4Var = null;
                            }
                            arrayList.add(new SettingsEntity(string, filterSettingsEntity, appSettingsEntity, pg4Var));
                            i3 = i2;
                            iB14 = i;
                            iB2 = iB2;
                            iB5 = iB5;
                            iB = iB;
                            iB3 = iB3;
                            iB4 = iB4;
                            iB6 = iB6;
                        } else {
                            i = iB14;
                        }
                    } else {
                        i = iB14;
                        i2 = i3;
                    }
                    pg4Var = new pg4(cursorB.getInt(iB9), cursorB.getInt(iB10), cursorB.getInt(iB11), v24.this.f.c(cursorB.getInt(iB12)), v24.this.g.c(cursorB.getFloat(i2)), v24.this.h.e(cursorB.isNull(i) ? null : cursorB.getString(i)));
                    arrayList.add(new SettingsEntity(string, filterSettingsEntity, appSettingsEntity, pg4Var));
                    i3 = i2;
                    iB14 = i;
                    iB2 = iB2;
                    iB5 = iB5;
                    iB = iB;
                    iB3 = iB3;
                    iB4 = iB4;
                    iB6 = iB6;
                }
                return arrayList;
            } finally {
                cursorB.close();
            }
        }

        public void finalize() {
            this.r.c();
        }
    }

    /* JADX INFO: compiled from: SettingsDao_Impl.java */
    public class z extends w31<SettingsEntity> {
        public z(vt3 vt3Var) {
            super(vt3Var);
        }

        @Override // com.shabakaty.downloader.f54
        public String c() {
            return "UPDATE OR REPLACE `settings` SET `userId` = ?,`filter_parentalLevel` = ?,`filter_skipInAppropriateScenes` = ?,`filter_showContentWithNoSubtitle` = ?,`app_language` = ?,`app_theme` = ?,`app_seekPeriod` = ?,`app_showSubtitles` = ?,`subtitles_subtitleColor` = ?,`subtitles_subtitleEdgeColor` = ?,`subtitles_subtitleBackgroundColor` = ?,`subtitles_subtitleEdge` = ?,`subtitles_subtitleFontScale` = ?,`subtitles_subtitleFontFamily` = ? WHERE `userId` = ?";
        }

        @Override // com.shabakaty.downloader.w31
        public void e(ci4 ci4Var, SettingsEntity settingsEntity) {
            SettingsEntity settingsEntity2 = settingsEntity;
            String str = settingsEntity2.userId;
            if (str == null) {
                ci4Var.T0(1);
            } else {
                ci4Var.I(1, str);
            }
            FilterSettingsEntity filterSettingsEntity = settingsEntity2.filterSettings;
            if (filterSettingsEntity != null) {
                String strE = v24.this.c.e(filterSettingsEntity.parentalLevel);
                if (strE == null) {
                    ci4Var.T0(2);
                } else {
                    ci4Var.I(2, strE);
                }
                ci4Var.h0(3, filterSettingsEntity.skipInAppropriateScenes ? 1L : 0L);
                ci4Var.h0(4, filterSettingsEntity.showContentWithNoSubtitle ? 1L : 0L);
            } else {
                ci4Var.T0(2);
                ci4Var.T0(3);
                ci4Var.T0(4);
            }
            AppSettingsEntity appSettingsEntity = settingsEntity2.appSettings;
            if (appSettingsEntity != null) {
                String strC = v24.this.d.c(appSettingsEntity.language);
                if (strC == null) {
                    ci4Var.T0(5);
                } else {
                    ci4Var.I(5, strC);
                }
                ci4Var.h0(6, v24.this.e.a(appSettingsEntity.theme));
                ci4Var.h0(7, appSettingsEntity.seekPeriod);
                ci4Var.h0(8, appSettingsEntity.showSubtitles ? 1L : 0L);
            } else {
                ci4Var.T0(5);
                ci4Var.T0(6);
                ci4Var.T0(7);
                ci4Var.T0(8);
            }
            pg4 pg4Var = settingsEntity2.subtitlesSettings;
            if (pg4Var != null) {
                ci4Var.h0(9, pg4Var.a);
                ci4Var.h0(10, pg4Var.b);
                ci4Var.h0(11, pg4Var.c);
                ci4Var.h0(12, v24.this.f.d(pg4Var.d));
                ci4Var.T(13, v24.this.g.d(pg4Var.e));
                String strC2 = v24.this.h.c(pg4Var.f);
                if (strC2 == null) {
                    ci4Var.T0(14);
                } else {
                    ci4Var.I(14, strC2);
                }
            } else {
                ci4Var.T0(9);
                ci4Var.T0(10);
                ci4Var.T0(11);
                ci4Var.T0(12);
                ci4Var.T0(13);
                ci4Var.T0(14);
            }
            String str2 = settingsEntity2.userId;
            if (str2 == null) {
                ci4Var.T0(15);
            } else {
                ci4Var.I(15, str2);
            }
        }
    }

    public v24(vt3 vt3Var) {
        this.a = vt3Var;
        this.b = new j(vt3Var);
        new AtomicBoolean(false);
        this.i = new z(vt3Var);
        this.j = new a0(this, vt3Var);
        this.k = new b0(this, vt3Var);
        this.l = new c0(this, vt3Var);
        this.m = new d0(this, vt3Var);
        this.n = new e0(this, vt3Var);
        this.o = new f0(this, vt3Var);
        this.p = new a(this, vt3Var);
        this.q = new b(this, vt3Var);
        this.r = new c(this, vt3Var);
        this.s = new d(this, vt3Var);
        this.t = new e(this, vt3Var);
        this.u = new f(this, vt3Var);
        this.v = new g(this, vt3Var);
    }

    @Override // com.shabakaty.downloader.u24
    public Object a(int i2, String str, ud0<? super qv4> ud0Var) {
        return af0.c(this.a, true, new o(i2, str), ud0Var);
    }

    @Override // com.shabakaty.downloader.u24
    public Object b(ia3 ia3Var, String str, ud0<? super qv4> ud0Var) {
        return af0.c(this.a, true, new k(ia3Var, str), ud0Var);
    }

    @Override // com.shabakaty.downloader.u24
    public Object c(int i2, String str, ud0<? super qv4> ud0Var) {
        return af0.c(this.a, true, new s(i2, str), ud0Var);
    }

    @Override // com.shabakaty.downloader.u24
    public te1<List<SettingsEntity>> d() {
        return af0.a(this.a, false, new String[]{"settings"}, new y(yt3.a("SELECT * FROM settings", 0)));
    }

    @Override // com.shabakaty.downloader.u24
    public Object e(boolean z2, String str, ud0<? super qv4> ud0Var) {
        return af0.c(this.a, true, new u(z2, str), ud0Var);
    }

    @Override // com.shabakaty.downloader.u24
    public Object f(boolean z2, String str, ud0<? super qv4> ud0Var) {
        return af0.c(this.a, true, new t(z2, str), ud0Var);
    }

    @Override // com.shabakaty.downloader.u24
    public Object g(int i2, String str, ud0<? super qv4> ud0Var) {
        return af0.c(this.a, true, new p(i2, str), ud0Var);
    }

    @Override // com.shabakaty.downloader.u24
    public Object h(hg4 hg4Var, String str, ud0<? super qv4> ud0Var) {
        return af0.c(this.a, true, new m(hg4Var, str), ud0Var);
    }

    @Override // com.shabakaty.downloader.u24
    public Object i(ky4 ky4Var, ud0<? super qv4> ud0Var) {
        return af0.c(this.a, true, new v(ky4Var), ud0Var);
    }

    @Override // com.shabakaty.downloader.u24
    public Object j(String str, ud0<? super SettingsEntity> ud0Var) {
        yt3 yt3VarA = yt3.a("SELECT * FROM settings WHERE userId = ?", 1);
        if (str == null) {
            yt3VarA.T0(1);
        } else {
            yt3VarA.I(1, str);
        }
        return af0.b(this.a, false, new CancellationSignal(), new x(yt3VarA), ud0Var);
    }

    @Override // com.shabakaty.downloader.u24
    public Object k(SettingsEntity settingsEntity, ud0<? super qv4> ud0Var) {
        return af0.c(this.a, true, new h(settingsEntity), ud0Var);
    }

    @Override // com.shabakaty.downloader.u24
    public Object l(SettingsEntity settingsEntity, ud0<? super qv4> ud0Var) {
        return af0.c(this.a, true, new i(settingsEntity), ud0Var);
    }

    @Override // com.shabakaty.downloader.u24
    public Object m(int i2, String str, ud0<? super qv4> ud0Var) {
        return af0.c(this.a, true, new q(i2, str), ud0Var);
    }

    @Override // com.shabakaty.downloader.u24
    public Object n(tx4 tx4Var, ud0<? super qv4> ud0Var) {
        return af0.c(this.a, true, new w(tx4Var), ud0Var);
    }

    @Override // com.shabakaty.downloader.u24
    public Object o(fg4 fg4Var, String str, ud0<? super qv4> ud0Var) {
        return af0.c(this.a, true, new n(fg4Var, str), ud0Var);
    }

    @Override // com.shabakaty.downloader.u24
    public Object p(boolean z2, String str, ud0<? super qv4> ud0Var) {
        return af0.c(this.a, true, new r(z2, str), ud0Var);
    }

    @Override // com.shabakaty.downloader.u24
    public Object q(gg4 gg4Var, String str, ud0<? super qv4> ud0Var) {
        return af0.c(this.a, true, new l(gg4Var, str), ud0Var);
    }
}
