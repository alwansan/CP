package com.shabakaty.downloader;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Looper;
import android.os.PowerManager;
import android.util.Log;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Toast;
import androidx.lifecycle.LifecycleCoroutineScopeImpl;
import com.cinemana.pro.permissions.DownloadPermissionFlow;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import com.liulishuo.filedownloader.model.FileDownloadStatus;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: MiscExtensions.kt */
/* JADX INFO: loaded from: classes.dex */
public class wt2 implements p6, a34, a95 {
    public wt2(int i) {
    }

    public static final boolean b(Context context) {
        Object systemService = context.getSystemService("power");
        PowerManager powerManager = systemService instanceof PowerManager ? (PowerManager) systemService : null;
        if (powerManager == null) {
            return true;
        }
        return powerManager.isIgnoringBatteryOptimizations(context.getPackageName());
    }

    public static final se0 e(rh2 rh2Var) {
        j32.e(rh2Var, "<this>");
        ih2 ih2VarE = cl3.e(rh2Var);
        return new rd0(((LifecycleCoroutineScopeImpl) ih2VarE).s.plus(hu0.b));
    }

    public static final int f(Context context, int i) {
        j32.e(context, "<this>");
        return ld0.b(context, i);
    }

    public static final ColorStateList g(Context context, int i) {
        j32.e(context, "<this>");
        return ld0.c(context, i);
    }

    public static final Drawable h(Context context, int i) {
        j32.e(context, "<this>");
        Object obj = ld0.a;
        return ld0.c.b(context, i);
    }

    public static final void i(View view) {
        Object systemService = view.getContext().getSystemService("input_method");
        InputMethodManager inputMethodManager = systemService instanceof InputMethodManager ? (InputMethodManager) systemService : null;
        if (inputMethodManager == null) {
            return;
        }
        inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
    }

    public static final void j(Throwable th) {
        Log.e(se4.p0(th.getClass().getSimpleName(), 22), th.getMessage(), th);
    }

    public static final void k(Throwable th) {
        j32.e(th, "throwable");
        Log.e(se4.p0(th.getClass().getSimpleName(), 22), th.getMessage(), th);
    }

    public static final void l(Context context) {
        DownloadPermissionFlow.requestNext(context);
    }

    public static final void m(Context context, String str) {
        Toast.makeText(context, str, 1).show();
    }

    public static final boolean n() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    /* JADX WARN: Code duplicated, block: B:104:0x0161 A[LOOP:1: B:89:0x012f->B:104:0x0161, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:151:0x025f  */
    /* JADX WARN: Code duplicated, block: B:16:0x0045 A[PHI: r4
      0x0045: PHI (r4v3 com.shabakaty.downloader.u41) = (r4v2 com.shabakaty.downloader.u41), (r4v40 com.shabakaty.downloader.u41) binds: [B:9:0x001a, B:14:0x0036] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:355:0x00bb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:356:0x00c5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:359:0x0170 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:48:0x0099  */
    /* JADX WARN: Code duplicated, block: B:51:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:56:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:58:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:61:0x00bd A[EDGE_INSN: B:61:0x00bd->B:65:0x00c6 BREAK  A[LOOP:0: B:49:0x009c->B:59:0x00b8]] */
    /* JADX WARN: Code duplicated, block: B:62:0x00c0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:63:0x00c2 A[EDGE_INSN: B:63:0x00c2->B:65:0x00c6 BREAK  A[LOOP:0: B:49:0x009c->B:59:0x00b8]] */
    @Override // com.shabakaty.downloader.a95
    public jm J(String str, si siVar, int i, int i2, Map<f31, ?> map) throws c95 {
        int i3;
        boolean z;
        fu2 fu2Var;
        int i4;
        e05 e05VarA;
        hm hmVar;
        int i5;
        char c;
        int i6;
        int i7;
        fz fzVar;
        boolean z2;
        boolean z3;
        int i8;
        char cCharAt;
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Found empty contents");
        }
        if (siVar != si.QR_CODE) {
            throw new IllegalArgumentException("Can only encode QR_CODE, but got ".concat(String.valueOf(siVar)));
        }
        if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException("Requested dimensions are too small: " + i + 'x' + i2);
        }
        u41 u41VarValueOf = u41.L;
        if (map != null) {
            f31 f31Var = f31.ERROR_CORRECTION;
            if (map.containsKey(f31Var)) {
                u41VarValueOf = u41.valueOf(map.get(f31Var).toString());
            }
            f31 f31Var2 = f31.MARGIN;
            if (map.containsKey(f31Var2)) {
                i3 = Integer.parseInt(map.get(f31Var2).toString());
            } else {
                i3 = 4;
            }
        } else {
            i3 = 4;
        }
        f31 f31Var3 = f31.GS1_FORMAT;
        f31 f31Var4 = f31.CHARACTER_SET;
        fu2 fu2Var2 = fu2.BYTE;
        boolean z4 = map != null && map.containsKey(f31Var4);
        String string = z4 ? map.get(f31Var4).toString() : "ISO-8859-1";
        if (!"Shift_JIS".equals(string)) {
            z2 = false;
            z3 = false;
            i8 = 0;
            while (true) {
                if (i8 < str.length()) {
                    cCharAt = str.charAt(i8);
                    if (cCharAt < '0') {
                        if (k31.b(cCharAt) != -1) {
                            z2 = true;
                        }
                    } else if (k31.b(cCharAt) != -1) {
                        z2 = true;
                    }
                    i8++;
                } else {
                    if (z2) {
                        fu2Var = fu2.ALPHANUMERIC;
                        break;
                    }
                    if (z3) {
                        fu2Var = fu2.NUMERIC;
                        break;
                    }
                }
                fu2Var = fu2Var2;
                break;
            }
        }
        try {
            byte[] bytes = str.getBytes("Shift_JIS");
            int length = bytes.length;
            if (length % 2 != 0) {
                z = false;
                break;
            }
            int i9 = 0;
            while (true) {
                if (i9 >= length) {
                    z = true;
                    break;
                }
                int i10 = bytes[i9] & FileDownloadStatus.error;
                if ((i10 < 129 || i10 > 159) && (i10 < 224 || i10 > 235)) {
                    z = false;
                    break;
                }
                i9 += 2;
            }
        } catch (UnsupportedEncodingException unused) {
        }
        if (!z) {
            z2 = false;
            z3 = false;
            i8 = 0;
            while (true) {
                if (i8 < str.length()) {
                    cCharAt = str.charAt(i8);
                    if (cCharAt < '0' && cCharAt <= '9') {
                        z3 = true;
                    } else if (k31.b(cCharAt) != -1) {
                        z2 = true;
                    }
                    i8++;
                } else {
                    if (z2) {
                        fu2Var = fu2.ALPHANUMERIC;
                        break;
                    }
                    if (z3) {
                        fu2Var = fu2.NUMERIC;
                        break;
                    }
                }
                fu2Var = fu2Var2;
                break;
            }
        }
        fu2Var = fu2.KANJI;
        hm hmVar2 = new hm();
        if (fu2Var == fu2Var2 && z4 && (fzVar = (fz) ((HashMap) fz.u).get(string)) != null) {
            hmVar2.c(7, 4);
            hmVar2.c(fzVar.r[0], 8);
        }
        if ((map != null && map.containsKey(f31Var3)) && Boolean.valueOf(map.get(f31Var3).toString()).booleanValue()) {
            i4 = 4;
            hmVar2.c(5, 4);
        } else {
            i4 = 4;
        }
        hmVar2.c(fu2Var.s, i4);
        hm hmVar3 = new hm();
        int iOrdinal = fu2Var.ordinal();
        if (iOrdinal == 1) {
            int length2 = str.length();
            int i11 = 0;
            while (i11 < length2) {
                int iCharAt = str.charAt(i11) - '0';
                int i12 = i11 + 2;
                if (i12 < length2) {
                    hmVar3.c(((str.charAt(i11 + 1) - '0') * 10) + (iCharAt * 100) + (str.charAt(i12) - '0'), 10);
                    i11 += 3;
                } else {
                    i11++;
                    if (i11 < length2) {
                        hmVar3.c((iCharAt * 10) + (str.charAt(i11) - '0'), 7);
                        i11 = i12;
                    } else {
                        hmVar3.c(iCharAt, 4);
                    }
                }
            }
        } else if (iOrdinal == 2) {
            int length3 = str.length();
            int i13 = 0;
            while (i13 < length3) {
                int iB = k31.b(str.charAt(i13));
                if (iB == -1) {
                    throw new c95();
                }
                int i14 = i13 + 1;
                if (i14 < length3) {
                    int iB2 = k31.b(str.charAt(i14));
                    if (iB2 == -1) {
                        throw new c95();
                    }
                    hmVar3.c((iB * 45) + iB2, 11);
                    i13 += 2;
                } else {
                    hmVar3.c(iB, 6);
                    i13 = i14;
                }
            }
        } else if (iOrdinal == i4) {
            try {
                for (byte b : str.getBytes(string)) {
                    hmVar3.c(b, 8);
                }
            } catch (UnsupportedEncodingException e) {
                throw new c95(e);
            }
        } else {
            if (iOrdinal != 6) {
                throw new c95("Invalid mode: ".concat(String.valueOf(fu2Var)));
            }
            try {
                byte[] bytes2 = str.getBytes("Shift_JIS");
                int length4 = bytes2.length;
                for (int i15 = 0; i15 < length4; i15 += 2) {
                    int i16 = ((bytes2[i15] & FileDownloadStatus.error) << 8) | (bytes2[i15 + 1] & FileDownloadStatus.error);
                    if (i16 < 33088 || i16 > 40956) {
                        if (i16 < 57408 || i16 > 60351) {
                            i6 = -1;
                        } else {
                            i7 = 49472;
                        }
                        if (i6 != -1) {
                            throw new c95("Invalid byte sequence");
                        }
                        hmVar3.c(((i6 >> 8) * 192) + (i6 & 255), 13);
                    } else {
                        i7 = 33088;
                    }
                    i6 = i16 - i7;
                    if (i6 != -1) {
                        throw new c95("Invalid byte sequence");
                    }
                    hmVar3.c(((i6 >> 8) * 192) + (i6 & 255), 13);
                }
            } catch (UnsupportedEncodingException e2) {
                throw new c95(e2);
            }
        }
        if (map != null) {
            f31 f31Var5 = f31.QR_VERSION;
            if (map.containsKey(f31Var5)) {
                e05VarA = e05.b(Integer.parseInt(map.get(f31Var5).toString()));
                if (!k31.c(fu2Var.f(e05VarA) + hmVar2.s + hmVar3.s, e05VarA, u41VarValueOf)) {
                    throw new c95("Data too big for requested version");
                }
            } else {
                e05VarA = k31.a(fu2Var.f(k31.a(fu2Var.f(e05.b(1)) + hmVar2.s + hmVar3.s, u41VarValueOf)) + hmVar2.s + hmVar3.s, u41VarValueOf);
            }
        } else {
            e05VarA = k31.a(fu2Var.f(k31.a(fu2Var.f(e05.b(1)) + hmVar2.s + hmVar3.s, u41VarValueOf)) + hmVar2.s + hmVar3.s, u41VarValueOf);
        }
        hm hmVar4 = new hm();
        hmVar4.b(hmVar2);
        int iG = fu2Var == fu2Var2 ? hmVar3.g() : str.length();
        int iF = fu2Var.f(e05VarA);
        int i17 = 1 << iF;
        if (iG >= i17) {
            throw new c95(iG + " is bigger than " + (i17 - 1));
        }
        hmVar4.c(iG, iF);
        hmVar4.b(hmVar3);
        e05.b bVar = e05VarA.b[u41VarValueOf.ordinal()];
        int iA = e05VarA.c - (bVar.a() * bVar.a);
        int i18 = iA << 3;
        if (hmVar4.s > i18) {
            throw new c95("data bits cannot fit in the QR Code" + hmVar4.s + " > " + i18);
        }
        for (int i19 = 0; i19 < 4 && hmVar4.s < i18; i19++) {
            hmVar4.a(false);
        }
        boolean z5 = false;
        int i20 = hmVar4.s & 7;
        if (i20 > 0) {
            while (i20 < 8) {
                hmVar4.a(z5);
                i20++;
                z5 = false;
            }
        }
        int iG2 = iA - hmVar4.g();
        for (int i21 = 0; i21 < iG2; i21++) {
            hmVar4.c((i21 & 1) == 0 ? 236 : 17, 8);
        }
        if (hmVar4.s != i18) {
            throw new c95("Bits size does not equal capacity");
        }
        int i22 = e05VarA.c;
        int iA2 = bVar.a();
        if (hmVar4.g() != iA) {
            throw new c95("Number of bits and data bytes does not match");
        }
        ArrayList arrayList = new ArrayList(iA2);
        int i23 = 0;
        int iMax = 0;
        int iMax2 = 0;
        int i24 = 0;
        while (i24 < iA2) {
            int[] iArr = new int[1];
            int[] iArr2 = new int[1];
            if (i24 >= iA2) {
                throw new c95("Block ID too large");
            }
            int i25 = i22 % iA2;
            int i26 = iA2 - i25;
            int i27 = i22 / iA2;
            int i28 = i27 + 1;
            int i29 = iA / iA2;
            int i30 = i29 + 1;
            int i31 = i3;
            int i32 = i27 - i29;
            u41 u41Var = u41VarValueOf;
            int i33 = i28 - i30;
            if (i32 != i33) {
                throw new c95("EC bytes mismatch");
            }
            e05 e05Var = e05VarA;
            if (iA2 != i26 + i25) {
                throw new c95("RS blocks mismatch");
            }
            if (i22 != ((i30 + i33) * i25) + ((i29 + i32) * i26)) {
                throw new c95("Total bytes mismatch");
            }
            if (i24 < i26) {
                c = 0;
                iArr[0] = i29;
                iArr2[0] = i32;
            } else {
                c = 0;
                iArr[0] = i30;
                iArr2[0] = i33;
            }
            int i34 = iArr[c];
            byte[] bArr = new byte[i34];
            int i35 = i23 << 3;
            int i36 = 0;
            while (i36 < i34) {
                int i37 = iA2;
                int i38 = i22;
                int i39 = 0;
                int i40 = 0;
                for (int i41 = 8; i40 < i41; i41 = 8) {
                    if (hmVar4.f(i35)) {
                        i39 |= 1 << (7 - i40);
                    }
                    i35++;
                    i40++;
                }
                bArr[i36 + 0] = (byte) i39;
                i36++;
                iA2 = i37;
                i22 = i38;
            }
            int i42 = iA2;
            int i43 = i22;
            int i44 = iArr2[0];
            int[] iArr3 = new int[i34 + i44];
            for (int i45 = 0; i45 < i34; i45++) {
                iArr3[i45] = bArr[i45] & FileDownloadStatus.error;
            }
            new qz2(sp1.k).i(iArr3, i44);
            byte[] bArr2 = new byte[i44];
            for (int i46 = 0; i46 < i44; i46++) {
                bArr2[i46] = (byte) iArr3[i34 + i46];
            }
            arrayList.add(new nm(bArr, bArr2));
            iMax = Math.max(iMax, i34);
            iMax2 = Math.max(iMax2, i44);
            i23 += iArr[0];
            i24++;
            iA2 = i42;
            u41VarValueOf = u41Var;
            e05VarA = e05Var;
            i22 = i43;
            i3 = i31;
        }
        e05 e05Var2 = e05VarA;
        u41 u41Var2 = u41VarValueOf;
        int i47 = i3;
        int i48 = i22;
        if (iA != i23) {
            throw new c95("Data bytes does not match offset");
        }
        hm hmVar5 = new hm();
        for (int i49 = 0; i49 < iMax; i49++) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                byte[] bArr3 = ((nm) it.next()).a;
                if (i49 < bArr3.length) {
                    hmVar5.c(bArr3[i49], 8);
                }
            }
        }
        for (int i50 = 0; i50 < iMax2; i50++) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                byte[] bArr4 = ((nm) it2.next()).b;
                if (i50 < bArr4.length) {
                    hmVar5.c(bArr4[i50], 8);
                }
            }
        }
        if (i48 != hmVar5.g()) {
            throw new c95("Interleaving error: " + i48 + " and " + hmVar5.g() + " differ.");
        }
        int i51 = (e05Var2.a * 4) + 17;
        yu0 yu0Var = new yu0(i51, i51);
        int i52 = Integer.MAX_VALUE;
        int i53 = -1;
        int i54 = 0;
        for (int i55 = 8; i54 < i55; i55 = 8) {
            u41 u41Var3 = u41Var2;
            wn2.a(hmVar5, u41Var3, e05Var2, i54, yu0Var);
            int i56 = 0;
            int iB3 = kf5.b(yu0Var, false) + kf5.b(yu0Var, true);
            byte[][] bArr5 = (byte[][]) yu0Var.d;
            int i57 = yu0Var.b;
            int i58 = yu0Var.c;
            int i59 = 0;
            int i60 = 0;
            while (i59 < i58 - 1) {
                byte[] bArr6 = bArr5[i59];
                int i61 = i58;
                while (i56 < i57 - 1) {
                    byte b2 = bArr6[i56];
                    int i62 = i56 + 1;
                    if (b2 == bArr6[i62]) {
                        int i63 = i59 + 1;
                        if (b2 == bArr5[i63][i56] && b2 == bArr5[i63][i62]) {
                            i60++;
                        }
                    }
                    i56 = i62;
                }
                i59++;
                i58 = i61;
                i56 = 0;
            }
            int i64 = (i60 * 3) + iB3;
            byte[][] bArr7 = (byte[][]) yu0Var.d;
            int i65 = yu0Var.b;
            int i66 = yu0Var.c;
            int i67 = 0;
            for (int i68 = 0; i68 < i66; i68++) {
                int i69 = 0;
                while (i69 < i65) {
                    byte[] bArr8 = bArr7[i68];
                    int i70 = i69 + 6;
                    if (i70 < i65) {
                        i5 = i65;
                        hmVar = hmVar5;
                        if (bArr8[i69] == 1 && bArr8[i69 + 1] == 0 && bArr8[i69 + 2] == 1 && bArr8[i69 + 3] == 1 && bArr8[i69 + 4] == 1 && bArr8[i69 + 5] == 0 && bArr8[i70] == 1 && (kf5.g(bArr8, i69 - 4, i69) || kf5.g(bArr8, i69 + 7, i69 + 11))) {
                            i67++;
                        }
                    } else {
                        hmVar = hmVar5;
                        i5 = i65;
                    }
                    int i71 = i68 + 6;
                    if (i71 < i66 && bArr7[i68][i69] == 1 && bArr7[i68 + 1][i69] == 0 && bArr7[i68 + 2][i69] == 1 && bArr7[i68 + 3][i69] == 1 && bArr7[i68 + 4][i69] == 1 && bArr7[i68 + 5][i69] == 0 && bArr7[i71][i69] == 1 && (kf5.h(bArr7, i69, i68 - 4, i68) || kf5.h(bArr7, i69, i68 + 7, i68 + 11))) {
                        i67++;
                    }
                    i69++;
                    hmVar5 = hmVar;
                    i65 = i5;
                }
            }
            hm hmVar6 = hmVar5;
            int i72 = (i67 * 40) + i64;
            byte[][] bArr9 = (byte[][]) yu0Var.d;
            int i73 = yu0Var.b;
            int i74 = yu0Var.c;
            int i75 = 0;
            for (int i76 = 0; i76 < i74; i76++) {
                byte[] bArr10 = bArr9[i76];
                for (int i77 = 0; i77 < i73; i77++) {
                    if (bArr10[i77] == 1) {
                        i75++;
                    }
                }
            }
            int i78 = yu0Var.c * yu0Var.b;
            int iAbs = (((Math.abs((i75 << 1) - i78) * 10) / i78) * 10) + i72;
            if (iAbs < i52) {
                i52 = iAbs;
                i53 = i54;
            }
            i54++;
            hmVar5 = hmVar6;
            u41Var2 = u41Var3;
        }
        wn2.a(hmVar5, u41Var2, e05Var2, i53, yu0Var);
        int i79 = yu0Var.b;
        int i80 = yu0Var.c;
        int i81 = i47 << 1;
        int i82 = i79 + i81;
        int i83 = i81 + i80;
        int iMax3 = Math.max(i, i82);
        int iMax4 = Math.max(i2, i83);
        int iMin = Math.min(iMax3 / i82, iMax4 / i83);
        int i84 = (iMax3 - (i79 * iMin)) / 2;
        int i85 = (iMax4 - (i80 * iMin)) / 2;
        jm jmVar = new jm(iMax3, iMax4);
        int i86 = 0;
        while (i86 < i80) {
            int i87 = i84;
            int i88 = 0;
            while (i88 < i79) {
                if (yu0Var.b(i88, i86) == 1) {
                    jmVar.c(i87, i85, iMin, iMin);
                }
                i88++;
                i87 += iMin;
            }
            i86++;
            i85 += iMin;
        }
        return jmVar;
    }

    @Override // com.shabakaty.downloader.a34
    public w24 a(zl2 zl2Var, JSONObject jSONObject) throws JSONException {
        long jCurrentTimeMillis;
        int iOptInt = jSONObject.optInt("settings_version", 0);
        int iOptInt2 = jSONObject.optInt("cache_duration", 3600);
        JSONObject jSONObject2 = jSONObject.getJSONObject("fabric");
        JSONObject jSONObject3 = jSONObject.getJSONObject("app");
        String string = jSONObject3.getString(FileDownloadModel.STATUS);
        boolean zEquals = "new".equals(string);
        String string2 = jSONObject2.getString("bundle_id");
        String string3 = jSONObject2.getString("org_id");
        String str = zEquals ? "https://update.crashlytics.com/spi/v1/platforms/android/apps" : String.format(Locale.US, "https://update.crashlytics.com/spi/v1/platforms/android/apps/%s", string2);
        Locale locale = Locale.US;
        hb hbVar = new hb(string, str, String.format(locale, "https://reports.crashlytics.com/spi/v1/platforms/android/apps/%s/reports", string2), String.format(locale, "https://reports.crashlytics.com/sdk-api/v1/platforms/android/apps/%s/minidumps", string2), string2, string3, jSONObject3.optBoolean("update_required", false), jSONObject3.optInt("report_upload_variant", 0), jSONObject3.optInt("native_report_upload_variant", 0));
        c24 c24Var = new c24(8, 4);
        JSONObject jSONObject4 = jSONObject.getJSONObject("features");
        ja1 ja1Var = new ja1(jSONObject4.optBoolean("collect_reports", true), jSONObject4.optBoolean("collect_anrs", false));
        long j = iOptInt2;
        if (jSONObject.has("expires_at")) {
            jCurrentTimeMillis = jSONObject.optLong("expires_at");
        } else {
            Objects.requireNonNull(zl2Var);
            jCurrentTimeMillis = (j * 1000) + System.currentTimeMillis();
        }
        return new w24(jCurrentTimeMillis, hbVar, c24Var, ja1Var, iOptInt, iOptInt2);
    }

    public hg4 c(float f) {
        if (f == 1.2f) {
            return hg4.e.c;
        }
        if (f == 1.6f) {
            return hg4.c.c;
        }
        if (f == 2.2f) {
            return hg4.b.c;
        }
        return f == 3.0f ? hg4.a.c : hg4.d.c;
    }

    public float d(hg4 hg4Var) {
        j32.e(hg4Var, "scale");
        return hg4Var.a;
    }

    @Override // com.shabakaty.downloader.p6
    public void x(String str, Bundle bundle) {
        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
            Log.d("FirebaseCrashlytics", "Skipping logging Crashlytics event to Firebase, no Firebase Analytics", null);
        }
    }
}
