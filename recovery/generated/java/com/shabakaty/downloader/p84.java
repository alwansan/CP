package com.shabakaty.downloader;

import android.os.Parcel;
import android.os.Parcelable;
import com.liulishuo.filedownloader.BuildConfig;

/* JADX INFO: compiled from: CinemanaDownloadEntity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class p84 implements Parcelable {
    public static final Parcelable.Creator<p84> CREATOR = new a();
    public int r;
    public String s;
    public long t;
    public long u;
    public String v;

    /* JADX INFO: compiled from: CinemanaDownloadEntity.kt */
    public static final class a implements Parcelable.Creator<p84> {
        @Override // android.os.Parcelable.Creator
        public p84 createFromParcel(Parcel parcel) {
            j32.e(parcel, "parcel");
            return new p84(parcel.readInt(), parcel.readString(), parcel.readLong(), parcel.readLong(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public p84[] newArray(int i) {
            return new p84[i];
        }
    }

    public p84() {
        this(0, null, 0L, 0L, null, 31);
    }

    public p84(int i, String str, long j, long j2, String str2) {
        j32.e(str, "parentId");
        j32.e(str2, "controlLevel");
        this.r = i;
        this.s = str;
        this.t = j;
        this.u = j2;
        this.v = str2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p84)) {
            return false;
        }
        p84 p84Var = (p84) obj;
        return this.r == p84Var.r && j32.a(this.s, p84Var.s) && this.t == p84Var.t && this.u == p84Var.u && j32.a(this.v, p84Var.v);
    }

    public int hashCode() {
        int iA = ik4.a(this.s, this.r * 31, 31);
        long j = this.t;
        int i = (iA + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.u;
        return this.v.hashCode() + ((i + ((int) (j2 ^ (j2 >>> 32)))) * 31);
    }

    public String toString() {
        StringBuilder sbA = um3.a("SkippableSceneDB(id=");
        sbA.append(this.r);
        sbA.append(", parentId=");
        sbA.append(this.s);
        sbA.append(", start=");
        sbA.append(this.t);
        sbA.append(", end=");
        sbA.append(this.u);
        sbA.append(", controlLevel=");
        return h61.a(sbA, this.v, ')');
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        j32.e(parcel, "out");
        parcel.writeInt(this.r);
        parcel.writeString(this.s);
        parcel.writeLong(this.t);
        parcel.writeLong(this.u);
        parcel.writeString(this.v);
    }

    public /* synthetic */ p84(int i, String str, long j, long j2, String str2, int i2) {
        this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? "0" : str, (i2 & 4) != 0 ? 0L : j, (i2 & 8) == 0 ? j2 : 0L, (i2 & 16) != 0 ? BuildConfig.FLAVOR : str2);
    }
}
