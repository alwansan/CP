package com.shabakaty.downloader;

import android.os.Parcel;
import android.os.Parcelable;
import com.liulishuo.filedownloader.BuildConfig;

/* JADX INFO: compiled from: VideoModelLocal.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ob4 implements Parcelable {
    public static final Parcelable.Creator<ob4> CREATOR = new a();
    public String r;
    public String s;
    public String t;
    public String u;
    public String v;
    public String w;

    /* JADX INFO: compiled from: VideoModelLocal.kt */
    public static final class a implements Parcelable.Creator<ob4> {
        @Override // android.os.Parcelable.Creator
        public ob4 createFromParcel(Parcel parcel) {
            j32.e(parcel, "parcel");
            return new ob4(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public ob4[] newArray(int i) {
            return new ob4[i];
        }
    }

    public ob4() {
        this(null, null, null, null, null, null, 63);
    }

    public ob4(String str, String str2, String str3, String str4, String str5, String str6) {
        j32.e(str, "nb");
        j32.e(str2, "name");
        j32.e(str3, "role");
        j32.e(str4, "staffImg");
        j32.e(str5, "staffImgThumb");
        j32.e(str6, "staffImgMediumThumb");
        this.r = str;
        this.s = str2;
        this.t = str3;
        this.u = str4;
        this.v = str5;
        this.w = str6;
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
    }

    public /* synthetic */ ob4(String str, String str2, String str3, String str4, String str5, String str6, int i) {
        this((i & 1) != 0 ? BuildConfig.FLAVOR : null, (i & 2) != 0 ? BuildConfig.FLAVOR : null, (i & 4) != 0 ? BuildConfig.FLAVOR : null, (i & 8) != 0 ? BuildConfig.FLAVOR : null, (i & 16) != 0 ? BuildConfig.FLAVOR : null, (i & 32) != 0 ? BuildConfig.FLAVOR : null);
    }
}
