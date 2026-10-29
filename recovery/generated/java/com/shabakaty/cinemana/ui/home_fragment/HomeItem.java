package com.shabakaty.cinemana.ui.home_fragment;

import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.domain.models.local.home_page.FranchiseItem;
import com.shabakaty.cinemana.domain.models.local.home_page.VideosGroup;
import com.shabakaty.downloader.h61;
import com.shabakaty.downloader.ik4;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.nn0;
import com.shabakaty.downloader.q12;
import com.shabakaty.downloader.um3;
import com.shabakaty.downloader.w21;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: HomePageViewModel.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class HomeItem {
    public String id;
    public String title;
    public List<VideoModel> videos;

    /* JADX INFO: compiled from: HomePageViewModel.kt */
    public static abstract class Ad extends HomeItem {
        public String beaconURL;
        public String content;
        public String description;
        public b type;
        public String url;

        /* JADX INFO: compiled from: HomePageViewModel.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0012\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0002¢\u0006\u0004\b\u0012\u0010\u0013R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR$\u0010\f\u001a\u0004\u0018\u00010\u00028\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0004\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\"\u0010\u000f\u001a\u00020\u00028\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0004\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\b¨\u0006\u0014"}, d2 = {"Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad$Image;", "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad;", BuildConfig.FLAVOR, "image", "Ljava/lang/String;", "getImage", "()Ljava/lang/String;", "setImage", "(Ljava/lang/String;)V", "url", "getUrl", "setUrl", "beaconURL", "getBeaconURL", "setBeaconURL", "description", "getDescription", "setDescription", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
        public static final /* data */ class Image extends Ad {
            public String beaconURL;
            public String description;
            public String image;
            public String url;

            public Image() {
                this(BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Image)) {
                    return false;
                }
                Image image = (Image) obj;
                return j32.a(this.image, image.image) && j32.a(this.url, image.url) && j32.a(this.beaconURL, image.beaconURL) && j32.a(this.description, image.description);
            }

            public int hashCode() {
                int iA = ik4.a(this.url, this.image.hashCode() * 31, 31);
                String str = this.beaconURL;
                return this.description.hashCode() + ((iA + (str == null ? 0 : str.hashCode())) * 31);
            }

            public String toString() {
                StringBuilder sbA = um3.a("Image(image=");
                sbA.append(this.image);
                sbA.append(", url=");
                sbA.append(this.url);
                sbA.append(", beaconURL=");
                sbA.append((Object) this.beaconURL);
                sbA.append(", description=");
                return h61.a(sbA, this.description, ')');
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Image(String str, String str2, String str3, String str4) {
                super(str, null, null, null, b.C0099b.a, 14);
                j32.e(str, "image");
                j32.e(str2, "url");
                j32.e(str4, "description");
                this.image = str;
                this.url = str2;
                this.beaconURL = str3;
                this.description = str4;
            }
        }

        /* JADX INFO: compiled from: HomePageViewModel.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0012\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0002¢\u0006\u0004\b\u0012\u0010\u0013R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR$\u0010\f\u001a\u0004\u0018\u00010\u00028\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0004\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\"\u0010\u000f\u001a\u00020\u00028\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0004\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\b¨\u0006\u0014"}, d2 = {"Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad$Video;", "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad;", BuildConfig.FLAVOR, "video", "Ljava/lang/String;", "getVideo", "()Ljava/lang/String;", "setVideo", "(Ljava/lang/String;)V", "url", "getUrl", "setUrl", "beaconURL", "getBeaconURL", "setBeaconURL", "description", "getDescription", "setDescription", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
        public static final /* data */ class Video extends Ad {
            public String beaconURL;
            public String description;
            public String url;
            public String video;

            public Video() {
                this(BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Video)) {
                    return false;
                }
                Video video = (Video) obj;
                return j32.a(this.video, video.video) && j32.a(this.url, video.url) && j32.a(this.beaconURL, video.beaconURL) && j32.a(this.description, video.description);
            }

            public int hashCode() {
                int iA = ik4.a(this.url, this.video.hashCode() * 31, 31);
                String str = this.beaconURL;
                return this.description.hashCode() + ((iA + (str == null ? 0 : str.hashCode())) * 31);
            }

            public String toString() {
                StringBuilder sbA = um3.a("Video(video=");
                sbA.append(this.video);
                sbA.append(", url=");
                sbA.append(this.url);
                sbA.append(", beaconURL=");
                sbA.append((Object) this.beaconURL);
                sbA.append(", description=");
                return h61.a(sbA, this.description, ')');
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Video(String str, String str2, String str3, String str4) {
                super(str, null, null, null, b.c.a, 14);
                j32.e(str, "video");
                j32.e(str2, "url");
                j32.e(str4, "description");
                this.video = str;
                this.url = str2;
                this.beaconURL = str3;
                this.description = str4;
            }
        }

        /* JADX INFO: compiled from: HomePageViewModel.kt */
        public static final class a extends Ad {
            public static final a a = new a();

            public a() {
                super(null, null, null, null, null, 31);
            }
        }

        /* JADX INFO: compiled from: HomePageViewModel.kt */
        public static abstract class b {

            /* JADX INFO: compiled from: HomePageViewModel.kt */
            public static final class a extends b {
                public static final a a = new a();

                public a() {
                    super(null);
                }
            }

            /* JADX INFO: renamed from: com.shabakaty.cinemana.ui.home_fragment.HomeItem$Ad$b$b, reason: collision with other inner class name */
            /* JADX INFO: compiled from: HomePageViewModel.kt */
            public static final class C0099b extends b {
                public static final C0099b a = new C0099b();

                public C0099b() {
                    super(null);
                }
            }

            /* JADX INFO: compiled from: HomePageViewModel.kt */
            public static final class c extends b {
                public static final c a = new c();

                public c() {
                    super(null);
                }
            }

            public b(nn0 nn0Var) {
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Ad(String str, String str2, String str3, String str4, b bVar, int i) {
            super(null, null, null, 7);
            int i2 = i & 1;
            String str5 = BuildConfig.FLAVOR;
            str = i2 != 0 ? BuildConfig.FLAVOR : str;
            String str6 = (i & 2) != 0 ? BuildConfig.FLAVOR : null;
            String str7 = (i & 4) != 0 ? BuildConfig.FLAVOR : null;
            str5 = (i & 8) == 0 ? null : str5;
            bVar = (i & 16) != 0 ? b.a.a : bVar;
            this.content = str;
            this.url = str6;
            this.beaconURL = str7;
            this.description = str5;
            this.type = bVar;
        }
    }

    /* JADX INFO: compiled from: HomePageViewModel.kt */
    public static abstract class Horizontal extends HomeItem {
        public int hasPagination;
        public String id;
        public String title;
        public List<VideoModel> videos;

        /* JADX INFO: compiled from: HomePageViewModel.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001R(\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR$\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0011\u001a\u00020\n8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\f\u001a\u0004\b\u0012\u0010\u000e\"\u0004\b\u0013\u0010\u0010R\"\u0010\u0015\u001a\u00020\u00148\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006\u001b"}, d2 = {"Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$RecentlyAdded;", "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal;", BuildConfig.FLAVOR, "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;", "videos", "Ljava/util/List;", "c", "()Ljava/util/List;", "d", "(Ljava/util/List;)V", BuildConfig.FLAVOR, "title", "Ljava/lang/String;", "b", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "id", "a", "setId", BuildConfig.FLAVOR, "hasPagination", "I", "e", "()I", "setHasPagination", "(I)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
        public static final /* data */ class RecentlyAdded extends Horizontal {
            public int hasPagination;
            public String id;
            public String title;
            public List<VideoModel> videos;

            public RecentlyAdded() {
                this(null, null, null, 0, 15);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public RecentlyAdded(List list, String str, String str2, int i, int i2) {
                super(null, null, null, 0, 15);
                list = (i2 & 1) != 0 ? w21.r : list;
                str = (i2 & 2) != 0 ? BuildConfig.FLAVOR : str;
                String str3 = (i2 & 4) != 0 ? "-1" : null;
                i = (i2 & 8) != 0 ? 0 : i;
                j32.e(list, "videos");
                j32.e(str3, "id");
                this.videos = list;
                this.title = str;
                this.id = str3;
                this.hasPagination = i;
            }

            @Override // com.shabakaty.cinemana.ui.home_fragment.HomeItem.Horizontal, com.shabakaty.cinemana.ui.home_fragment.HomeItem
            /* JADX INFO: renamed from: a, reason: from getter */
            public String getId() {
                return this.id;
            }

            @Override // com.shabakaty.cinemana.ui.home_fragment.HomeItem.Horizontal, com.shabakaty.cinemana.ui.home_fragment.HomeItem
            /* JADX INFO: renamed from: b, reason: from getter */
            public String getTitle() {
                return this.title;
            }

            @Override // com.shabakaty.cinemana.ui.home_fragment.HomeItem.Horizontal, com.shabakaty.cinemana.ui.home_fragment.HomeItem
            public List<VideoModel> c() {
                return this.videos;
            }

            @Override // com.shabakaty.cinemana.ui.home_fragment.HomeItem.Horizontal, com.shabakaty.cinemana.ui.home_fragment.HomeItem
            public void d(List<VideoModel> list) {
                this.videos = list;
            }

            @Override // com.shabakaty.cinemana.ui.home_fragment.HomeItem.Horizontal
            /* JADX INFO: renamed from: e, reason: from getter */
            public int getHasPagination() {
                return this.hasPagination;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof RecentlyAdded)) {
                    return false;
                }
                RecentlyAdded recentlyAdded = (RecentlyAdded) obj;
                return j32.a(this.videos, recentlyAdded.videos) && j32.a(this.title, recentlyAdded.title) && j32.a(this.id, recentlyAdded.id) && this.hasPagination == recentlyAdded.hasPagination;
            }

            public int hashCode() {
                int iHashCode = this.videos.hashCode() * 31;
                String str = this.title;
                return ik4.a(this.id, (iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31) + this.hasPagination;
            }

            public String toString() {
                StringBuilder sbA = um3.a("RecentlyAdded(videos=");
                sbA.append(this.videos);
                sbA.append(", title=");
                sbA.append((Object) this.title);
                sbA.append(", id=");
                sbA.append(this.id);
                sbA.append(", hasPagination=");
                return q12.a(sbA, this.hasPagination, ')');
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Horizontal(List list, String str, String str2, int i, int i2) {
            super(null, null, null, 7);
            w21 w21Var = (i2 & 1) != 0 ? w21.r : null;
            String str3 = (i2 & 2) != 0 ? BuildConfig.FLAVOR : null;
            String str4 = (i2 & 4) != 0 ? "-1" : null;
            i = (i2 & 8) != 0 ? 0 : i;
            this.videos = w21Var;
            this.title = str3;
            this.id = str4;
            this.hasPagination = i;
        }

        @Override // com.shabakaty.cinemana.ui.home_fragment.HomeItem
        /* JADX INFO: renamed from: a */
        public String getId() {
            return this.id;
        }

        @Override // com.shabakaty.cinemana.ui.home_fragment.HomeItem
        /* JADX INFO: renamed from: b */
        public String getTitle() {
            return this.title;
        }

        @Override // com.shabakaty.cinemana.ui.home_fragment.HomeItem
        public List<VideoModel> c() {
            return this.videos;
        }

        @Override // com.shabakaty.cinemana.ui.home_fragment.HomeItem
        public void d(List<VideoModel> list) {
            this.videos = list;
        }

        /* JADX INFO: renamed from: e */
        public int getHasPagination() {
            return this.hasPagination;
        }

        /* JADX INFO: compiled from: HomePageViewModel.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\t\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\u0011\u001a\u00020\n\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u001b\u0010\u001cR(\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR$\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0011\u001a\u00020\n8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\f\u001a\u0004\b\u0012\u0010\u000e\"\u0004\b\u0013\u0010\u0010R\"\u0010\u0015\u001a\u00020\u00148\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006\u001d"}, d2 = {"Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$FeaturedMovies;", "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal;", BuildConfig.FLAVOR, "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;", "videos", "Ljava/util/List;", "c", "()Ljava/util/List;", "d", "(Ljava/util/List;)V", BuildConfig.FLAVOR, "title", "Ljava/lang/String;", "b", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "id", "a", "setId", BuildConfig.FLAVOR, "hasPagination", "I", "e", "()I", "setHasPagination", "(I)V", "<init>", "(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
        public static final /* data */ class FeaturedMovies extends Horizontal {
            public int hasPagination;
            public String id;
            public String title;
            public List<VideoModel> videos;

            public FeaturedMovies() {
                this(w21.r, BuildConfig.FLAVOR, "-1", 0);
            }

            @Override // com.shabakaty.cinemana.ui.home_fragment.HomeItem.Horizontal, com.shabakaty.cinemana.ui.home_fragment.HomeItem
            /* JADX INFO: renamed from: a, reason: from getter */
            public String getId() {
                return this.id;
            }

            @Override // com.shabakaty.cinemana.ui.home_fragment.HomeItem.Horizontal, com.shabakaty.cinemana.ui.home_fragment.HomeItem
            /* JADX INFO: renamed from: b, reason: from getter */
            public String getTitle() {
                return this.title;
            }

            @Override // com.shabakaty.cinemana.ui.home_fragment.HomeItem.Horizontal, com.shabakaty.cinemana.ui.home_fragment.HomeItem
            public List<VideoModel> c() {
                return this.videos;
            }

            @Override // com.shabakaty.cinemana.ui.home_fragment.HomeItem.Horizontal, com.shabakaty.cinemana.ui.home_fragment.HomeItem
            public void d(List<VideoModel> list) {
                this.videos = list;
            }

            @Override // com.shabakaty.cinemana.ui.home_fragment.HomeItem.Horizontal
            /* JADX INFO: renamed from: e, reason: from getter */
            public int getHasPagination() {
                return this.hasPagination;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof FeaturedMovies)) {
                    return false;
                }
                FeaturedMovies featuredMovies = (FeaturedMovies) obj;
                return j32.a(this.videos, featuredMovies.videos) && j32.a(this.title, featuredMovies.title) && j32.a(this.id, featuredMovies.id) && this.hasPagination == featuredMovies.hasPagination;
            }

            public int hashCode() {
                int iHashCode = this.videos.hashCode() * 31;
                String str = this.title;
                return ik4.a(this.id, (iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31) + this.hasPagination;
            }

            public String toString() {
                StringBuilder sbA = um3.a("FeaturedMovies(videos=");
                sbA.append(this.videos);
                sbA.append(", title=");
                sbA.append((Object) this.title);
                sbA.append(", id=");
                sbA.append(this.id);
                sbA.append(", hasPagination=");
                return q12.a(sbA, this.hasPagination, ')');
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public FeaturedMovies(List<VideoModel> list, String str, String str2, int i) {
                super(null, null, null, 0, 15);
                j32.e(list, "videos");
                j32.e(str2, "id");
                this.videos = list;
                this.title = str;
                this.id = str2;
                this.hasPagination = i;
            }
        }

        /* JADX INFO: compiled from: HomePageViewModel.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\t\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\u0011\u001a\u00020\n\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u001b\u0010\u001cR(\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR$\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0011\u001a\u00020\n8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\f\u001a\u0004\b\u0012\u0010\u000e\"\u0004\b\u0013\u0010\u0010R\"\u0010\u0015\u001a\u00020\u00148\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006\u001d"}, d2 = {"Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$FeaturedTvShows;", "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal;", BuildConfig.FLAVOR, "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;", "videos", "Ljava/util/List;", "c", "()Ljava/util/List;", "d", "(Ljava/util/List;)V", BuildConfig.FLAVOR, "title", "Ljava/lang/String;", "b", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "id", "a", "setId", BuildConfig.FLAVOR, "hasPagination", "I", "e", "()I", "setHasPagination", "(I)V", "<init>", "(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
        public static final /* data */ class FeaturedTvShows extends Horizontal {
            public int hasPagination;
            public String id;
            public String title;
            public List<VideoModel> videos;

            public FeaturedTvShows() {
                this(w21.r, BuildConfig.FLAVOR, "-1", 0);
            }

            @Override // com.shabakaty.cinemana.ui.home_fragment.HomeItem.Horizontal, com.shabakaty.cinemana.ui.home_fragment.HomeItem
            /* JADX INFO: renamed from: a, reason: from getter */
            public String getId() {
                return this.id;
            }

            @Override // com.shabakaty.cinemana.ui.home_fragment.HomeItem.Horizontal, com.shabakaty.cinemana.ui.home_fragment.HomeItem
            /* JADX INFO: renamed from: b, reason: from getter */
            public String getTitle() {
                return this.title;
            }

            @Override // com.shabakaty.cinemana.ui.home_fragment.HomeItem.Horizontal, com.shabakaty.cinemana.ui.home_fragment.HomeItem
            public List<VideoModel> c() {
                return this.videos;
            }

            @Override // com.shabakaty.cinemana.ui.home_fragment.HomeItem.Horizontal, com.shabakaty.cinemana.ui.home_fragment.HomeItem
            public void d(List<VideoModel> list) {
                this.videos = list;
            }

            @Override // com.shabakaty.cinemana.ui.home_fragment.HomeItem.Horizontal
            /* JADX INFO: renamed from: e, reason: from getter */
            public int getHasPagination() {
                return this.hasPagination;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof FeaturedTvShows)) {
                    return false;
                }
                FeaturedTvShows featuredTvShows = (FeaturedTvShows) obj;
                return j32.a(this.videos, featuredTvShows.videos) && j32.a(this.title, featuredTvShows.title) && j32.a(this.id, featuredTvShows.id) && this.hasPagination == featuredTvShows.hasPagination;
            }

            public int hashCode() {
                int iHashCode = this.videos.hashCode() * 31;
                String str = this.title;
                return ik4.a(this.id, (iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31) + this.hasPagination;
            }

            public String toString() {
                StringBuilder sbA = um3.a("FeaturedTvShows(videos=");
                sbA.append(this.videos);
                sbA.append(", title=");
                sbA.append((Object) this.title);
                sbA.append(", id=");
                sbA.append(this.id);
                sbA.append(", hasPagination=");
                return q12.a(sbA, this.hasPagination, ')');
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public FeaturedTvShows(List<VideoModel> list, String str, String str2, int i) {
                super(null, null, null, 0, 15);
                j32.e(list, "videos");
                j32.e(str2, "id");
                this.videos = list;
                this.title = str;
                this.id = str2;
                this.hasPagination = i;
            }
        }

        /* JADX INFO: compiled from: HomePageViewModel.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\t\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\u0011\u001a\u00020\n\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u001b\u0010\u001cR(\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR$\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0011\u001a\u00020\n8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\f\u001a\u0004\b\u0012\u0010\u000e\"\u0004\b\u0013\u0010\u0010R\"\u0010\u0015\u001a\u00020\u00148\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006\u001d"}, d2 = {"Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$SecondGroupsSlice;", "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal;", BuildConfig.FLAVOR, "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;", "videos", "Ljava/util/List;", "c", "()Ljava/util/List;", "d", "(Ljava/util/List;)V", BuildConfig.FLAVOR, "title", "Ljava/lang/String;", "b", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "id", "a", "setId", BuildConfig.FLAVOR, "hasPagination", "I", "e", "()I", "setHasPagination", "(I)V", "<init>", "(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
        public static final /* data */ class SecondGroupsSlice extends Horizontal {
            public int hasPagination;
            public String id;
            public String title;
            public List<VideoModel> videos;

            public SecondGroupsSlice() {
                this(w21.r, BuildConfig.FLAVOR, "-1", 0);
            }

            @Override // com.shabakaty.cinemana.ui.home_fragment.HomeItem.Horizontal, com.shabakaty.cinemana.ui.home_fragment.HomeItem
            /* JADX INFO: renamed from: a, reason: from getter */
            public String getId() {
                return this.id;
            }

            @Override // com.shabakaty.cinemana.ui.home_fragment.HomeItem.Horizontal, com.shabakaty.cinemana.ui.home_fragment.HomeItem
            /* JADX INFO: renamed from: b, reason: from getter */
            public String getTitle() {
                return this.title;
            }

            @Override // com.shabakaty.cinemana.ui.home_fragment.HomeItem.Horizontal, com.shabakaty.cinemana.ui.home_fragment.HomeItem
            public List<VideoModel> c() {
                return this.videos;
            }

            @Override // com.shabakaty.cinemana.ui.home_fragment.HomeItem.Horizontal, com.shabakaty.cinemana.ui.home_fragment.HomeItem
            public void d(List<VideoModel> list) {
                this.videos = list;
            }

            @Override // com.shabakaty.cinemana.ui.home_fragment.HomeItem.Horizontal
            /* JADX INFO: renamed from: e, reason: from getter */
            public int getHasPagination() {
                return this.hasPagination;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof SecondGroupsSlice)) {
                    return false;
                }
                SecondGroupsSlice secondGroupsSlice = (SecondGroupsSlice) obj;
                return j32.a(this.videos, secondGroupsSlice.videos) && j32.a(this.title, secondGroupsSlice.title) && j32.a(this.id, secondGroupsSlice.id) && this.hasPagination == secondGroupsSlice.hasPagination;
            }

            public int hashCode() {
                int iHashCode = this.videos.hashCode() * 31;
                String str = this.title;
                return ik4.a(this.id, (iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31) + this.hasPagination;
            }

            public String toString() {
                StringBuilder sbA = um3.a("SecondGroupsSlice(videos=");
                sbA.append(this.videos);
                sbA.append(", title=");
                sbA.append((Object) this.title);
                sbA.append(", id=");
                sbA.append(this.id);
                sbA.append(", hasPagination=");
                return q12.a(sbA, this.hasPagination, ')');
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public SecondGroupsSlice(List<VideoModel> list, String str, String str2, int i) {
                super(null, null, null, 0, 15);
                j32.e(list, "videos");
                j32.e(str2, "id");
                this.videos = list;
                this.title = str;
                this.id = str2;
                this.hasPagination = i;
            }
        }
    }

    /* JADX INFO: compiled from: HomePageViewModel.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001R(\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR$\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Slider;", "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;", BuildConfig.FLAVOR, "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;", "videos", "Ljava/util/List;", "c", "()Ljava/util/List;", "d", "(Ljava/util/List;)V", BuildConfig.FLAVOR, "title", "Ljava/lang/String;", "b", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
    public static final /* data */ class Slider extends HomeItem {
        public String title;
        public List<VideoModel> videos;

        public Slider() {
            this(null, null, 3);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Slider(List list, String str, int i) {
            super(null, null, null, 7);
            list = (i & 1) != 0 ? w21.r : list;
            j32.e(list, "videos");
            this.videos = list;
            this.title = null;
        }

        @Override // com.shabakaty.cinemana.ui.home_fragment.HomeItem
        /* JADX INFO: renamed from: b, reason: from getter */
        public String getTitle() {
            return this.title;
        }

        @Override // com.shabakaty.cinemana.ui.home_fragment.HomeItem
        public List<VideoModel> c() {
            return this.videos;
        }

        @Override // com.shabakaty.cinemana.ui.home_fragment.HomeItem
        public void d(List<VideoModel> list) {
            this.videos = list;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Slider)) {
                return false;
            }
            Slider slider = (Slider) obj;
            return j32.a(this.videos, slider.videos) && j32.a(this.title, slider.title);
        }

        public int hashCode() {
            int iHashCode = this.videos.hashCode() * 31;
            String str = this.title;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public String toString() {
            StringBuilder sbA = um3.a("Slider(videos=");
            sbA.append(this.videos);
            sbA.append(", title=");
            sbA.append((Object) this.title);
            sbA.append(')');
            return sbA.toString();
        }
    }

    public HomeItem(List list, String str, String str2, int i) {
        w21 w21Var = (i & 1) != 0 ? w21.r : null;
        String str3 = (i & 4) != 0 ? "-1" : null;
        this.videos = w21Var;
        this.title = null;
        this.id = str3;
    }

    /* JADX INFO: renamed from: a */
    public String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: b */
    public String getTitle() {
        return this.title;
    }

    public List<VideoModel> c() {
        return this.videos;
    }

    public void d(List<VideoModel> list) {
        this.videos = list;
    }

    /* JADX INFO: compiled from: HomePageViewModel.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\n\u0010\tR(\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$BottomGroups;", "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;", BuildConfig.FLAVOR, "Lcom/shabakaty/cinemana/domain/models/local/home_page/VideosGroup;", "groups", "Ljava/util/List;", "getGroups", "()Ljava/util/List;", "setGroups", "(Ljava/util/List;)V", "<init>", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
    public static final /* data */ class BottomGroups extends HomeItem {
        public List<VideosGroup> groups;

        public BottomGroups() {
            ArrayList arrayList = new ArrayList();
            j32.e(arrayList, "groups");
            super(null, null, null, 7);
            this.groups = arrayList;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof BottomGroups) && j32.a(this.groups, ((BottomGroups) obj).groups);
        }

        public int hashCode() {
            return this.groups.hashCode();
        }

        public String toString() {
            StringBuilder sbA = um3.a("BottomGroups(groups=");
            sbA.append(this.groups);
            sbA.append(')');
            return sbA.toString();
        }

        public BottomGroups(List<VideosGroup> list) {
            super(null, null, null, 7);
            this.groups = list;
        }
    }

    /* JADX INFO: compiled from: HomePageViewModel.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\n\u0010\tR(\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Franchises;", "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;", BuildConfig.FLAVOR, "Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;", "franchises", "Ljava/util/List;", "getFranchises", "()Ljava/util/List;", "setFranchises", "(Ljava/util/List;)V", "<init>", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
    public static final /* data */ class Franchises extends HomeItem {
        public List<FranchiseItem> franchises;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Franchises() {
            super(null, null, null, 7);
            w21 w21Var = w21.r;
            j32.e(w21Var, "franchises");
            this.franchises = w21Var;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Franchises) && j32.a(this.franchises, ((Franchises) obj).franchises);
        }

        public int hashCode() {
            return this.franchises.hashCode();
        }

        public String toString() {
            StringBuilder sbA = um3.a("Franchises(franchises=");
            sbA.append(this.franchises);
            sbA.append(')');
            return sbA.toString();
        }

        public Franchises(List<FranchiseItem> list) {
            super(null, null, null, 7);
            this.franchises = list;
        }
    }
}
