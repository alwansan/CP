package com.shabakaty.cinemana.ui.home_fragment;

import android.os.Parcel;
import android.os.Parcelable;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.downloader.fz0;
import com.shabakaty.downloader.h61;
import com.shabakaty.downloader.ik4;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.nn0;
import com.shabakaty.downloader.um3;
import com.shabakaty.downloader.xh2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: ShowMoreFragment.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class ShowMorePageDataType implements Parcelable {
    public static final a Companion = new a(null);
    public final String title;

    /* JADX INFO: compiled from: ShowMoreFragment.kt */
    public static abstract class Dynamic extends ShowMorePageDataType {
        public final String id;
        public final b type;

        /* JADX INFO: compiled from: ShowMoreFragment.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\t\b\u0087\b\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003¢\u0006\u0004\b\n\u0010\u000bR\u001c\u0010\u0004\u001a\u00020\u00038\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\u0019\u0010\b\u001a\u00020\u00038\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u0005\u001a\u0004\b\t\u0010\u0007¨\u0006\f"}, d2 = {"Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic$Franchise;", "Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic;", "Landroid/os/Parcelable;", BuildConfig.FLAVOR, "title", "Ljava/lang/String;", "a", "()Ljava/lang/String;", "id", "getId", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
        public static final /* data */ class Franchise extends Dynamic {
            public static final Parcelable.Creator<Franchise> CREATOR = new a();
            public final String id;
            public final String title;

            /* JADX INFO: compiled from: ShowMoreFragment.kt */
            public static final class a implements Parcelable.Creator<Franchise> {
                @Override // android.os.Parcelable.Creator
                public Franchise createFromParcel(Parcel parcel) {
                    j32.e(parcel, "parcel");
                    return new Franchise(parcel.readString(), parcel.readString());
                }

                @Override // android.os.Parcelable.Creator
                public Franchise[] newArray(int i) {
                    return new Franchise[i];
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Franchise(String str, String str2) {
                super(str, str2, b.a.a, null);
                j32.e(str, "title");
                j32.e(str2, "id");
                this.title = str;
                this.id = str2;
            }

            @Override // com.shabakaty.cinemana.ui.home_fragment.ShowMorePageDataType
            /* JADX INFO: renamed from: a, reason: from getter */
            public String getTitle() {
                return this.title;
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Franchise)) {
                    return false;
                }
                Franchise franchise = (Franchise) obj;
                return j32.a(this.title, franchise.title) && j32.a(this.id, franchise.id);
            }

            public int hashCode() {
                return this.id.hashCode() + (this.title.hashCode() * 31);
            }

            public String toString() {
                StringBuilder sbA = um3.a("Franchise(title=");
                sbA.append(this.title);
                sbA.append(", id=");
                return h61.a(sbA, this.id, ')');
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                j32.e(parcel, "out");
                parcel.writeString(this.title);
                parcel.writeString(this.id);
            }
        }

        /* JADX INFO: compiled from: ShowMoreFragment.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0004\u001a\u00020\u00038\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\u0019\u0010\b\u001a\u00020\u00038\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u0005\u001a\u0004\b\t\u0010\u0007R\u0019\u0010\u000b\u001a\u00020\n8\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic$Group;", "Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic;", "Landroid/os/Parcelable;", BuildConfig.FLAVOR, "title", "Ljava/lang/String;", "a", "()Ljava/lang/String;", "id", "getId", BuildConfig.FLAVOR, "hasPagination", "Z", "getHasPagination", "()Z", "<init>", "(Ljava/lang/String;Ljava/lang/String;Z)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
        public static final /* data */ class Group extends Dynamic {
            public static final Parcelable.Creator<Group> CREATOR = new a();
            public final boolean hasPagination;
            public final String id;
            public final String title;

            /* JADX INFO: compiled from: ShowMoreFragment.kt */
            public static final class a implements Parcelable.Creator<Group> {
                @Override // android.os.Parcelable.Creator
                public Group createFromParcel(Parcel parcel) {
                    j32.e(parcel, "parcel");
                    return new Group(parcel.readString(), parcel.readString(), parcel.readInt() != 0);
                }

                @Override // android.os.Parcelable.Creator
                public Group[] newArray(int i) {
                    return new Group[i];
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Group(String str, String str2, boolean z) {
                super(str, str2, b.C0100b.a, null);
                j32.e(str, "title");
                j32.e(str2, "id");
                this.title = str;
                this.id = str2;
                this.hasPagination = z;
            }

            @Override // com.shabakaty.cinemana.ui.home_fragment.ShowMorePageDataType
            /* JADX INFO: renamed from: a, reason: from getter */
            public String getTitle() {
                return this.title;
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Group)) {
                    return false;
                }
                Group group = (Group) obj;
                return j32.a(this.title, group.title) && j32.a(this.id, group.id) && this.hasPagination == group.hasPagination;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v4, types: [int] */
            /* JADX WARN: Type inference failed for: r1v2, types: [int] */
            /* JADX WARN: Type inference failed for: r1v3 */
            /* JADX WARN: Type inference failed for: r1v4 */
            public int hashCode() {
                int iA = ik4.a(this.id, this.title.hashCode() * 31, 31);
                boolean z = this.hasPagination;
                int r1 = z ? 1 : 0;
                if (z) {
                    r1 = 1;
                }
                return iA + r1;
            }

            public String toString() {
                StringBuilder sbA = um3.a("Group(title=");
                sbA.append(this.title);
                sbA.append(", id=");
                sbA.append(this.id);
                sbA.append(", hasPagination=");
                return xh2.a(sbA, this.hasPagination, ')');
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                j32.e(parcel, "out");
                parcel.writeString(this.title);
                parcel.writeString(this.id);
                parcel.writeInt(this.hasPagination ? 1 : 0);
            }
        }

        public Dynamic(String str, String str2, b bVar, nn0 nn0Var) {
            super(str, bVar);
            this.id = str2;
            this.type = bVar;
        }
    }

    /* JADX INFO: compiled from: ShowMoreFragment.kt */
    public static abstract class Fixed extends ShowMorePageDataType {

        /* JADX INFO: compiled from: ShowMoreFragment.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u00012\u00020\u0002B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0004\u001a\u00020\u00038\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\u001f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Fixed$VideosList;", "Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Fixed;", "Landroid/os/Parcelable;", BuildConfig.FLAVOR, "title", "Ljava/lang/String;", "a", "()Ljava/lang/String;", BuildConfig.FLAVOR, "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;", "videos", "Ljava/util/List;", "getVideos", "()Ljava/util/List;", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
        public static final /* data */ class VideosList extends Fixed {
            public static final Parcelable.Creator<VideosList> CREATOR = new a();
            public final String title;
            public final List<VideoModel> videos;

            /* JADX INFO: compiled from: ShowMoreFragment.kt */
            public static final class a implements Parcelable.Creator<VideosList> {
                @Override // android.os.Parcelable.Creator
                public VideosList createFromParcel(Parcel parcel) {
                    j32.e(parcel, "parcel");
                    String string = parcel.readString();
                    int i = parcel.readInt();
                    ArrayList arrayList = new ArrayList(i);
                    int iA = 0;
                    while (iA != i) {
                        iA = fz0.a(VideoModel.CREATOR, parcel, arrayList, iA, 1);
                    }
                    return new VideosList(string, arrayList);
                }

                @Override // android.os.Parcelable.Creator
                public VideosList[] newArray(int i) {
                    return new VideosList[i];
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public VideosList(String str, List<VideoModel> list) {
                super(str, list, b.c.a);
                j32.e(str, "title");
                this.title = str;
                this.videos = list;
            }

            @Override // com.shabakaty.cinemana.ui.home_fragment.ShowMorePageDataType
            /* JADX INFO: renamed from: a, reason: from getter */
            public String getTitle() {
                return this.title;
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof VideosList)) {
                    return false;
                }
                VideosList videosList = (VideosList) obj;
                return j32.a(this.title, videosList.title) && j32.a(this.videos, videosList.videos);
            }

            public int hashCode() {
                return this.videos.hashCode() + (this.title.hashCode() * 31);
            }

            public String toString() {
                StringBuilder sbA = um3.a("VideosList(title=");
                sbA.append(this.title);
                sbA.append(", videos=");
                sbA.append(this.videos);
                sbA.append(')');
                return sbA.toString();
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                j32.e(parcel, "out");
                parcel.writeString(this.title);
                List<VideoModel> list = this.videos;
                parcel.writeInt(list.size());
                Iterator<VideoModel> it = list.iterator();
                while (it.hasNext()) {
                    it.next().writeToParcel(parcel, i);
                }
            }
        }

        public Fixed(String str, List list, b bVar) {
            super(str, bVar);
        }
    }

    /* JADX INFO: compiled from: ShowMoreFragment.kt */
    public static final class a {
        public a(nn0 nn0Var) {
        }
    }

    /* JADX INFO: compiled from: ShowMoreFragment.kt */
    public static abstract class b {

        /* JADX INFO: compiled from: ShowMoreFragment.kt */
        public static final class a extends b {
            public static final a a = new a();

            public a() {
                super(1);
            }
        }

        /* JADX INFO: renamed from: com.shabakaty.cinemana.ui.home_fragment.ShowMorePageDataType$b$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: ShowMoreFragment.kt */
        public static final class C0100b extends b {
            public static final C0100b a = new C0100b();

            public C0100b() {
                super(0);
            }
        }

        /* JADX INFO: compiled from: ShowMoreFragment.kt */
        public static final class c extends b {
            public static final c a = new c();

            public c() {
                super(2);
            }
        }

        public b(int i) {
        }
    }

    public ShowMorePageDataType(String str, b bVar) {
        this.title = str;
    }

    /* JADX INFO: renamed from: a */
    public String getTitle() {
        return this.title;
    }
}
