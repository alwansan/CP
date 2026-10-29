package com.shabakaty.downloader;

import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.camera.view.PreviewView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import androidx.work.impl.WorkDatabase;
import com.cinemana.pro.R;
import com.google.android.exoplayer2.extractor.Extractor;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.utils.ViewFinderOverlay;
import java.io.BufferedOutputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileOutputStream;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledFuture;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import zendesk.core.Constants;

/* JADX INFO: compiled from: FragmentStore.java */
/* JADX INFO: loaded from: classes.dex */
public class tk1 implements oh3, tq3, k63 {
    public final /* synthetic */ int r;
    public ArrayList<Fragment> s;
    public HashMap<String, androidx.fragment.app.s> t;
    public Object u;

    /* JADX WARN: Multi-variable type inference failed */
    public tk1(h30 h30Var, List list, tk1 tk1Var) {
        this.r = 16;
        j32.e(list, "arguments");
        this.s = h30Var;
        this.t = list;
        this.u = tk1Var;
    }

    public static tk1 w(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_body_power_spinner_library, (ViewGroup) null, false);
        if (z) {
            throw null;
        }
        FrameLayout frameLayout = (FrameLayout) viewInflate;
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(R.id.recyclerView);
        if (recyclerView != null) {
            return new tk1((FrameLayout) viewInflate, frameLayout, recyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(R.id.recyclerView)));
    }

    public void A(androidx.fragment.app.s sVar) {
        Fragment fragment = sVar.c;
        if (fragment.mRetainInstance) {
            ((xj1) this.u).b(fragment);
        }
        if (this.t.put(fragment.mWho, null) != null && androidx.fragment.app.q.P(2)) {
            Log.v("FragmentManager", "Removed fragment from active set " + fragment);
        }
    }

    public void B(Fragment fragment) {
        synchronized (this.s) {
            this.s.remove(fragment);
        }
        fragment.mAdded = false;
    }

    public void a(Fragment fragment) {
        if (this.s.contains(fragment)) {
            throw new IllegalStateException("Fragment already added: " + fragment);
        }
        synchronized (this.s) {
            this.s.add(fragment);
        }
        fragment.mAdded = true;
    }

    public void b(List<b23> list, JSONArray jSONArray, w23 w23Var) {
        if (jSONArray != null) {
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                try {
                    String string = jSONArray.getString(i);
                    j32.d(string, "influenceId");
                    list.add(new b23(string, w23Var));
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public void c(List<b23> list, ag6 ag6Var) {
        if (ag6Var != null) {
            JSONArray jSONArray = (JSONArray) ag6Var.t;
            JSONArray jSONArray2 = (JSONArray) ag6Var.s;
            b(list, jSONArray, w23.IAM);
            b(list, jSONArray2, w23.NOTIFICATION);
        }
    }

    public /* bridge */ /* synthetic */ Object clone() {
        switch (this.r) {
            case 8:
                tk1 tk1Var = new tk1(((ke5) this.s).clone());
                Iterator it = ((List) this.u).iterator();
                while (it.hasNext()) {
                    ((List) tk1Var.u).add(((ke5) it.next()).clone());
                }
                return tk1Var;
            default:
                return super.clone();
        }
    }

    public iw1 d(iw1 iw1Var, k34 k34Var) {
        e(iw1Var, "X-CRASHLYTICS-GOOGLE-APP-ID", k34Var.a);
        e(iw1Var, "X-CRASHLYTICS-API-CLIENT-TYPE", "android");
        e(iw1Var, "X-CRASHLYTICS-API-CLIENT-VERSION", "18.2.1");
        e(iw1Var, Constants.ACCEPT_HEADER, Constants.APPLICATION_JSON);
        e(iw1Var, "X-CRASHLYTICS-DEVICE-MODEL", k34Var.b);
        e(iw1Var, "X-CRASHLYTICS-OS-BUILD-VERSION", k34Var.c);
        e(iw1Var, "X-CRASHLYTICS-OS-DISPLAY-VERSION", k34Var.d);
        e(iw1Var, "X-CRASHLYTICS-INSTALLATION-ID", ((ux1) k34Var.e).c());
        return iw1Var;
    }

    public void e(iw1 iw1Var, String str, String str2) {
        if (str2 != null) {
            iw1Var.c.put(str, str2);
        }
    }

    public void f() {
        this.t.values().removeAll(Collections.singleton(null));
    }

    public boolean g(String str) {
        return this.t.get(str) != null;
    }

    public iw1 h(Map<String, String> map) {
        wt2 wt2Var = (wt2) this.t;
        String str = (String) this.s;
        Objects.requireNonNull(wt2Var);
        iw1 iw1Var = new iw1(str, map);
        iw1Var.c.put("User-Agent", "Crashlytics Android SDK/18.2.1");
        iw1Var.c.put("X-CRASHLYTICS-DEVELOPER-TOKEN", "470fa2b4ae81cd56ecbcda9735803434cec591fa");
        return iw1Var;
    }

    public Fragment i(String str) {
        androidx.fragment.app.s sVar = this.t.get(str);
        if (sVar != null) {
            return sVar.c;
        }
        return null;
    }

    public Fragment j(String str) {
        Fragment fragmentFindFragmentByWho;
        for (androidx.fragment.app.s sVar : this.t.values()) {
            if (sVar != null && (fragmentFindFragmentByWho = sVar.c.findFragmentByWho(str)) != null) {
                return fragmentFindFragmentByWho;
            }
        }
        return null;
    }

    public List<androidx.fragment.app.s> k() {
        ArrayList arrayList = new ArrayList();
        for (androidx.fragment.app.s sVar : this.t.values()) {
            if (sVar != null) {
                arrayList.add(sVar);
            }
        }
        return arrayList;
    }

    public List<Fragment> l() {
        ArrayList arrayList = new ArrayList();
        for (androidx.fragment.app.s sVar : this.t.values()) {
            if (sVar != null) {
                arrayList.add(sVar.c);
            } else {
                arrayList.add(null);
            }
        }
        return arrayList;
    }

    public long m() {
        Object obj = this.u;
        if (((o91) obj) != null) {
            return ((o91) obj).c();
        }
        return -1L;
    }

    public androidx.fragment.app.s n(String str) {
        return this.t.get(str);
    }

    public List<Fragment> o() {
        ArrayList arrayList;
        if (this.s.isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (this.s) {
            arrayList = new ArrayList(this.s);
        }
        return arrayList;
    }

    public z33 p(z23 z23Var, ag6 ag6Var, ag6 ag6Var2, String str, z33 z33Var) {
        int iOrdinal = z23Var.ordinal();
        if (iOrdinal == 0) {
            ag6Var.t = new JSONArray(str);
            if (z33Var == null) {
                return new z33(ag6Var, null);
            }
            z33Var.a = ag6Var;
            return z33Var;
        }
        if (iOrdinal != 1) {
            return z33Var;
        }
        ag6Var2.t = new JSONArray(str);
        if (z33Var == null) {
            return new z33(null, ag6Var2);
        }
        z33Var.b = ag6Var2;
        return z33Var;
    }

    public JSONObject q(String str) {
        try {
            return new JSONObject(str);
        } catch (Exception e) {
            rk2 rk2Var = (rk2) this.u;
            StringBuilder sbA = um3.a("Failed to parse settings JSON from ");
            sbA.append((String) this.s);
            rk2Var.f(sbA.toString(), e);
            ((rk2) this.u).e("Settings response " + str);
            return null;
        }
    }

    @Override // com.shabakaty.downloader.tq3
    public void r(Object obj, Object obj2) {
        vh5 vh5Var = (vh5) this.s;
        String str = (String) this.t;
        if2 if2Var = (if2) this.u;
        vh5Var.e();
        ((gf5) ((cf7) obj).k()).x0(str, if2Var);
        vh5Var.g((zk4) obj2);
    }

    public z33 s(z23 z23Var, ag6 ag6Var, ag6 ag6Var2, String str) {
        z33 z33Var;
        int iOrdinal = z23Var.ordinal();
        if (iOrdinal == 0) {
            ag6Var.s = new JSONArray(str);
            z33Var = new z33(ag6Var, null);
        } else {
            if (iOrdinal != 1) {
                return null;
            }
            ag6Var2.s = new JSONArray(str);
            z33Var = new z33(null, ag6Var2);
        }
        return z33Var;
    }

    public Map<String, String> t(k34 k34Var) {
        HashMap map = new HashMap();
        map.put("build_version", k34Var.h);
        map.put("display_version", k34Var.g);
        map.put("source", Integer.toString(k34Var.i));
        String str = k34Var.f;
        if (!TextUtils.isEmpty(str)) {
            map.put("instance", str);
        }
        return map;
    }

    public String toString() {
        switch (this.r) {
            case 1:
                StringBuilder sbA = vf3.a("NavDeepLinkRequest", "{");
                if (((Uri) this.s) != null) {
                    sbA.append(" uri=");
                    sbA.append(((Uri) this.s).toString());
                }
                if (((String) this.t) != null) {
                    sbA.append(" action=");
                    sbA.append((String) this.t);
                }
                if (((String) this.u) != null) {
                    sbA.append(" mimetype=");
                    sbA.append((String) this.u);
                }
                sbA.append(" }");
                return sbA.toString();
            default:
                return super.toString();
        }
    }

    public JSONObject u(k66 k66Var) {
        int i = k66Var.c;
        ((rk2) this.u).d("Settings response code was: " + i);
        if (i == 200 || i == 201 || i == 202 || i == 203) {
            return q(k66Var.b);
        }
        rk2 rk2Var = (rk2) this.u;
        StringBuilder sbA = lh4.a("Settings request failed; (status: ", i, ") from ");
        sbA.append((String) this.s);
        rk2Var.c(sbA.toString());
        return null;
    }

    @Override // com.shabakaty.downloader.k63
    public void v(uk4 uk4Var) {
        ou3 ou3Var = (ou3) this.s;
        String str = (String) this.t;
        ScheduledFuture scheduledFuture = (ScheduledFuture) this.u;
        synchronized (ou3Var.a) {
            ou3Var.a.remove(str);
        }
        scheduledFuture.cancel(false);
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0068  */
    public void x(rl0 rl0Var, Uri uri, Map<String, List<String>> map, long j, long j2, p91 p91Var) throws yv4 {
        co0 co0Var = new co0(rl0Var, j, j2);
        this.u = co0Var;
        if (((n91) this.t) != null) {
            return;
        }
        Extractor[] extractorArrF = ((s91) this.s).f(uri, map);
        boolean z = true;
        if (extractorArrF.length == 1) {
            this.t = extractorArrF[0];
        } else {
            for (Extractor extractor : extractorArrF) {
                try {
                    if (extractor.h(co0Var)) {
                        this.t = extractor;
                        co0Var.f = 0;
                        break;
                    } else {
                        boolean z2 = ((n91) this.t) != null || co0Var.d == j;
                        md.e(z2);
                        co0Var.f = 0;
                    }
                } catch (EOFException unused) {
                    if (((n91) this.t) != null || co0Var.d == j) {
                    }
                } catch (Throwable th) {
                    if (((n91) this.t) == null && co0Var.d != j) {
                        z = false;
                    }
                    md.e(z);
                    co0Var.f = 0;
                    throw th;
                }
                md.e(z2);
                co0Var.f = 0;
            }
            if (((n91) this.t) == null) {
                int i = sy4.a;
                StringBuilder sb = new StringBuilder();
                for (int i2 = 0; i2 < extractorArrF.length; i2++) {
                    sb.append(extractorArrF[i2].getClass().getSimpleName());
                    if (i2 < extractorArrF.length - 1) {
                        sb.append(", ");
                    }
                }
                String string = sb.toString();
                StringBuilder sb2 = new StringBuilder(dl3.a(string, 58));
                sb2.append("None of the available extractors (");
                sb2.append(string);
                sb2.append(") could read the stream.");
                String string2 = sb2.toString();
                Objects.requireNonNull(uri);
                throw new yv4(string2, uri);
            }
        }
        ((n91) this.t).g(p91Var);
    }

    public boolean y() {
        Object obj = this.u;
        xl2 xl2Var = (xl2) obj;
        Objects.requireNonNull((xl2) obj);
        String str = s73.a;
        Objects.requireNonNull((xl2) this.u);
        Objects.requireNonNull(xl2Var);
        return s73.b(str, "PREFS_OS_OUTCOMES_V2", false);
    }

    public void z(androidx.fragment.app.s sVar) {
        Fragment fragment = sVar.c;
        if (g(fragment.mWho)) {
            return;
        }
        this.t.put(fragment.mWho, sVar);
        if (fragment.mRetainInstanceChangedWhileDetached) {
            if (fragment.mRetainInstance) {
                ((xj1) this.u).a(fragment);
            } else {
                ((xj1) this.u).b(fragment);
            }
            fragment.mRetainInstanceChangedWhileDetached = false;
        }
        if (androidx.fragment.app.q.P(2)) {
            Log.v("FragmentManager", "Added fragment to active set " + fragment);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public tk1(ou3 ou3Var, String str, ScheduledFuture scheduledFuture) {
        this.r = 7;
        this.s = ou3Var;
        this.t = str;
        this.u = scheduledFuture;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [com.shabakaty.downloader.ke5, java.util.HashMap<java.lang.String, androidx.fragment.app.s>] */
    public tk1(ke5 ke5Var) {
        this.r = 8;
        this.s = ke5Var;
        this.t = ke5Var.clone();
        this.u = new ArrayList();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public tk1(vh5 vh5Var, String str, if2 if2Var) {
        this.r = 6;
        this.s = vh5Var;
        this.t = str;
        this.u = if2Var;
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [java.io.FileDescriptor, java.util.HashMap<java.lang.String, androidx.fragment.app.s>] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.io.BufferedOutputStream, java.util.ArrayList<androidx.fragment.app.Fragment>] */
    public tk1(File file) {
        this.r = 4;
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        this.u = randomAccessFile;
        this.t = randomAccessFile.getFD();
        this.s = new BufferedOutputStream(new FileOutputStream(((RandomAccessFile) this.u).getFD()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public tk1(bs0 bs0Var, zp3 zp3Var) {
        this.r = 17;
        this.s = bs0Var;
        this.t = zp3Var;
        this.u = new ConcurrentHashMap();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public tk1(b33 b33Var, p73 p73Var, xl2 xl2Var) {
        this.r = 13;
        this.s = b33Var;
        this.t = p73Var;
        this.u = xl2Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public tk1(FrameLayout frameLayout, FrameLayout frameLayout2, RecyclerView recyclerView) {
        this.r = 15;
        this.s = frameLayout;
        this.t = frameLayout2;
        this.u = recyclerView;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public tk1(FrameLayout frameLayout, PreviewView previewView, ViewFinderOverlay viewFinderOverlay) {
        this.r = 14;
        this.s = frameLayout;
        this.t = previewView;
        this.u = viewFinderOverlay;
    }

    /* JADX WARN: Type inference failed for: r5v3, types: [com.shabakaty.downloader.ke5, java.util.ArrayList<androidx.fragment.app.Fragment>] */
    /* JADX WARN: Type inference failed for: r5v4, types: [com.shabakaty.downloader.ke5, java.util.HashMap<java.lang.String, androidx.fragment.app.s>] */
    /* JADX WARN: Type inference failed for: r5v6, types: [com.shabakaty.downloader.xd2, java.util.HashMap<java.lang.String, androidx.fragment.app.s>] */
    public tk1(int i) {
        this.r = i;
        switch (i) {
            case 8:
                this.s = new ke5(BuildConfig.FLAVOR, 0L, null);
                this.t = new ke5(BuildConfig.FLAVOR, 0L, null);
                this.u = new ArrayList();
                break;
            case 9:
                break;
            case 10:
                break;
            case 11:
                this.s = null;
                this.t = new xd2(64, RecyclerView.b0.FLAG_ADAPTER_FULLUPDATE);
                this.u = new xd2(64, RecyclerView.b0.FLAG_BOUNCED_FROM_HIDDEN_LIST);
                break;
            default:
                this.s = new ArrayList<>();
                this.t = new HashMap<>();
                break;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public tk1(Intent intent) {
        this(intent.getData(), intent.getAction(), intent.getType());
        this.r = 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public tk1(Uri uri, String str, String str2) {
        this.r = 1;
        this.s = uri;
        this.t = str;
        this.u = str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public tk1(ViewPager2 viewPager2, androidx.viewpager2.widget.c cVar, RecyclerView recyclerView) {
        this.r = 2;
        this.s = viewPager2;
        this.t = cVar;
        this.u = recyclerView;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public tk1(s91 s91Var) {
        this.r = 5;
        this.s = s91Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public tk1(WorkDatabase workDatabase, sh1 sh1Var, bl4 bl4Var) {
        this.r = 3;
        this.t = sh1Var;
        this.s = bl4Var;
        this.u = workDatabase.u();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public tk1(String str, wt2 wt2Var) {
        this(str, wt2Var, rk2.a);
        this.r = 12;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public tk1(String str, wt2 wt2Var, rk2 rk2Var) {
        this.r = 12;
        if (str != 0) {
            this.u = rk2Var;
            this.t = wt2Var;
            this.s = str;
            return;
        }
        throw new IllegalArgumentException("url must not be null.");
    }
}
