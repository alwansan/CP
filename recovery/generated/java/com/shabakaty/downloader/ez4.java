package com.shabakaty.downloader;

import android.R;
import android.app.Activity;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.google.android.material.snackbar.Snackbar;
import com.liulishuo.filedownloader.BuildConfig;
import java.lang.ref.WeakReference;
import java.net.URL;
import java.util.Objects;

/* JADX INFO: compiled from: UtilsAsync.java */
/* JADX INFO: loaded from: classes.dex */
public class ez4 extends AsyncTask<Void, Void, rw4> {
    public WeakReference<Context> a;
    public ch2 b;
    public Boolean c;
    public int d;
    public String e;
    public vw1 f;

    public ez4(Context context, Boolean bool, int i, String str, vw1 vw1Var) {
        this.a = new WeakReference<>(context);
        this.b = new ch2(context);
        this.c = bool;
        this.d = i;
        this.e = str;
        this.f = vw1Var;
    }

    @Override // android.os.AsyncTask
    public rw4 doInBackground(Void[] voidArr) {
        try {
            int i = this.d;
            int i2 = 5;
            if (i == 5 || i == 6) {
                String str = this.e;
                rw4 rw4VarB = i == 5 ? new qa3(str, 1).b() : new qa3(str, 0).b();
                if (rw4VarB != null) {
                    return rw4VarB;
                }
                if (this.d != 5) {
                    i2 = 7;
                }
                vw1 vw1Var = this.f;
                if (vw1Var != null) {
                    ((ub) vw1Var).a(i2);
                }
                cancel(true);
            } else {
                Context context = this.a.get();
                if (context != null) {
                    return jz4.c(context, this.d);
                }
                cancel(true);
            }
        } catch (Exception unused) {
            cancel(true);
        }
        return null;
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(rw4 rw4Var) {
        String str;
        Boolean boolValueOf;
        byte b;
        rw4 rw4Var2 = rw4Var;
        super.onPostExecute(rw4Var2);
        if (this.f != null) {
            if (!Boolean.valueOf(rw4Var2.a.matches(".*\\d+.*")).booleanValue()) {
                ((ub) this.f).a(1);
                return;
            }
            ub ubVar = (ub) this.f;
            Context context = ubVar.a.a;
            if ((context instanceof Activity) && ((Activity) context).isFinishing()) {
                return;
            }
            Context context2 = ubVar.a.a;
            try {
                str = context2.getPackageManager().getPackageInfo(context2.getPackageName(), 0).versionName;
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
                str = "0.0.0.0";
            }
            vb vbVar = ubVar.a;
            Context context3 = vbVar.a;
            int i = vbVar.r;
            try {
                i = context3.getPackageManager().getPackageInfo(context3.getPackageName(), 0).versionCode;
            } catch (PackageManager.NameNotFoundException e2) {
                e2.printStackTrace();
            }
            Integer numValueOf = Integer.valueOf(i);
            Integer num = rw4Var2.b;
            if (num != null && num.intValue() > 0) {
                boolValueOf = Boolean.valueOf(rw4Var2.b.intValue() > numValueOf.intValue());
            } else if (TextUtils.equals(str, "0.0.0.0") || TextUtils.equals(rw4Var2.a, "0.0.0.0")) {
                boolValueOf = Boolean.FALSE;
            } else {
                try {
                    String strReplaceAll = str.replaceAll("[^0-9?!\\.]", BuildConfig.FLAVOR).replaceAll("\\.(\\.|$)", "\\.0$1");
                    if (!strReplaceAll.matches("[0-9]+(\\.[0-9]+)*")) {
                        throw new Exception("Invalid version format. Original: `" + str + "` trimmed: `" + strReplaceAll + "`");
                    }
                    String str2 = rw4Var2.a;
                    String strReplaceAll2 = str2.replaceAll("[^0-9?!\\.]", BuildConfig.FLAVOR).replaceAll("\\.(\\.|$)", "\\.0$1");
                    if (!strReplaceAll2.matches("[0-9]+(\\.[0-9]+)*")) {
                        throw new Exception("Invalid version format. Original: `" + str2 + "` trimmed: `" + strReplaceAll2 + "`");
                    }
                    String[] strArrSplit = strReplaceAll.split("\\.");
                    String[] strArrSplit2 = strReplaceAll2.split("\\.");
                    int iMax = Math.max(strArrSplit.length, strArrSplit2.length);
                    int i2 = 0;
                    while (true) {
                        if (i2 >= iMax) {
                            b = 0;
                            break;
                        }
                        int i3 = i2 < strArrSplit.length ? Integer.parseInt(strArrSplit[i2]) : 0;
                        int i4 = i2 < strArrSplit2.length ? Integer.parseInt(strArrSplit2[i2]) : 0;
                        if (i3 < i4) {
                            b = -1;
                            break;
                        } else {
                            if (i3 > i4) {
                                b = 1;
                                break;
                            }
                            i2++;
                        }
                    }
                    boolValueOf = Boolean.valueOf(b < 0);
                } catch (Exception e3) {
                    e3.printStackTrace();
                    boolValueOf = Boolean.FALSE;
                }
            }
            if (!boolValueOf.booleanValue()) {
                if (ubVar.a.h.booleanValue()) {
                    int iK = su.k(ubVar.a.c);
                    if (iK == 0) {
                        vb vbVar2 = ubVar.a;
                        Context context4 = vbVar2.a;
                        vbVar2.o = new androidx.appcompat.app.b.a(context4).setTitle(vbVar2.m).c(vb.b(vbVar2, context4)).f(context4.getResources().getString(R.string.ok), new fz4()).create();
                        vb vbVar3 = ubVar.a;
                        vbVar3.o.setCancelable(vbVar3.q.booleanValue());
                        ubVar.a.o.show();
                        return;
                    }
                    if (iK == 1) {
                        vb vbVar4 = ubVar.a;
                        Context context5 = vbVar4.a;
                        String strB = vb.b(vbVar4, context5);
                        int i5 = ubVar.a.e;
                        Boolean bool = Boolean.FALSE;
                        if (su.k(i5) == 1) {
                            bool = Boolean.TRUE;
                        }
                        vbVar4.p = Snackbar.l(((Activity) context5).findViewById(R.id.content), strB, bool.booleanValue() ? -2 : 0);
                        ubVar.a.p.p();
                        return;
                    }
                    if (iK != 2) {
                        return;
                    }
                    vb vbVar5 = ubVar.a;
                    Context context6 = vbVar5.a;
                    String str3 = vbVar5.m;
                    String strB2 = vb.b(vbVar5, context6);
                    int i6 = ubVar.a.n;
                    NotificationManager notificationManager = (NotificationManager) context6.getSystemService("notification");
                    hz4.b(context6, notificationManager);
                    m03 m03VarA = hz4.a(context6, PendingIntent.getActivity(context6, 0, context6.getPackageManager().getLaunchIntentForPackage(context6.getPackageName()), 268435456), str3, strB2, i6);
                    m03VarA.i(16, true);
                    notificationManager.notify(0, m03VarA.c());
                    return;
                }
                return;
            }
            Integer numValueOf2 = Integer.valueOf(ubVar.a.b.a.getInt("prefSuccessfulChecks", 0));
            if (Boolean.valueOf(numValueOf2.intValue() % ubVar.a.g.intValue() == 0).booleanValue()) {
                int iK2 = su.k(ubVar.a.c);
                if (iK2 == 0) {
                    Objects.requireNonNull(ubVar.a);
                    vb vbVar6 = ubVar.a;
                    Context context7 = vbVar6.a;
                    sw4 sw4Var = new sw4(context7, vbVar6.d, rw4Var2.d, vbVar6.q);
                    mt0 mt0Var = new mt0(context7);
                    vb vbVar7 = ubVar.a;
                    Context context8 = vbVar7.a;
                    String str4 = vbVar7.i;
                    String strA = vb.a(vbVar7, context8, rw4Var2, 1);
                    vb vbVar8 = ubVar.a;
                    vbVar7.o = new androidx.appcompat.app.b.a(context8).setTitle(str4).c(strA).f(vbVar8.k, sw4Var).d(vbVar8.j, null).e(vbVar8.l, mt0Var).create();
                    vb vbVar9 = ubVar.a;
                    vbVar9.o.setCancelable(vbVar9.q.booleanValue());
                    ubVar.a.o.show();
                } else if (iK2 == 1) {
                    vb vbVar10 = ubVar.a;
                    Context context9 = vbVar10.a;
                    String strA2 = vb.a(vbVar10, context9, rw4Var2, 2);
                    int i7 = ubVar.a.e;
                    Boolean bool2 = Boolean.FALSE;
                    if (su.k(i7) == 1) {
                        bool2 = Boolean.TRUE;
                    }
                    vb vbVar11 = ubVar.a;
                    int i8 = vbVar11.d;
                    URL url = rw4Var2.d;
                    Boolean bool3 = vbVar11.q;
                    Snackbar snackbarL = Snackbar.l(((Activity) context9).findViewById(R.id.content), strA2, bool2.booleanValue() ? -2 : 0);
                    snackbarL.n(context9.getResources().getString(com.cinemana.pro.R.string.appupdater_btn_update), new gz4(context9, i8, url, bool3));
                    vbVar10.p = snackbarL;
                    ubVar.a.p.p();
                } else if (iK2 == 2) {
                    vb vbVar12 = ubVar.a;
                    Context context10 = vbVar12.a;
                    String str5 = vbVar12.i;
                    String strA3 = vb.a(vbVar12, context10, rw4Var2, 3);
                    vb vbVar13 = ubVar.a;
                    int i9 = vbVar13.d;
                    URL url2 = rw4Var2.d;
                    int i10 = vbVar13.n;
                    NotificationManager notificationManager2 = (NotificationManager) context10.getSystemService("notification");
                    hz4.b(context10, notificationManager2);
                    PendingIntent activity = PendingIntent.getActivity(context10, 0, context10.getPackageManager().getLaunchIntentForPackage(context10.getPackageName()), 268435456);
                    PendingIntent activity2 = PendingIntent.getActivity(context10, 0, jz4.f(context10, i9, url2), 268435456);
                    m03 m03VarA2 = hz4.a(context10, activity, str5, strA3, i10);
                    m03VarA2.a(com.cinemana.pro.R.drawable.ic_system_update_white_24dp, context10.getResources().getString(com.cinemana.pro.R.string.appupdater_btn_update), activity2);
                    notificationManager2.notify(0, m03VarA2.c());
                }
            }
            ch2 ch2Var = ubVar.a.b;
            ch2Var.b.putInt("prefSuccessfulChecks", Integer.valueOf(numValueOf2.intValue() + 1).intValue());
            ch2Var.b.commit();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x007a, code lost:
    
        if (r2.booleanValue() == false) goto L32;
     */
    @Override // android.os.AsyncTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onPreExecute() {
        /*
            r5 = this;
            super.onPreExecute()
            java.lang.ref.WeakReference<android.content.Context> r0 = r5.a
            java.lang.Object r0 = r0.get()
            android.content.Context r0 = (android.content.Context) r0
            r1 = 1
            if (r0 == 0) goto Lb9
            com.shabakaty.downloader.vw1 r2 = r5.f
            if (r2 != 0) goto L14
            goto Lb9
        L14:
            java.lang.Boolean r2 = java.lang.Boolean.FALSE
            java.lang.String r3 = "connectivity"
            java.lang.Object r0 = r0.getSystemService(r3)
            android.net.ConnectivityManager r0 = (android.net.ConnectivityManager) r0
            if (r0 == 0) goto L2f
            android.net.NetworkInfo r0 = r0.getActiveNetworkInfo()
            if (r0 == 0) goto L2f
            boolean r0 = r0.isConnected()
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            goto L30
        L2f:
            r0 = r2
        L30:
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto Lad
            java.lang.Boolean r0 = r5.c
            boolean r0 = r0.booleanValue()
            if (r0 != 0) goto L56
            com.shabakaty.downloader.ch2 r0 = r5.b
            android.content.SharedPreferences r0 = r0.a
            java.lang.String r3 = "prefAppUpdaterShow"
            boolean r0 = r0.getBoolean(r3, r1)
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            boolean r0 = r0.booleanValue()
            if (r0 != 0) goto L56
            r5.cancel(r1)
            goto Lbc
        L56:
            int r0 = r5.d
            r3 = 2
            if (r0 != r3) goto L66
            com.shabakaty.downloader.vw1 r0 = r5.f
            com.shabakaty.downloader.ub r0 = (com.shabakaty.downloader.ub) r0
            r0.a(r3)
            r5.cancel(r1)
            goto Lbc
        L66:
            r3 = 5
            if (r0 != r3) goto L88
            java.lang.String r0 = r5.e
            if (r0 == 0) goto L7c
            java.net.URL r3 = new java.net.URL     // Catch: java.net.MalformedURLException -> L75
            r3.<init>(r0)     // Catch: java.net.MalformedURLException -> L75
            java.lang.Boolean r2 = java.lang.Boolean.TRUE     // Catch: java.net.MalformedURLException -> L75
            goto L76
        L75:
        L76:
            boolean r0 = r2.booleanValue()
            if (r0 != 0) goto L88
        L7c:
            com.shabakaty.downloader.vw1 r0 = r5.f
            r2 = 4
            com.shabakaty.downloader.ub r0 = (com.shabakaty.downloader.ub) r0
            r0.a(r2)
            r5.cancel(r1)
            goto Lbc
        L88:
            int r0 = r5.d
            r2 = 6
            if (r0 != r2) goto Lbc
            java.lang.String r0 = r5.e
            if (r0 == 0) goto La2
            java.lang.Boolean r3 = java.lang.Boolean.FALSE
            java.net.URL r4 = new java.net.URL     // Catch: java.net.MalformedURLException -> L9b
            r4.<init>(r0)     // Catch: java.net.MalformedURLException -> L9b
            java.lang.Boolean r3 = java.lang.Boolean.TRUE     // Catch: java.net.MalformedURLException -> L9b
            goto L9c
        L9b:
        L9c:
            boolean r0 = r3.booleanValue()
            if (r0 != 0) goto Lbc
        La2:
            com.shabakaty.downloader.vw1 r0 = r5.f
            com.shabakaty.downloader.ub r0 = (com.shabakaty.downloader.ub) r0
            r0.a(r2)
            r5.cancel(r1)
            goto Lbc
        Lad:
            com.shabakaty.downloader.vw1 r0 = r5.f
            r2 = 3
            com.shabakaty.downloader.ub r0 = (com.shabakaty.downloader.ub) r0
            r0.a(r2)
            r5.cancel(r1)
            goto Lbc
        Lb9:
            r5.cancel(r1)
        Lbc:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.shabakaty.downloader.ez4.onPreExecute():void");
    }
}
