package com.shabakaty.downloader;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.preference.PreferenceManager;
import android.util.Log;
import com.cinemana.pro.R;
import com.connectsdk.discovery.provider.ssdp.SSDPDeviceDescriptionParser;
import com.connectsdk.service.airplay.PListParser;
import com.liulishuo.filedownloader.BuildConfig;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;

/* JADX INFO: compiled from: AnalyticsApiManagerPlayer.kt */
/* JADX INFO: loaded from: classes.dex */
public final class q5 {
    public static a63 f;
    public static q5 g;
    public final Context a;
    public final b b;
    public final lr1 c;
    public r6 d;
    public List<h51> e = new ArrayList();

    /* JADX INFO: compiled from: AnalyticsApiManagerPlayer.kt */
    public final class a implements w22 {
        public a(q5 q5Var) {
        }

        @Override // com.shabakaty.downloader.w22
        public ws3 intercept(w22.a aVar) {
            j32.e(aVar, "chain");
            vr3 vr3VarD = aVar.d();
            zn znVar = new zn();
            yr3 yr3Var = vr3VarD.e;
            j32.c(yr3Var);
            yr3Var.e(znVar);
            Log.i("marti", znVar.r());
            return aVar.a(vr3VarD);
        }
    }

    /* JADX INFO: compiled from: AnalyticsApiManagerPlayer.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001JR\u0010\u000b\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\t0\b2\n\b\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0002H'¨\u0006\f"}, d2 = {"com/shabakaty/downloader/q5$b", BuildConfig.FLAVOR, BuildConfig.FLAVOR, SSDPDeviceDescriptionParser.TAG_DEVICE_TYPE, "userID", "identifier", "platformType", "analytics", "Lcom/shabakaty/downloader/f74;", "Lcom/shabakaty/downloader/xs3;", "Lcom/shabakaty/downloader/ys3;", "a", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
    public interface b {
        @i93("/api/info/ShabakatyInfo")
        @vh1
        f74<xs3<ys3>> a(@la1(SSDPDeviceDescriptionParser.TAG_DEVICE_TYPE) String deviceType, @la1("userID") String userID, @la1("identifier") String identifier, @la1("platform_type") String platformType, @la1("analytics") String analytics);
    }

    /* JADX INFO: compiled from: AnalyticsApiManagerPlayer.kt */
    public static final class c extends af2 implements tm1<xs3<ys3>, qv4> {
        public c() {
            super(1);
        }

        @Override // com.shabakaty.downloader.tm1
        public qv4 invoke(xs3<ys3> xs3Var) {
            xs3<ys3> xs3Var2 = xs3Var;
            j32.e(xs3Var2, "result");
            if (xs3Var2.a.v == 200) {
                q5.this.e.clear();
                Context context = q5.this.a;
                j32.e(context, "context");
                SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(context).edit();
                j32.d(editorEdit, "sharedPref.edit()");
                editorEdit.putLong("playerAnalyticsTime", TimeUnit.MINUTES.toMillis(4L) + System.currentTimeMillis());
                editorEdit.apply();
            }
            return qv4.a;
        }
    }

    /* JADX INFO: compiled from: AnalyticsApiManagerPlayer.kt */
    public static final class d extends af2 implements tm1<Throwable, qv4> {
        public static final d r = new d();

        public d() {
            super(1);
        }

        @Override // com.shabakaty.downloader.tm1
        public qv4 invoke(Throwable th) {
            Throwable th2 = th;
            j32.e(th2, "throwable");
            hc1.a().b(th2);
            return qv4.a;
        }
    }

    public q5(Context context, nn0 nn0Var) {
        long jNextLong;
        long j;
        this.a = context;
        String string = context.getString(R.string.user_identifier);
        j32.d(string, "context.getString(R.string.user_identifier)");
        long j2 = PreferenceManager.getDefaultSharedPreferences(context).getLong(string, 0L);
        String str = Build.MANUFACTURER + '_' + ((Object) Build.MODEL);
        if (j2 == 0) {
            Random random = new Random();
            do {
                jNextLong = (random.nextLong() << 1) >>> 1;
                j = jNextLong % Long.MAX_VALUE;
            } while ((jNextLong - j) + 9223372036854775806L < 0);
            String string2 = this.a.getString(R.string.user_identifier);
            j32.d(string2, "context.getString(R.string.user_identifier)");
            Context context2 = this.a;
            j32.e(context2, "context");
            SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(context2).edit();
            j32.d(editorEdit, "sharedPref.edit()");
            editorEdit.putLong(string2, j);
            editorEdit.apply();
            Log.i("ali", j32.j("userId identifier: ", Long.valueOf(j)));
            j2 = j;
        }
        this.d = new r6(this.e, Long.valueOf(j2), str, 1);
        mr1 mr1Var = new mr1();
        mr1Var.k = true;
        lr1 lr1VarA = mr1Var.a();
        this.c = lr1VarA;
        if (f == null) {
            a63.a aVar = new a63.a();
            aVar.a(new a(this));
            TimeUnit timeUnit = TimeUnit.SECONDS;
            aVar.d(10L, timeUnit);
            aVar.b(10L, timeUnit);
            aVar.e(10L, timeUnit);
            f = new a63(aVar);
        }
        lt3.b bVar = new lt3.b();
        bVar.a("https://cinemana.shabakaty.cc");
        bVar.d.add(new nr1(lr1VarA));
        bVar.e.add(wv3.b());
        bVar.c(f);
        Object objB = bVar.b().b(b.class);
        j32.d(objB, "retrofit.create(Links::class.java)");
        this.b = (b) objB;
        g = this;
    }

    public static void c(q5 q5Var, String str, String str2, int i, Long l, String str3, int i2) {
        h51 h51Var = new h51();
        long jCurrentTimeMillis = System.currentTimeMillis();
        Context context = q5Var.a;
        j32.e(context, "context");
        if (jCurrentTimeMillis >= PreferenceManager.getDefaultSharedPreferences(context).getLong("playerAnalyticsTime", 0L)) {
            q5Var.e.add(h51Var);
            q5Var.b();
            return;
        }
        q5Var.e.add(h51Var);
        Log.i("analytics", "event category  :" + str2 + "event name " + i);
        if (q5Var.e.size() >= 10) {
            q5Var.b();
        }
    }

    public final String a(r6 r6Var) {
        List<h51> list = r6Var.r;
        if (list == null || list.isEmpty()) {
            return BuildConfig.FLAVOR;
        }
        String strI = this.c.i(r6Var.r);
        j32.d(strI, "gson.toJson(analyticsEvents.analytics)");
        return strI;
    }

    public final void b() {
        Object objB;
        Log.e("analytics", a(this.d));
        a(this.d);
        r6 r6Var = this.d;
        String string = this.a.getString(R.string.user_id_login);
        j32.d(string, "context.getString(R.string.user_id_login)");
        Context context = this.a;
        Object obj = BuildConfig.FLAVOR;
        j32.e(string, PListParser.TAG_KEY);
        j32.e(context, "context");
        try {
            objB = PreferenceManager.getDefaultSharedPreferences(context).getString(string, BuildConfig.FLAVOR);
            if (objB == null) {
                objB = BuildConfig.FLAVOR;
            }
        } catch (Throwable th) {
            objB = j96.b(th);
        }
        if (!(objB instanceof dt3.a)) {
            obj = objB;
        }
        this.d.s = (String) obj;
        b bVar = this.b;
        String str = r6Var.u;
        String strValueOf = String.valueOf(r6Var.s);
        Long l = r6Var.t;
        j32.d(l, "analyticsEvents.identifier");
        uv3.c(bVar.a(str, strValueOf, String.valueOf(l.longValue()), String.valueOf(r6Var.v), a(r6Var)).m(ay3.c).j(n7.a()), new c(), d.r);
    }

    public final void d(String str, int i, Long l) {
        j32.e(str, "videoId");
        c(this, str, "0", i, l, null, 16);
    }
}
