package com.shabakaty.downloader;

import android.os.Bundle;
import androidx.navigation.NavController;
import com.liulishuo.filedownloader.BuildConfig;
import java.util.Map;

/* JADX INFO: compiled from: EdgeTreatment.java */
/* JADX INFO: loaded from: classes.dex */
public class c21 implements v37, a95 {
    public c21(int i) {
    }

    public static /* synthetic */ void a(int i) {
        Object[] objArr = new Object[3];
        switch (i) {
            case 1:
            case 4:
                objArr[0] = "b";
                break;
            case 2:
            case 7:
                objArr[0] = "typeCheckingProcedure";
                break;
            case 3:
            default:
                objArr[0] = "a";
                break;
            case 5:
            case 10:
                objArr[0] = "subtype";
                break;
            case 6:
            case 11:
                objArr[0] = "supertype";
                break;
            case 8:
                objArr[0] = "type";
                break;
            case 9:
                objArr[0] = "typeProjection";
                break;
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/types/checker/TypeCheckerProcedureCallbacksImpl";
        switch (i) {
            case 3:
            case 4:
                objArr[2] = "assertEqualTypeConstructors";
                break;
            case 5:
            case 6:
            case 7:
                objArr[2] = "assertSubtype";
                break;
            case 8:
            case 9:
                objArr[2] = "capture";
                break;
            case 10:
            case 11:
                objArr[2] = "noCorrespondingSupertype";
                break;
            default:
                objArr[2] = "assertEqualTypes";
                break;
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.shabakaty.downloader.a95
    public jm J(String str, si siVar, int i, int i2, Map<f31, ?> map) {
        ft0 ft0Var;
        int i3;
        int i4;
        jm jmVar;
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Found empty contents");
        }
        if (siVar != si.DATA_MATRIX) {
            throw new IllegalArgumentException("Can only encode DATA_MATRIX, but got ".concat(String.valueOf(siVar)));
        }
        if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException("Requested dimensions can't be negative: " + i + 'x' + i2);
        }
        cj4 cj4Var = cj4.FORCE_NONE;
        ft0 ft0Var2 = null;
        if (map != null) {
            cj4 cj4Var2 = (cj4) map.get(f31.DATA_MATRIX_SHAPE);
            if (cj4Var2 != null) {
                cj4Var = cj4Var2;
            }
            ft0 ft0Var3 = (ft0) map.get(f31.MIN_SIZE);
            if (ft0Var3 == null) {
                ft0Var3 = null;
            }
            ft0Var = (ft0) map.get(f31.MAX_SIZE);
            if (ft0Var == null) {
                ft0Var = null;
            }
            ft0Var2 = ft0Var3;
        } else {
            ft0Var = null;
        }
        j31[] j31VarArr = {new ll3(13), new ow4(4), new vl4(), new d95(), new xl2(11), new zl2(17)};
        n31 n31Var = new n31(str);
        n31Var.b = cj4Var;
        n31Var.c = ft0Var2;
        n31Var.d = ft0Var;
        if (str.startsWith("[)>\u001e05\u001d") && str.endsWith("\u001e\u0004")) {
            n31Var.e.append((char) 236);
            n31Var.i = 2;
            n31Var.f += 7;
        } else if (str.startsWith("[)>\u001e06\u001d") && str.endsWith("\u001e\u0004")) {
            n31Var.e.append((char) 237);
            n31Var.i = 2;
            n31Var.f += 7;
        }
        int i5 = 0;
        while (n31Var.d()) {
            j31VarArr[i5].d(n31Var);
            int i6 = n31Var.g;
            if (i6 >= 0) {
                n31Var.g = -1;
                i5 = i6;
            }
        }
        int iA = n31Var.a();
        n31Var.e();
        int i7 = n31Var.h.b;
        if (iA < i7 && i5 != 0 && i5 != 5 && i5 != 4) {
            n31Var.e.append((char) 254);
        }
        StringBuilder sb = n31Var.e;
        if (sb.length() < i7) {
            sb.append((char) 129);
        }
        while (sb.length() < i7) {
            int length = (((sb.length() + 1) * 149) % 253) + 1 + 129;
            if (length > 254) {
                length -= 254;
            }
            sb.append((char) length);
        }
        String string = n31Var.e.toString();
        bj4 bj4VarI = bj4.i(string.length(), cj4Var, ft0Var2, ft0Var, true);
        int[] iArr = t41.a;
        int length2 = string.length();
        int i8 = bj4VarI.b;
        if (length2 != i8) {
            throw new IllegalArgumentException("The number of codewords does not match the selected symbol");
        }
        StringBuilder sb2 = new StringBuilder(i8 + bj4VarI.c);
        sb2.append(string);
        int iC = bj4VarI.c();
        if (iC == 1) {
            sb2.append(t41.a(string, bj4VarI.c));
        } else {
            sb2.setLength(sb2.capacity());
            int[] iArr2 = new int[iC];
            int[] iArr3 = new int[iC];
            int[] iArr4 = new int[iC];
            int i9 = 0;
            while (i9 < iC) {
                int i10 = i9 + 1;
                iArr2[i9] = bj4VarI.a(i10);
                iArr3[i9] = bj4VarI.h;
                iArr4[i9] = 0;
                if (i9 > 0) {
                    iArr4[i9] = iArr4[i9 - 1] + iArr2[i9];
                }
                i9 = i10;
            }
            for (int i11 = 0; i11 < iC; i11++) {
                StringBuilder sb3 = new StringBuilder(iArr2[i11]);
                for (int i12 = i11; i12 < bj4VarI.b; i12 += iC) {
                    sb3.append(string.charAt(i12));
                }
                String strA = t41.a(sb3.toString(), iArr3[i11]);
                int i13 = i11;
                int i14 = 0;
                while (i13 < iArr3[i11] * iC) {
                    sb2.setCharAt(bj4VarI.b + i13, strA.charAt(i14));
                    i13 += iC;
                    i14++;
                }
            }
        }
        mn4 mn4Var = new mn4(sb2.toString(), bj4VarI.e(), bj4VarI.d());
        int i15 = 4;
        int i16 = 0;
        int i17 = 0;
        while (true) {
            if (i15 == mn4Var.c && i16 == 0) {
                mn4Var.c(i17);
                i17++;
            }
            if (i15 == mn4Var.c - 2 && i16 == 0 && mn4Var.d % 4 != 0) {
                mn4Var.d(i17);
                i17++;
            }
            if (i15 == mn4Var.c - 2 && i16 == 0 && mn4Var.d % 8 == 4) {
                mn4Var.e(i17);
                i17++;
            }
            if (i15 == mn4Var.c + 4 && i16 == 2 && mn4Var.d % 8 == 0) {
                mn4Var.f(i17);
                i17++;
            }
            do {
                if (i15 < mn4Var.c && i16 >= 0 && !mn4Var.h(i16, i15)) {
                    mn4Var.n(i15, i16, i17);
                    i17++;
                }
                i15 -= 2;
                i16 += 2;
                if (i15 < 0) {
                    break;
                }
            } while (i16 < mn4Var.d);
            int i18 = i15 + 1;
            int i19 = i16 + 3;
            do {
                if (i18 >= 0 && i19 < mn4Var.d && !mn4Var.h(i19, i18)) {
                    mn4Var.n(i18, i19, i17);
                    i17++;
                }
                i18 += 2;
                i19 -= 2;
                i3 = mn4Var.c;
                if (i18 >= i3) {
                    break;
                }
            } while (i19 >= 0);
            i15 = i18 + 3;
            i16 = i19 + 1;
            if (i15 >= i3 && i16 >= (i4 = mn4Var.d)) {
                break;
            }
        }
        if (!mn4Var.h(i4 - 1, i3 - 1)) {
            mn4Var.m(mn4Var.d - 1, mn4Var.c - 1, true);
            mn4Var.m(mn4Var.d - 2, mn4Var.c - 2, true);
        }
        int iE = bj4VarI.e();
        int iD = bj4VarI.d();
        yu0 yu0Var = new yu0(bj4VarI.g(), bj4VarI.f());
        int i20 = 0;
        for (int i21 = 0; i21 < iD; i21++) {
            if (i21 % bj4VarI.e == 0) {
                int i22 = 0;
                for (int i23 = 0; i23 < bj4VarI.g(); i23++) {
                    yu0Var.e(i22, i20, i23 % 2 == 0);
                    i22++;
                }
                i20++;
            }
            int i24 = 0;
            for (int i25 = 0; i25 < iE; i25++) {
                if (i25 % bj4VarI.d == 0) {
                    yu0Var.e(i24, i20, true);
                    i24++;
                }
                yu0Var.e(i24, i20, ((byte[]) mn4Var.b)[(mn4Var.d * i21) + i25] == 1);
                i24++;
                int i26 = bj4VarI.d;
                if (i25 % i26 == i26 - 1) {
                    yu0Var.e(i24, i20, i21 % 2 == 0);
                    i24++;
                }
            }
            i20++;
            int i27 = bj4VarI.e;
            if (i21 % i27 == i27 - 1) {
                int i28 = 0;
                for (int i29 = 0; i29 < bj4VarI.g(); i29++) {
                    yu0Var.e(i28, i20, true);
                    i28++;
                }
                i20++;
            }
        }
        int i30 = yu0Var.b;
        int i31 = yu0Var.c;
        int iMax = Math.max(i, i30);
        int iMax2 = Math.max(i2, i31);
        int iMin = Math.min(iMax / i30, iMax2 / i31);
        int i32 = (iMax - (i30 * iMin)) / 2;
        int i33 = (iMax2 - (i31 * iMin)) / 2;
        if (i2 < i31 || i < i30) {
            jmVar = new jm(i30, i31);
            i32 = 0;
            i33 = 0;
        } else {
            jmVar = new jm(i, i2);
        }
        int length3 = jmVar.u.length;
        for (int i34 = 0; i34 < length3; i34++) {
            jmVar.u[i34] = 0;
        }
        int i35 = 0;
        while (i35 < i31) {
            int i36 = i32;
            int i37 = 0;
            while (i37 < i30) {
                if (yu0Var.b(i37, i35) == 1) {
                    jmVar.c(i36, i33, iMin, iMin);
                }
                i37++;
                i36 += iMin;
            }
            i35++;
            i33 += iMin;
        }
        return jmVar;
    }

    public boolean b(ts4 ts4Var, ts4 ts4Var2) {
        if (ts4Var == null) {
            a(3);
            throw null;
        }
        if (ts4Var2 != null) {
            return ts4Var.equals(ts4Var2);
        }
        a(4);
        throw null;
    }

    public boolean c() {
        return this instanceof xm2;
    }

    public Bundle e(NavController navController) {
        vw2 vw2VarD = navController.d();
        Bundle bundle = vw2VarD == null ? null : vw2VarD.t;
        return bundle == null ? new Bundle() : bundle;
    }

    public sy3 f(NavController navController) {
        return new sy3(k(navController.e()), g(e(navController)));
    }

    public String g(Bundle bundle) {
        String string = bundle.getString("debugLabel");
        return string == null ? "Debug label not set" : string;
    }

    public void h(float f, float f2, float f3, w44 w44Var) {
        w44Var.d(f, 0.0f);
    }

    public String i(androidx.navigation.fragment.a.C0029a c0029a) {
        String str = c0029a.z;
        if (str != null) {
            return re4.i0(str, '.', (2 & 2) != 0 ? str : null);
        }
        throw new IllegalStateException("Fragment class was not set");
    }

    public sy3 j(NavController navController) {
        vw2 vw2VarH = navController.h();
        androidx.navigation.c cVar = vw2VarH == null ? null : vw2VarH.s;
        vw2 vw2VarH2 = navController.h();
        Bundle bundle = vw2VarH2 == null ? null : vw2VarH2.t;
        if (bundle == null) {
            bundle = new Bundle();
        }
        if (cVar == null) {
            return null;
        }
        return new sy3(k(cVar), g(bundle));
    }

    public String k(androidx.navigation.c cVar) {
        if (cVar instanceof androidx.navigation.fragment.a.C0029a) {
            return i((androidx.navigation.fragment.a.C0029a) cVar);
        }
        String string = cVar == null ? null : cVar.toString();
        return string != null ? string : BuildConfig.FLAVOR;
    }
}
