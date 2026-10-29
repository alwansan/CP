package com.shabakaty.downloader;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.recyclerview.widget.RecyclerView;
import com.liulishuo.filedownloader.BuildConfig;
import zendesk.support.request.CellBase;

/* JADX INFO: compiled from: VideoModelEntity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class i25 implements Parcelable {
    public static final Parcelable.Creator<i25> CREATOR = new a();
    public String A;
    public String B;
    public String C;
    public String D;
    public String E;
    public String F;
    public String G;
    public String H;
    public String I;
    public String J;
    public String K;
    public String L;
    public String M;
    public String N;
    public String O;
    public String P;
    public String Q;
    public String R;
    public boolean S;
    public String T;
    public String U;
    public boolean V;
    public String W;
    public String X;
    public int Y;
    public String Z;
    public String a0;
    public String b0;
    public String c0;
    public boolean d0;
    public String e0;
    public String f0;
    public int g0;
    public String h0;
    public String i0;
    public String j0;
    public String k0;
    public String l0;
    public String m0;
    public String n0;
    public String o0;
    public String p0;
    public String q0;
    public String r;
    public boolean r0;
    public String s;
    public String s0;
    public String t;
    public int t0;
    public String u;
    public long u0;
    public String v;
    public String v0;
    public String w;
    public String w0;
    public String x;
    public boolean x0;
    public String y;
    public boolean y0;
    public String z;

    /* JADX INFO: compiled from: VideoModelEntity.kt */
    public static final class a implements Parcelable.Creator<i25> {
        @Override // android.os.Parcelable.Creator
        public i25 createFromParcel(Parcel parcel) {
            j32.e(parcel, "parcel");
            return new i25(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0, parcel.readString(), parcel.readString(), parcel.readInt() != 0, parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0, parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0, parcel.readString(), parcel.readInt(), parcel.readLong(), parcel.readString(), parcel.readString(), parcel.readInt() != 0, parcel.readInt() != 0);
        }

        @Override // android.os.Parcelable.Creator
        public i25[] newArray(int i) {
            return new i25[i];
        }
    }

    public i25() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, false, null, null, 0, null, null, null, null, false, null, null, 0, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0L, null, null, false, false, -1, 268435455);
    }

    public i25(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, String str19, String str20, String str21, String str22, String str23, String str24, String str25, String str26, String str27, boolean z, String str28, String str29, boolean z2, String str30, String str31, int i, String str32, String str33, String str34, String str35, boolean z3, String str36, String str37, int i2, String str38, String str39, String str40, String str41, String str42, String str43, String str44, String str45, String str46, String str47, boolean z4, String str48, int i3, long j, String str49, String str50, boolean z5, boolean z6) {
        j32.e(str, "nb");
        j32.e(str2, "enTitle");
        j32.e(str3, "arTitle");
        j32.e(str4, "otherTitle");
        j32.e(str5, "stars");
        j32.e(str6, "fileFile");
        j32.e(str7, "arContent");
        j32.e(str8, "enContent");
        j32.e(str9, "mDate");
        j32.e(str10, "year");
        j32.e(str11, "kind");
        j32.e(str12, "season");
        j32.e(str13, "img");
        j32.e(str14, "imgThumb");
        j32.e(str15, "imgMediumThumb");
        j32.e(str16, "imgObjUrl");
        j32.e(str17, "imgMediumThumbObjUrl");
        j32.e(str18, "filmRating");
        j32.e(str19, "tvShowRating");
        j32.e(str20, "episodeNummer");
        j32.e(str21, "rate");
        j32.e(str22, "special");
        j32.e(str23, "itemDate");
        j32.e(str24, "duration");
        j32.e(str25, "imdbUrlRef");
        j32.e(str26, "rootSeries");
        j32.e(str27, "useParentImg");
        j32.e(str28, "episodeFlag");
        j32.e(str29, "trailer");
        j32.e(str30, "audioStreamNumber");
        j32.e(str31, "parentSkipping");
        j32.e(str32, "deleted");
        j32.e(str33, "imgThumbObjUrl");
        j32.e(str34, "ratingImg");
        j32.e(str35, "arTranslationFilePath");
        j32.e(str36, "videoLikesNumber");
        j32.e(str37, "videoDisLikesNumber");
        j32.e(str38, "videoViewsNumber");
        j32.e(str39, "itemOrderList");
        j32.e(str40, "listId");
        j32.e(str41, "listSortOrder");
        j32.e(str42, "castable");
        j32.e(str43, "publishDate");
        j32.e(str44, "episodeDesc");
        j32.e(str45, "qualityName");
        j32.e(str46, "customArTitle");
        j32.e(str47, "customEnTitle");
        j32.e(str48, "url");
        j32.e(str49, "size");
        j32.e(str50, "description");
        this.r = str;
        this.s = str2;
        this.t = str3;
        this.u = str4;
        this.v = str5;
        this.w = str6;
        this.x = str7;
        this.y = str8;
        this.z = str9;
        this.A = str10;
        this.B = str11;
        this.C = str12;
        this.D = str13;
        this.E = str14;
        this.F = str15;
        this.G = str16;
        this.H = str17;
        this.I = str18;
        this.J = str19;
        this.K = str20;
        this.L = str21;
        this.M = str22;
        this.N = str23;
        this.O = str24;
        this.P = str25;
        this.Q = str26;
        this.R = str27;
        this.S = z;
        this.T = str28;
        this.U = str29;
        this.V = z2;
        this.W = str30;
        this.X = str31;
        this.Y = i;
        this.Z = str32;
        this.a0 = str33;
        this.b0 = str34;
        this.c0 = str35;
        this.d0 = z3;
        this.e0 = str36;
        this.f0 = str37;
        this.g0 = i2;
        this.h0 = str38;
        this.i0 = str39;
        this.j0 = str40;
        this.k0 = str41;
        this.l0 = str42;
        this.m0 = str43;
        this.n0 = str44;
        this.o0 = str45;
        this.p0 = str46;
        this.q0 = str47;
        this.r0 = z4;
        this.s0 = str48;
        this.t0 = i3;
        this.u0 = j;
        this.v0 = str49;
        this.w0 = str50;
        this.x0 = z5;
        this.y0 = z6;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        j32.e(parcel, "out");
        parcel.writeString(this.r);
        parcel.writeString(this.s);
        parcel.writeString(this.t);
        parcel.writeString(this.u);
        parcel.writeString(this.v);
        parcel.writeString(this.w);
        parcel.writeString(this.x);
        parcel.writeString(this.y);
        parcel.writeString(this.z);
        parcel.writeString(this.A);
        parcel.writeString(this.B);
        parcel.writeString(this.C);
        parcel.writeString(this.D);
        parcel.writeString(this.E);
        parcel.writeString(this.F);
        parcel.writeString(this.G);
        parcel.writeString(this.H);
        parcel.writeString(this.I);
        parcel.writeString(this.J);
        parcel.writeString(this.K);
        parcel.writeString(this.L);
        parcel.writeString(this.M);
        parcel.writeString(this.N);
        parcel.writeString(this.O);
        parcel.writeString(this.P);
        parcel.writeString(this.Q);
        parcel.writeString(this.R);
        parcel.writeInt(this.S ? 1 : 0);
        parcel.writeString(this.T);
        parcel.writeString(this.U);
        parcel.writeInt(this.V ? 1 : 0);
        parcel.writeString(this.W);
        parcel.writeString(this.X);
        parcel.writeInt(this.Y);
        parcel.writeString(this.Z);
        parcel.writeString(this.a0);
        parcel.writeString(this.b0);
        parcel.writeString(this.c0);
        parcel.writeInt(this.d0 ? 1 : 0);
        parcel.writeString(this.e0);
        parcel.writeString(this.f0);
        parcel.writeInt(this.g0);
        parcel.writeString(this.h0);
        parcel.writeString(this.i0);
        parcel.writeString(this.j0);
        parcel.writeString(this.k0);
        parcel.writeString(this.l0);
        parcel.writeString(this.m0);
        parcel.writeString(this.n0);
        parcel.writeString(this.o0);
        parcel.writeString(this.p0);
        parcel.writeString(this.q0);
        parcel.writeInt(this.r0 ? 1 : 0);
        parcel.writeString(this.s0);
        parcel.writeInt(this.t0);
        parcel.writeLong(this.u0);
        parcel.writeString(this.v0);
        parcel.writeString(this.w0);
        parcel.writeInt(this.x0 ? 1 : 0);
        parcel.writeInt(this.y0 ? 1 : 0);
    }

    public /* synthetic */ i25(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, String str19, String str20, String str21, String str22, String str23, String str24, String str25, String str26, String str27, boolean z, String str28, String str29, boolean z2, String str30, String str31, int i, String str32, String str33, String str34, String str35, boolean z3, String str36, String str37, int i2, String str38, String str39, String str40, String str41, String str42, String str43, String str44, String str45, String str46, String str47, boolean z4, String str48, int i3, long j, String str49, String str50, boolean z5, boolean z6, int i4, int i5) {
        this((i4 & 1) != 0 ? "0" : str, (i4 & 2) != 0 ? BuildConfig.FLAVOR : null, (i4 & 4) != 0 ? BuildConfig.FLAVOR : null, (i4 & 8) != 0 ? BuildConfig.FLAVOR : null, (i4 & 16) != 0 ? BuildConfig.FLAVOR : null, (i4 & 32) != 0 ? BuildConfig.FLAVOR : null, (i4 & 64) != 0 ? BuildConfig.FLAVOR : null, (i4 & RecyclerView.b0.FLAG_IGNORE) != 0 ? BuildConfig.FLAVOR : null, (i4 & RecyclerView.b0.FLAG_TMP_DETACHED) != 0 ? BuildConfig.FLAVOR : null, (i4 & RecyclerView.b0.FLAG_ADAPTER_POSITION_UNKNOWN) != 0 ? BuildConfig.FLAVOR : null, (i4 & RecyclerView.b0.FLAG_ADAPTER_FULLUPDATE) != 0 ? "1" : str11, (i4 & 2048) != 0 ? BuildConfig.FLAVOR : null, (i4 & 4096) != 0 ? BuildConfig.FLAVOR : null, (i4 & RecyclerView.b0.FLAG_BOUNCED_FROM_HIDDEN_LIST) != 0 ? BuildConfig.FLAVOR : null, (i4 & 16384) != 0 ? BuildConfig.FLAVOR : null, (i4 & 32768) != 0 ? BuildConfig.FLAVOR : null, (i4 & 65536) != 0 ? BuildConfig.FLAVOR : null, (i4 & 131072) != 0 ? BuildConfig.FLAVOR : null, (i4 & 262144) != 0 ? BuildConfig.FLAVOR : null, (i4 & 524288) != 0 ? BuildConfig.FLAVOR : null, (i4 & 1048576) != 0 ? BuildConfig.FLAVOR : null, (i4 & 2097152) != 0 ? BuildConfig.FLAVOR : null, (i4 & 4194304) != 0 ? BuildConfig.FLAVOR : null, (i4 & 8388608) != 0 ? BuildConfig.FLAVOR : null, (i4 & 16777216) != 0 ? BuildConfig.FLAVOR : null, (i4 & 33554432) != 0 ? BuildConfig.FLAVOR : str26, (i4 & 67108864) != 0 ? BuildConfig.FLAVOR : null, (i4 & 134217728) != 0 ? false : z, (i4 & 268435456) != 0 ? BuildConfig.FLAVOR : null, (i4 & 536870912) != 0 ? BuildConfig.FLAVOR : null, (i4 & 1073741824) != 0 ? false : z2, (i4 & CellBase.GROUP_ID_SYSTEM_MESSAGE) != 0 ? BuildConfig.FLAVOR : null, (i5 & 1) != 0 ? BuildConfig.FLAVOR : null, (i5 & 2) != 0 ? 0 : i, (i5 & 4) != 0 ? BuildConfig.FLAVOR : null, (i5 & 8) != 0 ? BuildConfig.FLAVOR : null, (i5 & 16) != 0 ? BuildConfig.FLAVOR : null, (i5 & 32) != 0 ? BuildConfig.FLAVOR : null, (i5 & 64) != 0 ? false : z3, (i5 & RecyclerView.b0.FLAG_IGNORE) != 0 ? BuildConfig.FLAVOR : null, (i5 & RecyclerView.b0.FLAG_TMP_DETACHED) != 0 ? BuildConfig.FLAVOR : null, (i5 & RecyclerView.b0.FLAG_ADAPTER_POSITION_UNKNOWN) != 0 ? 0 : i2, (i5 & RecyclerView.b0.FLAG_ADAPTER_FULLUPDATE) != 0 ? BuildConfig.FLAVOR : null, (i5 & 2048) != 0 ? BuildConfig.FLAVOR : null, (i5 & 4096) != 0 ? BuildConfig.FLAVOR : null, (i5 & RecyclerView.b0.FLAG_BOUNCED_FROM_HIDDEN_LIST) != 0 ? BuildConfig.FLAVOR : null, (i5 & 16384) != 0 ? BuildConfig.FLAVOR : null, (i5 & 32768) != 0 ? BuildConfig.FLAVOR : null, (i5 & 65536) != 0 ? BuildConfig.FLAVOR : null, (i5 & 131072) != 0 ? BuildConfig.FLAVOR : null, (i5 & 262144) != 0 ? BuildConfig.FLAVOR : null, (i5 & 524288) != 0 ? BuildConfig.FLAVOR : null, (i5 & 1048576) != 0 ? false : z4, (i5 & 2097152) != 0 ? BuildConfig.FLAVOR : null, (i5 & 4194304) != 0 ? 0 : i3, (i5 & 8388608) != 0 ? 0L : j, (i5 & 16777216) != 0 ? BuildConfig.FLAVOR : null, (i5 & 33554432) != 0 ? BuildConfig.FLAVOR : null, (i5 & 67108864) != 0 ? false : z5, (i5 & 134217728) == 0 ? z6 : false);
    }
}
