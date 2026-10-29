package com.shabakaty.downloader;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.recyclerview.widget.RecyclerView;
import com.liulishuo.filedownloader.BuildConfig;
import com.liulishuo.filedownloader.model.FileDownloadModel;

/* JADX INFO: compiled from: DownloadItem.kt */
/* JADX INFO: loaded from: classes.dex */
public final class pw0 implements Parcelable {
    public static final Parcelable.Creator<pw0> CREATOR = new a();
    public Throwable A;
    public String B;
    public int r;
    public String s;
    public long t;
    public String u;
    public String v;
    public String w;
    public String x;
    public long y;
    public xc4 z;

    /* JADX INFO: compiled from: DownloadItem.kt */
    public static final class a implements Parcelable.Creator<pw0> {
        @Override // android.os.Parcelable.Creator
        public pw0 createFromParcel(Parcel parcel) {
            j32.e(parcel, "parcel");
            return new pw0(parcel.readInt(), parcel.readString(), parcel.readLong(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readLong(), xc4.valueOf(parcel.readString()), (Throwable) parcel.readSerializable(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public pw0[] newArray(int i) {
            return new pw0[i];
        }
    }

    public pw0() {
        this(0, null, 0L, null, null, null, null, 0L, null, null, null, 2047);
    }

    public pw0(int i, String str, long j, String str2, String str3, String str4, String str5, long j2, xc4 xc4Var, Throwable th, String str6) {
        j32.e(str, "externalId");
        j32.e(str2, "title");
        j32.e(str3, "url");
        j32.e(str4, "img");
        j32.e(str5, FileDownloadModel.PATH);
        j32.e(xc4Var, FileDownloadModel.STATUS);
        j32.e(str6, "lastUpdated");
        this.r = i;
        this.s = str;
        this.t = j;
        this.u = str2;
        this.v = str3;
        this.w = str4;
        this.x = str5;
        this.y = j2;
        this.z = xc4Var;
        this.A = th;
        this.B = str6;
    }

    public final boolean a() {
        xc4 xc4Var = this.z;
        return xc4Var == xc4.PROGRESS || xc4Var == xc4.PENDING || xc4Var == xc4.STARTED;
    }

    public final boolean b() {
        return this.z == xc4.ERROR;
    }

    public final boolean c() {
        return this.z == xc4.COMPLETED;
    }

    public final boolean d() {
        return this.z == xc4.PAUSED;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final boolean e() {
        return this.z == xc4.PENDING;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof pw0)) {
            return false;
        }
        pw0 pw0Var = (pw0) obj;
        return this.r == pw0Var.r && j32.a(this.s, pw0Var.s) && this.t == pw0Var.t && j32.a(this.u, pw0Var.u) && j32.a(this.v, pw0Var.v) && j32.a(this.w, pw0Var.w) && j32.a(this.x, pw0Var.x) && this.y == pw0Var.y && this.z == pw0Var.z && j32.a(this.A, pw0Var.A) && j32.a(this.B, pw0Var.B);
    }

    public final void f(String str) {
        j32.e(str, "<set-?>");
        this.s = str;
    }

    public final void g(String str) {
        j32.e(str, "<set-?>");
        this.w = str;
    }

    public int hashCode() {
        int iA = ik4.a(this.s, this.r * 31, 31);
        long j = this.t;
        int iA2 = ik4.a(this.x, ik4.a(this.w, ik4.a(this.v, ik4.a(this.u, (iA + ((int) (j ^ (j >>> 32)))) * 31, 31), 31), 31), 31);
        long j2 = this.y;
        int iHashCode = (this.z.hashCode() + ((iA2 + ((int) (j2 ^ (j2 >>> 32)))) * 31)) * 31;
        Throwable th = this.A;
        return this.B.hashCode() + ((iHashCode + (th == null ? 0 : th.hashCode())) * 31);
    }

    public final void i(String str) {
        j32.e(str, "<set-?>");
        this.B = str;
    }

    public final void j(String str) {
        j32.e(str, "<set-?>");
        this.x = str;
    }

    public final void k(xc4 xc4Var) {
        j32.e(xc4Var, "<set-?>");
        this.z = xc4Var;
    }

    public final void l(String str) {
        j32.e(str, "<set-?>");
        this.u = str;
    }

    public final void m(String str) {
        j32.e(str, "<set-?>");
        this.v = str;
    }

    public String toString() {
        StringBuilder sbA = um3.a("DownloadItem(taskId=");
        sbA.append(this.r);
        sbA.append(", externalId=");
        sbA.append(this.s);
        sbA.append(", progressBytes=");
        sbA.append(this.t);
        sbA.append(", title=");
        sbA.append(this.u);
        sbA.append(", url=");
        sbA.append(this.v);
        sbA.append(", img=");
        sbA.append(this.w);
        sbA.append(", path=");
        sbA.append(this.x);
        sbA.append(", sizeBytes=");
        sbA.append(this.y);
        sbA.append(", status=");
        sbA.append(this.z);
        sbA.append(", errorCause=");
        sbA.append(this.A);
        sbA.append(", lastUpdated=");
        return h61.a(sbA, this.B, ')');
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        j32.e(parcel, "out");
        parcel.writeInt(this.r);
        parcel.writeString(this.s);
        parcel.writeLong(this.t);
        parcel.writeString(this.u);
        parcel.writeString(this.v);
        parcel.writeString(this.w);
        parcel.writeString(this.x);
        parcel.writeLong(this.y);
        parcel.writeString(this.z.name());
        parcel.writeSerializable(this.A);
        parcel.writeString(this.B);
    }

    public /* synthetic */ pw0(int i, String str, long j, String str2, String str3, String str4, String str5, long j2, xc4 xc4Var, Throwable th, String str6, int i2) {
        this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? "-1" : null, (i2 & 4) != 0 ? 0L : j, (i2 & 8) != 0 ? BuildConfig.FLAVOR : null, (i2 & 16) != 0 ? BuildConfig.FLAVOR : null, (i2 & 32) != 0 ? BuildConfig.FLAVOR : null, (i2 & 64) != 0 ? BuildConfig.FLAVOR : null, (i2 & RecyclerView.b0.FLAG_IGNORE) == 0 ? j2 : 0L, (i2 & RecyclerView.b0.FLAG_TMP_DETACHED) != 0 ? xc4.PENDING : xc4Var, null, (i2 & RecyclerView.b0.FLAG_ADAPTER_FULLUPDATE) != 0 ? BuildConfig.FLAVOR : null);
    }
}
