package com.shabakaty.cinemana;

import android.app.Application;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.os.Build;
import android.util.Log;
import androidx.work.c;
import com.cinemana.pro.R;
import com.facebook.common.logging.FLog;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.backends.pipeline.PipelineDraweeControllerBuilderSupplier;
import com.facebook.drawee.view.SimpleDraweeView;
import com.facebook.imagepipeline.core.ImagePipelineConfig;
import com.facebook.imagepipeline.core.ImagePipelineFactory;
import com.facebook.imagepipeline.core.NativeCodeSetup;
import com.facebook.imagepipeline.nativecode.NativeCodeInitializer;
import com.facebook.imagepipeline.systrace.FrescoSystrace;
import com.facebook.soloader.nativeloader.NativeLoader;
import com.facebook.soloader.nativeloader.SystemDelegate;
import com.liulishuo.filedownloader.BuildConfig;
import com.onesignal.OSSubscriptionState;
import com.onesignal.q0;
import com.shabakaty.cinemana.ca1.DownloadRepair129;
import com.shabakaty.cinemana.ca1.Restart108;
import com.shabakaty.cinemana.ca1.ThemeEngine142;
import com.shabakaty.cinemana.data.db.downloads.CinemanaDownloadItem;
import com.shabakaty.cinemana.features.DownloadTrace;
import com.shabakaty.cinemana.features.MkvReconciler;
import com.shabakaty.cinemana.local.LocalRuntime;
import com.shabakaty.cinemana.ui.home_activity.HomeActivity;
import com.shabakaty.downloader.a33;
import com.shabakaty.downloader.ay3;
import com.shabakaty.downloader.c21;
import com.shabakaty.downloader.cb;
import com.shabakaty.downloader.cp6;
import com.shabakaty.downloader.cu;
import com.shabakaty.downloader.d43;
import com.shabakaty.downloader.do1;
import com.shabakaty.downloader.e23;
import com.shabakaty.downloader.e41;
import com.shabakaty.downloader.e43;
import com.shabakaty.downloader.e7;
import com.shabakaty.downloader.e73;
import com.shabakaty.downloader.f00;
import com.shabakaty.downloader.ff3;
import com.shabakaty.downloader.g00;
import com.shabakaty.downloader.gc0;
import com.shabakaty.downloader.gq0;
import com.shabakaty.downloader.h00;
import com.shabakaty.downloader.hu0;
import com.shabakaty.downloader.iq1;
import com.shabakaty.downloader.iq6;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.j96;
import com.shabakaty.downloader.jg1;
import com.shabakaty.downloader.jv2;
import com.shabakaty.downloader.jw0;
import com.shabakaty.downloader.k41;
import com.shabakaty.downloader.l33;
import com.shabakaty.downloader.l75;
import com.shabakaty.downloader.l91;
import com.shabakaty.downloader.lc;
import com.shabakaty.downloader.ld0;
import com.shabakaty.downloader.lk2;
import com.shabakaty.downloader.ll3;
import com.shabakaty.downloader.lw0;
import com.shabakaty.downloader.m00;
import com.shabakaty.downloader.mw0;
import com.shabakaty.downloader.n00;
import com.shabakaty.downloader.n24;
import com.shabakaty.downloader.n7;
import com.shabakaty.downloader.ne4;
import com.shabakaty.downloader.nh3;
import com.shabakaty.downloader.ny2;
import com.shabakaty.downloader.nz0;
import com.shabakaty.downloader.o24;
import com.shabakaty.downloader.ow4;
import com.shabakaty.downloader.pc;
import com.shabakaty.downloader.pd0;
import com.shabakaty.downloader.pe0;
import com.shabakaty.downloader.qv4;
import com.shabakaty.downloader.r75;
import com.shabakaty.downloader.re4;
import com.shabakaty.downloader.sx4;
import com.shabakaty.downloader.sz1;
import com.shabakaty.downloader.tk2;
import com.shabakaty.downloader.tp6;
import com.shabakaty.downloader.uj2;
import com.shabakaty.downloader.uk0;
import com.shabakaty.downloader.um3;
import com.shabakaty.downloader.v25;
import com.shabakaty.downloader.vd5;
import com.shabakaty.downloader.vk0;
import com.shabakaty.downloader.wb3;
import com.shabakaty.downloader.wk0;
import com.shabakaty.downloader.wl2;
import com.shabakaty.downloader.workers.CheckDownloadsStatusWorker;
import com.shabakaty.downloader.wt2;
import com.shabakaty.downloader.xk0;
import com.shabakaty.downloader.xl2;
import com.shabakaty.downloader.xv3;
import com.shabakaty.downloader.y03;
import com.shabakaty.downloader.y90;
import com.shabakaty.downloader.z24;
import com.shabakaty.downloader.zl2;
import com.shabakaty.usermanagement.UserManagement;
import java.io.File;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import zendesk.core.AnonymousIdentity;
import zendesk.core.Zendesk;
import zendesk.core.ZendeskBlipsProvider;
import zendesk.support.Support;

/* JADX INFO: compiled from: CinemanaApplication.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\b\u0010\tJ\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¨\u0006\n"}, d2 = {"Lcom/shabakaty/cinemana/CinemanaApplication;", "Lcom/shabakaty/downloader/vk0;", "Lcom/shabakaty/downloader/ms1;", "Lcom/shabakaty/downloader/d43;", "Lcom/shabakaty/downloader/e43;", "stateChanges", "Lcom/shabakaty/downloader/qv4;", "onOSSubscriptionChanged", "<init>", "()V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class CinemanaApplication extends vk0 implements d43 {
    public static final /* synthetic */ int B = 0;
    public UserManagement A;
    public Context s;
    public uj2 t;
    public cb u;
    public pc v;
    public ff3 w;
    public jw0 x;
    public n24 y;
    public sx4 z;

    public static final CinemanaDownloadItem d(CinemanaApplication cinemanaApplication, CinemanaDownloadItem cinemanaDownloadItem) {
        try {
            return MkvReconciler.register(cinemanaApplication, cinemanaDownloadItem);
        } catch (Throwable th) {
            return cinemanaDownloadItem;
        }
    }

    @Override // android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        uj2 uj2Var;
        ApplicationInfo applicationInfo;
        j32.e(context, "base");
        synchronized (uj2.c) {
            uj2.e = (uj2) ((uj2.a) uj2.d).invoke(context);
            uj2Var = uj2.e;
            j32.c(uj2Var);
        }
        this.t = uj2Var;
        this.s = uj2Var.a();
        Context contextG = g();
        super.attachBaseContext(contextG);
        DownloadTrace.log(contextG, "APP_ATTACH_BASE_CONTEXT");
        Set<File> set = jv2.a;
        Log.i("MultiDex", "Installing application");
        if (jv2.b) {
            Log.i("MultiDex", "VM has multidex support, MultiDex support library is disabled.");
            return;
        }
        try {
            try {
                applicationInfo = getApplicationInfo();
            } catch (RuntimeException e) {
                Log.w("MultiDex", "Failure while trying to obtain ApplicationInfo from Context. Must be running in test mode. Skip patching.", e);
                applicationInfo = null;
            }
            if (applicationInfo == null) {
                Log.i("MultiDex", "No ApplicationInfo available, i.e. running on a test Context: MultiDex support library is disabled.");
            } else {
                jv2.c(this, new File(applicationInfo.sourceDir), new File(applicationInfo.dataDir), "secondary-dexes", BuildConfig.FLAVOR, true);
                Log.i("MultiDex", "install done");
            }
        } catch (Exception e2) {
            Log.e("MultiDex", "MultiDex installation failure", e2);
            StringBuilder sbA = um3.a("MultiDex installation failed (");
            sbA.append(e2.getMessage());
            sbA.append(").");
            throw new RuntimeException(sbA.toString());
        }
    }

    @Override // com.shabakaty.downloader.vk0
    public e7<? extends vk0> b() {
        pd0 pd0Var = new pd0(g());
        iq6.c(this, Application.class);
        iq6.c(pd0Var, pd0.class);
        uk0 uk0Var = new uk0(pd0Var, new zl2(21), new xl2(14), new wt2(14), new lk2(6), new c21(12), new ll3(15), this, null);
        this.u = uk0Var;
        Objects.requireNonNull(uk0Var);
        cb cbVar = this.u;
        if (cbVar != null) {
            return cbVar;
        }
        j32.l("appComponent");
        throw null;
    }

    public final void e(String str) {
    }

    public final pc f() {
        pc pcVar = this.v;
        if (pcVar != null) {
            return pcVar;
        }
        j32.l("applicationScope");
        throw null;
    }

    public final Context g() {
        Context context = this.s;
        if (context != null) {
            return context;
        }
        j32.l("context");
        throw null;
    }

    public final jw0 h() {
        jw0 jw0Var = this.x;
        if (jw0Var != null) {
            return jw0Var;
        }
        j32.l("downloadDao");
        throw null;
    }

    public final ff3 i() {
        ff3 ff3Var = this.w;
        if (ff3Var != null) {
            return ff3Var;
        }
        j32.l("prefsManager");
        throw null;
    }

    public final UserManagement j() {
        UserManagement userManagement = this.A;
        if (userManagement != null) {
            return userManagement;
        }
        j32.l("userManagement");
        throw null;
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        j32.e(configuration, "newConfig");
        super.onConfigurationChanged(configuration);
        uj2 uj2Var = this.t;
        if (uj2Var != null) {
            uj2Var.a();
        } else {
            j32.l("localeManager");
            throw null;
        }
    }

    @Override // com.shabakaty.downloader.vk0, android.app.Application
    public void onCreate() throws sz1, v25 {
        qv4 qv4Var;
        String str;
        super.onCreate();
        ThemeEngine142.install(this);
        LocalRuntime.init(this);
        DownloadTrace.log(this, "APP_ONCREATE");
        boolean zN = re4.N("productionBeta", "staging", false, 2);
        ny2.b bVar = new ny2.b(null, null, 3);
        ny2.a aVar = new ny2.a(0L, 1);
        bVar.b = "https://aj2376.online/aaddf-api-v3?key=2c4c90085bfe3c9675e5a8b47e32854c&requestUrl=http://epom.com&format=json&tz=3";
        bVar.a = "https://aj2376.online/zTbD9M7Jn40oZ65zNs8nXUjpHBZhdsccGmjHkvUqXH8xuz7zoBFXJ04O34FcozNIa-e5tWe2Vhaot";
        if (zN) {
            TimeUnit timeUnit = TimeUnit.MINUTES;
            j32.e(timeUnit, "timeUnit");
            aVar.a = timeUnit.toMillis(2L);
        }
        k41 k41Var = new k41(bVar, aVar, zN);
        Context contextG = g();
        if (ne4.D(k41Var.a.b)) {
            throw sz1.r;
        }
        if (ne4.D(k41Var.a.a)) {
            throw v25.r;
        }
        e41.a = new gq0(contextG, k41Var);
        Intent intent = new Intent(g(), (Class<?>) HomeActivity.class);
        intent.putExtra("DownloadsKey", true);
        PendingIntent activity = PendingIntent.getActivity(g(), 14062020, intent, 134217728);
        Context applicationContext = getApplicationContext();
        j32.d(applicationContext, "context.applicationContext");
        xk0.a = new wk0(new ow4(5), new cp6(7), new zl2(22), new xl2(15), applicationContext, null);
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationManager notificationManager = (NotificationManager) ld0.e(this, NotificationManager.class);
            if ((notificationManager == null ? null : notificationManager.getNotificationChannel("com.shabakaty.downloader.CHANNEL_ID")) == null) {
                NotificationChannel notificationChannel = new NotificationChannel("com.shabakaty.downloader.CHANNEL_ID", "Shabakaty Downloader", 1);
                if (notificationManager != null) {
                    notificationManager.createNotificationChannel(notificationChannel);
                }
            }
        }
        try {
            y90.a aVar2 = new y90.a();
            aVar2.a = 2;
            r75.c(this, new y90(aVar2));
            gc0.a aVar3 = new gc0.a();
            aVar3.a = c.NOT_ROAMING;
            aVar3.b = true;
            aVar3.c = true;
            gc0 gc0Var = new gc0(aVar3);
            wb3.a aVar4 = new wb3.a(CheckDownloadsStatusWorker.class, 15L, TimeUnit.MINUTES);
            aVar4.b.j = gc0Var;
            aVar4.c.add("CheckDownloadPeriodic");
            wb3 wb3VarA = aVar4.d(20L, TimeUnit.SECONDS).a();
            j32.d(wb3VarA, "PeriodicWorkRequestBuild…nit.SECONDS)\n\t\t\t\t.build()");
            r75 r75VarB = r75.b(this);
            j32.d(r75VarB, "getInstance(context)");
            new l75(r75VarB, "CheckDownloadPeriodic", 1, Collections.singletonList(wb3VarA), null).d();
        } catch (Throwable th) {
            j96.b(th);
        }
        z24.b = new l91(this);
        Objects.requireNonNull(mw0.a());
        lw0.b = false;
        z24.b = new cu(this);
        z24.a = 3;
        z24.c = R.drawable.ic_cinemana_notification;
        j32.d(activity, "downloadsIntent");
        z24.d = activity;
        new lc(this).invoke(nz0.a);
        q0.g = 7;
        q0.f = 1;
        q0.F(this);
        q0.V("4d0d7dc4-cd72-4057-8c55-2376a4e9011f");
        q0.n = new y03(g());
        if (q0.o) {
            q0.j();
        }
        e23 e23VarQ = q0.q();
        if (e23VarQ == null || (str = e23VarQ.a) == null) {
            qv4Var = null;
        } else {
            vd5.u(j32.j("userId: ", str), "CinemanaOneSignal");
            e(str);
            qv4Var = qv4.a;
        }
        if (qv4Var == null) {
            q0.d(this);
        }
        tp6.a(j().observeLoginState().b().j(ay3.c).f(n7.a()).g(new f00(this), h00.s, do1.c, jg1.INSTANCE), null);
        FrescoSystrace.b();
        if (Fresco.b) {
            FLog.l(Fresco.class, "Fresco has already been initialized! `Fresco.initialize(...)` should only be called 1 single time to avoid memory leaks!");
        } else {
            Fresco.b = true;
        }
        NativeCodeSetup.a = true;
        if (!NativeLoader.b()) {
            FrescoSystrace.b();
            try {
                try {
                    try {
                        try {
                            NativeCodeInitializer.class.getMethod(ZendeskBlipsProvider.ACTION_CORE_INIT, Context.class).invoke(null, this);
                        } catch (InvocationTargetException unused) {
                            NativeLoader.a(new SystemDelegate());
                        }
                    } catch (NoSuchMethodException unused2) {
                        NativeLoader.a(new SystemDelegate());
                    }
                } catch (ClassNotFoundException unused3) {
                    NativeLoader.a(new SystemDelegate());
                } catch (IllegalAccessException unused4) {
                    NativeLoader.a(new SystemDelegate());
                }
                FrescoSystrace.b();
            } catch (Throwable th2) {
                FrescoSystrace.b();
                throw th2;
            }
        }
        Context applicationContext2 = getApplicationContext();
        synchronized (ImagePipelineFactory.class) {
            FrescoSystrace.b();
            ImagePipelineConfig.DefaultImageRequestConfig defaultImageRequestConfig = ImagePipelineConfig.w;
            ImagePipelineFactory.j(new ImagePipelineConfig(new ImagePipelineConfig.Builder(applicationContext2, null), null));
            FrescoSystrace.b();
        }
        FrescoSystrace.b();
        PipelineDraweeControllerBuilderSupplier pipelineDraweeControllerBuilderSupplier = new PipelineDraweeControllerBuilderSupplier(applicationContext2);
        Fresco.a = pipelineDraweeControllerBuilderSupplier;
        SimpleDraweeView.y = pipelineDraweeControllerBuilderSupplier;
        FrescoSystrace.b();
        FrescoSystrace.b();
        SharedPreferences sharedPreferences = getApplicationContext().getSharedPreferences("once", 0);
        j32.d(sharedPreferences, "context.applicationConte…e\", Context.MODE_PRIVATE)");
        e73.b = sharedPreferences;
        n24 n24Var = this.y;
        if (n24Var == null) {
            j32.l("settings");
            throw null;
        }
        nh3.y(n24Var.d, null, 0, new o24(n24Var, null), 3, null);
        pc pcVarF = f();
        pe0 pe0Var = hu0.a;
        nh3.y(pcVarF, wl2.a, 0, new m00(this, null), 2, null);
        xv3.a = g00.s;
        nh3.y(iq1.r, hu0.b, 0, new n00(this, null), 2, null);
        tk2.d = true;
        Zendesk zendesk2 = Zendesk.INSTANCE;
        zendesk2.init(getApplicationContext(), "https://shabakaty.zendesk.com", "37916c3f8277e860da297f4a0428d6812e8332995dc26c0e", "mobile_sdk_client_92fdf306b287f4895024");
        zendesk2.setIdentity(new AnonymousIdentity());
        Support.INSTANCE.init(zendesk2);
        Restart108.bootstrap(this);
        DownloadRepair129.startup(this);
    }

    public void onOSSubscriptionChanged(e43 e43Var) {
        OSSubscriptionState oSSubscriptionState;
        String str = null;
        if (e43Var != null && (oSSubscriptionState = e43Var.b) != null) {
            str = oSSubscriptionState.s;
        }
        if (str == null || ne4.D(str)) {
            return;
        }
        vd5.u(j32.j("userId: ", str), "CinemanaOneSignal");
        j32.c(str);
        e(str);
        if (q0.b == null) {
            ((a33) q0.u).b("OneSignal.initWithContext has not been called. Could not modify subscription observer");
            return;
        }
        l33<d43, e43> l33VarX = q0.x();
        for (int i = 0; i < l33VarX.b.size(); i++) {
            if (((WeakReference) l33VarX.b.get(i)).get().equals(this)) {
                l33VarX.b.remove(i);
                return;
            }
        }
    }
}
