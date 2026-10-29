package com.shabakaty.downloader;

import android.content.SharedPreferences;
import android.view.View;
import androidx.fragment.app.Fragment;
import com.liulishuo.filedownloader.BuildConfig;
import com.liulishuo.filedownloader.model.FileDownloadStatus;
import com.shabakaty.cinemana.data.db.downloads.CinemanaDownloadItem;
import com.shabakaty.cinemana.data.db.downloads.CombinedDownloadItem;
import com.shabakaty.cinemana.data.db.downloads.SkippingDurationsDB;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.utils.download.IdleDownloadScope;
import java.io.Closeable;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Objects;

/* JADX INFO: compiled from: CoordinatesUtils.java */
/* JADX INFO: loaded from: classes.dex */
public class he0 implements pr2 {

    /* JADX INFO: compiled from: IntrinsicsJvm.kt */
    /* JADX INFO: loaded from: classes2.dex */
    public static final class a extends bt3 {
        public int s;
        public final /* synthetic */ ud0 t;
        public final /* synthetic */ hn1 u;
        public final /* synthetic */ Object v;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(ud0 ud0Var, hn1 hn1Var, Object obj) {
            super(ud0Var);
            this.t = ud0Var;
            this.u = hn1Var;
            this.v = obj;
        }

        @Override // com.shabakaty.downloader.bj
        public Object t(Object obj) {
            int i = this.s;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("This coroutine had already completed".toString());
                }
                this.s = 2;
                j96.i(obj);
                return obj;
            }
            this.s = 1;
            j96.i(obj);
            hn1 hn1Var = this.u;
            gt4.c(hn1Var, 2);
            return hn1Var.o(this.v, this);
        }
    }

    /* JADX INFO: compiled from: IntrinsicsJvm.kt */
    /* JADX INFO: loaded from: classes2.dex */
    public static final class b extends xd0 {
        public int u;
        public final /* synthetic */ ud0 v;
        public final /* synthetic */ me0 w;
        public final /* synthetic */ hn1 x;
        public final /* synthetic */ Object y;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(ud0 ud0Var, me0 me0Var, hn1 hn1Var, Object obj) {
            super(ud0Var, me0Var);
            this.v = ud0Var;
            this.w = me0Var;
            this.x = hn1Var;
            this.y = obj;
        }

        @Override // com.shabakaty.downloader.bj
        public Object t(Object obj) {
            int i = this.u;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("This coroutine had already completed".toString());
                }
                this.u = 2;
                j96.i(obj);
                return obj;
            }
            this.u = 1;
            j96.i(obj);
            hn1 hn1Var = this.x;
            gt4.c(hn1Var, 2);
            return hn1Var.o(this.y, this);
        }
    }

    public static py a(int i, co coVar, tm1 tm1Var, int i2) {
        co coVar2 = co.SUSPEND;
        if ((i2 & 1) != 0) {
            i = 0;
        }
        if ((i2 & 2) != 0) {
            coVar = coVar2;
        }
        int i3 = 1;
        if (i == -2) {
            if (coVar == coVar2) {
                Objects.requireNonNull(py.d);
                i3 = py.a.a;
            }
            return new xc(i3, coVar, null);
        }
        if (i == -1) {
            if (coVar == coVar2) {
                return new xa0(null);
            }
            throw new IllegalArgumentException("CONFLATED capacity cannot be used with non-default onBufferOverflow".toString());
        }
        if (i == 0) {
            return coVar == coVar2 ? new qr3(null) : new xc(1, coVar, null);
        }
        if (i != Integer.MAX_VALUE) {
            return (i == 1 && coVar == co.DROP_OLDEST) ? new xa0(null) : new xc(i, coVar, null);
        }
        return new ai2(null);
    }

    public static final fi1 b(fi1 fi1Var, String str) {
        return fi1Var.c(hw2.u(str));
    }

    public static final fi1 c(gi1 gi1Var, String str) {
        fi1 fi1VarI = gi1Var.c(hw2.u(str)).i();
        j32.d(fi1VarI, "child(Name.identifier(name)).toSafe()");
        return fi1VarI;
    }

    public static final void d(Closeable closeable, Throwable th) throws IOException {
        if (closeable == null) {
            return;
        }
        if (th == null) {
            closeable.close();
            return;
        }
        try {
            closeable.close();
        } catch (Throwable th2) {
            kf5.a(th, th2);
        }
    }

    public static final te2 e(xt4 xt4Var, te2 te2Var, HashSet<us4> hashSet) {
        te2 te2VarE;
        us4 us4VarK = xt4Var.K(te2Var);
        if (!hashSet.add(us4VarK)) {
            return null;
        }
        mt4 mt4VarU = xt4Var.U(us4VarK);
        if (mt4VarU != null) {
            te2VarE = e(xt4Var, xt4Var.x(mt4VarU), hashSet);
            if (te2VarE == null) {
                return null;
            }
            if (!xt4Var.k(te2VarE) && xt4Var.Q(te2Var)) {
                return xt4Var.e0(te2VarE);
            }
        } else {
            if (!xt4Var.m(us4VarK)) {
                return te2Var;
            }
            te2 te2VarH0 = xt4Var.h0(te2Var);
            if (te2VarH0 == null || (te2VarE = e(xt4Var, te2VarH0, hashSet)) == null) {
                return null;
            }
            if (xt4Var.k(te2Var)) {
                if (xt4Var.k(te2VarE)) {
                    return te2Var;
                }
                return ((te2VarE instanceof d74) && xt4Var.a0((d74) te2VarE)) ? te2Var : xt4Var.e0(te2VarE);
            }
        }
        return te2VarE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <R, T> ud0<qv4> f(hn1<? super R, ? super ud0<? super T>, ? extends Object> hn1Var, R r, ud0<? super T> ud0Var) {
        j32.e(hn1Var, "<this>");
        j32.e(ud0Var, "completion");
        if (hn1Var instanceof bj) {
            return ((bj) hn1Var).r(r, ud0Var);
        }
        me0 me0VarA = ud0Var.a();
        return me0VarA == s21.r ? new a(ud0Var, hn1Var, r) : new b(ud0Var, me0VarA, hn1Var, r);
    }

    public static final he2 g(ae2 ae2Var, v20 v20Var) {
        j32.e(ae2Var, "<this>");
        ae2.a aVarC = ae2Var.c(v20Var);
        if (aVarC == null) {
            return null;
        }
        return aVarC.a();
    }

    public static final String h(Object obj) {
        return obj.getClass().getSimpleName();
    }

    public static int i(r02 r02Var, int i) {
        if (r02Var == null) {
            return 0;
        }
        return r02Var.b() == n83.HORIZONTAL ? n(r02Var, i) : o(r02Var, i);
    }

    public static final String j(Object obj) {
        return Integer.toHexString(System.identityHashCode(obj));
    }

    public static int k(r02 r02Var, int i) {
        int i2 = r02Var.s;
        int i3 = r02Var.c;
        int i4 = r02Var.i;
        int i5 = r02Var.d;
        int i6 = 0;
        for (int i7 = 0; i7 < i2; i7++) {
            int i8 = i4 / 2;
            int i9 = i3 + i8 + i6;
            if (i == i7) {
                return i9;
            }
            i6 = i3 + i5 + i8 + i9;
        }
        return r02Var.a() == e8.DROP ? i6 + (i3 * 2) : i6;
    }

    public static final <T> gv<T> l(ud0<? super T> ud0Var) {
        if (!(ud0Var instanceof au0)) {
            return new gv<>(ud0Var, 2);
        }
        gv<T> gvVarO = ((au0) ud0Var).o();
        if (gvVarO != null) {
            if (!gvVarO.C()) {
                gvVarO = null;
            }
            if (gvVarO != null) {
                return gvVarO;
            }
        }
        return new gv<>(ud0Var, 2);
    }

    public static final String m(View view, int i) {
        String string = view.getContext().getString(i);
        j32.d(string, "context.getString(stringRes)");
        return string;
    }

    public static int n(r02 r02Var, int i) {
        int iK;
        if (r02Var == null) {
            return 0;
        }
        if (r02Var.b() == n83.HORIZONTAL) {
            iK = k(r02Var, i);
        } else {
            iK = r02Var.c;
            if (r02Var.a() == e8.DROP) {
                iK *= 3;
            }
        }
        return iK + r02Var.e;
    }

    public static int o(r02 r02Var, int i) {
        int iK;
        if (r02Var == null) {
            return 0;
        }
        if (r02Var.b() == n83.HORIZONTAL) {
            iK = r02Var.c;
            if (r02Var.a() == e8.DROP) {
                iK *= 3;
            }
        } else {
            iK = k(r02Var, i);
        }
        return iK + r02Var.f;
    }

    public static final void p(Fragment fragment, VideoModel videoModel, tm1<? super IdleDownloadScope, qv4> tm1Var) {
        j32.e(fragment, "<this>");
        tm1Var.invoke(new IdleDownloadScope(videoModel, fragment));
    }

    public static final <T> ud0<T> q(ud0<? super T> ud0Var) {
        j32.e(ud0Var, "<this>");
        xd0 xd0Var = ud0Var instanceof xd0 ? (xd0) ud0Var : null;
        if (xd0Var != null && (ud0Var = (ud0<T>) xd0Var.t) == null) {
            me0 me0VarA = xd0Var.a();
            int i = yd0.e;
            yd0 yd0Var = (yd0) me0VarA.get(yd0.a.r);
            ud0Var = yd0Var == null ? xd0Var : yd0Var.r(xd0Var);
            xd0Var.t = ud0Var;
        }
        return (ud0<T>) ud0Var;
    }

    public static final f73 r(String str, rm1<qv4> rm1Var) {
        Object objB;
        f73 f73Var = new f73(str, null);
        SharedPreferences sharedPreferences = e73.b;
        if (sharedPreferences == null) {
            j32.l("preference");
            throw null;
        }
        if (!sharedPreferences.getBoolean(str, false)) {
            try {
                objB = rm1Var.invoke();
            } catch (Throwable th) {
                objB = j96.b(th);
            }
            if (!(objB instanceof dt3.a)) {
                SharedPreferences sharedPreferences2 = e73.b;
                if (sharedPreferences2 == null) {
                    j32.l("preference");
                    throw null;
                }
                sharedPreferences2.edit().putBoolean(str, true).apply();
            }
        }
        return f73Var;
    }

    public static String s(String str) {
        byte[] bArrDigest;
        if (!fe4.a(str)) {
            return BuildConfig.FLAVOR;
        }
        if (fe4.a("SHA-1") && fe4.a(str)) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
                messageDigest.update(str.getBytes());
                bArrDigest = messageDigest.digest();
            } catch (NoSuchAlgorithmException unused) {
                bArrDigest = new byte[0];
            }
        } else {
            bArrDigest = new byte[0];
        }
        StringBuilder sb = new StringBuilder(bArrDigest.length * 2);
        for (byte b2 : bArrDigest) {
            sb.append(String.format(Locale.US, "%02x", Integer.valueOf(b2 & FileDownloadStatus.error)));
        }
        return sb.toString();
    }

    public static final String t(ud0<?> ud0Var) {
        Object objB;
        if (ud0Var instanceof au0) {
            return ud0Var.toString();
        }
        try {
            objB = ud0Var + '@' + j(ud0Var);
        } catch (Throwable th) {
            objB = j96.b(th);
        }
        if (dt3.a(objB) != null) {
            objB = ud0Var.getClass().getName() + '@' + j(ud0Var);
        }
        return (String) objB;
    }

    public static final CinemanaDownloadItem u(pw0 pw0Var, CombinedDownloadItem combinedDownloadItem) {
        j32.e(pw0Var, "<this>");
        String str = pw0Var.s;
        int i = pw0Var.r;
        List list = null;
        String strG0 = j32.a(combinedDownloadItem == null ? null : combinedDownloadItem.cinemanaDownloadItem.kind, "2") ? m50.g0(m50.W(re4.e0(pw0Var.u, new String[]{" "}, false, 0, 6), 2), " ", null, null, 0, null, null, 62) : pw0Var.u;
        String str2 = combinedDownloadItem == null ? BuildConfig.FLAVOR : combinedDownloadItem.cinemanaDownloadItem.stars;
        String str3 = combinedDownloadItem == null ? BuildConfig.FLAVOR : combinedDownloadItem.cinemanaDownloadItem.kind;
        int iE = (int) d91.e((((int) pw0Var.y) / 1024.0f) / 1024.0f);
        String str4 = combinedDownloadItem == null ? BuildConfig.FLAVOR : combinedDownloadItem.cinemanaDownloadItem.season;
        String str5 = combinedDownloadItem == null ? BuildConfig.FLAVOR : combinedDownloadItem.cinemanaDownloadItem.imgObjUrl;
        String str6 = combinedDownloadItem == null ? BuildConfig.FLAVOR : combinedDownloadItem.cinemanaDownloadItem.filmRating;
        String str7 = combinedDownloadItem == null ? BuildConfig.FLAVOR : combinedDownloadItem.cinemanaDownloadItem.tvShowRating;
        String str8 = pw0Var.x;
        return new CinemanaDownloadItem(str, i, strG0, str2, str3, iE, str4, str5, str6, str7, re4.g0(str8, "/downloads/", (2 & 2) != 0 ? str8 : null), combinedDownloadItem == null ? BuildConfig.FLAVOR : combinedDownloadItem.cinemanaDownloadItem.episodeNumber, combinedDownloadItem == null ? BuildConfig.FLAVOR : combinedDownloadItem.cinemanaDownloadItem.special, combinedDownloadItem == null ? BuildConfig.FLAVOR : combinedDownloadItem.cinemanaDownloadItem.useParentImg, combinedDownloadItem == null ? BuildConfig.FLAVOR : combinedDownloadItem.cinemanaDownloadItem.parentSkipping, combinedDownloadItem == null ? 0 : combinedDownloadItem.cinemanaDownloadItem.collectionID, combinedDownloadItem == null ? BuildConfig.FLAVOR : combinedDownloadItem.cinemanaDownloadItem.imgThumbObjUrl, combinedDownloadItem == null ? new SkippingDurationsDB(list, list, 3) : combinedDownloadItem.cinemanaDownloadItem.skippingDurations, combinedDownloadItem == null ? BuildConfig.FLAVOR : combinedDownloadItem.cinemanaDownloadItem.qualityName, combinedDownloadItem == null ? "0" : combinedDownloadItem.cinemanaDownloadItem.rootEpisode, combinedDownloadItem == null ? false : combinedDownloadItem.cinemanaDownloadItem.hasIntroSkipping, null, pw0Var.B, 2097152);
    }
}
