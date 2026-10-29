package com.shabakaty.downloader;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import com.google.android.exoplayer2.RendererConfiguration;
import com.google.android.exoplayer2.trackselection.ExoTrackSelection;
import com.liulishuo.filedownloader.BuildConfig;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: DefaultTrackSelector.java */
/* JADX INFO: loaded from: classes.dex */
public class ep0 extends tm2 {
    public static final int[] f = new int[0];
    public static final com.google.common.collect.b0<Integer> g = com.google.common.collect.b0.a(j83.u);
    public static final com.google.common.collect.b0<Integer> h = com.google.common.collect.b0.a(z84.t);
    public final f81.b d;
    public final AtomicReference<d> e;

    /* JADX INFO: compiled from: DefaultTrackSelector.java */
    public static final class b implements Comparable<b> {
        public final boolean A;
        public final int B;
        public final int C;
        public final int D;
        public final int E;
        public final boolean r;
        public final String s;
        public final d t;
        public final boolean u;
        public final int v;
        public final int w;
        public final int x;
        public final int y;
        public final int z;

        public b(wh1 wh1Var, d dVar, int i) {
            int i2;
            int iD;
            String[] strArrP;
            int iD2;
            this.t = dVar;
            this.s = ep0.i(wh1Var.t);
            this.u = ep0.g(i, false);
            int i3 = 0;
            while (true) {
                i2 = Integer.MAX_VALUE;
                if (i3 >= dVar.D.size()) {
                    i3 = Integer.MAX_VALUE;
                    iD = 0;
                    break;
                } else {
                    iD = ep0.d(wh1Var, dVar.D.get(i3), false);
                    if (iD > 0) {
                        break;
                    } else {
                        i3++;
                    }
                }
            }
            this.w = i3;
            this.v = iD;
            this.x = Integer.bitCount(wh1Var.v & dVar.E);
            this.A = (wh1Var.u & 1) != 0;
            int i4 = wh1Var.P;
            this.B = i4;
            this.C = wh1Var.Q;
            int i5 = wh1Var.y;
            this.D = i5;
            this.r = (i5 == -1 || i5 <= dVar.G) && (i4 == -1 || i4 <= dVar.F);
            int i6 = sy4.a;
            Configuration configuration = Resources.getSystem().getConfiguration();
            int i7 = sy4.a;
            if (i7 >= 24) {
                strArrP = sy4.P(configuration.getLocales().toLanguageTags(), ",");
            } else {
                String[] strArr = new String[1];
                Locale locale = configuration.locale;
                strArr[0] = i7 >= 21 ? locale.toLanguageTag() : locale.toString();
                strArrP = strArr;
            }
            for (int i8 = 0; i8 < strArrP.length; i8++) {
                strArrP[i8] = sy4.I(strArrP[i8]);
            }
            int i9 = 0;
            while (true) {
                if (i9 >= strArrP.length) {
                    i9 = Integer.MAX_VALUE;
                    iD2 = 0;
                    break;
                } else {
                    iD2 = ep0.d(wh1Var, strArrP[i9], false);
                    if (iD2 > 0) {
                        break;
                    } else {
                        i9++;
                    }
                }
            }
            this.y = i9;
            this.z = iD2;
            for (int i10 = 0; i10 < dVar.H.size(); i10++) {
                String str = wh1Var.C;
                if (str != null && str.equals(dVar.H.get(i10))) {
                    i2 = i10;
                    break;
                }
            }
            this.E = i2;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public int compareTo(b bVar) {
            Object objB = (this.r && this.u) ? ep0.g : ep0.g.b();
            com.google.common.collect.l lVarD = com.google.common.collect.l.a.d(this.u, bVar.u);
            Integer numValueOf = Integer.valueOf(this.w);
            Integer numValueOf2 = Integer.valueOf(bVar.w);
            qt3 qt3Var = qt3.r;
            com.google.common.collect.l lVarC = lVarD.c(numValueOf, numValueOf2, qt3Var).a(this.v, bVar.v).a(this.x, bVar.x).d(this.r, bVar.r).c(Integer.valueOf(this.E), Integer.valueOf(bVar.E), qt3Var).c(Integer.valueOf(this.D), Integer.valueOf(bVar.D), this.t.L ? ep0.g.b() : ep0.h).d(this.A, bVar.A).c(Integer.valueOf(this.y), Integer.valueOf(bVar.y), qt3Var).a(this.z, bVar.z).c(Integer.valueOf(this.B), Integer.valueOf(bVar.B), objB).c(Integer.valueOf(this.C), Integer.valueOf(bVar.C), objB);
            Integer numValueOf3 = Integer.valueOf(this.D);
            Integer numValueOf4 = Integer.valueOf(bVar.D);
            if (!sy4.a(this.s, bVar.s)) {
                objB = ep0.h;
            }
            return lVarC.c(numValueOf3, numValueOf4, objB).f();
        }
    }

    /* JADX INFO: compiled from: DefaultTrackSelector.java */
    public static final class c implements Comparable<c> {
        public final boolean r;
        public final boolean s;

        public c(wh1 wh1Var, int i) {
            this.r = (wh1Var.u & 1) != 0;
            this.s = ep0.g(i, false);
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public int compareTo(c cVar) {
            return com.google.common.collect.l.a.d(this.s, cVar.s).d(this.r, cVar.r).f();
        }
    }

    /* JADX INFO: compiled from: DefaultTrackSelector.java */
    public static final class f implements Parcelable {
        public static final Parcelable.Creator<f> CREATOR = new a();
        public final int r;
        public final int[] s;
        public final int t;

        /* JADX INFO: compiled from: DefaultTrackSelector.java */
        public class a implements Parcelable.Creator<f> {
            @Override // android.os.Parcelable.Creator
            public f createFromParcel(Parcel parcel) {
                return new f(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public f[] newArray(int i) {
                return new f[i];
            }
        }

        public f(Parcel parcel) {
            this.r = parcel.readInt();
            int[] iArr = new int[parcel.readByte()];
            this.s = iArr;
            parcel.readIntArray(iArr);
            this.t = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || f.class != obj.getClass()) {
                return false;
            }
            f fVar = (f) obj;
            return this.r == fVar.r && Arrays.equals(this.s, fVar.s) && this.t == fVar.t;
        }

        public int hashCode() {
            return ((Arrays.hashCode(this.s) + (this.r * 31)) * 31) + this.t;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.r);
            parcel.writeInt(this.s.length);
            parcel.writeIntArray(this.s);
            parcel.writeInt(this.t);
        }
    }

    /* JADX INFO: compiled from: DefaultTrackSelector.java */
    public static final class g implements Comparable<g> {
        public final boolean r;
        public final boolean s;
        public final boolean t;
        public final boolean u;
        public final int v;
        public final int w;
        public final int x;
        public final int y;
        public final boolean z;

        public g(wh1 wh1Var, d dVar, int i, String str) {
            int iD;
            boolean z = false;
            this.s = ep0.g(i, false);
            int i2 = wh1Var.u & (~dVar.N);
            this.t = (i2 & 1) != 0;
            this.u = (i2 & 2) != 0;
            int i3 = Integer.MAX_VALUE;
            com.google.common.collect.p<String> pVarE = dVar.I.isEmpty() ? com.google.common.collect.p.E(BuildConfig.FLAVOR) : dVar.I;
            int i4 = 0;
            while (true) {
                if (i4 >= pVarE.size()) {
                    iD = 0;
                    break;
                }
                iD = ep0.d(wh1Var, pVarE.get(i4), dVar.K);
                if (iD > 0) {
                    i3 = i4;
                    break;
                }
                i4++;
            }
            this.v = i3;
            this.w = iD;
            int iBitCount = Integer.bitCount(wh1Var.v & dVar.J);
            this.x = iBitCount;
            this.z = (wh1Var.v & 1088) != 0;
            int iD2 = ep0.d(wh1Var, str, ep0.i(str) == null);
            this.y = iD2;
            if (iD > 0 || ((dVar.I.isEmpty() && iBitCount > 0) || this.t || (this.u && iD2 > 0))) {
                z = true;
            }
            this.r = z;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public int compareTo(g gVar) {
            com.google.common.collect.l lVarD = com.google.common.collect.l.a.d(this.s, gVar.s);
            Integer numValueOf = Integer.valueOf(this.v);
            Integer numValueOf2 = Integer.valueOf(gVar.v);
            com.google.common.collect.b0 b0Var = rw2.r;
            qt3 qt3Var = qt3.r;
            com.google.common.collect.l lVarD2 = lVarD.c(numValueOf, numValueOf2, qt3Var).a(this.w, gVar.w).a(this.x, gVar.x).d(this.t, gVar.t);
            Boolean boolValueOf = Boolean.valueOf(this.u);
            Boolean boolValueOf2 = Boolean.valueOf(gVar.u);
            if (this.w != 0) {
                b0Var = qt3Var;
            }
            com.google.common.collect.l lVarA = lVarD2.c(boolValueOf, boolValueOf2, b0Var).a(this.y, gVar.y);
            if (this.x == 0) {
                lVarA = lVarA.e(this.z, gVar.z);
            }
            return lVarA.f();
        }
    }

    /* JADX INFO: compiled from: DefaultTrackSelector.java */
    public static final class h implements Comparable<h> {
        public final boolean r;
        public final d s;
        public final boolean t;
        public final boolean u;
        public final int v;
        public final int w;
        public final int x;

        /* JADX WARN: Code duplicated, block: B:21:0x0033  */
        /* JADX WARN: Code duplicated, block: B:41:0x005e  */
        public h(wh1 wh1Var, d dVar, int i, boolean z) {
            boolean z2;
            int i2;
            int i3;
            int i4;
            int i5;
            int i6;
            int i7;
            int i8;
            this.s = dVar;
            boolean z3 = true;
            int i9 = -1;
            if (!z || (((i6 = wh1Var.H) != -1 && i6 > dVar.r) || ((i7 = wh1Var.I) != -1 && i7 > dVar.s))) {
                z2 = false;
            } else {
                float f = wh1Var.J;
                if ((f == -1.0f || f <= dVar.t) && ((i8 = wh1Var.y) == -1 || i8 <= dVar.u)) {
                    z2 = true;
                } else {
                    z2 = false;
                }
            }
            this.r = z2;
            if (!z || (((i3 = wh1Var.H) != -1 && i3 < dVar.v) || ((i4 = wh1Var.I) != -1 && i4 < dVar.w))) {
                z3 = false;
            } else {
                float f2 = wh1Var.J;
                if ((f2 != -1.0f && f2 < dVar.x) || ((i5 = wh1Var.y) != -1 && i5 < dVar.y)) {
                    z3 = false;
                }
            }
            this.t = z3;
            this.u = ep0.g(i, false);
            this.v = wh1Var.y;
            int i10 = wh1Var.H;
            if (i10 != -1 && (i2 = wh1Var.I) != -1) {
                i9 = i10 * i2;
            }
            this.w = i9;
            int i11 = Integer.MAX_VALUE;
            for (int i12 = 0; i12 < dVar.C.size(); i12++) {
                String str = wh1Var.C;
                if (str != null && str.equals(dVar.C.get(i12))) {
                    i11 = i12;
                    break;
                }
            }
            this.x = i11;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public int compareTo(h hVar) {
            Object objB = (this.r && this.u) ? ep0.g : ep0.g.b();
            return com.google.common.collect.l.a.d(this.u, hVar.u).d(this.r, hVar.r).d(this.t, hVar.t).c(Integer.valueOf(this.x), Integer.valueOf(hVar.x), qt3.r).c(Integer.valueOf(this.v), Integer.valueOf(hVar.v), this.s.L ? ep0.g.b() : ep0.h).c(Integer.valueOf(this.w), Integer.valueOf(hVar.w), objB).c(Integer.valueOf(this.v), Integer.valueOf(hVar.v), objB).f();
        }
    }

    @Deprecated
    public ep0() {
        d dVar = d.a0;
        this.d = new n4.b();
        this.e = new AtomicReference<>(dVar);
    }

    public static int d(wh1 wh1Var, String str, boolean z) {
        if (!TextUtils.isEmpty(str) && str.equals(wh1Var.t)) {
            return 4;
        }
        String strI = i(str);
        String strI2 = i(wh1Var.t);
        if (strI2 == null || strI == null) {
            return (z && strI2 == null) ? 1 : 0;
        }
        if (strI2.startsWith(strI) || strI.startsWith(strI2)) {
            return 3;
        }
        int i = sy4.a;
        return strI2.split("-", 2)[0].equals(strI.split("-", 2)[0]) ? 2 : 0;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0045  */
    public static List<Integer> f(bp4 bp4Var, int i, int i2, boolean z) {
        int i3;
        int i4;
        int i5;
        int i6;
        ArrayList arrayList = new ArrayList(bp4Var.r);
        for (int i7 = 0; i7 < bp4Var.r; i7++) {
            arrayList.add(Integer.valueOf(i7));
        }
        if (i != Integer.MAX_VALUE && i2 != Integer.MAX_VALUE) {
            int i8 = 0;
            int i9 = Integer.MAX_VALUE;
            while (true) {
                if (i8 >= bp4Var.r) {
                    break;
                }
                wh1 wh1Var = bp4Var.s[i8];
                int i10 = wh1Var.H;
                if (i10 > 0 && (i4 = wh1Var.I) > 0) {
                    if (!z) {
                        i5 = i;
                        i6 = i2;
                    } else if ((i10 > i4) != (i > i2)) {
                        i6 = i;
                        i5 = i2;
                    } else {
                        i5 = i;
                        i6 = i2;
                    }
                    int i11 = i10 * i6;
                    int i12 = i4 * i5;
                    Point point = i11 >= i12 ? new Point(i5, sy4.g(i12, i10)) : new Point(sy4.g(i11, i4), i6);
                    int i13 = wh1Var.H;
                    int i14 = wh1Var.I;
                    int i15 = i13 * i14;
                    if (i13 >= ((int) (point.x * 0.98f)) && i14 >= ((int) (point.y * 0.98f)) && i15 < i9) {
                        i9 = i15;
                    }
                }
                i8++;
            }
            if (i9 != Integer.MAX_VALUE) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    wh1 wh1Var2 = bp4Var.s[((Integer) arrayList.get(size)).intValue()];
                    int i16 = wh1Var2.H;
                    int i17 = (i16 == -1 || (i3 = wh1Var2.I) == -1) ? -1 : i16 * i3;
                    if (i17 == -1 || i17 > i9) {
                        arrayList.remove(size);
                    }
                }
            }
        }
        return arrayList;
    }

    public static boolean g(int i, boolean z) {
        int i2 = i & 7;
        return i2 == 4 || (z && i2 == 3);
    }

    public static boolean h(wh1 wh1Var, String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        int i11;
        if ((wh1Var.v & 16384) != 0 || !g(i, false) || (i & i2) == 0) {
            return false;
        }
        if (str != null && !sy4.a(wh1Var.C, str)) {
            return false;
        }
        int i12 = wh1Var.H;
        if (i12 != -1 && (i7 > i12 || i12 > i3)) {
            return false;
        }
        int i13 = wh1Var.I;
        if (i13 != -1 && (i8 > i13 || i13 > i4)) {
            return false;
        }
        float f2 = wh1Var.J;
        return (f2 == -1.0f || (((float) i9) <= f2 && f2 <= ((float) i5))) && (i11 = wh1Var.y) != -1 && i10 <= i11 && i11 <= i6;
    }

    public static String i(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, "und")) {
            return null;
        }
        return str;
    }

    /* JADX WARN: Code duplicated, block: B:185:0x037b  */
    /* JADX WARN: Code duplicated, block: B:364:0x075b  */
    /* JADX WARN: Code duplicated, block: B:390:0x079e  */
    /* JADX WARN: Code duplicated, block: B:425:0x016c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:0x0172 A[LOOP:1: B:23:0x0046->B:66:0x0172, LOOP_END] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.shabakaty.downloader.tm2
    public final Pair<RendererConfiguration[], ExoTrackSelection[]> c(tm2.a aVar, int[][][] iArr, int[] iArr2, uq2.a aVar2, nn4 nn4Var) {
        int i;
        boolean z;
        boolean z2;
        f81 n4Var;
        int i2;
        String str;
        d dVar;
        Pair pairCreate;
        int[][] iArr3;
        bp4 bp4Var;
        String str2;
        int[][] iArr4;
        String str3;
        int i3;
        d dVar2;
        int i4;
        f81.a aVar3;
        Pair pairCreate2;
        int i5;
        int[] iArr5;
        int i6;
        int i7;
        String str4;
        int i8;
        bp4 bp4Var2;
        tm2.a aVar4;
        d dVar3;
        int i9;
        f81.a[] aVarArr;
        int i10;
        boolean z3;
        d dVar4;
        cp4 cp4Var;
        int[][] iArr6;
        f81.a aVar5;
        List<Integer> list;
        ArrayList arrayList;
        String str5;
        int[] iArrB;
        ArrayList arrayList2;
        HashSet hashSet;
        int i11;
        tm2.a aVar6 = aVar;
        d dVar5 = this.e.get();
        int i12 = aVar6.a;
        f81.a[] aVarArr2 = new f81.a[i12];
        tm2.a aVar7 = aVar6;
        d dVar6 = dVar5;
        int i13 = 0;
        boolean z4 = false;
        boolean z5 = false;
        while (i13 < i12) {
            if (2 == aVar7.c[i13]) {
                if (z5) {
                    dVar3 = dVar5;
                    i9 = i12;
                    aVarArr = aVarArr2;
                    i10 = i13;
                    z3 = z4;
                } else {
                    cp4 cp4Var2 = aVar7.d[i13];
                    int[][] iArr7 = iArr[i13];
                    int i14 = iArr2[i13];
                    if (dVar6.M || dVar6.L) {
                        dVar4 = dVar5;
                        i9 = i12;
                        aVarArr = aVarArr2;
                        i10 = i13;
                        z3 = z4;
                        cp4Var = cp4Var2;
                        iArr6 = iArr7;
                        aVar5 = null;
                        break;
                    }
                    int i15 = dVar6.Q ? 24 : 16;
                    boolean z6 = dVar6.P && (i14 & i15) != 0;
                    d dVar7 = dVar6;
                    int i16 = 0;
                    while (true) {
                        if (i16 >= cp4Var2.r) {
                            dVar4 = dVar5;
                            i9 = i12;
                            aVarArr = aVarArr2;
                            i10 = i13;
                            z3 = z4;
                            cp4Var = cp4Var2;
                            iArr6 = iArr7;
                            aVar5 = null;
                            break;
                        }
                        bp4 bp4Var3 = cp4Var2.s[i16];
                        int[] iArr8 = iArr7[i16];
                        int i17 = dVar7.r;
                        int i18 = dVar7.s;
                        int i19 = dVar7.t;
                        i9 = i12;
                        int i20 = dVar7.u;
                        z3 = z4;
                        int i21 = dVar7.v;
                        int i22 = dVar7.w;
                        aVarArr = aVarArr2;
                        int i23 = dVar7.x;
                        i10 = i13;
                        int i24 = dVar7.y;
                        iArr6 = iArr7;
                        int i25 = dVar7.z;
                        dVar4 = dVar5;
                        int i26 = dVar7.A;
                        boolean z7 = dVar7.B;
                        cp4Var = cp4Var2;
                        int i27 = i16;
                        if (bp4Var3.r < 2) {
                            iArrB = f;
                        } else {
                            List<Integer> listF = f(bp4Var3, i25, i26, z7);
                            ArrayList arrayList3 = (ArrayList) listF;
                            if (arrayList3.size() < 2) {
                                iArrB = f;
                            } else {
                                if (z6) {
                                    list = listF;
                                    arrayList = arrayList3;
                                    str5 = null;
                                } else {
                                    HashSet hashSet2 = new HashSet();
                                    int i28 = 0;
                                    int i29 = 0;
                                    str5 = null;
                                    while (i29 < arrayList3.size()) {
                                        List<Integer> list2 = listF;
                                        String str6 = bp4Var3.s[((Integer) arrayList3.get(i29)).intValue()].C;
                                        if (hashSet2.add(str6)) {
                                            hashSet = hashSet2;
                                            i11 = i29;
                                            int i30 = 0;
                                            int i31 = 0;
                                            while (i31 < arrayList3.size()) {
                                                int iIntValue = ((Integer) arrayList3.get(i31)).intValue();
                                                ArrayList arrayList4 = arrayList3;
                                                if (h(bp4Var3.s[iIntValue], str6, iArr8[iIntValue], i15, i17, i18, i19, i20, i21, i22, i23, i24)) {
                                                    i30++;
                                                }
                                                i31++;
                                                arrayList3 = arrayList4;
                                            }
                                            arrayList2 = arrayList3;
                                            if (i30 > i28) {
                                                str5 = str6;
                                                i28 = i30;
                                            }
                                        } else {
                                            arrayList2 = arrayList3;
                                            hashSet = hashSet2;
                                            i11 = i29;
                                        }
                                        i29 = i11 + 1;
                                        listF = list2;
                                        hashSet2 = hashSet;
                                        arrayList3 = arrayList2;
                                    }
                                    list = listF;
                                    arrayList = arrayList3;
                                }
                                int size = arrayList.size();
                                while (true) {
                                    size--;
                                    if (size < 0) {
                                        break;
                                    }
                                    ArrayList arrayList5 = arrayList;
                                    int iIntValue2 = ((Integer) arrayList5.get(size)).intValue();
                                    if (!h(bp4Var3.s[iIntValue2], str5, iArr8[iIntValue2], i15, i17, i18, i19, i20, i21, i22, i23, i24)) {
                                        arrayList5.remove(size);
                                    }
                                    arrayList = arrayList5;
                                }
                                iArrB = arrayList.size() < 2 ? f : k32.b(list);
                            }
                            if (iArrB.length > 0) {
                                aVar5 = new f81.a(bp4Var3, iArrB);
                                break;
                            }
                            i16 = i27 + 1;
                            i12 = i9;
                            z4 = z3;
                            aVarArr2 = aVarArr;
                            i13 = i10;
                            iArr7 = iArr6;
                            dVar5 = dVar4;
                            dVar7 = dVar5;
                            cp4Var2 = cp4Var;
                            z6 = z6;
                        }
                        z6 = z6;
                        if (iArrB.length > 0) {
                            aVar5 = new f81.a(bp4Var3, iArrB);
                            break;
                        }
                        i16 = i27 + 1;
                        i12 = i9;
                        z4 = z3;
                        aVarArr2 = aVarArr;
                        i13 = i10;
                        iArr7 = iArr6;
                        dVar5 = dVar4;
                        dVar7 = dVar5;
                        cp4Var2 = cp4Var;
                        z6 = z6;
                    }
                    if (aVar5 == null) {
                        cp4 cp4Var3 = cp4Var;
                        bp4 bp4Var4 = null;
                        h hVar = null;
                        int i32 = 0;
                        int i33 = -1;
                        while (i32 < cp4Var3.r) {
                            bp4 bp4Var5 = cp4Var3.s[i32];
                            d dVar8 = dVar4;
                            List<Integer> listF2 = f(bp4Var5, dVar8.z, dVar8.A, dVar8.B);
                            int[] iArr9 = iArr6[i32];
                            h hVar2 = hVar;
                            bp4 bp4Var6 = bp4Var4;
                            for (int i34 = 0; i34 < bp4Var5.r; i34++) {
                                wh1 wh1Var = bp4Var5.s[i34];
                                if ((wh1Var.v & 16384) == 0 && g(iArr9[i34], dVar8.V)) {
                                    h hVar3 = new h(wh1Var, dVar8, iArr9[i34], ((ArrayList) listF2).contains(Integer.valueOf(i34)));
                                    if ((hVar3.r || dVar8.O) && (hVar2 == null || hVar3.compareTo(hVar2) > 0)) {
                                        i33 = i34;
                                        bp4Var6 = bp4Var5;
                                        hVar2 = hVar3;
                                    }
                                }
                            }
                            i32++;
                            bp4Var4 = bp4Var6;
                            dVar4 = dVar8;
                            hVar = hVar2;
                        }
                        dVar3 = dVar4;
                        aVar5 = bp4Var4 == null ? null : new f81.a(bp4Var4, i33);
                    } else {
                        dVar3 = dVar4;
                    }
                    aVarArr[i10] = aVar5;
                    z5 = aVarArr[i10] != null;
                    dVar6 = dVar3;
                }
                aVar4 = aVar;
                z4 = z3 | (aVar4.d[i10].r > 0);
                aVar7 = aVar4;
            } else {
                aVar4 = aVar6;
                dVar3 = dVar5;
                i9 = i12;
                aVarArr = aVarArr2;
                i10 = i13;
            }
            i13 = i10 + 1;
            aVar6 = aVar4;
            dVar5 = dVar3;
            i12 = i9;
            aVarArr2 = aVarArr;
        }
        d dVar9 = dVar5;
        f81.a[] aVarArr3 = aVarArr2;
        boolean z8 = z4;
        int i35 = i12;
        String str7 = null;
        b bVar = null;
        int i36 = 0;
        int i37 = -1;
        while (i36 < i35) {
            if (1 == aVar7.c[i36]) {
                boolean z9 = dVar6.X || !z8;
                cp4 cp4Var4 = aVar7.d[i36];
                int[][] iArr10 = iArr[i36];
                int i38 = iArr2[i36];
                b bVar2 = null;
                int i39 = 0;
                int i40 = -1;
                int i41 = -1;
                while (i39 < cp4Var4.r) {
                    bp4 bp4Var7 = cp4Var4.s[i39];
                    int[] iArr11 = iArr10[i39];
                    int i42 = i40;
                    int i43 = i41;
                    b bVar3 = bVar2;
                    int i44 = 0;
                    while (i44 < bp4Var7.r) {
                        String str8 = str7;
                        if (g(iArr11[i44], dVar6.V)) {
                            bp4Var2 = bp4Var7;
                            b bVar4 = new b(bp4Var7.s[i44], dVar6, iArr11[i44]);
                            if ((bVar4.r || dVar6.R) && (bVar3 == null || bVar4.compareTo(bVar3) > 0)) {
                                i43 = i44;
                                i42 = i39;
                                bVar3 = bVar4;
                            }
                        } else {
                            bp4Var2 = bp4Var7;
                        }
                        i44++;
                        str7 = str8;
                        bp4Var7 = bp4Var2;
                    }
                    i39++;
                    bVar2 = bVar3;
                    i41 = i43;
                    i40 = i42;
                }
                str3 = str7;
                if (i40 == -1) {
                    i3 = i36;
                    dVar2 = dVar9;
                    i4 = i35;
                    pairCreate2 = null;
                } else {
                    bp4 bp4Var8 = cp4Var4.s[i40];
                    if (dVar6.M || dVar6.L || !z9) {
                        i3 = i36;
                        dVar2 = dVar9;
                        i4 = i35;
                    } else {
                        int[] iArr12 = iArr10[i40];
                        int i45 = dVar6.G;
                        boolean z10 = dVar6.S;
                        boolean z11 = dVar6.T;
                        boolean z12 = dVar6.U;
                        wh1 wh1Var2 = bp4Var8.s[i41];
                        int[] iArr13 = new int[bp4Var8.r];
                        dVar2 = dVar9;
                        i4 = i35;
                        int i46 = 0;
                        int i47 = 0;
                        while (i47 < bp4Var8.r) {
                            if (i47 != i41) {
                                wh1 wh1Var3 = bp4Var8.s[i47];
                                i5 = i36;
                                iArr5 = iArr12;
                                if (g(iArr12[i47], false) && (i6 = wh1Var3.y) != -1 && i6 <= i45 && (z12 || ((i8 = wh1Var3.P) != -1 && i8 == wh1Var2.P)) && ((z10 || ((str4 = wh1Var3.C) != null && TextUtils.equals(str4, wh1Var2.C))) && (z11 || ((i7 = wh1Var3.Q) != -1 && i7 == wh1Var2.Q)))) {
                                }
                                i47++;
                                i36 = i5;
                                iArr12 = iArr5;
                            } else {
                                i5 = i36;
                                iArr5 = iArr12;
                            }
                            iArr13[i46] = i47;
                            i46++;
                            i47++;
                            i36 = i5;
                            iArr12 = iArr5;
                        }
                        i3 = i36;
                        int[] iArrCopyOf = Arrays.copyOf(iArr13, i46);
                        aVar3 = iArrCopyOf.length > 1 ? new f81.a(bp4Var8, iArrCopyOf) : null;
                        if (aVar3 == null) {
                            aVar3 = new f81.a(bp4Var8, i41);
                        }
                        Objects.requireNonNull(bVar2);
                        pairCreate2 = Pair.create(aVar3, bVar2);
                    }
                    if (aVar3 == null) {
                        aVar3 = new f81.a(bp4Var8, i41);
                    }
                    Objects.requireNonNull(bVar2);
                    pairCreate2 = Pair.create(aVar3, bVar2);
                }
                if (pairCreate2 != null && (bVar == null || ((b) pairCreate2.second).compareTo(bVar) > 0)) {
                    if (i37 != -1) {
                        aVarArr3[i37] = null;
                    }
                    f81.a aVar8 = (f81.a) pairCreate2.first;
                    aVarArr3[i3] = aVar8;
                    str7 = aVar8.a.s[aVar8.b[0]].t;
                    bVar = (b) pairCreate2.second;
                    i37 = i3;
                }
                i36 = i3 + 1;
                aVar7 = aVar;
                i35 = i4;
                dVar9 = dVar2;
                dVar6 = dVar9;
            } else {
                str3 = str7;
                i3 = i36;
                dVar2 = dVar9;
                i4 = i35;
            }
            str7 = str3;
            i36 = i3 + 1;
            aVar7 = aVar;
            i35 = i4;
            dVar9 = dVar2;
            dVar6 = dVar9;
        }
        String str9 = str7;
        d dVar10 = dVar9;
        int i48 = i35;
        g gVar = null;
        int i49 = 0;
        int i50 = -1;
        while (i49 < i48) {
            int i51 = aVar.c[i49];
            if (i51 == 1 || i51 == 2) {
                str = str9;
                dVar = dVar10;
            } else if (i51 != 3) {
                cp4 cp4Var5 = aVar.d[i49];
                int[][] iArr14 = iArr[i49];
                bp4 bp4Var9 = null;
                c cVar = null;
                int i52 = 0;
                int i53 = 0;
                while (i52 < cp4Var5.r) {
                    bp4 bp4Var10 = cp4Var5.s[i52];
                    int[] iArr15 = iArr14[i52];
                    int i54 = i53;
                    c cVar2 = cVar;
                    bp4 bp4Var11 = bp4Var9;
                    int i55 = 0;
                    while (i55 < bp4Var10.r) {
                        cp4 cp4Var6 = cp4Var5;
                        d dVar11 = dVar10;
                        if (g(iArr15[i55], dVar11.V)) {
                            iArr4 = iArr14;
                            c cVar3 = new c(bp4Var10.s[i55], iArr15[i55]);
                            if (cVar2 == null || cVar3.compareTo(cVar2) > 0) {
                                i54 = i55;
                                bp4Var11 = bp4Var10;
                                cVar2 = cVar3;
                            }
                        } else {
                            iArr4 = iArr14;
                        }
                        i55++;
                        cp4Var5 = cp4Var6;
                        dVar10 = dVar11;
                        iArr14 = iArr4;
                    }
                    i52++;
                    bp4Var9 = bp4Var11;
                    cVar = cVar2;
                    i53 = i54;
                }
                dVar = dVar10;
                aVarArr3[i49] = bp4Var9 == null ? null : new f81.a(bp4Var9, i53);
                str = str9;
            } else {
                dVar = dVar10;
                cp4 cp4Var7 = aVar.d[i49];
                int[][] iArr16 = iArr[i49];
                bp4 bp4Var12 = null;
                g gVar2 = null;
                int i56 = 0;
                int i57 = -1;
                while (i56 < cp4Var7.r) {
                    bp4 bp4Var13 = cp4Var7.s[i56];
                    int[] iArr17 = iArr16[i56];
                    int i58 = i57;
                    g gVar3 = gVar2;
                    bp4 bp4Var14 = bp4Var12;
                    int i59 = 0;
                    while (i59 < bp4Var13.r) {
                        cp4 cp4Var8 = cp4Var7;
                        if (g(iArr17[i59], dVar.V)) {
                            iArr3 = iArr16;
                            bp4Var = bp4Var13;
                            str2 = str9;
                            g gVar4 = new g(bp4Var13.s[i59], dVar, iArr17[i59], str2);
                            if (gVar4.r && (gVar3 == null || gVar4.compareTo(gVar3) > 0)) {
                                i58 = i59;
                                gVar3 = gVar4;
                                bp4Var14 = bp4Var;
                            }
                        } else {
                            iArr3 = iArr16;
                            bp4Var = bp4Var13;
                            str2 = str9;
                        }
                        i59++;
                        cp4Var7 = cp4Var8;
                        str9 = str2;
                        iArr16 = iArr3;
                        bp4Var13 = bp4Var;
                    }
                    i56++;
                    bp4Var12 = bp4Var14;
                    gVar2 = gVar3;
                    i57 = i58;
                }
                str = str9;
                if (bp4Var12 == null) {
                    pairCreate = null;
                } else {
                    f81.a aVar9 = new f81.a(bp4Var12, i57);
                    Objects.requireNonNull(gVar2);
                    pairCreate = Pair.create(aVar9, gVar2);
                }
                if (pairCreate != null && (gVar == null || ((g) pairCreate.second).compareTo(gVar) > 0)) {
                    if (i50 != -1) {
                        aVarArr3[i50] = null;
                    }
                    aVarArr3[i49] = (f81.a) pairCreate.first;
                    gVar = (g) pairCreate.second;
                    i50 = i49;
                }
            }
            i49++;
            str9 = str;
            dVar10 = dVar;
        }
        d dVar12 = dVar10;
        for (int i60 = 0; i60 < i48; i60++) {
            if (dVar12.Z.get(i60)) {
                aVarArr3[i60] = null;
            } else {
                cp4 cp4Var9 = aVar.d[i60];
                Map<cp4, f> map = dVar12.Y.get(i60);
                if (map != null && map.containsKey(cp4Var9)) {
                    Map<cp4, f> map2 = dVar12.Y.get(i60);
                    f fVar = map2 != null ? map2.get(cp4Var9) : null;
                    aVarArr3[i60] = fVar == null ? null : new f81.a(cp4Var9.s[fVar.r], fVar.s, fVar.t);
                }
            }
        }
        f81.b bVar5 = this.d;
        qi qiVar = this.b;
        Objects.requireNonNull(qiVar);
        Objects.requireNonNull((n4.b) bVar5);
        ArrayList arrayList6 = new ArrayList();
        for (int i61 = 0; i61 < i48; i61++) {
            if (aVarArr3[i61] == null || aVarArr3[i61].b.length <= 1) {
                arrayList6.add(null);
            } else {
                c0<Object> c0Var = com.google.common.collect.p.s;
                com.google.common.collect.p.a aVar10 = new com.google.common.collect.p.a();
                aVar10.b(new n4.a(0L, 0L));
                arrayList6.add(aVar10);
            }
        }
        long[][] jArr = new long[i48][];
        for (int i62 = 0; i62 < i48; i62++) {
            f81.a aVar11 = aVarArr3[i62];
            if (aVar11 == null) {
                jArr[i62] = new long[0];
            } else {
                jArr[i62] = new long[aVar11.b.length];
                int i63 = 0;
                while (true) {
                    int[] iArr18 = aVar11.b;
                    if (i63 >= iArr18.length) {
                        break;
                    }
                    jArr[i62][i63] = aVar11.a.s[iArr18[i63]].y;
                    i63++;
                }
                Arrays.sort(jArr[i62]);
            }
        }
        int[] iArr19 = new int[i48];
        long[] jArr2 = new long[i48];
        for (int i64 = 0; i64 < i48; i64++) {
            jArr2[i64] = jArr[i64].length == 0 ? 0L : jArr[i64][0];
        }
        n4.f(arrayList6, jArr2);
        rw2 rw2Var = rw2.r;
        com.google.common.collect.f.b(2, "expectedValuesPerKey");
        qv2 qv2Var = new qv2(new TreeMap(rw2Var), new pv2(2));
        int i65 = 0;
        while (i65 < i48) {
            if (jArr[i65].length <= 1) {
                i2 = i65;
            } else {
                int length = jArr[i65].length;
                double[] dArr = new double[length];
                int i66 = 0;
                while (true) {
                    double dLog = 0.0d;
                    if (i66 >= jArr[i65].length) {
                        break;
                    }
                    if (jArr[i65][i66] != -1) {
                        dLog = Math.log(jArr[i65][i66]);
                    }
                    dArr[i66] = dLog;
                    i66++;
                    i65 = i65;
                }
                i2 = i65;
                int i67 = length - 1;
                double d2 = dArr[i67] - dArr[0];
                int i68 = 0;
                while (i68 < i67) {
                    double d3 = dArr[i68];
                    i68++;
                    qv2Var.j(Double.valueOf(d2 == 0.0d ? 1.0d : (((d3 + dArr[i68]) * 0.5d) - dArr[0]) / d2), Integer.valueOf(i2));
                }
            }
            i65 = i2 + 1;
        }
        Collection aVar12 = qv2Var.s;
        if (aVar12 == null) {
            aVar12 = new com.google.common.collect.e.a();
            qv2Var.s = aVar12;
        }
        com.google.common.collect.p pVarZ = com.google.common.collect.p.z(aVar12);
        for (int i69 = 0; i69 < pVarZ.size(); i69++) {
            int iIntValue3 = ((Integer) pVarZ.get(i69)).intValue();
            int i70 = iArr19[iIntValue3] + 1;
            iArr19[iIntValue3] = i70;
            jArr2[iIntValue3] = jArr[iIntValue3][i70];
            n4.f(arrayList6, jArr2);
        }
        for (int i71 = 0; i71 < i48; i71++) {
            if (arrayList6.get(i71) != null) {
                jArr2[i71] = jArr2[i71] * 2;
            }
        }
        n4.f(arrayList6, jArr2);
        com.google.common.collect.f.b(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        int i72 = 0;
        int i73 = 0;
        while (i72 < arrayList6.size()) {
            com.google.common.collect.p.a aVar13 = (com.google.common.collect.p.a) arrayList6.get(i72);
            com.google.common.collect.p<Object> pVarC = aVar13 == null ? oq3.v : aVar13.c();
            Objects.requireNonNull(pVarC);
            int i74 = i73 + 1;
            if (objArrCopyOf.length < i74) {
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, com.google.common.collect.n.b.a(objArrCopyOf.length, i74));
            }
            objArrCopyOf[i73] = pVarC;
            i72++;
            i73 = i74;
        }
        com.google.common.collect.p pVarS = com.google.common.collect.p.s(objArrCopyOf, i73);
        f81[] f81VarArr = new f81[i48];
        for (int i75 = 0; i75 < i48; i75++) {
            f81.a aVar14 = aVarArr3[i75];
            if (aVar14 != null) {
                int[] iArr20 = aVar14.b;
                if (iArr20.length != 0) {
                    if (iArr20.length == 1) {
                        n4Var = new od1(aVar14.a, iArr20[0], aVar14.c);
                    } else {
                        long j = 25000;
                        n4Var = new n4(aVar14.a, iArr20, aVar14.c, qiVar, 10000, j, j, 0.7f, 0.75f, (com.google.common.collect.p) ((oq3) pVarS).get(i75), w30.a);
                    }
                    f81VarArr[i75] = n4Var;
                }
            }
        }
        boolean z13 = false;
        nr3[] nr3VarArr = new nr3[i48];
        for (int i76 = 0; i76 < i48; i76++) {
            nr3VarArr[i76] = !dVar12.Z.get(i76) && (aVar.c[i76] == 7 || f81VarArr[i76] != null) ? nr3.b : null;
        }
        if (dVar12.W) {
            int i77 = 0;
            int i78 = -1;
            int i79 = -1;
            while (true) {
                if (i77 >= aVar.a) {
                    i = -1;
                    z = true;
                    break;
                }
                int i80 = aVar.c[i77];
                f81 f81Var = f81VarArr[i77];
                if (i80 == 1 || i80 == 2) {
                    if (f81Var != null) {
                        int[][] iArr21 = iArr[i77];
                        int iA = aVar.d[i77].a(f81Var.b());
                        int i81 = 0;
                        while (true) {
                            if (i81 >= f81Var.length()) {
                                z2 = true;
                                break;
                            }
                            if ((iArr21[iA][f81Var.d(i81)] & 32) != 32) {
                                z2 = false;
                                break;
                            }
                            i81++;
                        }
                        if (z2) {
                            if (i80 == 1) {
                                i = -1;
                                if (i78 != -1) {
                                    z = false;
                                    break;
                                }
                                i78 = i77;
                            } else {
                                i = -1;
                                if (i79 != -1) {
                                    z = false;
                                    break;
                                }
                                i79 = i77;
                            }
                        }
                    }
                }
                i77++;
            }
            if (i78 != i && i79 != i) {
                z13 = true;
            }
            if (z & z13) {
                nr3 nr3Var = new nr3(true);
                nr3VarArr[i78] = nr3Var;
                nr3VarArr[i79] = nr3Var;
            }
        }
        return Pair.create(nr3VarArr, f81VarArr);
    }

    public d e() {
        return this.e.get();
    }

    public void j(e eVar) {
        lp4.a aVar;
        d dVarE = eVar.e();
        if (this.e.getAndSet(dVarE).equals(dVarE) || (aVar = this.a) == null) {
            return;
        }
        ((yj4) ((s71) aVar).x).e(10);
    }

    public ep0(Context context) {
        n4.b bVar = new n4.b();
        d dVar = d.a0;
        d dVarE = new e(context).e();
        this.d = bVar;
        this.e = new AtomicReference<>(dVarE);
    }

    /* JADX INFO: compiled from: DefaultTrackSelector.java */
    public static final class e extends jp4.b {
        public boolean A;
        public boolean B;
        public boolean C;
        public int D;
        public boolean E;
        public boolean F;
        public boolean G;
        public final SparseArray<Map<cp4, f>> H;
        public final SparseBooleanArray I;
        public boolean w;
        public boolean x;
        public boolean y;
        public boolean z;

        public e(Context context) {
            a(context);
            d(context, true);
            this.H = new SparseArray<>();
            this.I = new SparseBooleanArray();
            f();
        }

        @Override // com.shabakaty.downloader.jp4.b
        public jp4.b a(Context context) {
            super.a(context);
            return this;
        }

        @Override // com.shabakaty.downloader.jp4.b
        public jp4.b b(String[] strArr) {
            super.b(strArr);
            return this;
        }

        @Override // com.shabakaty.downloader.jp4.b
        public jp4.b c(int i, int i2, boolean z) {
            this.i = i;
            this.j = i2;
            this.k = z;
            return this;
        }

        @Override // com.shabakaty.downloader.jp4.b
        public jp4.b d(Context context, boolean z) {
            super.d(context, z);
            return this;
        }

        public d e() {
            return new d(this, null);
        }

        public final void f() {
            this.w = true;
            this.x = false;
            this.y = true;
            this.z = true;
            this.A = false;
            this.B = false;
            this.C = false;
            this.D = 0;
            this.E = true;
            this.F = false;
            this.G = true;
        }

        public e g(String str) {
            if (str == null) {
                b(new String[0]);
            } else {
                b(new String[]{str});
            }
            return this;
        }

        @Deprecated
        public e() {
            this.H = new SparseArray<>();
            this.I = new SparseBooleanArray();
            f();
        }

        public e(d dVar, a aVar) {
            super(dVar);
            this.D = dVar.N;
            this.w = dVar.O;
            this.x = dVar.P;
            this.y = dVar.Q;
            this.z = dVar.R;
            this.A = dVar.S;
            this.B = dVar.T;
            this.C = dVar.U;
            this.E = dVar.V;
            this.F = dVar.W;
            this.G = dVar.X;
            SparseArray<Map<cp4, f>> sparseArray = dVar.Y;
            SparseArray<Map<cp4, f>> sparseArray2 = new SparseArray<>();
            for (int i = 0; i < sparseArray.size(); i++) {
                sparseArray2.put(sparseArray.keyAt(i), new HashMap(sparseArray.valueAt(i)));
            }
            this.H = sparseArray2;
            this.I = dVar.Z.clone();
        }
    }

    /* JADX INFO: compiled from: DefaultTrackSelector.java */
    public static final class d extends jp4 {
        public final int N;
        public final boolean O;
        public final boolean P;
        public final boolean Q;
        public final boolean R;
        public final boolean S;
        public final boolean T;
        public final boolean U;
        public final boolean V;
        public final boolean W;
        public final boolean X;
        public final SparseArray<Map<cp4, f>> Y;
        public final SparseBooleanArray Z;
        public static final d a0 = new e().e();
        public static final Parcelable.Creator<d> CREATOR = new a();

        /* JADX INFO: compiled from: DefaultTrackSelector.java */
        public class a implements Parcelable.Creator<d> {
            @Override // android.os.Parcelable.Creator
            public d createFromParcel(Parcel parcel) {
                return new d(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public d[] newArray(int i) {
                return new d[i];
            }
        }

        public d(e eVar, a aVar) {
            super(eVar);
            this.O = eVar.w;
            this.P = eVar.x;
            this.Q = eVar.y;
            this.R = eVar.z;
            this.S = eVar.A;
            this.T = eVar.B;
            this.U = eVar.C;
            this.N = eVar.D;
            this.V = eVar.E;
            this.W = eVar.F;
            this.X = eVar.G;
            this.Y = eVar.H;
            this.Z = eVar.I;
        }

        public e a() {
            return new e(this, null);
        }

        @Override // com.shabakaty.downloader.jp4, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.shabakaty.downloader.jp4
        public boolean equals(Object obj) {
            boolean z;
            boolean z2;
            boolean z3;
            if (this == obj) {
                return true;
            }
            if (obj == null || d.class != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            if (super.equals(dVar) && this.O == dVar.O && this.P == dVar.P && this.Q == dVar.Q && this.R == dVar.R && this.S == dVar.S && this.T == dVar.T && this.U == dVar.U && this.N == dVar.N && this.V == dVar.V && this.W == dVar.W && this.X == dVar.X) {
                SparseBooleanArray sparseBooleanArray = this.Z;
                SparseBooleanArray sparseBooleanArray2 = dVar.Z;
                int size = sparseBooleanArray.size();
                if (sparseBooleanArray2.size() == size) {
                    int i = 0;
                    while (true) {
                        if (i >= size) {
                            z = true;
                            break;
                        }
                        if (sparseBooleanArray2.indexOfKey(sparseBooleanArray.keyAt(i)) < 0) {
                            z = false;
                            break;
                        }
                        i++;
                    }
                } else {
                    z = false;
                    break;
                }
                if (z) {
                    SparseArray<Map<cp4, f>> sparseArray = this.Y;
                    SparseArray<Map<cp4, f>> sparseArray2 = dVar.Y;
                    int size2 = sparseArray.size();
                    if (sparseArray2.size() != size2) {
                        z2 = false;
                    } else {
                        int i2 = 0;
                        while (true) {
                            if (i2 < size2) {
                                int iIndexOfKey = sparseArray2.indexOfKey(sparseArray.keyAt(i2));
                                if (iIndexOfKey < 0) {
                                    break;
                                }
                                Map<cp4, f> mapValueAt = sparseArray.valueAt(i2);
                                Map<cp4, f> mapValueAt2 = sparseArray2.valueAt(iIndexOfKey);
                                if (mapValueAt2.size() == mapValueAt.size()) {
                                    Iterator<Map.Entry<cp4, f>> it = mapValueAt.entrySet().iterator();
                                    while (true) {
                                        if (!it.hasNext()) {
                                            z3 = true;
                                            break;
                                        }
                                        Map.Entry<cp4, f> next = it.next();
                                        cp4 key = next.getKey();
                                        if (!mapValueAt2.containsKey(key) || !sy4.a(next.getValue(), mapValueAt2.get(key))) {
                                            z3 = false;
                                            break;
                                        }
                                    }
                                } else {
                                    z3 = false;
                                    break;
                                }
                                if (!z3) {
                                    break;
                                }
                                i2++;
                            } else {
                                z2 = true;
                            }
                        }
                        z2 = false;
                    }
                    if (z2) {
                        return true;
                    }
                }
            }
            return false;
        }

        @Override // com.shabakaty.downloader.jp4
        public int hashCode() {
            return ((((((((((((((((((((((super.hashCode() + 31) * 31) + (this.O ? 1 : 0)) * 31) + (this.P ? 1 : 0)) * 31) + (this.Q ? 1 : 0)) * 31) + (this.R ? 1 : 0)) * 31) + (this.S ? 1 : 0)) * 31) + (this.T ? 1 : 0)) * 31) + (this.U ? 1 : 0)) * 31) + this.N) * 31) + (this.V ? 1 : 0)) * 31) + (this.W ? 1 : 0)) * 31) + (this.X ? 1 : 0);
        }

        @Override // com.shabakaty.downloader.jp4, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            boolean z = this.O;
            int i2 = sy4.a;
            parcel.writeInt(z ? 1 : 0);
            parcel.writeInt(this.P ? 1 : 0);
            parcel.writeInt(this.Q ? 1 : 0);
            parcel.writeInt(this.R ? 1 : 0);
            parcel.writeInt(this.S ? 1 : 0);
            parcel.writeInt(this.T ? 1 : 0);
            parcel.writeInt(this.U ? 1 : 0);
            parcel.writeInt(this.N);
            parcel.writeInt(this.V ? 1 : 0);
            parcel.writeInt(this.W ? 1 : 0);
            parcel.writeInt(this.X ? 1 : 0);
            SparseArray<Map<cp4, f>> sparseArray = this.Y;
            int size = sparseArray.size();
            parcel.writeInt(size);
            for (int i3 = 0; i3 < size; i3++) {
                int iKeyAt = sparseArray.keyAt(i3);
                Map<cp4, f> mapValueAt = sparseArray.valueAt(i3);
                int size2 = mapValueAt.size();
                parcel.writeInt(iKeyAt);
                parcel.writeInt(size2);
                for (Map.Entry<cp4, f> entry : mapValueAt.entrySet()) {
                    parcel.writeParcelable(entry.getKey(), 0);
                    parcel.writeParcelable(entry.getValue(), 0);
                }
            }
            parcel.writeSparseBooleanArray(this.Z);
        }

        public d(Parcel parcel) {
            super(parcel);
            int i = sy4.a;
            this.O = parcel.readInt() != 0;
            this.P = parcel.readInt() != 0;
            this.Q = parcel.readInt() != 0;
            this.R = parcel.readInt() != 0;
            this.S = parcel.readInt() != 0;
            this.T = parcel.readInt() != 0;
            this.U = parcel.readInt() != 0;
            this.N = parcel.readInt();
            this.V = parcel.readInt() != 0;
            this.W = parcel.readInt() != 0;
            this.X = parcel.readInt() != 0;
            int i2 = parcel.readInt();
            SparseArray<Map<cp4, f>> sparseArray = new SparseArray<>(i2);
            for (int i3 = 0; i3 < i2; i3++) {
                int i4 = parcel.readInt();
                int i5 = parcel.readInt();
                HashMap map = new HashMap(i5);
                for (int i6 = 0; i6 < i5; i6++) {
                    cp4 cp4Var = (cp4) parcel.readParcelable(cp4.class.getClassLoader());
                    Objects.requireNonNull(cp4Var);
                    map.put(cp4Var, (f) parcel.readParcelable(f.class.getClassLoader()));
                }
                sparseArray.put(i4, map);
            }
            this.Y = sparseArray;
            this.Z = parcel.readSparseBooleanArray();
        }
    }
}
