package com.shabakaty.downloader;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.os.Build;
import android.text.SpannableStringBuilder;
import android.text.style.LocaleSpan;
import android.view.View;
import androidx.fragment.app.Fragment;
import com.liulishuo.filedownloader.BuildConfig;
import com.liulishuo.filedownloader.model.FileDownloadStatus;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.utils.download.FinishedDownloadScope;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@19.0.1 */
/* JADX INFO: loaded from: classes.dex */
public class iq6 implements pr2 {
    public static wt2 a;

    public static int A(byte[] bArr, int i) {
        return ((bArr[i + 3] & FileDownloadStatus.error) << 24) | (bArr[i] & FileDownloadStatus.error) | ((bArr[i + 1] & FileDownloadStatus.error) << 8) | ((bArr[i + 2] & FileDownloadStatus.error) << 16);
    }

    public static Object B(Object obj, int i) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(gl3.a(20, "at index ", i));
    }

    public static int C(k17 k17Var, byte[] bArr, int i, int i2, int i3, cq6 cq6Var) {
        v07 v07Var = (v07) k17Var;
        Object objR = ((uu6) v07Var.e).r(4, null, null);
        int iA = v07Var.A(objR, bArr, i, i2, i3, cq6Var);
        v07Var.d(objR);
        cq6Var.c = objR;
        return iA;
    }

    public static int D(k17 k17Var, byte[] bArr, int i, int i2, cq6 cq6Var) throws jw6 {
        int iK = i + 1;
        int i3 = bArr[i];
        if (i3 < 0) {
            iK = K(i3, bArr, iK, cq6Var);
            i3 = cq6Var.a;
        }
        int i4 = iK;
        if (i3 < 0 || i3 > i2 - i4) {
            throw jw6.d();
        }
        Object objE = k17Var.e();
        int i5 = i3 + i4;
        k17Var.i(objE, bArr, i4, i5, cq6Var);
        k17Var.d(objE);
        cq6Var.c = objE;
        return i5;
    }

    public static int E(k17<?> k17Var, int i, byte[] bArr, int i2, int i3, cw6<?> cw6Var, cq6 cq6Var) throws jw6 {
        int iD = D(k17Var, bArr, i2, i3, cq6Var);
        cw6Var.add(cq6Var.c);
        while (iD < i3) {
            int iJ = J(bArr, iD, cq6Var);
            if (i != cq6Var.a) {
                break;
            }
            iD = D(k17Var, bArr, iJ, i3, cq6Var);
            cw6Var.add(cq6Var.c);
        }
        return iD;
    }

    public static int F(byte[] bArr, int i, cw6<?> cw6Var, cq6 cq6Var) throws jw6 {
        lv6 lv6Var = (lv6) cw6Var;
        int iJ = J(bArr, i, cq6Var);
        int i2 = cq6Var.a + iJ;
        while (iJ < i2) {
            iJ = J(bArr, iJ, cq6Var);
            lv6Var.l(cq6Var.a);
        }
        if (iJ == i2) {
            return iJ;
        }
        throw jw6.d();
    }

    public static int G(byte[] bArr, int i, cq6 cq6Var) throws jw6 {
        int iJ = J(bArr, i, cq6Var);
        int i2 = cq6Var.a;
        if (i2 < 0) {
            throw jw6.b();
        }
        if (i2 == 0) {
            cq6Var.c = BuildConfig.FLAVOR;
            return iJ;
        }
        cq6Var.c = new String(bArr, iJ, i2, hw6.a);
        return iJ + i2;
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00ab A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:50:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:51:0x00af A[PHI: r11
      0x00af: PHI (r11v20 byte) = (r11v19 byte), (r11v27 byte) binds: [B:48:0x00a9, B:50:0x00ad] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:53:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:92:0x00c8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:93:0x00c8 A[SYNTHETIC] */
    public static int H(byte[] bArr, int i, cq6 cq6Var) throws jw6 {
        int iJ = J(bArr, i, cq6Var);
        int i2 = cq6Var.a;
        if (i2 < 0) {
            throw jw6.b();
        }
        if (i2 == 0) {
            cq6Var.c = BuildConfig.FLAVOR;
            return iJ;
        }
        x47 x47Var = e57.a;
        int length = bArr.length;
        if ((iJ | i2 | ((length - iJ) - i2)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(iJ), Integer.valueOf(i2)));
        }
        int i3 = iJ + i2;
        char[] cArr = new char[i2];
        int i4 = 0;
        while (iJ < i3) {
            byte b = bArr[iJ];
            if (!fl3.s(b)) {
                break;
            }
            iJ++;
            cArr[i4] = (char) b;
            i4++;
        }
        while (iJ < i3) {
            int i5 = iJ + 1;
            byte b2 = bArr[iJ];
            if (fl3.s(b2)) {
                int i6 = i4 + 1;
                cArr[i4] = (char) b2;
                iJ = i5;
                while (true) {
                    i4 = i6;
                    if (iJ >= i3) {
                        break;
                    }
                    byte b3 = bArr[iJ];
                    if (!fl3.s(b3)) {
                        break;
                    }
                    iJ++;
                    i6 = i4 + 1;
                    cArr[i4] = (char) b3;
                }
            } else if (b2 < -32) {
                if (i5 >= i3) {
                    throw jw6.a();
                }
                int i7 = i5 + 1;
                int i8 = i4 + 1;
                byte b4 = bArr[i5];
                if (b2 < -62 || fl3.t(b4)) {
                    throw jw6.a();
                }
                cArr[i4] = (char) (((b2 & 31) << 6) | (b4 & 63));
                iJ = i7;
                i4 = i8;
            } else {
                if (b2 < -16) {
                    if (i5 >= i3 - 1) {
                        throw jw6.a();
                    }
                    int i9 = i5 + 1;
                    int i10 = i9 + 1;
                    int i11 = i4 + 1;
                    byte b5 = bArr[i5];
                    byte b6 = bArr[i9];
                    if (!fl3.t(b5)) {
                        if (b2 != -32) {
                            if (b2 != -19) {
                                if (!fl3.t(b6)) {
                                    cArr[i4] = (char) (((b2 & 15) << 12) | ((b5 & 63) << 6) | (b6 & 63));
                                    iJ = i10;
                                    i4 = i11;
                                }
                            } else if (b5 < -96) {
                                b2 = -19;
                                if (!fl3.t(b6)) {
                                    cArr[i4] = (char) (((b2 & 15) << 12) | ((b5 & 63) << 6) | (b6 & 63));
                                    iJ = i10;
                                    i4 = i11;
                                }
                            }
                        } else if (b5 >= -96) {
                            b2 = -32;
                            if (b2 != -19) {
                                if (!fl3.t(b6)) {
                                    cArr[i4] = (char) (((b2 & 15) << 12) | ((b5 & 63) << 6) | (b6 & 63));
                                    iJ = i10;
                                    i4 = i11;
                                }
                            } else if (b5 < -96) {
                                b2 = -19;
                                if (!fl3.t(b6)) {
                                    cArr[i4] = (char) (((b2 & 15) << 12) | ((b5 & 63) << 6) | (b6 & 63));
                                    iJ = i10;
                                    i4 = i11;
                                }
                            }
                        }
                    }
                    throw jw6.a();
                }
                if (i5 >= i3 - 2) {
                    throw jw6.a();
                }
                int i12 = i5 + 1;
                int i13 = i12 + 1;
                int i14 = i13 + 1;
                byte b7 = bArr[i5];
                byte b8 = bArr[i12];
                byte b9 = bArr[i13];
                if (fl3.t(b7) || (((b7 + 112) + (b2 << 28)) >> 30) != 0 || fl3.t(b8) || fl3.t(b9)) {
                    throw jw6.a();
                }
                int i15 = ((b2 & 7) << 18) | ((b7 & 63) << 12) | ((b8 & 63) << 6) | (b9 & 63);
                cArr[i4] = (char) ((i15 >>> 10) + 55232);
                cArr[i4 + 1] = (char) ((i15 & 1023) + 56320);
                i4 += 2;
                iJ = i14;
            }
        }
        cq6Var.c = new String(cArr, 0, i4);
        return i3;
    }

    public static int I(int i, byte[] bArr, int i2, int i3, t37 t37Var, cq6 cq6Var) throws jw6 {
        if ((i >>> 3) == 0) {
            throw new jw6("Protocol message contained an invalid tag (zero).");
        }
        int i4 = i & 7;
        if (i4 == 0) {
            int iM = M(bArr, i2, cq6Var);
            t37Var.c(i, Long.valueOf(cq6Var.b));
            return iM;
        }
        if (i4 == 1) {
            t37Var.c(i, Long.valueOf(N(bArr, i2)));
            return i2 + 8;
        }
        if (i4 == 2) {
            int iJ = J(bArr, i2, cq6Var);
            int i5 = cq6Var.a;
            if (i5 < 0) {
                throw jw6.b();
            }
            if (i5 > bArr.length - iJ) {
                throw jw6.d();
            }
            if (i5 == 0) {
                t37Var.c(i, ir6.s);
            } else {
                t37Var.c(i, ir6.u(bArr, iJ, i5));
            }
            return iJ + i5;
        }
        if (i4 != 3) {
            if (i4 != 5) {
                throw new jw6("Protocol message contained an invalid tag (zero).");
            }
            t37Var.c(i, Integer.valueOf(A(bArr, i2)));
            return i2 + 4;
        }
        int i6 = (i & (-8)) | 4;
        t37 t37VarB = t37.b();
        int i7 = 0;
        while (i2 < i3) {
            int iJ2 = J(bArr, i2, cq6Var);
            int i8 = cq6Var.a;
            if (i8 == i6) {
                i7 = i8;
                i2 = iJ2;
                break;
            }
            i7 = i8;
            i2 = I(i8, bArr, iJ2, i3, t37VarB, cq6Var);
        }
        if (i2 > i3 || i7 != i6) {
            throw jw6.c();
        }
        t37Var.c(i, t37VarB);
        return i2;
    }

    public static int J(byte[] bArr, int i, cq6 cq6Var) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b < 0) {
            return K(b, bArr, i2, cq6Var);
        }
        cq6Var.a = b;
        return i2;
    }

    public static int K(int i, byte[] bArr, int i2, cq6 cq6Var) {
        int i3 = i & 127;
        int i4 = i2 + 1;
        byte b = bArr[i2];
        if (b >= 0) {
            cq6Var.a = i3 | (b << 7);
            return i4;
        }
        int i5 = i3 | ((b & 127) << 7);
        int i6 = i4 + 1;
        byte b2 = bArr[i4];
        if (b2 >= 0) {
            cq6Var.a = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & 127) << 14);
        int i8 = i6 + 1;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            cq6Var.a = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & 127) << 21);
        int i10 = i8 + 1;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            cq6Var.a = i9 | (b4 << 28);
            return i10;
        }
        int i11 = i9 | ((b4 & 127) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                cq6Var.a = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    public static int L(int i, byte[] bArr, int i2, int i3, cw6<?> cw6Var, cq6 cq6Var) {
        lv6 lv6Var = (lv6) cw6Var;
        int iJ = J(bArr, i2, cq6Var);
        lv6Var.l(cq6Var.a);
        while (iJ < i3) {
            int iJ2 = J(bArr, iJ, cq6Var);
            if (i != cq6Var.a) {
                break;
            }
            iJ = J(bArr, iJ2, cq6Var);
            lv6Var.l(cq6Var.a);
        }
        return iJ;
    }

    public static int M(byte[] bArr, int i, cq6 cq6Var) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            cq6Var.b = j;
            return i2;
        }
        int i3 = i2 + 1;
        byte b = bArr[i2];
        long j2 = (j & 127) | (((long) (b & 127)) << 7);
        int i4 = 7;
        while (b < 0) {
            int i5 = i3 + 1;
            byte b2 = bArr[i3];
            i4 += 7;
            j2 |= ((long) (b2 & 127)) << i4;
            b = b2;
            i3 = i5;
        }
        cq6Var.b = j2;
        return i3;
    }

    public static long N(byte[] bArr, int i) {
        return ((((long) bArr[i + 7]) & 255) << 56) | (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48);
    }

    public static final <E> List<E> a(List<E> list) {
        fi2 fi2Var = (fi2) list;
        if (fi2Var.v != null) {
            throw new IllegalStateException();
        }
        fi2Var.n();
        fi2Var.u = true;
        return fi2Var;
    }

    public static void b(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    public static <T> void c(T t, Class<T> cls) {
        if (t != null) {
            return;
        }
        throw new IllegalStateException(cls.getCanonicalName() + " must be set");
    }

    public static <T> T d(T t, String str, Object obj) {
        if (t != null) {
            return t;
        }
        if (!str.contains("%s")) {
            throw new IllegalArgumentException("errorMessageTemplate has no format specifiers");
        }
        if (str.indexOf("%s") == str.lastIndexOf("%s")) {
            throw new NullPointerException(str.replace("%s", ((Class) obj).getCanonicalName()));
        }
        throw new IllegalArgumentException("errorMessageTemplate has more than one format specifier");
    }

    public static boolean e(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static int f(float[] fArr, int[] iArr, int i, byte[] bArr) {
        Arrays.fill(bArr, (byte) 0);
        for (int i2 = 0; i2 < 6; i2++) {
            iArr[i2] = (int) Math.ceil(fArr[i2]);
            int i3 = iArr[i2];
            if (i > i3) {
                Arrays.fill(bArr, (byte) 0);
                i = i3;
            }
            if (i == i3) {
                bArr[i2] = (byte) (bArr[i2] + 1);
            }
        }
        return i;
    }

    public static final void g(Fragment fragment, VideoModel videoModel, tm1<? super FinishedDownloadScope, qv4> tm1Var) {
        tm1Var.invoke(new FinishedDownloadScope(videoModel, fragment));
    }

    public static final <T> int h(List<? extends T> list) {
        j32.e(list, "<this>");
        return list.size() - 1;
    }

    public static final int i(List<b41> list) {
        if (list == null) {
            return 0;
        }
        Iterator<T> it = list.iterator();
        int i = 0;
        while (it.hasNext()) {
            int i2 = i + 1;
            if (((b41) it.next()).a) {
                return i;
            }
            i = i2;
        }
        return 0;
    }

    public static void j(char c) {
        String hexString = Integer.toHexString(c);
        throw new IllegalArgumentException("Illegal character: " + c + " (0x" + ("0000".substring(0, 4 - hexString.length()) + hexString) + ')');
    }

    public static boolean k(char c) {
        return c >= '0' && c <= '9';
    }

    public static boolean l(char c) {
        return c >= 128 && c <= 255;
    }

    public static boolean m(char c) {
        if (n(c) || c == ' ') {
            return true;
        }
        if (c < '0' || c > '9') {
            return c >= 'A' && c <= 'Z';
        }
        return true;
    }

    public static boolean n(char c) {
        return c == '\r' || c == '*' || c == '>';
    }

    public static final <T> List<T> o(T t) {
        List<T> listSingletonList = Collections.singletonList(t);
        j32.d(listSingletonList, "singletonList(element)");
        return listSingletonList;
    }

    public static final <T> List<T> p(T... tArr) {
        j32.e(tArr, "elements");
        return tArr.length > 0 ? hd.F(tArr) : w21.r;
    }

    public static final <T> List<T> q(T t) {
        return t != null ? o(t) : w21.r;
    }

    public static final <T> List<T> r(T... tArr) {
        ArrayList arrayList = new ArrayList();
        int length = tArr.length;
        int i = 0;
        while (i < length) {
            T t = tArr[i];
            i++;
            if (t != null) {
                arrayList.add(t);
            }
        }
        return arrayList;
    }

    public static int s(CharSequence charSequence, int i, int i2) {
        float[] fArr;
        if (i >= charSequence.length()) {
            return i2;
        }
        if (i2 == 0) {
            fArr = new float[]{0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.25f};
        } else {
            fArr = new float[]{1.0f, 2.0f, 2.0f, 2.0f, 2.0f, 2.25f};
            fArr[i2] = 0.0f;
        }
        int i3 = 0;
        while (true) {
            int i4 = i + i3;
            if (i4 == charSequence.length()) {
                byte[] bArr = new byte[6];
                int[] iArr = new int[6];
                int iF = f(fArr, iArr, Integer.MAX_VALUE, bArr);
                int i5 = 0;
                for (int i6 = 0; i6 < 6; i6++) {
                    i5 += bArr[i6];
                }
                if (iArr[0] == iF) {
                    return 0;
                }
                if (i5 == 1 && bArr[5] > 0) {
                    return 5;
                }
                if (i5 == 1 && bArr[4] > 0) {
                    return 4;
                }
                if (i5 != 1 || bArr[2] <= 0) {
                    return (i5 != 1 || bArr[3] <= 0) ? 1 : 3;
                }
                return 2;
            }
            char cCharAt = charSequence.charAt(i4);
            i3++;
            if (k(cCharAt)) {
                fArr[0] = fArr[0] + 0.5f;
            } else if (l(cCharAt)) {
                fArr[0] = (float) Math.ceil(fArr[0]);
                fArr[0] = fArr[0] + 2.0f;
            } else {
                fArr[0] = (float) Math.ceil(fArr[0]);
                fArr[0] = fArr[0] + 1.0f;
            }
            if (cCharAt == ' ' || (cCharAt >= '0' && cCharAt <= '9') || (cCharAt >= 'A' && cCharAt <= 'Z')) {
                fArr[1] = fArr[1] + 0.6666667f;
            } else if (l(cCharAt)) {
                fArr[1] = fArr[1] + 2.6666667f;
            } else {
                fArr[1] = fArr[1] + 1.3333334f;
            }
            if (cCharAt == ' ' || (cCharAt >= '0' && cCharAt <= '9') || (cCharAt >= 'a' && cCharAt <= 'z')) {
                fArr[2] = fArr[2] + 0.6666667f;
            } else if (l(cCharAt)) {
                fArr[2] = fArr[2] + 2.6666667f;
            } else {
                fArr[2] = fArr[2] + 1.3333334f;
            }
            if (m(cCharAt)) {
                fArr[3] = fArr[3] + 0.6666667f;
            } else if (l(cCharAt)) {
                fArr[3] = fArr[3] + 4.3333335f;
            } else {
                fArr[3] = fArr[3] + 3.3333333f;
            }
            if (cCharAt >= ' ' && cCharAt <= '^') {
                fArr[4] = fArr[4] + 0.75f;
            } else if (l(cCharAt)) {
                fArr[4] = fArr[4] + 4.25f;
            } else {
                fArr[4] = fArr[4] + 3.25f;
            }
            fArr[5] = fArr[5] + 1.0f;
            if (i3 >= 4) {
                int[] iArr2 = new int[6];
                byte[] bArr2 = new byte[6];
                f(fArr, iArr2, Integer.MAX_VALUE, bArr2);
                int i7 = 0;
                for (int i8 = 0; i8 < 6; i8++) {
                    i7 += bArr2[i8];
                }
                if (iArr2[0] < iArr2[5] && iArr2[0] < iArr2[1] && iArr2[0] < iArr2[2] && iArr2[0] < iArr2[3] && iArr2[0] < iArr2[4]) {
                    return 0;
                }
                if (iArr2[5] < iArr2[0] || bArr2[1] + bArr2[2] + bArr2[3] + bArr2[4] == 0) {
                    return 5;
                }
                if (i7 == 1 && bArr2[4] > 0) {
                    return 4;
                }
                if (i7 == 1 && bArr2[2] > 0) {
                    return 2;
                }
                if (i7 == 1 && bArr2[3] > 0) {
                    return 3;
                }
                if (iArr2[1] + 1 < iArr2[0] && iArr2[1] + 1 < iArr2[5] && iArr2[1] + 1 < iArr2[4] && iArr2[1] + 1 < iArr2[2]) {
                    if (iArr2[1] < iArr2[3]) {
                        return 1;
                    }
                    if (iArr2[1] == iArr2[3]) {
                        for (int i9 = i + i3 + 1; i9 < charSequence.length(); i9++) {
                            char cCharAt2 = charSequence.charAt(i9);
                            if (n(cCharAt2)) {
                                return 3;
                            }
                            if (!m(cCharAt2)) {
                                break;
                            }
                        }
                        return 1;
                    }
                }
            }
        }
    }

    public static final <T> List<T> t(T... tArr) {
        j32.e(tArr, "elements");
        return tArr.length == 0 ? new ArrayList() : new ArrayList(new wc(tArr, true));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> List<T> u(List<? extends T> list) {
        int size = list.size();
        if (size != 0) {
            return size != 1 ? list : o(list.get(0));
        }
        return w21.r;
    }

    public static void v(AnimatorSet animatorSet, List<Animator> list) {
        int size = list.size();
        long jMax = 0;
        for (int i = 0; i < size; i++) {
            Animator animator = list.get(i);
            jMax = Math.max(jMax, animator.getDuration() + animator.getStartDelay());
        }
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, 0);
        valueAnimatorOfInt.setDuration(jMax);
        list.add(0, valueAnimatorOfInt);
        animatorSet.playTogether(list);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0064  */
    public static final void w(View view, CharSequence charSequence) {
        CharSequence charSequenceM0;
        boolean z;
        SpannableStringBuilder spannableStringBuilder;
        j32.e(view, "<this>");
        if (charSequence == null || (charSequenceM0 = re4.m0(charSequence)) == null) {
            charSequenceM0 = BuildConfig.FLAVOR;
        }
        Character chN0 = se4.n0(charSequenceM0, 0);
        if (chN0 == null) {
            z = false;
        } else {
            chN0.charValue();
            Character.UnicodeBlock unicodeBlockOf = Character.UnicodeBlock.of(chN0.charValue());
            z = true;
            if ((Build.VERSION.SDK_INT < 26 || (!j32.a(Character.UnicodeBlock.ARABIC_EXTENDED_A, unicodeBlockOf) && !j32.a(Character.UnicodeBlock.ARABIC_MATHEMATICAL_ALPHABETIC_SYMBOLS, unicodeBlockOf))) && !j32.a(Character.UnicodeBlock.ARABIC, unicodeBlockOf) && !j32.a(Character.UnicodeBlock.ARABIC_SUPPLEMENT, unicodeBlockOf) && !j32.a(Character.UnicodeBlock.ARABIC_PRESENTATION_FORMS_A, unicodeBlockOf) && !j32.a(Character.UnicodeBlock.ARABIC_PRESENTATION_FORMS_B, unicodeBlockOf) && !j32.a(Character.UnicodeBlock.OLD_SOUTH_ARABIAN, unicodeBlockOf)) {
                z = false;
            }
        }
        if (z) {
            spannableStringBuilder = new SpannableStringBuilder(charSequenceM0);
            spannableStringBuilder.setSpan(new LocaleSpan(new Locale("ar")), 0, charSequenceM0.length(), 0);
        } else {
            spannableStringBuilder = new SpannableStringBuilder(charSequenceM0);
            spannableStringBuilder.setSpan(new LocaleSpan(Locale.ENGLISH), 0, charSequenceM0.length(), 0);
        }
        view.setContentDescription(spannableStringBuilder);
    }

    public static final void x() {
        throw new ArithmeticException("Index overflow has happened.");
    }

    public static int y(byte[] bArr, int i, cq6 cq6Var) throws jw6 {
        int iJ = J(bArr, i, cq6Var);
        int i2 = cq6Var.a;
        if (i2 < 0) {
            throw jw6.b();
        }
        if (i2 > bArr.length - iJ) {
            throw jw6.d();
        }
        if (i2 == 0) {
            cq6Var.c = ir6.s;
            return iJ;
        }
        cq6Var.c = ir6.u(bArr, iJ, i2);
        return iJ + i2;
    }

    public static String z(ir6 ir6Var) {
        StringBuilder sb = new StringBuilder(ir6Var.i());
        for (int i = 0; i < ir6Var.i(); i++) {
            byte bD = ir6Var.d(i);
            if (bD == 34) {
                sb.append("\\\"");
            } else if (bD == 39) {
                sb.append("\\'");
            } else if (bD != 92) {
                switch (bD) {
                    case 7:
                        sb.append("\\a");
                        break;
                    case 8:
                        sb.append("\\b");
                        break;
                    case 9:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case 11:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (bD < 32 || bD > 126) {
                            sb.append('\\');
                            sb.append((char) (((bD >>> 6) & 3) + 48));
                            sb.append((char) (((bD >>> 3) & 7) + 48));
                            sb.append((char) ((bD & 7) + 48));
                        } else {
                            sb.append((char) bD);
                        }
                        break;
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }
}
