package com.shabakaty.cinemana.domain.models.local.staff_info;

import android.os.Parcel;
import android.os.Parcelable;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.downloader.fz0;
import com.shabakaty.downloader.h61;
import com.shabakaty.downloader.ik4;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.j60;
import com.shabakaty.downloader.um3;
import com.shabakaty.downloader.w21;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: StaffModel.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000f\b\u0087\b\u0018\u00002\u00020\u0001BS\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0002\u0012\u000e\b\u0002\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u0002¢\u0006\u0004\b \u0010!R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\"\u0010\f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0004\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\"\u0010\u000f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0004\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR(\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\"\u0010\u001a\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u0004\u001a\u0004\b\u001b\u0010\u0006\"\u0004\b\u001c\u0010\bR\"\u0010\u001d\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u0004\u001a\u0004\b\u001e\u0010\u0006\"\u0004\b\u001f\u0010\b¨\u0006\""}, d2 = {"Lcom/shabakaty/cinemana/domain/models/local/staff_info/StaffModel;", "Landroid/os/Parcelable;", BuildConfig.FLAVOR, "nb", "Ljava/lang/String;", "getNb", "()Ljava/lang/String;", "setNb", "(Ljava/lang/String;)V", "imgMediumThumbObjUrl", "getImgMediumThumbObjUrl", "setImgMediumThumbObjUrl", "imgObjUrl", "getImgObjUrl", "setImgObjUrl", "imgThumbObjUrl", "getImgThumbObjUrl", "setImgThumbObjUrl", BuildConfig.FLAVOR, "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;", "items", "Ljava/util/List;", "getItems", "()Ljava/util/List;", "setItems", "(Ljava/util/List;)V", "role", "getRole", "setRole", "title", "getTitle", "setTitle", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final /* data */ class StaffModel implements Parcelable {
    public static final Parcelable.Creator<StaffModel> CREATOR = new a();
    public String imgMediumThumbObjUrl;
    public String imgObjUrl;
    public String imgThumbObjUrl;
    public List<VideoModel> items;
    public String nb;
    public String role;
    public String title;

    /* JADX INFO: compiled from: StaffModel.kt */
    public static final class a implements Parcelable.Creator<StaffModel> {
        @Override // android.os.Parcelable.Creator
        public StaffModel createFromParcel(Parcel parcel) {
            j32.e(parcel, "parcel");
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            String string4 = parcel.readString();
            int i = parcel.readInt();
            ArrayList arrayList = new ArrayList(i);
            int iA = 0;
            while (iA != i) {
                iA = fz0.a(VideoModel.CREATOR, parcel, arrayList, iA, 1);
            }
            return new StaffModel(string, string2, string3, string4, arrayList, parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public StaffModel[] newArray(int i) {
            return new StaffModel[i];
        }
    }

    public StaffModel() {
        this(null, null, null, null, null, null, null, 127);
    }

    public StaffModel(String str, String str2, String str3, String str4, List<VideoModel> list, String str5, String str6) {
        j32.e(str, "nb");
        j32.e(str2, "imgMediumThumbObjUrl");
        j32.e(str3, "imgObjUrl");
        j32.e(str4, "imgThumbObjUrl");
        j32.e(list, "items");
        j32.e(str5, "role");
        j32.e(str6, "title");
        this.nb = str;
        this.imgMediumThumbObjUrl = str2;
        this.imgObjUrl = str3;
        this.imgThumbObjUrl = str4;
        this.items = list;
        this.role = str5;
        this.title = str6;
    }

    public final List<VideoModel> a() {
        List<VideoModel> list = this.items;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (j32.a(((VideoModel) obj).kind, "1")) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public final List<VideoModel> b() {
        List<VideoModel> list = this.items;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (j32.a(((VideoModel) obj).kind, "2")) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StaffModel)) {
            return false;
        }
        StaffModel staffModel = (StaffModel) obj;
        return j32.a(this.nb, staffModel.nb) && j32.a(this.imgMediumThumbObjUrl, staffModel.imgMediumThumbObjUrl) && j32.a(this.imgObjUrl, staffModel.imgObjUrl) && j32.a(this.imgThumbObjUrl, staffModel.imgThumbObjUrl) && j32.a(this.items, staffModel.items) && j32.a(this.role, staffModel.role) && j32.a(this.title, staffModel.title);
    }

    public int hashCode() {
        return this.title.hashCode() + ik4.a(this.role, j60.a(this.items, ik4.a(this.imgThumbObjUrl, ik4.a(this.imgObjUrl, ik4.a(this.imgMediumThumbObjUrl, this.nb.hashCode() * 31, 31), 31), 31), 31), 31);
    }

    public String toString() {
        StringBuilder sbA = um3.a("StaffModel(nb=");
        sbA.append(this.nb);
        sbA.append(", imgMediumThumbObjUrl=");
        sbA.append(this.imgMediumThumbObjUrl);
        sbA.append(", imgObjUrl=");
        sbA.append(this.imgObjUrl);
        sbA.append(", imgThumbObjUrl=");
        sbA.append(this.imgThumbObjUrl);
        sbA.append(", items=");
        sbA.append(this.items);
        sbA.append(", role=");
        sbA.append(this.role);
        sbA.append(", title=");
        return h61.a(sbA, this.title, ')');
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        j32.e(parcel, "out");
        parcel.writeString(this.nb);
        parcel.writeString(this.imgMediumThumbObjUrl);
        parcel.writeString(this.imgObjUrl);
        parcel.writeString(this.imgThumbObjUrl);
        List<VideoModel> list = this.items;
        parcel.writeInt(list.size());
        Iterator<VideoModel> it = list.iterator();
        while (it.hasNext()) {
            it.next().writeToParcel(parcel, i);
        }
        parcel.writeString(this.role);
        parcel.writeString(this.title);
    }

    public /* synthetic */ StaffModel(String str, String str2, String str3, String str4, List list, String str5, String str6, int i) {
        this((i & 1) != 0 ? BuildConfig.FLAVOR : str, (i & 2) != 0 ? BuildConfig.FLAVOR : str2, (i & 4) != 0 ? BuildConfig.FLAVOR : str3, (i & 8) != 0 ? BuildConfig.FLAVOR : str4, (i & 16) != 0 ? w21.r : null, (i & 32) != 0 ? BuildConfig.FLAVOR : null, (i & 64) == 0 ? str6 : BuildConfig.FLAVOR);
    }
}
