package com.shabakaty.downloader;

import android.os.Parcel;
import android.os.Parcelable;
import com.connectsdk.service.airplay.PListParser;

/* JADX INFO: compiled from: VideoStatusLocal.kt */
/* JADX INFO: loaded from: classes.dex */
public final class q25 implements Parcelable {
    public static final Parcelable.Creator<q25> CREATOR = new a();
    public boolean r;
    public boolean s;
    public boolean t;
    public boolean u;
    public boolean v;
    public String w;
    public long x;

    /* JADX INFO: compiled from: VideoStatusLocal.kt */
    public static final class a implements Parcelable.Creator<q25> {
        @Override // android.os.Parcelable.Creator
        public q25 createFromParcel(Parcel parcel) {
            j32.e(parcel, "parcel");
            return new q25(parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readString(), parcel.readLong());
        }

        @Override // android.os.Parcelable.Creator
        public q25[] newArray(int i) {
            return new q25[i];
        }
    }

    public q25() {
        this(false, false, false, false, false, null, 0L, 127);
    }

    public q25(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, String str, long j) {
        j32.e(str, "watchLater");
        this.r = z;
        this.s = z2;
        this.t = z3;
        this.u = z4;
        this.v = z5;
        this.w = str;
        this.x = j;
    }

    public final void a(String str) {
        j32.e(str, "<set-?>");
        this.w = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof q25)) {
            return super.equals(obj);
        }
        q25 q25Var = (q25) obj;
        return this.r == q25Var.r && this.s == q25Var.s && this.u == q25Var.u && this.v == q25Var.v && j32.a(this.w, q25Var.w) && this.x == q25Var.x;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    /* JADX WARN: Type inference failed for: r0v7, types: [int] */
    /* JADX WARN: Type inference failed for: r0v9, types: [int] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v3, types: [int] */
    /* JADX WARN: Type inference failed for: r2v5, types: [int] */
    /* JADX WARN: Type inference failed for: r2v9 */
    public int hashCode() {
        boolean z = this.r;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int i = r0 * 31;
        boolean z2 = this.s;
        ?? r2 = z2;
        if (z2) {
            r2 = 1;
        }
        int i2 = (i + r2) * 31;
        boolean z3 = this.t;
        ?? r3 = z3;
        if (z3) {
            r3 = 1;
        }
        int i3 = (i2 + r3) * 31;
        boolean z4 = this.u;
        ?? r4 = z4;
        if (z4) {
            r4 = 1;
        }
        int i4 = (i3 + r4) * 31;
        boolean z5 = this.v;
        int iA = ik4.a(this.w, (i4 + (z5 ? 1 : z5)) * 31, 31);
        long j = this.x;
        return iA + ((int) (j ^ (j >>> 32)));
    }

    public String toString() {
        StringBuilder sbA = um3.a("VideoStatus(liked=");
        sbA.append(this.r);
        sbA.append(", watched=");
        sbA.append(this.s);
        sbA.append(", annoying=");
        sbA.append(this.t);
        sbA.append(", disLiked=");
        sbA.append(this.u);
        sbA.append(", favorite=");
        sbA.append(this.v);
        sbA.append(", watchLater=");
        sbA.append(this.w);
        sbA.append(", videoProgress=");
        sbA.append(this.x);
        sbA.append(')');
        return sbA.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        j32.e(parcel, "out");
        parcel.writeInt(this.r ? 1 : 0);
        parcel.writeInt(this.s ? 1 : 0);
        parcel.writeInt(this.t ? 1 : 0);
        parcel.writeInt(this.u ? 1 : 0);
        parcel.writeInt(this.v ? 1 : 0);
        parcel.writeString(this.w);
        parcel.writeLong(this.x);
    }

    public /* synthetic */ q25(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, String str, long j, int i) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? false : z2, (i & 4) != 0 ? false : z3, (i & 8) != 0 ? false : z4, (i & 16) == 0 ? z5 : false, (i & 32) != 0 ? PListParser.TAG_FALSE : null, (i & 64) != 0 ? 0L : j);
    }
}
