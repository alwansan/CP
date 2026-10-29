package com.shabakaty.downloader;

import android.util.Log;
import com.connectsdk.service.command.ServiceCommand;
import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import com.liulishuo.filedownloader.BuildConfig;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
import org.json.JSONObject;

/* JADX INFO: compiled from: NetworkInformation.kt */
/* JADX INFO: loaded from: classes.dex */
public final class gy2 {
    public String a;
    public String b;
    public String c;
    public String d;
    public final a63 e = new a63();

    /* JADX INFO: compiled from: NetworkInformation.kt */
    public static final class a implements wq {
        public final /* synthetic */ boolean a;
        public final /* synthetic */ gy2 b;

        public a(boolean z, gy2 gy2Var) {
            this.a = z;
            this.b = gy2Var;
        }

        @Override // com.shabakaty.downloader.wq
        public void onFailure(mq mqVar, IOException iOException) {
            j32.e(mqVar, "call");
            j32.e(iOException, "e");
            if (this.a) {
                this.b.b = BuildConfig.FLAVOR;
            } else {
                this.b.a = BuildConfig.FLAVOR;
            }
            gy2.a(this.b);
        }

        @Override // com.shabakaty.downloader.wq
        public void onResponse(mq mqVar, ws3 ws3Var) {
            j32.e(mqVar, "call");
            j32.e(ws3Var, "response");
            if (this.a) {
                gy2 gy2Var = this.b;
                ys3 ys3Var = ws3Var.y;
                j32.c(ys3Var);
                gy2Var.b = ys3Var.g();
            } else {
                gy2 gy2Var2 = this.b;
                ys3 ys3Var2 = ws3Var.y;
                j32.c(ys3Var2);
                gy2Var2.a = ys3Var2.g();
            }
            gy2.a(this.b);
        }
    }

    public static final void a(gy2 gy2Var) {
        String str;
        if (gy2Var.a == null || gy2Var.b == null || gy2Var.c == null || gy2Var.d == null) {
            Log.i("checkNetworkInfo", "Not All requests completed!");
            return;
        }
        jy2 jy2Var = new jy2(gy2Var);
        JSONObject jSONObject = new JSONObject();
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.ENGLISH);
            Date date = new Date();
            if (j32.a(gy2Var.a, BuildConfig.FLAVOR) || j32.a(gy2Var.c, BuildConfig.FLAVOR)) {
                str = "2";
            } else {
                str = j32.a(gy2Var.a, gy2Var.c) ? "0" : "1";
            }
            jSONObject.put("pbip", gy2Var.d);
            jSONObject.put("prip", gy2Var.a);
            jSONObject.put("refrrer", "1");
            jSONObject.put("check_ip1", gy2Var.a);
            jSONObject.put("check_ip2", gy2Var.c);
            jSONObject.put("check_ip3", gy2Var.b);
            jSONObject.put("rsrv", str);
            Log.i("checkNetworkInfo", jSONObject.toString());
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            String string = jSONObject.toString();
            j32.d(string, "infoJsonObject.toString()");
            j32.e("info", "name");
            j32.e(string, "value");
            qw1.b bVar = qw1.l;
            arrayList.add(qw1.b.a(bVar, "info", 0, 0, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, false, true, false, null, 91));
            arrayList2.add(qw1.b.a(bVar, string, 0, 0, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, false, true, false, null, 91));
            String str2 = simpleDateFormat.format(date);
            j32.d(str2, "sdf.format(now)");
            j32.e("clientDate", "name");
            j32.e(str2, "value");
            arrayList.add(qw1.b.a(bVar, "clientDate", 0, 0, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, false, true, false, null, 91));
            arrayList2.add(qw1.b.a(bVar, str2, 0, 0, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, false, true, false, null, 91));
            th1 th1Var = new th1(arrayList, arrayList2);
            vr3.a aVar = new vr3.a();
            aVar.k("https://cinemana.shabakaty.cc/api/info/userInfo");
            j32.e(th1Var, "body");
            aVar.g(ServiceCommand.TYPE_POST, th1Var);
            FirebasePerfOkHttpClient.enqueue(gy2Var.e.a(aVar.b()), jy2Var);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void b(boolean z) {
        a aVar = new a(z, this);
        vr3.a aVar2 = new vr3.a();
        aVar2.k("https://cinemana.shabakaty.cc/whatismyip");
        aVar2.d();
        FirebasePerfOkHttpClient.enqueue(this.e.a(aVar2.b()), aVar);
    }
}
