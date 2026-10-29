package com.shabakaty.downloader;

import android.app.Activity;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.text.Editable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.EditText;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.textfield.TextInputLayout;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.downloader.services.DownloaderService;
import com.shabakaty.downloader.workers.CheckDownloadsStatusWorker;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4 */
/* JADX INFO: loaded from: classes.dex */
public /* synthetic */ class vd5 implements pr2 {
    public static final mr0 A(y45 y45Var) {
        j32.e(y45Var, "<this>");
        mr0 mr0Var = (mr0) ((HashMap) c72.d).get(y45Var);
        return mr0Var == null ? lr0.h(y45Var) : mr0Var;
    }

    public static final int B(String str) {
        Integer numZ;
        if (str == null || (numZ = me4.z(str)) == null) {
            return 0;
        }
        return numZ.intValue();
    }

    public static final String C(String str) {
        j32.e(str, "<this>");
        StringBuilder sb = new StringBuilder(str.length());
        int length = str.length();
        int i = 0;
        while (i < length) {
            char cCharAt = str.charAt(i);
            i++;
            if ('A' <= cCharAt && cCharAt < '[') {
                cCharAt = Character.toLowerCase(cCharAt);
            }
            sb.append(cCharAt);
        }
        String string = sb.toString();
        j32.d(string, "builder.toString()");
        return string;
    }

    public static final Class<?> D(ClassLoader classLoader, String str) {
        j32.e(classLoader, "<this>");
        j32.e(str, "fqName");
        try {
            return Class.forName(str, false, classLoader);
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final qw4 E(qw4 qw4Var, qe2 qe2Var) {
        j32.e(qw4Var, "<this>");
        if (qw4Var instanceof ku4) {
            return E(((ku4) qw4Var).getOrigin(), qe2Var);
        }
        if (qe2Var == null || j32.a(qe2Var, qw4Var)) {
            return qw4Var;
        }
        if (qw4Var instanceof b74) {
            return new e74((b74) qw4Var, qe2Var);
        }
        if (qw4Var instanceof fe1) {
            return new je1((fe1) qw4Var, qe2Var);
        }
        throw new rz2();
    }

    public static final void a(StringBuilder sb, qe2 qe2Var) {
        sb.append(v(qe2Var));
    }

    public static final <E> E[] b(int i) {
        if (i >= 0) {
            return (E[]) new Object[i];
        }
        throw new IllegalArgumentException("capacity must be non-negative.".toString());
    }

    public static final String c(String str) {
        j32.e(str, "<this>");
        boolean z = false;
        if (str.length() == 0) {
            return str;
        }
        char cCharAt = str.charAt(0);
        if ('a' <= cCharAt && cCharAt < '{') {
            z = true;
        }
        if (!z) {
            return str;
        }
        char upperCase = Character.toUpperCase(cCharAt);
        String strSubstring = str.substring(1);
        j32.d(strSubstring, "this as java.lang.String).substring(startIndex)");
        return upperCase + strSubstring;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0097  */
    public static String d(xn1 xn1Var, boolean z, boolean z2, int i) {
        String strH;
        boolean z3 = true;
        if ((i & 1) != 0) {
            z = true;
        }
        if ((i & 2) != 0) {
            z2 = true;
        }
        j32.e(xn1Var, "<this>");
        StringBuilder sb = new StringBuilder();
        if (z2) {
            if (xn1Var instanceof vc0) {
                strH = "<init>";
            } else {
                strH = xn1Var.getName().h();
                j32.d(strH, "name.asString()");
            }
            sb.append(strH);
        }
        sb.append("(");
        ao3 ao3VarU0 = xn1Var.u0();
        if (ao3VarU0 != null) {
            qe2 qe2VarB = ao3VarU0.b();
            j32.d(qe2VarB, "it.type");
            a(sb, qe2VarB);
        }
        Iterator<sz4> it = xn1Var.i().iterator();
        while (it.hasNext()) {
            qe2 qe2VarB2 = it.next().b();
            j32.d(qe2VarB2, "parameter.type");
            a(sb, qe2VarB2);
        }
        sb.append(")");
        if (z) {
            j32.e(xn1Var, "descriptor");
            if (!(xn1Var instanceof vc0)) {
                qe2 qe2VarH = xn1Var.h();
                j32.c(qe2VarH);
                if (zd2.P(qe2VarH)) {
                    qe2 qe2VarH2 = xn1Var.h();
                    j32.c(qe2VarH2);
                    if (eu4.h(qe2VarH2) || (xn1Var instanceof ai3)) {
                        z3 = false;
                    }
                } else {
                    z3 = false;
                }
            }
            if (z3) {
                sb.append("V");
            } else {
                qe2 qe2VarH3 = xn1Var.h();
                j32.c(qe2VarH3);
                a(sb, qe2VarH3);
            }
        }
        String string = sb.toString();
        j32.d(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public static final String e(rq rqVar) {
        j32.e(rqVar, "<this>");
        c64 c64Var = c64.a;
        if (gr0.t(rqVar)) {
            return null;
        }
        qm0 qm0VarC = rqVar.c();
        q20 q20Var = qm0VarC instanceof q20 ? (q20) qm0VarC : null;
        if (q20Var == null || q20Var.getName().s) {
            return null;
        }
        rq rqVarA = rqVar.w0();
        t64 t64Var = rqVarA instanceof t64 ? (t64) rqVarA : null;
        if (t64Var == null) {
            return null;
        }
        return rm3.s(c64Var, q20Var, d(t64Var, false, false, 3));
    }

    public static final void f(int i, int i2) {
        if (i > i2) {
            throw new IndexOutOfBoundsException(wt3.a("toIndex (", i, ") is greater than size (", i2, ")."));
        }
    }

    public static final <T> T[] g(T[] tArr, int i) {
        j32.e(tArr, "<this>");
        T[] tArr2 = (T[]) Arrays.copyOf(tArr, i);
        j32.d(tArr2, "copyOf(this, newSize)");
        return tArr2;
    }

    public static mu0 h() {
        return new jv3(do1.b);
    }

    public static final int i(er<?> erVar) {
        return erVar.b().size();
    }

    public static final String j(TextInputLayout textInputLayout) {
        Editable text;
        String string;
        j32.e(textInputLayout, "<this>");
        EditText editText = textInputLayout.getEditText();
        return (editText == null || (text = editText.getText()) == null || (string = text.toString()) == null) ? BuildConfig.FLAVOR : string;
    }

    public static final String k(r42 r42Var) {
        Editable text;
        EditText editText = r42Var.M.getEditText();
        if (editText == null || (text = editText.getText()) == null) {
            return null;
        }
        return text.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final qe2 l(qe2 qe2Var) {
        j32.e(qe2Var, "<this>");
        if (qe2Var instanceof ku4) {
            return ((ku4) qe2Var).O();
        }
        return null;
    }

    public static final <T extends ViewDataBinding> T m(LayoutInflater layoutInflater, int i, ViewGroup viewGroup, boolean z) {
        j32.e(layoutInflater, "<this>");
        if (viewGroup == null) {
            z = false;
        }
        T t = (T) hl0.b(layoutInflater, i, viewGroup, z);
        j32.d(t, "inflate(\n\t\t\tthis,\n\t\t\tlay…achToParent else false\n\t)");
        return t;
    }

    public static /* synthetic */ ViewDataBinding n(LayoutInflater layoutInflater, int i, ViewGroup viewGroup, boolean z, int i2) {
        if ((i2 & 2) != 0) {
            viewGroup = null;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return m(layoutInflater, i, viewGroup, z);
    }

    public static final qw4 o(qw4 qw4Var, qe2 qe2Var) {
        j32.e(qw4Var, "<this>");
        j32.e(qe2Var, "origin");
        return E(qw4Var, l(qe2Var));
    }

    public static void p(Activity activity) {
        ComponentCallbacks2 application = activity.getApplication();
        if (!(application instanceof ms1)) {
            throw new RuntimeException(String.format("%s does not implement %s", application.getClass().getCanonicalName(), ms1.class.getCanonicalName()));
        }
        ms1 ms1Var = (ms1) application;
        e7<Object> e7VarA = ms1Var.a();
        iq6.d(e7VarA, "%s.androidInjector() returned null", ms1Var.getClass());
        e7VarA.a(activity);
    }

    public static final boolean q(int i) {
        return i == 1 || i == 2;
    }

    public static final boolean r(qe2 qe2Var) {
        j32.e(qe2Var, "<this>");
        qw4 qw4VarW0 = qe2Var.W0();
        return (qw4VarW0 instanceof c51) || ((qw4VarW0 instanceof fe1) && (((fe1) qw4VarW0).a1() instanceof c51));
    }

    public static final boolean s(qe2 qe2Var) {
        j32.e(qe2Var, "<this>");
        return eu4.h(qe2Var);
    }

    public static final boolean t(String str, int i, boolean z) {
        char cCharAt = str.charAt(i);
        if (z) {
            return 'A' <= cCharAt && cCharAt < '[';
        }
        return Character.isUpperCase(cCharAt);
    }

    public static final void u(String str, String str2) {
        j32.e(str, "<this>");
        Log.i("CinemanaLog: ", str2 + ": " + str);
    }

    public static final wb2 v(qe2 qe2Var) {
        j32.e(qe2Var, "<this>");
        return (wb2) nh3.D(qe2Var, yb2.a, jt4.k, it4.a, eo1.b);
    }

    public static final <E> void w(E[] eArr, int i) {
        j32.e(eArr, "<this>");
        eArr[i] = null;
    }

    public static final <E> void x(E[] eArr, int i, int i2) {
        j32.e(eArr, "<this>");
        while (i < i2) {
            w(eArr, i);
            i++;
        }
    }

    public static final <T> void y(du0<? super T> du0Var, ud0<? super T> ud0Var, boolean z) {
        Object objK = du0Var.k();
        Throwable thD = du0Var.d(objK);
        Object objB = thD != null ? j96.b(thD) : du0Var.f(objK);
        if (!z) {
            ud0Var.i(objB);
            return;
        }
        Objects.requireNonNull(ud0Var, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T>");
        au0 au0Var = (au0) ud0Var;
        ud0<T> ud0Var2 = au0Var.x;
        Object obj = au0Var.v;
        me0 me0VarA = ud0Var2.a();
        Object objC = zm4.c(me0VarA, obj);
        nv4<?> nv4VarB = objC != zm4.a ? ne0.b(ud0Var2, me0VarA, objC) : null;
        try {
            au0Var.x.i(objB);
        } finally {
            if (nv4VarB == null || nv4VarB.s0()) {
                zm4.a(me0VarA, objC);
            }
        }
    }

    public static final void z(Context context, long j) {
        j32.e(context, "context");
        try {
            y90.a aVar = new y90.a();
            aVar.a = 2;
            r75.c(context, new y90(aVar));
        } catch (Throwable th) {
            j96.b(th);
        }
        DownloaderService.Companion aVar2 = DownloaderService.INSTANCE;
        if (DownloaderService.y) {
            return;
        }
        gc0.a aVar3 = new gc0.a();
        aVar3.a = androidx.work.c.NOT_ROAMING;
        aVar3.b = true;
        aVar3.c = true;
        gc0 gc0Var = new gc0(aVar3);
        t73.a aVar4 = new t73.a(CheckDownloadsStatusWorker.class);
        aVar4.b.j = gc0Var;
        t73.a aVarD = aVar4.d(j, TimeUnit.SECONDS);
        aVarD.c.add("CheckDownload");
        t73 t73VarA = aVarD.a();
        j32.d(t73VarA, "OneTimeWorkRequestBuilde…ckDownload\")\n\t\t\t\t.build()");
        r75 r75VarB = r75.b(context);
        j32.d(r75VarB, "getInstance(context)");
        r75VarB.a("CheckDownload", 2, t73VarA);
    }
}
