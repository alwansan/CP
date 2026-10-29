package com.shabakaty.downloader;

import com.connectsdk.R;
import com.liulishuo.filedownloader.model.FileDownloadStatus;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.mlkit:vision-common@@16.3.0 */
/* JADX INFO: loaded from: classes.dex */
public final class cp6 implements a95 {
    public static cp6 r;

    public cp6(int i) {
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0046 A[PHI: r1 r3
      0x0046: PHI (r1v1 java.nio.charset.Charset) = (r1v0 java.nio.charset.Charset), (r1v40 java.nio.charset.Charset) binds: [B:3:0x0007, B:11:0x0037] A[DONT_GENERATE, DONT_INLINE]
      0x0046: PHI (r3v1 int) = (r3v0 int), (r3v17 int) binds: [B:3:0x0007, B:11:0x0037] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:40:0x0098  */
    @Override // com.shabakaty.downloader.a95
    public jm J(String str, si siVar, int i, int i2, Map<f31, ?> map) {
        int i3;
        int i4;
        int i5;
        hm hmVarC;
        int i6;
        boolean z;
        int iAbs;
        int i7;
        hm hmVarB;
        int i8;
        int i9;
        Charset charsetForName = StandardCharsets.ISO_8859_1;
        int i10 = 33;
        if (map != null) {
            f31 f31Var = f31.CHARACTER_SET;
            if (map.containsKey(f31Var)) {
                charsetForName = Charset.forName(map.get(f31Var).toString());
            }
            f31 f31Var2 = f31.ERROR_CORRECTION;
            i10 = map.containsKey(f31Var2) ? Integer.parseInt(map.get(f31Var2).toString()) : 33;
            f31 f31Var3 = f31.AZTEC_LAYERS;
            if (map.containsKey(f31Var3)) {
                i3 = Integer.parseInt(map.get(f31Var3).toString());
            } else {
                i3 = 0;
            }
        } else {
            i3 = 0;
        }
        if (siVar != si.AZTEC) {
            throw new IllegalArgumentException("Can only encode AZTEC, but got ".concat(String.valueOf(siVar)));
        }
        et1 et1Var = new et1(str.getBytes(charsetForName));
        Collection<fc4> collectionSingletonList = Collections.singletonList(fc4.e);
        int i11 = 0;
        while (true) {
            byte[] bArr = et1Var.a;
            i4 = 32;
            int i12 = 4;
            int i13 = 2;
            i5 = 1;
            if (i11 >= bArr.length) {
                break;
            }
            int i14 = i11 + 1;
            byte b = i14 < bArr.length ? bArr[i14] : (byte) 0;
            byte b2 = bArr[i11];
            if (b2 != 13) {
                if (b2 != 44) {
                    if (b2 != 46) {
                        if (b2 == 58 && b == 32) {
                            i9 = 5;
                        } else {
                            i9 = 0;
                        }
                    } else if (b == 32) {
                        i9 = 3;
                    } else {
                        i9 = 0;
                    }
                } else if (b == 32) {
                    i9 = 4;
                } else {
                    i9 = 0;
                }
            } else if (b == 10) {
                i9 = 2;
            } else {
                i9 = 0;
            }
            if (i9 > 0) {
                LinkedList linkedList = new LinkedList();
                for (fc4 fc4Var : collectionSingletonList) {
                    fc4 fc4VarB = fc4Var.b(i11);
                    linkedList.add(fc4VarB.d(4, i9));
                    if (fc4Var.a != 4) {
                        linkedList.add(fc4VarB.e(4, i9));
                    }
                    if (i9 == 3 || i9 == 4) {
                        linkedList.add(fc4VarB.d(2, 16 - i9).d(2, 1));
                    }
                    if (fc4Var.c > 0) {
                        linkedList.add(fc4Var.a(i11).a(i14));
                    }
                }
                collectionSingletonList = et1.a(linkedList);
                i11 = i14;
            } else {
                LinkedList linkedList2 = new LinkedList();
                for (fc4 fc4Var2 : collectionSingletonList) {
                    char c = (char) (et1Var.a[i11] & FileDownloadStatus.error);
                    boolean z2 = et1.d[fc4Var2.a][c] > 0;
                    int i15 = 0;
                    fc4 fc4VarB2 = null;
                    while (i15 <= i12) {
                        int i16 = et1.d[i15][c];
                        if (i16 > 0) {
                            if (fc4VarB2 == null) {
                                fc4VarB2 = fc4Var2.b(i11);
                            }
                            if (!z2 || i15 == fc4Var2.a || i15 == i13) {
                                linkedList2.add(fc4VarB2.d(i15, i16));
                            }
                            if (!z2 && et1.e[fc4Var2.a][i15] >= 0) {
                                linkedList2.add(fc4VarB2.e(i15, i16));
                            }
                        }
                        i15++;
                        i12 = 4;
                        i13 = 2;
                    }
                    if (fc4Var2.c > 0 || et1.d[fc4Var2.a][c] == 0) {
                        linkedList2.add(fc4Var2.a(i11));
                    }
                    i12 = 4;
                    i13 = 2;
                }
                collectionSingletonList = et1.a(linkedList2);
            }
            i11++;
        }
        fc4 fc4Var3 = (fc4) Collections.min(collectionSingletonList, new dt1(et1Var));
        byte[] bArr2 = et1Var.a;
        Objects.requireNonNull(fc4Var3);
        LinkedList linkedList3 = new LinkedList();
        for (ao4 ao4Var = fc4Var3.b(bArr2.length).b; ao4Var != null; ao4Var = ao4Var.a) {
            linkedList3.addFirst(ao4Var);
        }
        hm hmVar = new hm();
        Iterator it = linkedList3.iterator();
        while (it.hasNext()) {
            ((ao4) it.next()).b(hmVar, bArr2);
        }
        int i17 = hmVar.s;
        int iA = gv2.a(i10, i17, 100, 11);
        int i18 = i17 + iA;
        if (i3 != 0) {
            z = i3 < 0;
            iAbs = Math.abs(i3);
            if (iAbs > (z ? 4 : 32)) {
                throw new IllegalArgumentException(String.format("Illegal value %s for layers", Integer.valueOf(i3)));
            }
            i7 = ((z ? 88 : R.styleable.AppCompatTheme_toolbarNavigationButtonStyle) + (iAbs << 4)) * iAbs;
            i6 = i31.a[iAbs];
            int i19 = i7 - (i7 % i6);
            hmVarC = i31.c(hmVar, i6);
            int i20 = hmVarC.s;
            if (iA + i20 > i19) {
                throw new IllegalArgumentException("Data to large for user specified layer");
            }
            if (z && i20 > (i6 << 6)) {
                throw new IllegalArgumentException("Data to large for user specified layer");
            }
        } else {
            int i21 = 0;
            hm hmVarC2 = null;
            int i22 = 0;
            while (true) {
                if (i21 > i4) {
                    throw new IllegalArgumentException("Data too large for an Aztec code");
                }
                boolean z3 = i21 <= 3;
                int i23 = z3 ? i21 + 1 : i21;
                int i24 = ((z3 ? 88 : R.styleable.AppCompatTheme_toolbarNavigationButtonStyle) + (i23 << 4)) * i23;
                if (i18 <= i24) {
                    if (hmVarC2 == null || i22 != i31.a[i23]) {
                        int i25 = i31.a[i23];
                        i22 = i25;
                        hmVarC2 = i31.c(hmVar, i25);
                    }
                    int i26 = i24 - (i24 % i22);
                    if ((!z3 || hmVarC2.s <= (i22 << 6)) && hmVarC2.s + iA <= i26) {
                        hmVarC = hmVarC2;
                        i6 = i22;
                        z = z3;
                        iAbs = i23;
                        i7 = i24;
                        break;
                    }
                }
                i21++;
                i5 = 1;
                i4 = 32;
            }
        }
        hm hmVarB2 = i31.b(hmVarC, i7, i6);
        int i27 = hmVarC.s / i6;
        hm hmVar2 = new hm();
        if (z) {
            hmVar2.c(iAbs - 1, 2);
            hmVar2.c(i27 - 1, 6);
            hmVarB = i31.b(hmVar2, 28, 4);
        } else {
            hmVar2.c(iAbs - 1, 5);
            hmVar2.c(i27 - 1, 11);
            hmVarB = i31.b(hmVar2, 40, 4);
        }
        int i28 = (z ? 11 : 14) + (iAbs << 2);
        int[] iArr = new int[i28];
        if (z) {
            for (int i29 = 0; i29 < i28; i29++) {
                iArr[i29] = i29;
            }
            i8 = i28;
        } else {
            int i30 = i28 / 2;
            i8 = (((i30 - 1) / 15) * 2) + i28 + 1;
            int i31 = i8 / 2;
            for (int i32 = 0; i32 < i30; i32++) {
                int i33 = (i32 / 15) + i32;
                iArr[(i30 - i32) - i5] = (i31 - i33) - 1;
                iArr[i30 + i32] = i33 + i31 + i5;
            }
        }
        jm jmVar = new jm(i8, i8);
        int i34 = 0;
        for (int i35 = 0; i35 < iAbs; i35++) {
            int i36 = ((iAbs - i35) << 2) + (z ? 9 : 12);
            for (int i37 = 0; i37 < i36; i37++) {
                int i38 = i37 << 1;
                for (int i39 = 0; i39 < 2; i39++) {
                    if (hmVarB2.f(i34 + i38 + i39)) {
                        int i40 = i35 << 1;
                        jmVar.b(iArr[i40 + i39], iArr[i40 + i37]);
                    }
                    if (hmVarB2.f((i36 << 1) + i34 + i38 + i39)) {
                        int i41 = i35 << 1;
                        jmVar.b(iArr[i41 + i37], iArr[((i28 - 1) - i41) - i39]);
                    }
                    if (hmVarB2.f((i36 << 2) + i34 + i38 + i39)) {
                        int i42 = (i28 - 1) - (i35 << 1);
                        jmVar.b(iArr[i42 - i39], iArr[i42 - i37]);
                    }
                    if (hmVarB2.f((i36 * 6) + i34 + i38 + i39)) {
                        int i43 = i35 << 1;
                        jmVar.b(iArr[((i28 - 1) - i43) - i37], iArr[i43 + i39]);
                    }
                }
            }
            i34 += i36 << 3;
        }
        int i44 = i8 / 2;
        if (z) {
            for (int i45 = 0; i45 < 7; i45++) {
                int i46 = (i44 - 3) + i45;
                if (hmVarB.f(i45)) {
                    jmVar.b(i46, i44 - 5);
                }
                if (hmVarB.f(i45 + 7)) {
                    jmVar.b(i44 + 5, i46);
                }
                if (hmVarB.f(20 - i45)) {
                    jmVar.b(i46, i44 + 5);
                }
                if (hmVarB.f(27 - i45)) {
                    jmVar.b(i44 - 5, i46);
                }
            }
        } else {
            for (int i47 = 0; i47 < 10; i47++) {
                int i48 = (i47 / 5) + (i44 - 5) + i47;
                if (hmVarB.f(i47)) {
                    jmVar.b(i48, i44 - 7);
                }
                if (hmVarB.f(i47 + 10)) {
                    jmVar.b(i44 + 7, i48);
                }
                if (hmVarB.f(29 - i47)) {
                    jmVar.b(i48, i44 + 7);
                }
                if (hmVarB.f(39 - i47)) {
                    jmVar.b(i44 - 7, i48);
                }
            }
        }
        if (z) {
            i31.a(jmVar, i44, 5);
        } else {
            i31.a(jmVar, i44, 7);
            int i49 = 0;
            int i50 = 0;
            while (i49 < (i28 / 2) - 1) {
                for (int i51 = i44 & 1; i51 < i8; i51 += 2) {
                    int i52 = i44 - i50;
                    jmVar.b(i52, i51);
                    int i53 = i44 + i50;
                    jmVar.b(i53, i51);
                    jmVar.b(i51, i52);
                    jmVar.b(i51, i53);
                }
                i49 += 15;
                i50 += 16;
            }
        }
        int i54 = jmVar.r;
        int i55 = jmVar.s;
        int iMax = Math.max(i, i54);
        int iMax2 = Math.max(i2, i55);
        int iMin = Math.min(iMax / i54, iMax2 / i55);
        int i56 = (iMax - (i54 * iMin)) / 2;
        int i57 = (iMax2 - (i55 * iMin)) / 2;
        jm jmVar2 = new jm(iMax, iMax2);
        int i58 = 0;
        while (i58 < i55) {
            int i59 = 0;
            int i60 = i56;
            while (i59 < i54) {
                if (jmVar.a(i59, i58)) {
                    jmVar2.c(i60, i57, iMin, iMin);
                }
                i59++;
                i60 += iMin;
            }
            i58++;
            i57 += iMin;
        }
        return jmVar2;
    }

    public int a(ky4 ky4Var) {
        j32.e(ky4Var, "theme");
        return ky4Var.a;
    }
}
