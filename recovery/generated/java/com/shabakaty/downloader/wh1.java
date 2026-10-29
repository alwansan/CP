package com.shabakaty.downloader;

import android.os.Parcel;
import android.os.Parcelable;
import com.connectsdk.R;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.UUID;

/* JADX INFO: compiled from: Format.java */
/* JADX INFO: loaded from: classes.dex */
public final class wh1 implements Parcelable {
    public static final Parcelable.Creator<wh1> CREATOR = new a();
    public final ps2 A;
    public final String B;
    public final String C;
    public final int D;
    public final List<byte[]> E;
    public final o01 F;
    public final long G;
    public final int H;
    public final int I;
    public final float J;
    public final int K;
    public final float L;
    public final byte[] M;
    public final int N;
    public final v50 O;
    public final int P;
    public final int Q;
    public final int R;
    public final int S;
    public final int T;
    public final int U;
    public final Class<? extends g71> V;
    public int W;
    public final String r;
    public final String s;
    public final String t;
    public final int u;
    public final int v;
    public final int w;
    public final int x;
    public final int y;
    public final String z;

    /* JADX INFO: compiled from: Format.java */
    public class a implements Parcelable.Creator<wh1> {
        @Override // android.os.Parcelable.Creator
        public wh1 createFromParcel(Parcel parcel) {
            return new wh1(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public wh1[] newArray(int i) {
            return new wh1[i];
        }
    }

    public wh1(b bVar, a aVar) {
        this.r = bVar.a;
        this.s = bVar.b;
        this.t = sy4.I(bVar.c);
        this.u = bVar.d;
        this.v = bVar.e;
        int i = bVar.f;
        this.w = i;
        int i2 = bVar.g;
        this.x = i2;
        this.y = i2 != -1 ? i2 : i;
        this.z = bVar.h;
        this.A = bVar.i;
        this.B = bVar.j;
        this.C = bVar.k;
        this.D = bVar.l;
        List<byte[]> list = bVar.m;
        this.E = list == null ? Collections.emptyList() : list;
        o01 o01Var = bVar.n;
        this.F = o01Var;
        this.G = bVar.o;
        this.H = bVar.p;
        this.I = bVar.q;
        this.J = bVar.r;
        int i3 = bVar.s;
        this.K = i3 == -1 ? 0 : i3;
        float f = bVar.t;
        this.L = f == -1.0f ? 1.0f : f;
        this.M = bVar.u;
        this.N = bVar.v;
        this.O = bVar.w;
        this.P = bVar.x;
        this.Q = bVar.y;
        this.R = bVar.z;
        int i4 = bVar.A;
        this.S = i4 == -1 ? 0 : i4;
        int i5 = bVar.B;
        this.T = i5 != -1 ? i5 : 0;
        this.U = bVar.C;
        Class<? extends g71> cls = bVar.D;
        if (cls != null || o01Var == null) {
            this.V = cls;
        } else {
            this.V = ow4.class;
        }
    }

    public static String d(wh1 wh1Var) {
        if (wh1Var == null) {
            return "null";
        }
        StringBuilder sbA = um3.a("id=");
        sbA.append(wh1Var.r);
        sbA.append(", mimeType=");
        sbA.append(wh1Var.C);
        if (wh1Var.y != -1) {
            sbA.append(", bitrate=");
            sbA.append(wh1Var.y);
        }
        if (wh1Var.z != null) {
            sbA.append(", codecs=");
            sbA.append(wh1Var.z);
        }
        if (wh1Var.F != null) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            int i = 0;
            while (true) {
                o01 o01Var = wh1Var.F;
                if (i >= o01Var.u) {
                    break;
                }
                UUID uuid = o01Var.r[i].s;
                if (uuid.equals(jp.b)) {
                    linkedHashSet.add("cenc");
                } else if (uuid.equals(jp.c)) {
                    linkedHashSet.add("clearkey");
                } else if (uuid.equals(jp.e)) {
                    linkedHashSet.add("playready");
                } else if (uuid.equals(jp.d)) {
                    linkedHashSet.add("widevine");
                } else if (uuid.equals(jp.a)) {
                    linkedHashSet.add("universal");
                } else {
                    String strValueOf = String.valueOf(uuid);
                    StringBuilder sb = new StringBuilder(strValueOf.length() + 10);
                    sb.append("unknown (");
                    sb.append(strValueOf);
                    sb.append(")");
                    linkedHashSet.add(sb.toString());
                }
                i++;
            }
            sbA.append(", drm=[");
            String strValueOf2 = String.valueOf(',');
            Objects.requireNonNull(strValueOf2);
            Iterator it = linkedHashSet.iterator();
            StringBuilder sb2 = new StringBuilder();
            try {
                Objects.requireNonNull(sb2);
                if (it.hasNext()) {
                    Object next = it.next();
                    Objects.requireNonNull(next);
                    sb2.append(next instanceof CharSequence ? (CharSequence) next : next.toString());
                    while (it.hasNext()) {
                        sb2.append((CharSequence) strValueOf2);
                        Object next2 = it.next();
                        Objects.requireNonNull(next2);
                        sb2.append(next2 instanceof CharSequence ? (CharSequence) next2 : next2.toString());
                    }
                }
                sbA.append(sb2.toString());
                sbA.append(']');
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }
        if (wh1Var.H != -1 && wh1Var.I != -1) {
            sbA.append(", res=");
            sbA.append(wh1Var.H);
            sbA.append("x");
            sbA.append(wh1Var.I);
        }
        if (wh1Var.J != -1.0f) {
            sbA.append(", fps=");
            sbA.append(wh1Var.J);
        }
        if (wh1Var.P != -1) {
            sbA.append(", channels=");
            sbA.append(wh1Var.P);
        }
        if (wh1Var.Q != -1) {
            sbA.append(", sample_rate=");
            sbA.append(wh1Var.Q);
        }
        if (wh1Var.t != null) {
            sbA.append(", language=");
            sbA.append(wh1Var.t);
        }
        if (wh1Var.s != null) {
            sbA.append(", label=");
            sbA.append(wh1Var.s);
        }
        if ((wh1Var.v & 16384) != 0) {
            sbA.append(", trick-play-track");
        }
        return sbA.toString();
    }

    public b a() {
        return new b(this, null);
    }

    public wh1 b(Class<? extends g71> cls) {
        b bVarA = a();
        bVarA.D = cls;
        return bVarA.a();
    }

    public boolean c(wh1 wh1Var) {
        if (this.E.size() != wh1Var.E.size()) {
            return false;
        }
        for (int i = 0; i < this.E.size(); i++) {
            if (!Arrays.equals(this.E.get(i), wh1Var.E.get(i))) {
                return false;
            }
        }
        return true;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public wh1 e(wh1 wh1Var) {
        String str;
        String str2;
        int i;
        o01.b[] bVarArr;
        String str3;
        boolean z;
        if (this == wh1Var) {
            return this;
        }
        int i2 = nt2.i(this.C);
        String str4 = wh1Var.r;
        String str5 = wh1Var.s;
        if (str5 == null) {
            str5 = this.s;
        }
        String str6 = this.t;
        if ((i2 == 3 || i2 == 1) && (str = wh1Var.t) != null) {
            str6 = str;
        }
        int i3 = this.w;
        if (i3 == -1) {
            i3 = wh1Var.w;
        }
        int i4 = this.x;
        if (i4 == -1) {
            i4 = wh1Var.x;
        }
        String str7 = this.z;
        if (str7 == null) {
            String strS = sy4.s(wh1Var.z, i2);
            if (sy4.R(strS).length == 1) {
                str7 = strS;
            }
        }
        ps2 ps2Var = this.A;
        ps2 ps2VarB = ps2Var == null ? wh1Var.A : ps2Var.b(wh1Var.A);
        float f = this.J;
        if (f == -1.0f && i2 == 2) {
            f = wh1Var.J;
        }
        int i5 = this.u | wh1Var.u;
        int i6 = this.v | wh1Var.v;
        o01 o01Var = wh1Var.F;
        o01 o01Var2 = this.F;
        ArrayList arrayList = new ArrayList();
        if (o01Var != null) {
            str2 = o01Var.t;
            o01.b[] bVarArr2 = o01Var.r;
            int length = bVarArr2.length;
            int i7 = 0;
            while (i7 < length) {
                int i8 = length;
                o01.b bVar = bVarArr2[i7];
                if (bVar.a()) {
                    arrayList.add(bVar);
                }
                i7++;
                length = i8;
            }
        } else {
            str2 = null;
        }
        if (o01Var2 != null) {
            if (str2 == null) {
                str2 = o01Var2.t;
            }
            int size = arrayList.size();
            o01.b[] bVarArr3 = o01Var2.r;
            int length2 = bVarArr3.length;
            int i9 = 0;
            while (i9 < length2) {
                int i10 = length2;
                o01.b bVar2 = bVarArr3[i9];
                if (bVar2.a()) {
                    bVarArr = bVarArr3;
                    UUID uuid = bVar2.s;
                    str3 = str2;
                    int i11 = 0;
                    while (true) {
                        if (i11 >= size) {
                            i = size;
                            z = false;
                            break;
                        }
                        i = size;
                        if (((o01.b) arrayList.get(i11)).s.equals(uuid)) {
                            z = true;
                            break;
                        }
                        i11++;
                        size = i;
                    }
                    if (!z) {
                        arrayList.add(bVar2);
                    }
                } else {
                    i = size;
                    bVarArr = bVarArr3;
                    str3 = str2;
                }
                i9++;
                length2 = i10;
                bVarArr3 = bVarArr;
                str2 = str3;
                size = i;
            }
        }
        o01 o01Var3 = arrayList.isEmpty() ? null : new o01(str2, false, (o01.b[]) arrayList.toArray(new o01.b[0]));
        b bVarA = a();
        bVarA.a = str4;
        bVarA.b = str5;
        bVarA.c = str6;
        bVarA.d = i5;
        bVarA.e = i6;
        bVarA.f = i3;
        bVarA.g = i4;
        bVarA.h = str7;
        bVarA.i = ps2VarB;
        bVarA.n = o01Var3;
        bVarA.r = f;
        return bVarA.a();
    }

    public boolean equals(Object obj) {
        int i;
        if (this == obj) {
            return true;
        }
        if (obj == null || wh1.class != obj.getClass()) {
            return false;
        }
        wh1 wh1Var = (wh1) obj;
        int i2 = this.W;
        return (i2 == 0 || (i = wh1Var.W) == 0 || i2 == i) && this.u == wh1Var.u && this.v == wh1Var.v && this.w == wh1Var.w && this.x == wh1Var.x && this.D == wh1Var.D && this.G == wh1Var.G && this.H == wh1Var.H && this.I == wh1Var.I && this.K == wh1Var.K && this.N == wh1Var.N && this.P == wh1Var.P && this.Q == wh1Var.Q && this.R == wh1Var.R && this.S == wh1Var.S && this.T == wh1Var.T && this.U == wh1Var.U && Float.compare(this.J, wh1Var.J) == 0 && Float.compare(this.L, wh1Var.L) == 0 && sy4.a(this.V, wh1Var.V) && sy4.a(this.r, wh1Var.r) && sy4.a(this.s, wh1Var.s) && sy4.a(this.z, wh1Var.z) && sy4.a(this.B, wh1Var.B) && sy4.a(this.C, wh1Var.C) && sy4.a(this.t, wh1Var.t) && Arrays.equals(this.M, wh1Var.M) && sy4.a(this.A, wh1Var.A) && sy4.a(this.O, wh1Var.O) && sy4.a(this.F, wh1Var.F) && c(wh1Var);
    }

    public int hashCode() {
        if (this.W == 0) {
            String str = this.r;
            int iHashCode = (527 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.s;
            int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.t;
            int iHashCode3 = (((((((((iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31) + this.u) * 31) + this.v) * 31) + this.w) * 31) + this.x) * 31;
            String str4 = this.z;
            int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
            ps2 ps2Var = this.A;
            int iHashCode5 = (iHashCode4 + (ps2Var == null ? 0 : ps2Var.hashCode())) * 31;
            String str5 = this.B;
            int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
            String str6 = this.C;
            int iFloatToIntBits = (((((((((((((((Float.floatToIntBits(this.L) + ((((Float.floatToIntBits(this.J) + ((((((((((iHashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31) + this.D) * 31) + ((int) this.G)) * 31) + this.H) * 31) + this.I) * 31)) * 31) + this.K) * 31)) * 31) + this.N) * 31) + this.P) * 31) + this.Q) * 31) + this.R) * 31) + this.S) * 31) + this.T) * 31) + this.U) * 31;
            Class<? extends g71> cls = this.V;
            this.W = iFloatToIntBits + (cls != null ? cls.hashCode() : 0);
        }
        return this.W;
    }

    public String toString() {
        String str = this.r;
        String str2 = this.s;
        String str3 = this.B;
        String str4 = this.C;
        String str5 = this.z;
        int i = this.y;
        String str6 = this.t;
        int i2 = this.H;
        int i3 = this.I;
        float f = this.J;
        int i4 = this.P;
        int i5 = this.Q;
        StringBuilder sbA = nl3.a(dl3.a(str6, dl3.a(str5, dl3.a(str4, dl3.a(str3, dl3.a(str2, dl3.a(str, R.styleable.AppCompatTheme_textAppearanceListItemSecondary)))))), "Format(", str, ", ", str2);
        u32.a(sbA, ", ", str3, ", ", str4);
        sbA.append(", ");
        sbA.append(str5);
        sbA.append(", ");
        sbA.append(i);
        sbA.append(", ");
        sbA.append(str6);
        sbA.append(", [");
        sbA.append(i2);
        sbA.append(", ");
        sbA.append(i3);
        sbA.append(", ");
        sbA.append(f);
        sbA.append("], [");
        sbA.append(i4);
        sbA.append(", ");
        sbA.append(i5);
        sbA.append("])");
        return sbA.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.r);
        parcel.writeString(this.s);
        parcel.writeString(this.t);
        parcel.writeInt(this.u);
        parcel.writeInt(this.v);
        parcel.writeInt(this.w);
        parcel.writeInt(this.x);
        parcel.writeString(this.z);
        parcel.writeParcelable(this.A, 0);
        parcel.writeString(this.B);
        parcel.writeString(this.C);
        parcel.writeInt(this.D);
        int size = this.E.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeByteArray(this.E.get(i2));
        }
        parcel.writeParcelable(this.F, 0);
        parcel.writeLong(this.G);
        parcel.writeInt(this.H);
        parcel.writeInt(this.I);
        parcel.writeFloat(this.J);
        parcel.writeInt(this.K);
        parcel.writeFloat(this.L);
        int i3 = this.M != null ? 1 : 0;
        int i4 = sy4.a;
        parcel.writeInt(i3);
        byte[] bArr = this.M;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
        parcel.writeInt(this.N);
        parcel.writeParcelable(this.O, i);
        parcel.writeInt(this.P);
        parcel.writeInt(this.Q);
        parcel.writeInt(this.R);
        parcel.writeInt(this.S);
        parcel.writeInt(this.T);
        parcel.writeInt(this.U);
    }

    /* JADX INFO: compiled from: Format.java */
    public static final class b {
        public int A;
        public int B;
        public int C;
        public Class<? extends g71> D;
        public String a;
        public String b;
        public String c;
        public int d;
        public int e;
        public int f;
        public int g;
        public String h;
        public ps2 i;
        public String j;
        public String k;
        public int l;
        public List<byte[]> m;
        public o01 n;
        public long o;
        public int p;
        public int q;
        public float r;
        public int s;
        public float t;
        public byte[] u;
        public int v;
        public v50 w;
        public int x;
        public int y;
        public int z;

        public b() {
            this.f = -1;
            this.g = -1;
            this.l = -1;
            this.o = Long.MAX_VALUE;
            this.p = -1;
            this.q = -1;
            this.r = -1.0f;
            this.t = 1.0f;
            this.v = -1;
            this.x = -1;
            this.y = -1;
            this.z = -1;
            this.C = -1;
        }

        public wh1 a() {
            return new wh1(this, null);
        }

        public b b(int i) {
            this.a = Integer.toString(i);
            return this;
        }

        public b(wh1 wh1Var, a aVar) {
            this.a = wh1Var.r;
            this.b = wh1Var.s;
            this.c = wh1Var.t;
            this.d = wh1Var.u;
            this.e = wh1Var.v;
            this.f = wh1Var.w;
            this.g = wh1Var.x;
            this.h = wh1Var.z;
            this.i = wh1Var.A;
            this.j = wh1Var.B;
            this.k = wh1Var.C;
            this.l = wh1Var.D;
            this.m = wh1Var.E;
            this.n = wh1Var.F;
            this.o = wh1Var.G;
            this.p = wh1Var.H;
            this.q = wh1Var.I;
            this.r = wh1Var.J;
            this.s = wh1Var.K;
            this.t = wh1Var.L;
            this.u = wh1Var.M;
            this.v = wh1Var.N;
            this.w = wh1Var.O;
            this.x = wh1Var.P;
            this.y = wh1Var.Q;
            this.z = wh1Var.R;
            this.A = wh1Var.S;
            this.B = wh1Var.T;
            this.C = wh1Var.U;
            this.D = wh1Var.V;
        }
    }

    public wh1(Parcel parcel) {
        this.r = parcel.readString();
        this.s = parcel.readString();
        this.t = parcel.readString();
        this.u = parcel.readInt();
        this.v = parcel.readInt();
        int i = parcel.readInt();
        this.w = i;
        int i2 = parcel.readInt();
        this.x = i2;
        this.y = i2 != -1 ? i2 : i;
        this.z = parcel.readString();
        this.A = (ps2) parcel.readParcelable(ps2.class.getClassLoader());
        this.B = parcel.readString();
        this.C = parcel.readString();
        this.D = parcel.readInt();
        int i3 = parcel.readInt();
        this.E = new ArrayList(i3);
        for (int i4 = 0; i4 < i3; i4++) {
            List<byte[]> list = this.E;
            byte[] bArrCreateByteArray = parcel.createByteArray();
            Objects.requireNonNull(bArrCreateByteArray);
            list.add(bArrCreateByteArray);
        }
        o01 o01Var = (o01) parcel.readParcelable(o01.class.getClassLoader());
        this.F = o01Var;
        this.G = parcel.readLong();
        this.H = parcel.readInt();
        this.I = parcel.readInt();
        this.J = parcel.readFloat();
        this.K = parcel.readInt();
        this.L = parcel.readFloat();
        int i5 = sy4.a;
        this.M = parcel.readInt() != 0 ? parcel.createByteArray() : null;
        this.N = parcel.readInt();
        this.O = (v50) parcel.readParcelable(v50.class.getClassLoader());
        this.P = parcel.readInt();
        this.Q = parcel.readInt();
        this.R = parcel.readInt();
        this.S = parcel.readInt();
        this.T = parcel.readInt();
        this.U = parcel.readInt();
        this.V = o01Var != null ? ow4.class : null;
    }
}
