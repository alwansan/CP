package com.shabakaty.downloader;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Build;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.SystemAlarmService;
import androidx.work.impl.background.systemjob.SystemJobService;
import androidx.work.impl.utils.ForceStopRunnable;
import com.cinemana.pro.R;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: WorkManagerImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class r75 extends q75 {
    public static final String k = ok2.e("WorkManagerImpl");
    public static r75 l = null;
    public static r75 m = null;
    public static final Object n = new Object();
    public Context a;
    public y90 b;
    public WorkDatabase c;
    public bl4 d;
    public List<xx3> e;
    public fg3 f;
    public ef3 g;
    public boolean h;
    public BroadcastReceiver.PendingResult i;
    public volatile hr3 j;

    public r75(Context context, y90 y90Var, bl4 bl4Var) {
        vt3.a aVarA;
        xx3 tj4Var;
        boolean z = context.getResources().getBoolean(R.bool.workmanager_test_configuration);
        Context applicationContext = context.getApplicationContext();
        x04 x04Var = ((s75) bl4Var).a;
        int i = WorkDatabase.o;
        xx3 xx3Var = null;
        if (z) {
            aVarA = new vt3.a(applicationContext, WorkDatabase.class, null);
            aVarA.h = true;
        } else {
            String str = o75.a;
            aVarA = ut3.a(applicationContext, WorkDatabase.class, "androidx.work.workdb");
            aVarA.g = new m75(applicationContext);
        }
        aVarA.e = x04Var;
        n75 n75Var = new n75();
        if (aVarA.d == null) {
            aVarA.d = new ArrayList<>();
        }
        aVarA.d.add(n75Var);
        aVarA.a(androidx.work.impl.a.a);
        aVarA.a(new androidx.work.impl.a.g(applicationContext, 2, 3));
        aVarA.a(androidx.work.impl.a.b);
        aVarA.a(androidx.work.impl.a.c);
        aVarA.a(new androidx.work.impl.a.g(applicationContext, 5, 6));
        aVarA.a(androidx.work.impl.a.d);
        aVarA.a(androidx.work.impl.a.e);
        aVarA.a(androidx.work.impl.a.f);
        aVarA.a(new androidx.work.impl.a.h(applicationContext));
        aVarA.a(new androidx.work.impl.a.g(applicationContext, 10, 11));
        aVarA.i = false;
        aVarA.j = true;
        WorkDatabase workDatabase = (WorkDatabase) aVarA.b();
        Context applicationContext2 = context.getApplicationContext();
        ok2.a aVar = new ok2.a(y90Var.f);
        synchronized (ok2.class) {
            ok2.a = aVar;
        }
        xx3[] xx3VarArr = new xx3[2];
        String str2 = by3.a;
        if (Build.VERSION.SDK_INT >= 23) {
            tj4Var = new dk4(applicationContext2, this);
            p93.a(applicationContext2, SystemJobService.class, true);
            ok2.c().a(by3.a, "Created SystemJobScheduler and enabled SystemJobService", new Throwable[0]);
        } else {
            try {
                xx3 xx3Var2 = (xx3) Class.forName("androidx.work.impl.background.gcm.GcmScheduler").getConstructor(Context.class).newInstance(applicationContext2);
                ok2.c().a(by3.a, String.format("Created %s", "androidx.work.impl.background.gcm.GcmScheduler"), new Throwable[0]);
                xx3Var = xx3Var2;
            } catch (Throwable th) {
                ok2.c().a(by3.a, "Unable to create GCM Scheduler", th);
            }
            if (xx3Var == null) {
                tj4Var = new tj4(applicationContext2);
                p93.a(applicationContext2, SystemAlarmService.class, true);
                ok2.c().a(by3.a, "Created SystemAlarmScheduler", new Throwable[0]);
            } else {
                tj4Var = xx3Var;
            }
        }
        xx3VarArr[0] = tj4Var;
        xx3VarArr[1] = new zq1(applicationContext2, y90Var, bl4Var, this);
        List<xx3> listAsList = Arrays.asList(xx3VarArr);
        fg3 fg3Var = new fg3(context, y90Var, bl4Var, workDatabase, listAsList);
        Context applicationContext3 = context.getApplicationContext();
        this.a = applicationContext3;
        this.b = y90Var;
        this.d = bl4Var;
        this.c = workDatabase;
        this.e = listAsList;
        this.f = fg3Var;
        this.g = new ef3(workDatabase);
        this.h = false;
        if (Build.VERSION.SDK_INT >= 24 && applicationContext3.isDeviceProtectedStorage()) {
            throw new IllegalStateException("Cannot initialize WorkManager in direct boot mode");
        }
        ((s75) this.d).a.execute(new ForceStopRunnable(applicationContext3, this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static r75 b(Context context) {
        r75 r75VarB;
        Object obj = n;
        synchronized (obj) {
            synchronized (obj) {
                r75VarB = l;
                if (r75VarB == null) {
                    r75VarB = m;
                }
            }
            return r75VarB;
        }
        if (r75VarB == null) {
            Context applicationContext = context.getApplicationContext();
            if (!(applicationContext instanceof y90.b)) {
                throw new IllegalStateException("WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider.");
            }
            c(applicationContext, ((y90.b) applicationContext).a());
            r75VarB = b(applicationContext);
        }
        return r75VarB;
    }

    public static void c(Context context, y90 y90Var) {
        synchronized (n) {
            r75 r75Var = l;
            if (r75Var != null && m != null) {
                throw new IllegalStateException("WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information.");
            }
            if (r75Var == null) {
                Context applicationContext = context.getApplicationContext();
                if (m == null) {
                    m = new r75(applicationContext, y90Var, new s75(y90Var.b));
                }
                l = m;
            }
        }
    }

    public void d() {
        List<JobInfo> listF;
        if (Build.VERSION.SDK_INT >= 23) {
            Context context = this.a;
            String str = dk4.v;
            JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
            if (jobScheduler != null && (listF = dk4.f(context, jobScheduler)) != null && !listF.isEmpty()) {
                Iterator<JobInfo> it = listF.iterator();
                while (it.hasNext()) {
                    dk4.b(jobScheduler, it.next().getId());
                }
            }
        }
        f85 f85Var = (f85) this.c.u();
        f85Var.a.b();
        ci4 ci4VarA = f85Var.i.a();
        vt3 vt3Var = f85Var.a;
        vt3Var.a();
        vt3Var.i();
        try {
            ci4VarA.P();
            f85Var.a.n();
            f85Var.a.j();
            f54 f54Var = f85Var.i;
            if (ci4VarA == f54Var.c) {
                f54Var.a.set(false);
            }
            by3.a(this.b, this.c, this.e);
        } catch (Throwable th) {
            f85Var.a.j();
            f85Var.i.d(ci4VarA);
            throw th;
        }
    }

    public void e(String str) {
        bl4 bl4Var = this.d;
        ((s75) bl4Var).a.execute(new jd4(this, str, false));
    }

    public final void f() {
        try {
            this.j = (hr3) Class.forName("androidx.work.multiprocess.RemoteWorkManagerClient").getConstructor(Context.class, r75.class).newInstance(this.a, this);
        } catch (Throwable th) {
            ok2.c().a(k, "Unable to initialize multi-process support", th);
        }
    }
}
