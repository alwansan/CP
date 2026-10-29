package com.shabakaty.downloader;

import android.os.Parcel;
import android.os.Parcelable;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.data.db.downloads.CinemanaDownloadItem;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: DownloadsCollectionEntity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class gz0 implements Parcelable {
    public static final Parcelable.Creator<gz0> CREATOR = new a();
    public int r;
    public String s;
    public String t;
    public List<CinemanaDownloadItem> u;

    /* JADX INFO: compiled from: DownloadsCollectionEntity.kt */
    public static final class a implements Parcelable.Creator<gz0> {
        @Override // android.os.Parcelable.Creator
        public gz0 createFromParcel(Parcel parcel) {
            j32.e(parcel, "parcel");
            int i = parcel.readInt();
            String string = parcel.readString();
            String string2 = parcel.readString();
            int i2 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i2);
            int iA = 0;
            while (iA != i2) {
                iA = fz0.a(CinemanaDownloadItem.CREATOR, parcel, arrayList, iA, 1);
            }
            return new gz0(i, string, string2, arrayList);
        }

        @Override // android.os.Parcelable.Creator
        public gz0[] newArray(int i) {
            return new gz0[i];
        }
    }

    public gz0() {
        this(0, null, null, null, 15);
    }

    public gz0(int i, String str, String str2, List<CinemanaDownloadItem> list) {
        j32.e(str, "name");
        j32.e(str2, "image");
        j32.e(list, "items");
        this.r = i;
        this.s = str;
        this.t = str2;
        this.u = list;
    }

    public final String a() {
        Iterator<T> it = this.u.iterator();
        int i = 0;
        while (it.hasNext()) {
            i += ((CinemanaDownloadItem) it.next()).sizeMB;
        }
        if (i <= 0) {
            return BuildConfig.FLAVOR;
        }
        return i + " MB";
    }

    public final void b(String str) {
        j32.e(str, "<set-?>");
        this.t = str;
    }

    public final void c(String str) {
        j32.e(str, "<set-?>");
        this.s = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        j32.e(parcel, "out");
        parcel.writeInt(this.r);
        parcel.writeString(this.s);
        parcel.writeString(this.t);
        List<CinemanaDownloadItem> list = this.u;
        parcel.writeInt(list.size());
        Iterator<CinemanaDownloadItem> it = list.iterator();
        while (it.hasNext()) {
            it.next().writeToParcel(parcel, i);
        }
    }

    public /* synthetic */ gz0(int i, String str, String str2, List list, int i2) {
        this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? BuildConfig.FLAVOR : str, (i2 & 4) == 0 ? null : BuildConfig.FLAVOR, (i2 & 8) != 0 ? w21.r : null);
    }
}
