package com.shabakaty.downloader;

import android.os.Parcel;
import android.os.Parcelable;
import com.liulishuo.filedownloader.BuildConfig;

/* JADX INFO: compiled from: VideoModelLocal.kt */
/* JADX INFO: loaded from: classes.dex */
public final class o84 implements Parcelable {
    public static final Parcelable.Creator<o84> CREATOR = new a();
    public long r;
    public long s;
    public String t;

    /* JADX INFO: compiled from: VideoModelLocal.kt */
    public static final class a implements Parcelable.Creator<o84> {
        @Override // android.os.Parcelable.Creator
        public o84 createFromParcel(Parcel parcel) {
            j32.e(parcel, "parcel");
            return new o84(parcel.readLong(), parcel.readLong(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public o84[] newArray(int i) {
            return new o84[i];
        }
    }

    public o84(long j, long j2, String str) {
        j32.e(str, "controlLevel");
        this.r = j;
        this.s = j2;
        this.t = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o84)) {
            return false;
        }
        o84 o84Var = (o84) obj;
        return this.r == o84Var.r && this.s == o84Var.s && j32.a(this.t, o84Var.t);
    }

    public int hashCode() {
        long j = this.r;
        long j2 = this.s;
        return this.t.hashCode() + (((((int) (j ^ (j >>> 32))) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31);
    }

    public String toString() {
        StringBuilder sbA = um3.a("SkippableScene(start=");
        sbA.append(this.r);
        sbA.append(", end=");
        sbA.append(this.s);
        sbA.append(", controlLevel=");
        return h61.a(sbA, this.t, ')');
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        j32.e(parcel, "out");
        parcel.writeLong(this.r);
        parcel.writeLong(this.s);
        parcel.writeString(this.t);
    }

    public o84() {
        this(0L, 0L, BuildConfig.FLAVOR);
    }
}
