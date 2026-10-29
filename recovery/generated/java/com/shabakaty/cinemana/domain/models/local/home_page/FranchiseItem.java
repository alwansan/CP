package com.shabakaty.cinemana.domain.models.local.home_page;

import android.os.Parcel;
import android.os.Parcelable;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.downloader.fz0;
import com.shabakaty.downloader.h61;
import com.shabakaty.downloader.ik4;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.um3;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: FranchiseItemLocal.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u001b\b\u0087\b\u0018\u00002\u00020\u0001B]\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\u0011\u001a\u00020\n\u0012\b\b\u0002\u0010\u0014\u001a\u00020\n\u0012\b\b\u0002\u0010\u0017\u001a\u00020\n\u0012\b\b\u0002\u0010\u001a\u001a\u00020\n\u0012\b\b\u0002\u0010\u001d\u001a\u00020\n\u0012\b\b\u0002\u0010 \u001a\u00020\n¢\u0006\u0004\b#\u0010$R(\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\f\u001a\u0004\b\u0012\u0010\u000e\"\u0004\b\u0013\u0010\u0010R\"\u0010\u0014\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\f\u001a\u0004\b\u0015\u0010\u000e\"\u0004\b\u0016\u0010\u0010R\"\u0010\u0017\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\f\u001a\u0004\b\u0018\u0010\u000e\"\u0004\b\u0019\u0010\u0010R\"\u0010\u001a\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\f\u001a\u0004\b\u001b\u0010\u000e\"\u0004\b\u001c\u0010\u0010R\"\u0010\u001d\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\f\u001a\u0004\b\u001e\u0010\u000e\"\u0004\b\u001f\u0010\u0010R\"\u0010 \u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010\f\u001a\u0004\b!\u0010\u000e\"\u0004\b\"\u0010\u0010¨\u0006%"}, d2 = {"Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;", "Landroid/os/Parcelable;", BuildConfig.FLAVOR, "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;", "content", "Ljava/util/List;", "getContent", "()Ljava/util/List;", "setContent", "(Ljava/util/List;)V", BuildConfig.FLAVOR, "groupsID", "Ljava/lang/String;", "getGroupsID", "()Ljava/lang/String;", "setGroupsID", "(Ljava/lang/String;)V", "imgMediumThumbObjUrl", "getImgMediumThumbObjUrl", "setImgMediumThumbObjUrl", "imgObjUrl", "getImgObjUrl", "setImgObjUrl", "imgThumbObjUrl", "getImgThumbObjUrl", "setImgThumbObjUrl", "title", "getTitle", "setTitle", "displayName", "getDisplayName", "setDisplayName", "id", "getId", "setId", "<init>", "(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final /* data */ class FranchiseItem implements Parcelable {
    public static final Parcelable.Creator<FranchiseItem> CREATOR = new a();
    public List<VideoModel> content;
    public String displayName;
    public String groupsID;
    public String id;
    public String imgMediumThumbObjUrl;
    public String imgObjUrl;
    public String imgThumbObjUrl;
    public String title;

    /* JADX INFO: compiled from: FranchiseItemLocal.kt */
    public static final class a implements Parcelable.Creator<FranchiseItem> {
        @Override // android.os.Parcelable.Creator
        public FranchiseItem createFromParcel(Parcel parcel) {
            j32.e(parcel, "parcel");
            int i = parcel.readInt();
            ArrayList arrayList = new ArrayList(i);
            int iA = 0;
            while (iA != i) {
                iA = fz0.a(VideoModel.CREATOR, parcel, arrayList, iA, 1);
            }
            return new FranchiseItem(arrayList, parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public FranchiseItem[] newArray(int i) {
            return new FranchiseItem[i];
        }
    }

    public FranchiseItem(List<VideoModel> list, String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        j32.e(list, "content");
        j32.e(str, "groupsID");
        j32.e(str2, "imgMediumThumbObjUrl");
        j32.e(str3, "imgObjUrl");
        j32.e(str4, "imgThumbObjUrl");
        j32.e(str5, "title");
        j32.e(str6, "displayName");
        j32.e(str7, "id");
        this.content = list;
        this.groupsID = str;
        this.imgMediumThumbObjUrl = str2;
        this.imgObjUrl = str3;
        this.imgThumbObjUrl = str4;
        this.title = str5;
        this.displayName = str6;
        this.id = str7;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof FranchiseItem)) {
            return super.equals(obj);
        }
        FranchiseItem franchiseItem = (FranchiseItem) obj;
        return j32.a(this.content, franchiseItem.content) && j32.a(this.groupsID, franchiseItem.groupsID) && j32.a(this.title, franchiseItem.title) && j32.a(this.displayName, franchiseItem.displayName) && j32.a(this.id, franchiseItem.id);
    }

    public int hashCode() {
        return this.id.hashCode() + ik4.a(this.displayName, ik4.a(this.title, ik4.a(this.imgThumbObjUrl, ik4.a(this.imgObjUrl, ik4.a(this.imgMediumThumbObjUrl, ik4.a(this.groupsID, this.content.hashCode() * 31, 31), 31), 31), 31), 31), 31);
    }

    public String toString() {
        StringBuilder sbA = um3.a("FranchiseItem(content=");
        sbA.append(this.content);
        sbA.append(", groupsID=");
        sbA.append(this.groupsID);
        sbA.append(", imgMediumThumbObjUrl=");
        sbA.append(this.imgMediumThumbObjUrl);
        sbA.append(", imgObjUrl=");
        sbA.append(this.imgObjUrl);
        sbA.append(", imgThumbObjUrl=");
        sbA.append(this.imgThumbObjUrl);
        sbA.append(", title=");
        sbA.append(this.title);
        sbA.append(", displayName=");
        sbA.append(this.displayName);
        sbA.append(", id=");
        return h61.a(sbA, this.id, ')');
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        j32.e(parcel, "out");
        List<VideoModel> list = this.content;
        parcel.writeInt(list.size());
        Iterator<VideoModel> it = list.iterator();
        while (it.hasNext()) {
            it.next().writeToParcel(parcel, i);
        }
        parcel.writeString(this.groupsID);
        parcel.writeString(this.imgMediumThumbObjUrl);
        parcel.writeString(this.imgObjUrl);
        parcel.writeString(this.imgThumbObjUrl);
        parcel.writeString(this.title);
        parcel.writeString(this.displayName);
        parcel.writeString(this.id);
    }

    public FranchiseItem() {
        this(new ArrayList(), BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR);
    }
}
