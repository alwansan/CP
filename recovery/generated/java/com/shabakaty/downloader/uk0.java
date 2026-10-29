package com.shabakaty.downloader;

import android.app.Application;
import android.content.Context;
import com.shabakaty.cinemana.CinemanaApplication;
import com.shabakaty.cinemana.data.db.AppDatabase;
import com.shabakaty.cinemana.domain.mapper.AvailableYearsMapper;
import com.shabakaty.cinemana.domain.mapper.CommentMapper;
import com.shabakaty.cinemana.domain.mapper.CommentsRulesMapper;
import com.shabakaty.cinemana.domain.mapper.FranchiseItemMapper;
import com.shabakaty.cinemana.domain.mapper.LogoutResponseMapper;
import com.shabakaty.cinemana.domain.mapper.NewCategoryItemMapper;
import com.shabakaty.cinemana.domain.mapper.NotificationsListMapper;
import com.shabakaty.cinemana.domain.mapper.SearchItemMapper;
import com.shabakaty.cinemana.domain.mapper.StaffInfoMapper;
import com.shabakaty.cinemana.domain.mapper.StatusMapper;
import com.shabakaty.cinemana.domain.mapper.TranscodeFileMapper;
import com.shabakaty.cinemana.domain.mapper.UserListMapper;
import com.shabakaty.cinemana.domain.mapper.UserSettingsMapper;
import com.shabakaty.cinemana.domain.mapper.VideoModelEntityMapper;
import com.shabakaty.cinemana.domain.mapper.VideoModelMapper;
import com.shabakaty.cinemana.domain.mapper.VideoStatusEntityMapper;
import com.shabakaty.cinemana.domain.mapper.VideoStatusMapper;
import com.shabakaty.cinemana.domain.mapper.VideoStatusMapperFromEntity;
import com.shabakaty.cinemana.domain.mapper.VideosGroupMapper;
import com.shabakaty.cinemana.helpers.casting.DLNAControllerService;
import com.shabakaty.cinemana.helpers.casting.DLNAControlsActivity;
import com.shabakaty.cinemana.helpers.casting.ExpandedControlsActivity;
import com.shabakaty.cinemana.player.VideoPlayerActivity;
import com.shabakaty.cinemana.ui.downloads.DownloadsActivity;
import com.shabakaty.cinemana.ui.home_activity.HomeActivity;
import com.shabakaty.cinemana.ui.login.LoginActivity;
import com.shabakaty.cinemana.ui.login.SignUpActivity;
import com.shabakaty.cinemana.ui.qr_login.QrLoginActivity;
import com.shabakaty.cinemana.ui.settings.SettingsActivity;
import com.shabakaty.cinemana.ui.splash.SplashActivity;
import com.shabakaty.cinemana.ui.status.StatusActivity;
import com.shabakaty.usermanagement.UserManagement;
import com.shabakaty.usermanagement.UserManagement_Factory;
import com.shabakaty.usermanagement.data.AccountRepository;
import com.shabakaty.usermanagement.data.AccountRepository_Factory;
import com.shabakaty.usermanagement.data.api.UserManagementApi;
import com.shabakaty.usermanagement.data.api.UserNetworkManager;
import com.shabakaty.usermanagement.data.api.UserNetworkManager_Factory;
import com.shabakaty.usermanagement.data.model.UserManagementConfiguration;
import com.shabakaty.usermanagement.di.UserManagementModule_Companion_ProvideApiService$usermanagement_debugFactory;
import com.shabakaty.usermanagement.utils.account.ShabakatyAccountManager;
import com.shabakaty.usermanagement.utils.account.ShabakatyAccountManager_Factory;
import java.lang.ref.WeakReference;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: DaggerAppComponent.java */
/* JADX INFO: loaded from: classes.dex */
public final class uk0 implements cb {
    public oj3<AvailableYearsMapper> A0;
    public oj3<vl0.a> A1;
    public oj3<SearchItemMapper> B0;
    public oj3<rh3.b> B1;
    public oj3<VideoStatusMapperFromEntity> C0;
    public oj3<ep0> C1;
    public oj3<VideoModelEntityMapper> D0;
    public oj3<fj2> D1;
    public oj3<StatusMapper> E0;
    public oj3<ie> E1;
    public oj3<qm2> F0;
    public oj3<to0> F1;
    public oj3<vy3> G0;
    public oj3<s64> G1;
    public oj3<u24> H0;
    public oj3<q10> H1;
    public oj3<n34> I0;
    public oj3<m91> I1;
    public oj3<n24> J0;
    public oj3<qx0> J1;
    public oj3<sx4> K0;
    public oj3<by0> K1;
    public oj3<g25> L0;
    public oj3<iw0> L1;
    public oj3<vu1> M0;
    public oj3<jz0> M1;
    public oj3<WeakReference<Context>> N0;
    public oj3<d34> N1;
    public oj3<al2> O0;
    public oj3<kb1> O1;
    public oj3<zu1> P0;
    public oj3<rb> P1;
    public oj3<ou1> Q0;
    public oj3<ih4> Q1;
    public oj3<ox4> R0;
    public oj3<Map<Class<? extends o35>, oj3<xk<?>>>> R1;
    public oj3<tu1> S0;
    public oj3<p35> S1;
    public oj3<jx> T0;
    public oj3<gy2> T1;
    public oj3<pc> U;
    public oj3<kx> U0;
    public oj3<sx2> U1;
    public oj3<Context> V;
    public oj3<fz3> V0;
    public oj3<ff3> W;
    public oj3<hz3> W0;
    public oj3<AppDatabase> X;
    public oj3<fh3> X0;
    public oj3<jw0> Y;
    public oj3<g21> Y0;
    public oj3<UserManagementConfiguration> Z;
    public oj3<dl2> Z0;
    public oj3<UserManagementApi> a0;
    public oj3<fk3> a1;
    public oj3<AccountRepository> b0;
    public oj3<q15> b1;
    public oj3<UserNetworkManager> c0;
    public oj3<p5> c1;
    public oj3<ShabakatyAccountManager> d0;
    public oj3<u15> d1;
    public oj3<UserManagement> e0;
    public oj3<kb4> e1;
    public oj3<jf> f0;
    public oj3<mb4> f1;
    public oj3<kw1> g0;
    public oj3<m13> g1;
    public oj3<lt3> h0;
    public oj3<o13> h1;
    public oj3<k9> i0;
    public oj3<yf4> i1;
    public oj3<pm4> j0;
    public oj3<g70> j1;
    public oj3<s25> k0;
    public oj3<a64> k1;
    public oj3<VideoModelMapper> l0;
    public oj3<zz0> l1;
    public oj3<y25> m0;
    public oj3<q54> m1;
    public oj3<FranchiseItemMapper> n0;
    public oj3<r54> n1;
    public oj3<UserListMapper> o0;
    public oj3<rx> o1;
    public oj3<TranscodeFileMapper> p0;
    public oj3<by4> p1;
    public oj3<CommentMapper> q0;
    public oj3<ka4> q1;
    public oj3<VideoStatusMapper> r0;
    public oj3<ah2> r1;
    public oj3<VideoStatusEntityMapper> s0;
    public oj3<em0> s1;
    public oj3<LogoutResponseMapper> t0;
    public oj3<o64> t1;
    public oj3<StaffInfoMapper> u0;
    public oj3<String> u1;
    public oj3<VideosGroupMapper> v0;
    public oj3<in0> v1;
    public oj3<NewCategoryItemMapper> w0;
    public oj3<b63.b> w1;
    public oj3<UserSettingsMapper> x0;
    public oj3<rn0> x1;
    public oj3<NotificationsListMapper> y0;
    public oj3<rp> y1;
    public oj3<CommentsRulesMapper> z0;
    public oj3<sp> z1;
    public oj3<Object> a = new kj0(this);
    public oj3<Object> b = new vj0(this);
    public oj3<Object> c = new gk0(this);
    public oj3<Object> d = new ok0(this);
    public oj3<Object> e = new pk0(this);
    public oj3<Object> f = new qk0(this);
    public oj3<Object> g = new rk0(this);
    public oj3<Object> h = new sk0(this);
    public oj3<Object> i = new tk0(this);
    public oj3<Object> j = new aj0(this);
    public oj3<Object> k = new bj0(this);
    public oj3<Object> l = new cj0(this);
    public oj3<Object> m = new dj0(this);
    public oj3<Object> n = new ej0(this);
    public oj3<Object> o = new fj0(this);
    public oj3<Object> p = new gj0(this);
    public oj3<Object> q = new hj0(this);
    public oj3<Object> r = new ij0(this);
    public oj3<Object> s = new jj0(this);
    public oj3<Object> t = new lj0(this);
    public oj3<Object> u = new mj0(this);
    public oj3<Object> v = new nj0(this);
    public oj3<Object> w = new oj0(this);
    public oj3<Object> x = new pj0(this);
    public oj3<Object> y = new qj0(this);
    public oj3<Object> z = new rj0(this);
    public oj3<Object> A = new sj0(this);
    public oj3<Object> B = new tj0(this);
    public oj3<Object> C = new uj0(this);
    public oj3<Object> D = new wj0(this);
    public oj3<Object> E = new xj0(this);
    public oj3<Object> F = new yj0(this);
    public oj3<Object> G = new zj0(this);
    public oj3<Object> H = new ak0(this);
    public oj3<Object> I = new bk0(this);
    public oj3<Object> J = new ck0(this);
    public oj3<Object> K = new dk0(this);
    public oj3<Object> L = new ek0(this);
    public oj3<Object> M = new fk0(this);
    public oj3<Object> N = new hk0(this);
    public oj3<Object> O = new ik0(this);
    public oj3<Object> P = new jk0(this);
    public oj3<Object> Q = new kk0(this);
    public oj3<Object> R = new lk0(this);
    public oj3<Object> S = new mk0(this);
    public oj3<Object> T = new nk0(this);

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class a implements e7.a {
        public a(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            u4 u4Var = (u4) obj;
            Objects.requireNonNull(u4Var);
            return uk0.this.new b(u4Var);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class a0 implements e7.a {
        public a0(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            pz0 pz0Var = (pz0) obj;
            Objects.requireNonNull(pz0Var);
            return uk0.this.new b0(pz0Var);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class a1 implements e7.a {
        public a1(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            au3 au3Var = (au3) obj;
            Objects.requireNonNull(au3Var);
            return uk0.this.new b1(au3Var);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class a2 implements e7.a {
        public a2(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            StatusActivity statusActivity = (StatusActivity) obj;
            Objects.requireNonNull(statusActivity);
            return uk0.this.new b2(statusActivity);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class b implements e7 {
        public b(u4 u4Var) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            u4 u4Var = (u4) obj;
            ff3 ff3Var = uk0.this.W.get();
            Objects.requireNonNull(u4Var);
            j32.e(ff3Var, "<set-?>");
            p35 p35Var = uk0.this.S1.get();
            j32.e(p35Var, "<set-?>");
            u4Var.J = p35Var;
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class b0 implements e7 {
        public b0(pz0 pz0Var) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            pz0 pz0Var = (pz0) obj;
            ff3 ff3Var = uk0.this.W.get();
            Objects.requireNonNull(pz0Var);
            j32.e(ff3Var, "<set-?>");
            p35 p35Var = uk0.this.S1.get();
            j32.e(p35Var, "<set-?>");
            pz0Var.s = p35Var;
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class b1 implements e7 {
        public b1(au3 au3Var) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            au3 au3Var = (au3) obj;
            sx2 sx2Var = uk0.this.U1.get();
            Objects.requireNonNull(au3Var);
            j32.e(sx2Var, "<set-?>");
            au3Var.u = sx2Var;
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class b2 implements e7 {
        public b2(StatusActivity statusActivity) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            StatusActivity statusActivity = (StatusActivity) obj;
            ff3 ff3Var = uk0.this.W.get();
            Objects.requireNonNull(statusActivity);
            j32.e(ff3Var, "<set-?>");
            p35 p35Var = uk0.this.S1.get();
            j32.e(p35Var, "<set-?>");
            statusActivity.s = p35Var;
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class c implements e7.a {
        public c(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            jb jbVar = (jb) obj;
            Objects.requireNonNull(jbVar);
            return uk0.this.new d(jbVar);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class c0 implements e7.a {
        public c0(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            e21 e21Var = (e21) obj;
            Objects.requireNonNull(e21Var);
            return uk0.this.new d0(e21Var);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class c1 implements e7.a {
        public c1(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            bu3 bu3Var = (bu3) obj;
            Objects.requireNonNull(bu3Var);
            return uk0.this.new d1(bu3Var);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class c2 implements e7.a {
        public c2(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            tf4 tf4Var = (tf4) obj;
            Objects.requireNonNull(tf4Var);
            return uk0.this.new d2(tf4Var);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class d implements e7 {
        public d(jb jbVar) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            jb jbVar = (jb) obj;
            ff3 ff3Var = uk0.this.W.get();
            Objects.requireNonNull(jbVar);
            j32.e(ff3Var, "<set-?>");
            p35 p35Var = uk0.this.S1.get();
            j32.e(p35Var, "<set-?>");
            jbVar.s = p35Var;
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class d0 implements e7 {
        public d0(e21 e21Var) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            e21 e21Var = (e21) obj;
            ff3 ff3Var = uk0.this.W.get();
            Objects.requireNonNull(e21Var);
            j32.e(ff3Var, "<set-?>");
            p35 p35Var = uk0.this.S1.get();
            j32.e(p35Var, "<set-?>");
            e21Var.s = p35Var;
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class d1 implements e7 {
        public d1(bu3 bu3Var) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            bu3 bu3Var = (bu3) obj;
            sx2 sx2Var = uk0.this.U1.get();
            Objects.requireNonNull(bu3Var);
            j32.e(sx2Var, "<set-?>");
            bu3Var.u = sx2Var;
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class d2 implements e7 {
        public d2(tf4 tf4Var) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            tf4 tf4Var = (tf4) obj;
            ff3 ff3Var = uk0.this.W.get();
            Objects.requireNonNull(tf4Var);
            j32.e(ff3Var, "<set-?>");
            p35 p35Var = uk0.this.S1.get();
            j32.e(p35Var, "<set-?>");
            tf4Var.s = p35Var;
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class e implements e7.a {
        public e(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            on onVar = (on) obj;
            Objects.requireNonNull(onVar);
            return uk0.this.new f(onVar);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class e0 implements e7.a {
        public e0(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            ExpandedControlsActivity expandedControlsActivity = (ExpandedControlsActivity) obj;
            Objects.requireNonNull(expandedControlsActivity);
            return uk0.this.new f0(expandedControlsActivity);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class e1 implements e7.a {
        public e1(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            cu3 cu3Var = (cu3) obj;
            Objects.requireNonNull(cu3Var);
            return uk0.this.new f1(cu3Var);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class e2 implements e7.a {
        public e2(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            vg4 vg4Var = (vg4) obj;
            Objects.requireNonNull(vg4Var);
            return uk0.this.new f2(vg4Var);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class f implements e7 {
        public f(on onVar) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            on onVar = (on) obj;
            ff3 ff3Var = uk0.this.W.get();
            Objects.requireNonNull(onVar);
            j32.e(ff3Var, "<set-?>");
            p35 p35Var = uk0.this.S1.get();
            j32.e(p35Var, "<set-?>");
            onVar.J = p35Var;
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class f0 implements e7 {
        public f0(ExpandedControlsActivity expandedControlsActivity) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            ExpandedControlsActivity expandedControlsActivity = (ExpandedControlsActivity) obj;
            n24 n24Var = uk0.this.J0.get();
            Objects.requireNonNull(expandedControlsActivity);
            j32.e(n24Var, "<set-?>");
            expandedControlsActivity.n0 = n24Var;
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class f1 implements e7 {
        public f1(cu3 cu3Var) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            cu3 cu3Var = (cu3) obj;
            sx2 sx2Var = uk0.this.U1.get();
            Objects.requireNonNull(cu3Var);
            j32.e(sx2Var, "<set-?>");
            cu3Var.u = sx2Var;
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class f2 implements e7 {
        public f2(vg4 vg4Var) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            vg4 vg4Var = (vg4) obj;
            ff3 ff3Var = uk0.this.W.get();
            Objects.requireNonNull(vg4Var);
            j32.e(ff3Var, "<set-?>");
            p35 p35Var = uk0.this.S1.get();
            j32.e(p35Var, "<set-?>");
            vg4Var.s = p35Var;
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class g implements e7.a {
        public g(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            bx bxVar = (bx) obj;
            Objects.requireNonNull(bxVar);
            return uk0.this.new h(bxVar);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class g0 implements e7.a {
        public g0(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            f91 f91Var = (f91) obj;
            Objects.requireNonNull(f91Var);
            return uk0.this.new h0(f91Var);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class g1 implements e7.a {
        public g1(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            du3 du3Var = (du3) obj;
            Objects.requireNonNull(du3Var);
            return uk0.this.new h1(du3Var);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class g2 implements e7.a {
        public g2(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            vx4 vx4Var = (vx4) obj;
            Objects.requireNonNull(vx4Var);
            return uk0.this.new h2(vx4Var);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class h implements e7 {
        public h(bx bxVar) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            bx bxVar = (bx) obj;
            ff3 ff3Var = uk0.this.W.get();
            Objects.requireNonNull(bxVar);
            j32.e(ff3Var, "<set-?>");
            p35 p35Var = uk0.this.S1.get();
            j32.e(p35Var, "<set-?>");
            bxVar.s = p35Var;
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class h0 implements e7 {
        public h0(f91 f91Var) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            f91 f91Var = (f91) obj;
            ff3 ff3Var = uk0.this.W.get();
            Objects.requireNonNull(f91Var);
            j32.e(ff3Var, "<set-?>");
            p35 p35Var = uk0.this.S1.get();
            j32.e(p35Var, "<set-?>");
            f91Var.J = p35Var;
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class h1 implements e7 {
        public h1(du3 du3Var) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            du3 du3Var = (du3) obj;
            sx2 sx2Var = uk0.this.U1.get();
            Objects.requireNonNull(du3Var);
            j32.e(sx2Var, "<set-?>");
            du3Var.u = sx2Var;
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class h2 implements e7 {
        public h2(vx4 vx4Var) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            vx4 vx4Var = (vx4) obj;
            ff3 ff3Var = uk0.this.W.get();
            Objects.requireNonNull(vx4Var);
            j32.e(ff3Var, "<set-?>");
            p35 p35Var = uk0.this.S1.get();
            j32.e(p35Var, "<set-?>");
            vx4Var.s = p35Var;
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class i implements e7.a {
        public i(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            ox oxVar = (ox) obj;
            Objects.requireNonNull(oxVar);
            return uk0.this.new j(oxVar);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class i0 implements e7.a {
        public i0(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            fb1 fb1Var = (fb1) obj;
            Objects.requireNonNull(fb1Var);
            return uk0.this.new j0(fb1Var);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class i1 implements e7.a {
        public i1(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            uy3 uy3Var = (uy3) obj;
            Objects.requireNonNull(uy3Var);
            return uk0.this.new j1(uy3Var);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class i2 implements e7.a {
        public i2(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            dy4 dy4Var = (dy4) obj;
            Objects.requireNonNull(dy4Var);
            return uk0.this.new j2(dy4Var);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class j implements e7 {
        public j(ox oxVar) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            ox oxVar = (ox) obj;
            ff3 ff3Var = uk0.this.W.get();
            Objects.requireNonNull(oxVar);
            j32.e(ff3Var, "<set-?>");
            p35 p35Var = uk0.this.S1.get();
            j32.e(p35Var, "<set-?>");
            oxVar.s = p35Var;
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class j0 implements e7 {
        public j0(fb1 fb1Var) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            fb1 fb1Var = (fb1) obj;
            ff3 ff3Var = uk0.this.W.get();
            Objects.requireNonNull(fb1Var);
            j32.e(ff3Var, "<set-?>");
            p35 p35Var = uk0.this.S1.get();
            j32.e(p35Var, "<set-?>");
            fb1Var.s = p35Var;
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class j1 implements e7 {
        public j1(uy3 uy3Var) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            uy3 uy3Var = (uy3) obj;
            ff3 ff3Var = uk0.this.W.get();
            Objects.requireNonNull(uy3Var);
            j32.e(ff3Var, "<set-?>");
            p35 p35Var = uk0.this.S1.get();
            j32.e(p35Var, "<set-?>");
            uy3Var.s = p35Var;
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class j2 implements e7 {
        public j2(dy4 dy4Var) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            dy4 dy4Var = (dy4) obj;
            ff3 ff3Var = uk0.this.W.get();
            Objects.requireNonNull(dy4Var);
            j32.e(ff3Var, "<set-?>");
            p35 p35Var = uk0.this.S1.get();
            j32.e(p35Var, "<set-?>");
            dy4Var.s = p35Var;
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class k implements e7.a {
        public k(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            ux uxVar = (ux) obj;
            Objects.requireNonNull(uxVar);
            return uk0.this.new l(uxVar);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class k0 implements e7.a {
        public k0(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            cm1 cm1Var = (cm1) obj;
            Objects.requireNonNull(cm1Var);
            return uk0.this.new l0(cm1Var);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class k1 implements e7.a {
        public k1(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            yy3 yy3Var = (yy3) obj;
            Objects.requireNonNull(yy3Var);
            return uk0.this.new l1(yy3Var);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class k2 implements e7.a {
        public k2(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            d15 d15Var = (d15) obj;
            Objects.requireNonNull(d15Var);
            return uk0.this.new l2(d15Var);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class l implements e7 {
        public l(ux uxVar) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            ux uxVar = (ux) obj;
            ff3 ff3Var = uk0.this.W.get();
            Objects.requireNonNull(uxVar);
            j32.e(ff3Var, "<set-?>");
            p35 p35Var = uk0.this.S1.get();
            j32.e(p35Var, "<set-?>");
            uxVar.s = p35Var;
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class l0 implements e7 {
        public l0(cm1 cm1Var) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            cm1 cm1Var = (cm1) obj;
            ff3 ff3Var = uk0.this.W.get();
            Objects.requireNonNull(cm1Var);
            j32.e(ff3Var, "<set-?>");
            p35 p35Var = uk0.this.S1.get();
            j32.e(p35Var, "<set-?>");
            cm1Var.s = p35Var;
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class l1 implements e7 {
        public l1(yy3 yy3Var) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            yy3 yy3Var = (yy3) obj;
            ff3 ff3Var = uk0.this.W.get();
            Objects.requireNonNull(yy3Var);
            j32.e(ff3Var, "<set-?>");
            p35 p35Var = uk0.this.S1.get();
            j32.e(p35Var, "<set-?>");
            yy3Var.s = p35Var;
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class l2 implements e7 {
        public l2(d15 d15Var) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            d15 d15Var = (d15) obj;
            ff3 ff3Var = uk0.this.W.get();
            Objects.requireNonNull(d15Var);
            j32.e(ff3Var, "<set-?>");
            p35 p35Var = uk0.this.S1.get();
            j32.e(p35Var, "<set-?>");
            d15Var.s = p35Var;
            d15Var.x = uk0.this.c1.get();
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class m implements e7.a {
        public m(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            u60 u60Var = (u60) obj;
            Objects.requireNonNull(u60Var);
            return uk0.this.new n(u60Var);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class m0 implements e7.a {
        public m0(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            HomeActivity homeActivity = (HomeActivity) obj;
            Objects.requireNonNull(homeActivity);
            return uk0.this.new n0(homeActivity);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class m1 implements e7.a {
        public m1(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            az3 az3Var = (az3) obj;
            Objects.requireNonNull(az3Var);
            return uk0.this.new n1(az3Var);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class m2 implements e7.a {
        public m2(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            VideoPlayerActivity videoPlayerActivity = (VideoPlayerActivity) obj;
            Objects.requireNonNull(videoPlayerActivity);
            return uk0.this.new n2(videoPlayerActivity);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class n implements e7 {
        public n(u60 u60Var) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            u60 u60Var = (u60) obj;
            ff3 ff3Var = uk0.this.W.get();
            Objects.requireNonNull(u60Var);
            j32.e(ff3Var, "<set-?>");
            p35 p35Var = uk0.this.S1.get();
            j32.e(p35Var, "<set-?>");
            u60Var.J = p35Var;
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class n0 implements e7 {
        public n0(HomeActivity homeActivity) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            HomeActivity homeActivity = (HomeActivity) obj;
            ff3 ff3Var = uk0.this.W.get();
            Objects.requireNonNull(homeActivity);
            j32.e(ff3Var, "<set-?>");
            p35 p35Var = uk0.this.S1.get();
            j32.e(p35Var, "<set-?>");
            homeActivity.s = p35Var;
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class n1 implements e7 {
        public n1(az3 az3Var) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            az3 az3Var = (az3) obj;
            ff3 ff3Var = uk0.this.W.get();
            Objects.requireNonNull(az3Var);
            j32.e(ff3Var, "<set-?>");
            p35 p35Var = uk0.this.S1.get();
            j32.e(p35Var, "<set-?>");
            az3Var.s = p35Var;
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class n2 implements e7 {
        public n2(VideoPlayerActivity videoPlayerActivity) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            VideoPlayerActivity videoPlayerActivity = (VideoPlayerActivity) obj;
            ff3 ff3Var = uk0.this.W.get();
            Objects.requireNonNull(videoPlayerActivity);
            j32.e(ff3Var, "<set-?>");
            p35 p35Var = uk0.this.S1.get();
            j32.e(p35Var, "<set-?>");
            videoPlayerActivity.s = p35Var;
            videoPlayerActivity.y = uk0.this.m0.get();
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class o implements e7.a {
        public o(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            DLNAControllerService dLNAControllerService = (DLNAControllerService) obj;
            Objects.requireNonNull(dLNAControllerService);
            return uk0.this.new p(dLNAControllerService);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class o0 implements e7.a {
        public o0(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            vt1 vt1Var = (vt1) obj;
            Objects.requireNonNull(vt1Var);
            return uk0.this.new p0(vt1Var);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class o1 implements e7.a {
        public o1(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            SettingsActivity settingsActivity = (SettingsActivity) obj;
            Objects.requireNonNull(settingsActivity);
            return uk0.this.new p1(settingsActivity);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class p implements e7 {
        public p(DLNAControllerService dLNAControllerService) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            ((DLNAControllerService) obj).F = uk0.this.J0.get();
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class p0 implements e7 {
        public p0(vt1 vt1Var) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            vt1 vt1Var = (vt1) obj;
            ff3 ff3Var = uk0.this.W.get();
            Objects.requireNonNull(vt1Var);
            j32.e(ff3Var, "<set-?>");
            p35 p35Var = uk0.this.S1.get();
            j32.e(p35Var, "<set-?>");
            vt1Var.s = p35Var;
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class p1 implements e7 {
        public p1(SettingsActivity settingsActivity) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            SettingsActivity settingsActivity = (SettingsActivity) obj;
            ff3 ff3Var = uk0.this.W.get();
            Objects.requireNonNull(settingsActivity);
            j32.e(ff3Var, "<set-?>");
            p35 p35Var = uk0.this.S1.get();
            j32.e(p35Var, "<set-?>");
            settingsActivity.s = p35Var;
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class q implements e7.a {
        public q(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            DLNAControlsActivity dLNAControlsActivity = (DLNAControlsActivity) obj;
            Objects.requireNonNull(dLNAControlsActivity);
            return uk0.this.new r(dLNAControlsActivity);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class q0 implements e7.a {
        public q0(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            c32 c32Var = (c32) obj;
            Objects.requireNonNull(c32Var);
            return uk0.this.new r0(c32Var);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class q1 implements e7.a {
        public q1(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            b34 b34Var = (b34) obj;
            Objects.requireNonNull(b34Var);
            return uk0.this.new r1(b34Var);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class r implements e7 {
        public r(DLNAControlsActivity dLNAControlsActivity) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            DLNAControlsActivity dLNAControlsActivity = (DLNAControlsActivity) obj;
            ff3 ff3Var = uk0.this.W.get();
            Objects.requireNonNull(dLNAControlsActivity);
            j32.e(ff3Var, "<set-?>");
            p35 p35Var = uk0.this.S1.get();
            j32.e(p35Var, "<set-?>");
            dLNAControlsActivity.s = p35Var;
            n24 n24Var = uk0.this.J0.get();
            j32.e(n24Var, "<set-?>");
            dLNAControlsActivity.v = n24Var;
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class r0 implements e7 {
        public r0(c32 c32Var) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            c32 c32Var = (c32) obj;
            ff3 ff3Var = uk0.this.W.get();
            Objects.requireNonNull(c32Var);
            j32.e(ff3Var, "<set-?>");
            p35 p35Var = uk0.this.S1.get();
            j32.e(p35Var, "<set-?>");
            c32Var.s = p35Var;
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class r1 implements e7 {
        public r1(b34 b34Var) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            b34 b34Var = (b34) obj;
            ff3 ff3Var = uk0.this.W.get();
            Objects.requireNonNull(b34Var);
            j32.e(ff3Var, "<set-?>");
            p35 p35Var = uk0.this.S1.get();
            j32.e(p35Var, "<set-?>");
            b34Var.s = p35Var;
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class s implements e7.a {
        public s(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            qt0 qt0Var = (qt0) obj;
            Objects.requireNonNull(qt0Var);
            return uk0.this.new t(qt0Var);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class s0 implements e7.a {
        public s0(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            LoginActivity loginActivity = (LoginActivity) obj;
            Objects.requireNonNull(loginActivity);
            return uk0.this.new t0(loginActivity);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class s1 implements e7.a {
        public s1(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            n54 n54Var = (n54) obj;
            Objects.requireNonNull(n54Var);
            return uk0.this.new t1(n54Var);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class t implements e7 {
        public t(qt0 qt0Var) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            qt0 qt0Var = (qt0) obj;
            ff3 ff3Var = uk0.this.W.get();
            Objects.requireNonNull(qt0Var);
            j32.e(ff3Var, "<set-?>");
            p35 p35Var = uk0.this.S1.get();
            j32.e(p35Var, "<set-?>");
            qt0Var.s = p35Var;
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class t0 implements e7 {
        public t0(LoginActivity loginActivity) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            LoginActivity loginActivity = (LoginActivity) obj;
            ff3 ff3Var = uk0.this.W.get();
            Objects.requireNonNull(loginActivity);
            j32.e(ff3Var, "<set-?>");
            p35 p35Var = uk0.this.S1.get();
            j32.e(p35Var, "<set-?>");
            loginActivity.s = p35Var;
            loginActivity.y = uk0.this.e0.get();
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class t1 implements e7 {
        public t1(n54 n54Var) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            n54 n54Var = (n54) obj;
            ff3 ff3Var = uk0.this.W.get();
            Objects.requireNonNull(n54Var);
            j32.e(ff3Var, "<set-?>");
            p35 p35Var = uk0.this.S1.get();
            j32.e(p35Var, "<set-?>");
            n54Var.s = p35Var;
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class u implements e7.a {
        public u(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            ew0 ew0Var = (ew0) obj;
            Objects.requireNonNull(ew0Var);
            return uk0.this.new v(ew0Var);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class u0 implements e7.a {
        public u0(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            k13 k13Var = (k13) obj;
            Objects.requireNonNull(k13Var);
            return uk0.this.new v0(k13Var);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class u1 implements e7.a {
        public u1(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            SignUpActivity signUpActivity = (SignUpActivity) obj;
            Objects.requireNonNull(signUpActivity);
            return uk0.this.new v1(signUpActivity);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class v implements e7 {
        public v(ew0 ew0Var) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            ew0 ew0Var = (ew0) obj;
            ff3 ff3Var = uk0.this.W.get();
            Objects.requireNonNull(ew0Var);
            j32.e(ff3Var, "<set-?>");
            p35 p35Var = uk0.this.S1.get();
            j32.e(p35Var, "<set-?>");
            ew0Var.s = p35Var;
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class v0 implements e7 {
        public v0(k13 k13Var) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            k13 k13Var = (k13) obj;
            ff3 ff3Var = uk0.this.W.get();
            Objects.requireNonNull(k13Var);
            j32.e(ff3Var, "<set-?>");
            p35 p35Var = uk0.this.S1.get();
            j32.e(p35Var, "<set-?>");
            k13Var.s = p35Var;
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class v1 implements e7 {
        public v1(SignUpActivity signUpActivity) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            SignUpActivity signUpActivity = (SignUpActivity) obj;
            ff3 ff3Var = uk0.this.W.get();
            Objects.requireNonNull(signUpActivity);
            j32.e(ff3Var, "<set-?>");
            p35 p35Var = uk0.this.S1.get();
            j32.e(p35Var, "<set-?>");
            signUpActivity.s = p35Var;
            uk0.this.e0.get();
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class w implements e7.a {
        public w(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            bx0 bx0Var = (bx0) obj;
            Objects.requireNonNull(bx0Var);
            return uk0.this.new x(bx0Var);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class w0 implements e7.a {
        public w0(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            jg3 jg3Var = (jg3) obj;
            Objects.requireNonNull(jg3Var);
            return uk0.this.new x0(jg3Var);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class w1 implements e7.a {
        public w1(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            SplashActivity splashActivity = (SplashActivity) obj;
            Objects.requireNonNull(splashActivity);
            return uk0.this.new x1(splashActivity);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class x implements e7 {
        public x(bx0 bx0Var) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            bx0 bx0Var = (bx0) obj;
            ff3 ff3Var = uk0.this.W.get();
            Objects.requireNonNull(bx0Var);
            j32.e(ff3Var, "<set-?>");
            p35 p35Var = uk0.this.S1.get();
            j32.e(p35Var, "<set-?>");
            bx0Var.s = p35Var;
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class x0 implements e7 {
        public x0(jg3 jg3Var) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            jg3 jg3Var = (jg3) obj;
            ff3 ff3Var = uk0.this.W.get();
            Objects.requireNonNull(jg3Var);
            j32.e(ff3Var, "<set-?>");
            p35 p35Var = uk0.this.S1.get();
            j32.e(p35Var, "<set-?>");
            jg3Var.s = p35Var;
            jg3Var.x = uk0.this.c1.get();
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class x1 implements e7 {
        public x1(SplashActivity splashActivity) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            SplashActivity splashActivity = (SplashActivity) obj;
            ff3 ff3Var = uk0.this.W.get();
            Objects.requireNonNull(splashActivity);
            j32.e(ff3Var, "<set-?>");
            p35 p35Var = uk0.this.S1.get();
            j32.e(p35Var, "<set-?>");
            splashActivity.s = p35Var;
            uk0.this.J0.get();
            splashActivity.w = uk0.this.T1.get();
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class y implements e7.a {
        public y(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            DownloadsActivity downloadsActivity = (DownloadsActivity) obj;
            Objects.requireNonNull(downloadsActivity);
            return uk0.this.new z(downloadsActivity);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class y0 implements e7.a {
        public y0(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            QrLoginActivity qrLoginActivity = (QrLoginActivity) obj;
            Objects.requireNonNull(qrLoginActivity);
            return uk0.this.new z0(qrLoginActivity);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class y1 implements e7.a {
        public y1(kj0 kj0Var) {
        }

        @Override // com.shabakaty.downloader.e7.a
        public e7 a(Object obj) {
            hb4 hb4Var = (hb4) obj;
            Objects.requireNonNull(hb4Var);
            return uk0.this.new z1(hb4Var);
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class z implements e7 {
        public z(DownloadsActivity downloadsActivity) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            DownloadsActivity downloadsActivity = (DownloadsActivity) obj;
            ff3 ff3Var = uk0.this.W.get();
            Objects.requireNonNull(downloadsActivity);
            j32.e(ff3Var, "<set-?>");
            p35 p35Var = uk0.this.S1.get();
            j32.e(p35Var, "<set-?>");
            downloadsActivity.s = p35Var;
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class z0 implements e7 {
        public z0(QrLoginActivity qrLoginActivity) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            QrLoginActivity qrLoginActivity = (QrLoginActivity) obj;
            ff3 ff3Var = uk0.this.W.get();
            Objects.requireNonNull(qrLoginActivity);
            j32.e(ff3Var, "<set-?>");
            p35 p35Var = uk0.this.S1.get();
            j32.e(p35Var, "<set-?>");
            qrLoginActivity.s = p35Var;
        }
    }

    /* JADX INFO: compiled from: DaggerAppComponent.java */
    public final class z1 implements e7 {
        public z1(hb4 hb4Var) {
        }

        @Override // com.shabakaty.downloader.e7
        public void a(Object obj) {
            hb4 hb4Var = (hb4) obj;
            ff3 ff3Var = uk0.this.W.get();
            Objects.requireNonNull(hb4Var);
            j32.e(ff3Var, "<set-?>");
            p35 p35Var = uk0.this.S1.get();
            j32.e(p35Var, "<set-?>");
            hb4Var.s = p35Var;
        }
    }

    public uk0(pd0 pd0Var, zl2 zl2Var, xl2 xl2Var, wt2 wt2Var, lk2 lk2Var, c21 c21Var, ll3 ll3Var, Application application, kj0 kj0Var) {
        oj3<pc> oj3Var = qc.a.a;
        Object obj = zu0.c;
        this.U = oj3Var instanceof zu0 ? oj3Var : new zu0(oj3Var);
        oj3<Context> s30Var = new s30(pd0Var);
        s30Var = s30Var instanceof zu0 ? s30Var : new zu0(s30Var);
        this.V = s30Var;
        oj3<ff3> q35Var = new q35(s30Var, 2);
        this.W = q35Var instanceof zu0 ? q35Var : new zu0(q35Var);
        oj3<AppDatabase> km0Var = new km0(xl2Var, this.V, 0);
        km0Var = km0Var instanceof zu0 ? km0Var : new zu0(km0Var);
        this.X = km0Var;
        oj3<jw0> km0Var2 = new km0(xl2Var, km0Var, 1);
        this.Y = km0Var2 instanceof zu0 ? km0Var2 : new zu0(km0Var2);
        oj3<UserManagementConfiguration> s30Var2 = new s30(wt2Var);
        s30Var2 = s30Var2 instanceof zu0 ? s30Var2 : new zu0(s30Var2);
        this.Z = s30Var2;
        oj3<UserManagementApi> oj3VarA = zu0.a(UserManagementModule_Companion_ProvideApiService$usermanagement_debugFactory.create(s30Var2));
        this.a0 = oj3VarA;
        oj3<AccountRepository> oj3VarA2 = zu0.a(AccountRepository_Factory.create(oj3VarA, this.Z, this.V));
        this.b0 = oj3VarA2;
        this.c0 = UserNetworkManager_Factory.create(oj3VarA2);
        this.d0 = zu0.a(ShabakatyAccountManager_Factory.create(this.V, this.Z));
        oj3<UserManagement> oj3VarA3 = zu0.a(UserManagement_Factory.create(this.Z, this.c0, this.d0));
        this.e0 = oj3VarA3;
        oj3<jf> t55Var = new t55(zl2Var, oj3VarA3, 1);
        this.f0 = t55Var instanceof zu0 ? t55Var : new zu0(t55Var);
        oj3<kw1> s30Var3 = new s30(zl2Var);
        this.g0 = s30Var3 instanceof zu0 ? s30Var3 : new zu0(s30Var3);
        oj3<lt3> px4Var = new px4(zl2Var, this.V, this.e0, this.f0, this.g0);
        px4Var = px4Var instanceof zu0 ? px4Var : new zu0(px4Var);
        this.h0 = px4Var;
        oj3<k9> t55Var2 = new t55(zl2Var, px4Var, 0);
        this.i0 = t55Var2 instanceof zu0 ? t55Var2 : new zu0(t55Var2);
        oj3<pm4> oj3Var2 = qm4.a.a;
        this.j0 = oj3Var2 instanceof zu0 ? oj3Var2 : new zu0(oj3Var2);
        oj3<s25> km0Var3 = new km0(xl2Var, this.X, 5);
        this.k0 = km0Var3 instanceof zu0 ? km0Var3 : new zu0(km0Var3);
        oj3<VideoModelMapper> sm2Var = new sm2(c21Var, 14);
        this.l0 = sm2Var instanceof zu0 ? sm2Var : new zu0(sm2Var);
        oj3<y25> q35Var2 = new q35(this.V, 3);
        this.m0 = q35Var2 instanceof zu0 ? q35Var2 : new zu0(q35Var2);
        oj3<FranchiseItemMapper> sm2Var2 = new sm2(c21Var, 2);
        this.n0 = sm2Var2 instanceof zu0 ? sm2Var2 : new zu0(sm2Var2);
        oj3<UserListMapper> sm2Var3 = new sm2(c21Var, 11);
        this.o0 = sm2Var3 instanceof zu0 ? sm2Var3 : new zu0(sm2Var3);
        oj3<TranscodeFileMapper> sm2Var4 = new sm2(c21Var, 10);
        this.p0 = sm2Var4 instanceof zu0 ? sm2Var4 : new zu0(sm2Var4);
        oj3<CommentMapper> sm2Var5 = new sm2(c21Var, 3);
        this.q0 = sm2Var5 instanceof zu0 ? sm2Var5 : new zu0(sm2Var5);
        oj3<VideoStatusMapper> sm2Var6 = new sm2(c21Var, 16);
        this.r0 = sm2Var6 instanceof zu0 ? sm2Var6 : new zu0(sm2Var6);
        oj3<VideoStatusEntityMapper> sm2Var7 = new sm2(c21Var, 15);
        this.s0 = sm2Var7 instanceof zu0 ? sm2Var7 : new zu0(sm2Var7);
        oj3<LogoutResponseMapper> sm2Var8 = new sm2(c21Var, 5);
        this.t0 = sm2Var8 instanceof zu0 ? sm2Var8 : new zu0(sm2Var8);
        oj3<StaffInfoMapper> sm2Var9 = new sm2(c21Var, 0);
        this.u0 = sm2Var9 instanceof zu0 ? sm2Var9 : new zu0(sm2Var9);
        oj3<VideosGroupMapper> sm2Var10 = new sm2(c21Var, 18);
        this.v0 = sm2Var10 instanceof zu0 ? sm2Var10 : new zu0(sm2Var10);
        oj3<NewCategoryItemMapper> sm2Var11 = new sm2(c21Var, 6);
        this.w0 = sm2Var11 instanceof zu0 ? sm2Var11 : new zu0(sm2Var11);
        oj3<UserSettingsMapper> sm2Var12 = new sm2(c21Var, 12);
        this.x0 = sm2Var12 instanceof zu0 ? sm2Var12 : new zu0(sm2Var12);
        oj3<NotificationsListMapper> sm2Var13 = new sm2(c21Var, 7);
        this.y0 = sm2Var13 instanceof zu0 ? sm2Var13 : new zu0(sm2Var13);
        oj3<CommentsRulesMapper> sm2Var14 = new sm2(c21Var, 4);
        this.z0 = sm2Var14 instanceof zu0 ? sm2Var14 : new zu0(sm2Var14);
        oj3<AvailableYearsMapper> sm2Var15 = new sm2(c21Var, 1);
        this.A0 = sm2Var15 instanceof zu0 ? sm2Var15 : new zu0(sm2Var15);
        oj3<SearchItemMapper> sm2Var16 = new sm2(c21Var, 8);
        this.B0 = sm2Var16 instanceof zu0 ? sm2Var16 : new zu0(sm2Var16);
        oj3<VideoStatusMapperFromEntity> sm2Var17 = new sm2(c21Var, 17);
        this.C0 = sm2Var17 instanceof zu0 ? sm2Var17 : new zu0(sm2Var17);
        oj3<VideoModelEntityMapper> sm2Var18 = new sm2(c21Var, 13);
        this.D0 = sm2Var18 instanceof zu0 ? sm2Var18 : new zu0(sm2Var18);
        oj3<StatusMapper> sm2Var19 = new sm2(c21Var, 9);
        this.E0 = sm2Var19 instanceof zu0 ? sm2Var19 : new zu0(sm2Var19);
        oj3<qm2> rm2Var = new rm2(this.V, this.W, this.j0, this.k0, this.l0, this.m0, this.n0, this.o0, this.p0, this.q0, this.r0, this.s0, this.t0, this.u0, this.v0, this.w0, this.x0, this.y0, this.z0, this.A0, this.B0, this.C0, this.D0, this.E0);
        this.F0 = rm2Var instanceof zu0 ? rm2Var : new zu0(rm2Var);
        oj3<vy3> km0Var4 = new km0(xl2Var, this.X, 2);
        this.G0 = km0Var4 instanceof zu0 ? km0Var4 : new zu0(km0Var4);
        oj3<u24> km0Var5 = new km0(xl2Var, this.X, 3);
        this.H0 = km0Var5 instanceof zu0 ? km0Var5 : new zu0(km0Var5);
        oj3<n34> dd1Var = new dd1(this.i0, this.F0, this.G0, this.V, this.j0, this.H0, this.U, 1);
        dd1Var = dd1Var instanceof zu0 ? dd1Var : new zu0(dd1Var);
        this.I0 = dd1Var;
        oj3<n24> wu1Var = new wu1(dd1Var, this.e0, this.W, this.U, 4);
        this.J0 = wu1Var instanceof zu0 ? wu1Var : new zu0(wu1Var);
        oj3<sx4> q35Var3 = new q35(this.i0, 1);
        this.K0 = q35Var3 instanceof zu0 ? q35Var3 : new zu0(q35Var3);
        oj3<g25> km0Var6 = new km0(xl2Var, this.X, 4);
        this.L0 = km0Var6 instanceof zu0 ? km0Var6 : new zu0(km0Var6);
        this.M0 = new wu1(this.V, this.L0, this.k0, this.e0, 0);
        this.N0 = new qd0(pd0Var, this.V);
        oj3<al2> q35Var4 = new q35(this.e0, 17);
        this.O0 = q35Var4 instanceof zu0 ? q35Var4 : new zu0(q35Var4);
        this.P0 = new dd1(this.M0, this.e0, this.W, this.K0, this.N0, this.J0, this.O0, 3);
        oj3<ou1> r5Var = new r5(this.i0, this.F0, this.J0, 2);
        this.Q0 = r5Var instanceof zu0 ? r5Var : new zu0(r5Var);
        oj3<ox4> px4Var2 = new px4(this.i0, this.e0, this.L0, this.k0, this.F0, 0);
        this.R0 = px4Var2 instanceof zu0 ? px4Var2 : new zu0(px4Var2);
        this.S0 = new px4(this.Q0, this.R0, this.W, this.J0, this.O0, 1);
        oj3<jx> r5Var2 = new r5(this.i0, this.F0, this.J0, 1);
        r5Var2 = r5Var2 instanceof zu0 ? r5Var2 : new zu0(r5Var2);
        this.T0 = r5Var2;
        this.U0 = new q35(r5Var2, 4);
        oj3<fz3> wu1Var2 = new wu1(this.i0, this.F0, this.G0, this.J0, 1);
        wu1Var2 = wu1Var2 instanceof zu0 ? wu1Var2 : new zu0(wu1Var2);
        this.V0 = wu1Var2;
        oj3<hz3> n13Var = new n13(wu1Var2, this.W, 4);
        Object obj2 = zu0.c;
        this.W0 = n13Var instanceof zu0 ? n13Var : new zu0(n13Var);
        oj3<UserManagement> oj3Var3 = this.e0;
        oj3<ff3> oj3Var4 = this.W;
        oj3<sx4> oj3Var5 = this.K0;
        oj3<WeakReference<Context>> oj3Var6 = this.N0;
        oj3<n24> oj3Var7 = this.J0;
        oj3<pc> oj3Var8 = this.U;
        oj3<al2> oj3Var9 = this.O0;
        this.X0 = new dd1(oj3Var3, oj3Var4, oj3Var5, oj3Var6, oj3Var7, oj3Var8, oj3Var9, 4);
        this.Y0 = new n13(oj3Var3, oj3Var4, 3);
        oj3<ox4> oj3Var10 = this.R0;
        this.Z0 = new r5(oj3Var3, oj3Var10, oj3Var9, 5);
        this.a1 = new q35(oj3Var3, 13);
        oj3<q15> dd1Var2 = new dd1(this.i0, this.k0, this.L0, this.F0, oj3Var10, oj3Var3, oj3Var7, 2);
        this.b1 = dd1Var2 instanceof zu0 ? dd1Var2 : new zu0(dd1Var2);
        r5 r5Var3 = new r5(this.W, this.e0, this.V, 0);
        oj3<p5> zu0Var = r5Var3 instanceof zu0 ? r5Var3 : new zu0<>(r5Var3);
        this.c1 = zu0Var;
        oj3<q15> oj3Var11 = this.b1;
        oj3<ox4> oj3Var12 = this.R0;
        oj3<UserManagement> oj3Var13 = this.e0;
        oj3<jw0> oj3Var14 = this.Y;
        oj3<WeakReference<Context>> oj3Var15 = this.N0;
        oj3<ff3> oj3Var16 = this.W;
        oj3<n24> oj3Var17 = this.J0;
        this.d1 = new d25(oj3Var11, oj3Var12, oj3Var13, oj3Var14, zu0Var, oj3Var15, oj3Var16, oj3Var17, this.O0);
        oj3<kb4> wu1Var3 = new wu1(this.i0, oj3Var17, this.F0, oj3Var13, 2);
        wu1Var3 = wu1Var3 instanceof zu0 ? wu1Var3 : new zu0(wu1Var3);
        this.e1 = wu1Var3;
        this.f1 = new r5(wu1Var3, this.W, this.O0, 6);
        oj3<m13> n13Var2 = new n13(this.i0, this.F0, 0);
        n13Var2 = n13Var2 instanceof zu0 ? n13Var2 : new zu0(n13Var2);
        this.g1 = n13Var2;
        this.h1 = new q35(n13Var2, 10);
        oj3<ox4> oj3Var18 = this.R0;
        this.i1 = new q35(oj3Var18, 11);
        oj3<UserManagement> oj3Var19 = this.e0;
        this.j1 = new r5(oj3Var19, this.b1, oj3Var18, 7);
        this.k1 = new q35(oj3Var19, 5);
        this.l1 = new q35(this.Y, 9);
        oj3<q54> r5Var4 = new r5(this.i0, this.F0, this.J0, 4);
        r5Var4 = r5Var4 instanceof zu0 ? r5Var4 : new zu0(r5Var4);
        this.m1 = r5Var4;
        this.n1 = new n13(r5Var4, this.N0, 1);
        oj3<jx> oj3Var20 = this.T0;
        oj3<ff3> oj3Var21 = this.W;
        this.o1 = new r5(oj3Var20, oj3Var21, this.O0, 3);
        this.p1 = new q35(this.R0, 12);
        this.q1 = new n13(oj3Var21, this.Q0, 6);
        oj3<ah2> u71Var = new u71(lk2Var, 1);
        this.r1 = u71Var instanceof zu0 ? u71Var : new zu0(u71Var);
        v71 v71Var = new v71(lk2Var, this.V, 1);
        oj3<em0> zu0Var2 = v71Var instanceof zu0 ? v71Var : new zu0(v71Var);
        this.s1 = zu0Var2;
        oj3<o64> w71Var = new w71(lk2Var, this.V, this.r1, zu0Var2, 1);
        this.t1 = w71Var instanceof zu0 ? w71Var : new zu0(w71Var);
        oj3<String> v71Var2 = new v71(lk2Var, this.V, 4);
        this.u1 = v71Var2 instanceof zu0 ? v71Var2 : new zu0(v71Var2);
        oj3<in0> v71Var3 = new v71(lk2Var, this.V, 2);
        v71Var3 = v71Var3 instanceof zu0 ? v71Var3 : new zu0(v71Var3);
        this.v1 = v71Var3;
        oj3<b63.b> a81Var = new a81(lk2Var, this.u1, v71Var3);
        a81Var = a81Var instanceof zu0 ? a81Var : new zu0(a81Var);
        this.w1 = a81Var;
        oj3<rn0> y71Var = new y71(lk2Var, this.V, a81Var);
        this.x1 = y71Var instanceof zu0 ? y71Var : new zu0(y71Var);
        v71 v71Var4 = new v71(lk2Var, this.t1, 0);
        oj3<rp> zu0Var3 = v71Var4 instanceof zu0 ? v71Var4 : new zu0(v71Var4);
        this.y1 = zu0Var3;
        oj3<sp> w71Var2 = new w71(lk2Var, this.t1, this.x1, zu0Var3, 0);
        w71Var2 = w71Var2 instanceof zu0 ? w71Var2 : new zu0(w71Var2);
        this.z1 = w71Var2;
        oj3<vl0.a> x71Var = new x71(lk2Var, w71Var2);
        x71Var = x71Var instanceof zu0 ? x71Var : new zu0(x71Var);
        this.A1 = x71Var;
        oj3<rh3.b> b81Var = new b81(lk2Var, x71Var);
        this.B1 = b81Var instanceof zu0 ? b81Var : new zu0(b81Var);
        oj3<ep0> c81Var = new c81(lk2Var, this.V, this.W);
        this.C1 = c81Var instanceof zu0 ? c81Var : new zu0(c81Var);
        oj3<fj2> u71Var2 = new u71(lk2Var, 2);
        this.D1 = u71Var2 instanceof zu0 ? u71Var2 : new zu0(u71Var2);
        oj3<ie> u71Var3 = new u71(lk2Var, 0);
        this.E1 = u71Var3 instanceof zu0 ? u71Var3 : new zu0(u71Var3);
        v71 v71Var5 = new v71(lk2Var, this.V, 3);
        oj3<to0> zu0Var4 = v71Var5 instanceof zu0 ? v71Var5 : new zu0(v71Var5);
        this.F1 = zu0Var4;
        oj3<s64> z71Var = new z71(lk2Var, this.V, this.C1, this.D1, this.E1, zu0Var4);
        z71Var = z71Var instanceof zu0 ? z71Var : new zu0(z71Var);
        this.G1 = z71Var;
        oj3<ff3> oj3Var22 = this.W;
        oj3<q15> oj3Var23 = this.b1;
        oj3<rh3.b> oj3Var24 = this.B1;
        oj3<n24> oj3Var25 = this.J0;
        oj3<ep0> oj3Var26 = this.C1;
        oj3<UserManagement> oj3Var27 = this.e0;
        oj3<WeakReference<Context>> oj3Var28 = this.N0;
        oj3<ox4> oj3Var29 = this.R0;
        this.H1 = new z10(oj3Var22, oj3Var23, oj3Var24, oj3Var25, oj3Var26, z71Var, oj3Var27, oj3Var28, oj3Var29);
        oj3<jw0> oj3Var30 = this.Y;
        this.I1 = new wu1(oj3Var27, oj3Var30, oj3Var29, oj3Var23, 3);
        oj3<qx0> n13Var3 = new n13(oj3Var30, this.V, 2);
        n13Var3 = n13Var3 instanceof zu0 ? n13Var3 : new zu0(n13Var3);
        this.J1 = n13Var3;
        this.K1 = new q35(n13Var3, 7);
        oj3<iw0> q35Var5 = new q35(this.Y, 6);
        q35Var5 = q35Var5 instanceof zu0 ? q35Var5 : new zu0(q35Var5);
        this.L1 = q35Var5;
        this.M1 = new q35(q35Var5, 8);
        oj3<n24> oj3Var31 = this.J0;
        this.N1 = new q35(oj3Var31, 15);
        this.O1 = new n13(this.e0, oj3Var31, 5);
        this.P1 = new q35(oj3Var31, 14);
        this.Q1 = new q35(oj3Var31, 16);
        LinkedHashMap linkedHashMapL = kf5.l(34);
        oj3<zu1> oj3Var32 = this.P0;
        Objects.requireNonNull(oj3Var32, "provider");
        linkedHashMapL.put(zu1.class, oj3Var32);
        oj3<tu1> oj3Var33 = this.S0;
        Objects.requireNonNull(oj3Var33, "provider");
        linkedHashMapL.put(tu1.class, oj3Var33);
        oj3<kx> oj3Var34 = this.U0;
        Objects.requireNonNull(oj3Var34, "provider");
        linkedHashMapL.put(kx.class, oj3Var34);
        oj3<hz3> oj3Var35 = this.W0;
        Objects.requireNonNull(oj3Var35, "provider");
        linkedHashMapL.put(hz3.class, oj3Var35);
        oj3<fh3> oj3Var36 = this.X0;
        Objects.requireNonNull(oj3Var36, "provider");
        linkedHashMapL.put(fh3.class, oj3Var36);
        oj3<g21> oj3Var37 = this.Y0;
        Objects.requireNonNull(oj3Var37, "provider");
        linkedHashMapL.put(g21.class, oj3Var37);
        oj3<dl2> oj3Var38 = this.Z0;
        Objects.requireNonNull(oj3Var38, "provider");
        linkedHashMapL.put(dl2.class, oj3Var38);
        oj3<fk3> oj3Var39 = this.a1;
        Objects.requireNonNull(oj3Var39, "provider");
        linkedHashMapL.put(fk3.class, oj3Var39);
        oj3<u15> oj3Var40 = this.d1;
        Objects.requireNonNull(oj3Var40, "provider");
        linkedHashMapL.put(u15.class, oj3Var40);
        oj3<mb4> oj3Var41 = this.f1;
        Objects.requireNonNull(oj3Var41, "provider");
        linkedHashMapL.put(mb4.class, oj3Var41);
        linkedHashMapL.put(g44.class, h44.a.a);
        oj3<o13> oj3Var42 = this.h1;
        Objects.requireNonNull(oj3Var42, "provider");
        linkedHashMapL.put(o13.class, oj3Var42);
        oj3<yf4> oj3Var43 = this.i1;
        Objects.requireNonNull(oj3Var43, "provider");
        linkedHashMapL.put(yf4.class, oj3Var43);
        oj3<g70> oj3Var44 = this.j1;
        Objects.requireNonNull(oj3Var44, "provider");
        linkedHashMapL.put(g70.class, oj3Var44);
        oj3<a64> oj3Var45 = this.k1;
        Objects.requireNonNull(oj3Var45, "provider");
        linkedHashMapL.put(a64.class, oj3Var45);
        oj3<zz0> oj3Var46 = this.l1;
        Objects.requireNonNull(oj3Var46, "provider");
        linkedHashMapL.put(zz0.class, oj3Var46);
        oj3<r54> oj3Var47 = this.n1;
        Objects.requireNonNull(oj3Var47, "provider");
        linkedHashMapL.put(r54.class, oj3Var47);
        linkedHashMapL.put(mm1.class, nm1.a.a);
        linkedHashMapL.put(st0.class, tt0.a.a);
        oj3<rx> oj3Var48 = this.o1;
        Objects.requireNonNull(oj3Var48, "provider");
        linkedHashMapL.put(rx.class, oj3Var48);
        linkedHashMapL.put(di2.class, ei2.a.a);
        oj3<by4> oj3Var49 = this.p1;
        Objects.requireNonNull(oj3Var49, "provider");
        linkedHashMapL.put(by4.class, oj3Var49);
        linkedHashMapL.put(fy4.class, gy4.a.a);
        oj3<ka4> oj3Var50 = this.q1;
        Objects.requireNonNull(oj3Var50, "provider");
        linkedHashMapL.put(ka4.class, oj3Var50);
        oj3<q10> oj3Var51 = this.H1;
        Objects.requireNonNull(oj3Var51, "provider");
        linkedHashMapL.put(q10.class, oj3Var51);
        oj3<m91> oj3Var52 = this.I1;
        Objects.requireNonNull(oj3Var52, "provider");
        linkedHashMapL.put(m91.class, oj3Var52);
        oj3<by0> oj3Var53 = this.K1;
        Objects.requireNonNull(oj3Var53, "provider");
        linkedHashMapL.put(by0.class, oj3Var53);
        oj3<jz0> oj3Var54 = this.M1;
        Objects.requireNonNull(oj3Var54, "provider");
        linkedHashMapL.put(jz0.class, oj3Var54);
        oj3<d34> oj3Var55 = this.N1;
        Objects.requireNonNull(oj3Var55, "provider");
        linkedHashMapL.put(d34.class, oj3Var55);
        oj3<kb1> oj3Var56 = this.O1;
        Objects.requireNonNull(oj3Var56, "provider");
        linkedHashMapL.put(kb1.class, oj3Var56);
        oj3<rb> oj3Var57 = this.P1;
        Objects.requireNonNull(oj3Var57, "provider");
        linkedHashMapL.put(rb.class, oj3Var57);
        oj3<ih4> oj3Var58 = this.Q1;
        Objects.requireNonNull(oj3Var58, "provider");
        linkedHashMapL.put(ih4.class, oj3Var58);
        linkedHashMapL.put(fd4.class, gd4.a.a);
        linkedHashMapL.put(bz0.class, cz0.a.a);
        nm2 nm2Var = new nm2(linkedHashMapL, null);
        this.R1 = nm2Var;
        oj3<p35> q35Var6 = new q35(nm2Var, 0);
        this.S1 = q35Var6 instanceof zu0 ? q35Var6 : new zu0(q35Var6);
        oj3<gy2> oj3Var59 = ky2.a.a;
        this.T1 = oj3Var59 instanceof zu0 ? oj3Var59 : new zu0(oj3Var59);
        oj3<sx2> qd0Var = new qd0(ll3Var, this.V);
        this.U1 = qd0Var instanceof zu0 ? qd0Var : new zu0(qd0Var);
    }

    @Override // com.shabakaty.downloader.e7
    public void a(CinemanaApplication cinemanaApplication) {
        CinemanaApplication cinemanaApplication2 = cinemanaApplication;
        com.google.common.collect.f.b(46, "expectedSize");
        com.google.common.collect.r.a aVar = new com.google.common.collect.r.a(46);
        aVar.c(HomeActivity.class, this.a);
        aVar.c(LoginActivity.class, this.b);
        aVar.c(QrLoginActivity.class, this.c);
        aVar.c(SignUpActivity.class, this.d);
        aVar.c(SettingsActivity.class, this.e);
        aVar.c(VideoPlayerActivity.class, this.f);
        aVar.c(SplashActivity.class, this.g);
        aVar.c(DLNAControlsActivity.class, this.h);
        aVar.c(ExpandedControlsActivity.class, this.i);
        aVar.c(StatusActivity.class, this.j);
        aVar.c(DownloadsActivity.class, this.k);
        aVar.c(c32.class, this.l);
        aVar.c(vt1.class, this.m);
        aVar.c(jg3.class, this.n);
        aVar.c(bx.class, this.o);
        aVar.c(yy3.class, this.p);
        aVar.c(k13.class, this.q);
        aVar.c(tf4.class, this.r);
        aVar.c(d15.class, this.s);
        aVar.c(f91.class, this.t);
        aVar.c(u60.class, this.u);
        aVar.c(uy3.class, this.v);
        aVar.c(u4.class, this.w);
        aVar.c(az3.class, this.x);
        aVar.c(e21.class, this.y);
        aVar.c(pz0.class, this.z);
        aVar.c(n54.class, this.A);
        aVar.c(cm1.class, this.B);
        aVar.c(hb4.class, this.C);
        aVar.c(qt0.class, this.D);
        aVar.c(ox.class, this.E);
        aVar.c(vx4.class, this.F);
        aVar.c(dy4.class, this.G);
        aVar.c(ux.class, this.H);
        aVar.c(bx0.class, this.I);
        aVar.c(ew0.class, this.J);
        aVar.c(b34.class, this.K);
        aVar.c(fb1.class, this.L);
        aVar.c(jb.class, this.M);
        aVar.c(vg4.class, this.N);
        aVar.c(on.class, this.O);
        aVar.c(bu3.class, this.P);
        aVar.c(au3.class, this.Q);
        aVar.c(du3.class, this.R);
        aVar.c(cu3.class, this.S);
        aVar.c(DLNAControllerService.class, this.T);
        cinemanaApplication2.r = new iu0<>(aVar.a(), com.google.common.collect.c0.x);
        cinemanaApplication2.v = this.U.get();
        cinemanaApplication2.w = this.W.get();
        cinemanaApplication2.x = this.Y.get();
        cinemanaApplication2.y = this.J0.get();
        cinemanaApplication2.z = this.K0.get();
        cinemanaApplication2.A = this.e0.get();
    }
}
