package com.shabakaty.cinemana.domain.models.local.home_page;

import android.os.Parcel;
import android.os.Parcelable;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.downloader.fz0;
import com.shabakaty.downloader.ik4;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.q12;
import com.shabakaty.downloader.um3;
import com.shabakaty.downloader.w21;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: HomeGroupsLocal.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\t\b\u0087\b\u0018\u00002\u00020\u0001B5\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\u0011\u001a\u00020\n\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u001b\u0010\u001cR(\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\f\u001a\u0004\b\u0012\u0010\u000e\"\u0004\b\u0013\u0010\u0010R\"\u0010\u0015\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006\u001d"}, d2 = {"Lcom/shabakaty/cinemana/domain/models/local/home_page/VideosGroup;", "Landroid/os/Parcelable;", BuildConfig.FLAVOR, "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;", "videosList", "Ljava/util/List;", "getVideosList", "()Ljava/util/List;", "setVideosList", "(Ljava/util/List;)V", BuildConfig.FLAVOR, "title", "Ljava/lang/String;", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "groupsID", "getGroupsID", "setGroupsID", BuildConfig.FLAVOR, "hasPagination", "I", "getHasPagination", "()I", "setHasPagination", "(I)V", "<init>", "(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final /* data */ class VideosGroup implements Parcelable {
    public static final Parcelable.Creator<VideosGroup> CREATOR = new a();
    public String groupsID;
    public int hasPagination;
    public String title;
    public List<VideoModel> videosList;

    /* JADX INFO: compiled from: HomeGroupsLocal.kt */
    public static final class a implements Parcelable.Creator<VideosGroup> {
        @Override // android.os.Parcelable.Creator
        public VideosGroup createFromParcel(Parcel parcel) {
            j32.e(parcel, "parcel");
            int i = parcel.readInt();
            ArrayList arrayList = new ArrayList(i);
            int iA = 0;
            while (iA != i) {
                iA = fz0.a(VideoModel.CREATOR, parcel, arrayList, iA, 1);
            }
            return new VideosGroup(arrayList, parcel.readString(), parcel.readString(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public VideosGroup[] newArray(int i) {
            return new VideosGroup[i];
        }
    }

    public VideosGroup(List<VideoModel> list, String str, String str2, int i) {
        j32.e(list, "videosList");
        j32.e(str, "title");
        j32.e(str2, "groupsID");
        this.videosList = list;
        this.title = str;
        this.groupsID = str2;
        this.hasPagination = i;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof VideosGroup)) {
            return super.equals(obj);
        }
        VideosGroup videosGroup = (VideosGroup) obj;
        return j32.a(this.videosList, videosGroup.videosList) && j32.a(this.title, videosGroup.title) && j32.a(this.groupsID, videosGroup.groupsID) && this.hasPagination == videosGroup.hasPagination;
    }

    public int hashCode() {
        return ik4.a(this.groupsID, ik4.a(this.title, this.videosList.hashCode() * 31, 31), 31) + this.hasPagination;
    }

    public String toString() {
        StringBuilder sbA = um3.a("VideosGroup(videosList=");
        sbA.append(this.videosList);
        sbA.append(", title=");
        sbA.append(this.title);
        sbA.append(", groupsID=");
        sbA.append(this.groupsID);
        sbA.append(", hasPagination=");
        return q12.a(sbA, this.hasPagination, ')');
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        j32.e(parcel, "out");
        List<VideoModel> list = this.videosList;
        parcel.writeInt(list.size());
        Iterator<VideoModel> it = list.iterator();
        while (it.hasNext()) {
            it.next().writeToParcel(parcel, i);
        }
        parcel.writeString(this.title);
        parcel.writeString(this.groupsID);
        parcel.writeInt(this.hasPagination);
    }

    public VideosGroup() {
        this(w21.r, BuildConfig.FLAVOR, BuildConfig.FLAVOR, 0);
    }
}
