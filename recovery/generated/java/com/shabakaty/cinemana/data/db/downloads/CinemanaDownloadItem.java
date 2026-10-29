package com.shabakaty.cinemana.data.db.downloads;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.recyclerview.widget.RecyclerView;
import com.liulishuo.filedownloader.BuildConfig;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import com.shabakaty.cinemana.domain.models.local.Quality;
import com.shabakaty.cinemana.domain.models.local.SkippingDurations;
import com.shabakaty.cinemana.domain.models.local.Subtitle;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.features.DownloadTitle127;
import com.shabakaty.downloader.h61;
import com.shabakaty.downloader.i50;
import com.shabakaty.downloader.ik4;
import com.shabakaty.downloader.iq6;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.m50;
import com.shabakaty.downloader.nn0;
import com.shabakaty.downloader.o84;
import com.shabakaty.downloader.p84;
import com.shabakaty.downloader.pw0;
import com.shabakaty.downloader.re4;
import com.shabakaty.downloader.um3;
import com.shabakaty.downloader.w21;
import java.io.File;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: CinemanaDownloadEntity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b3\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0011\b\u0087\b\u0018\u0000 Y2\u00020\u0001:\u0001ZBí\u0001\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0019\u001a\u00020\t\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u001f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\"\u001a\u00020\u0002\u0012\b\b\u0002\u0010%\u001a\u00020\u0002\u0012\b\b\u0002\u0010(\u001a\u00020\u0002\u0012\b\b\u0002\u0010+\u001a\u00020\u0002\u0012\b\b\u0002\u0010.\u001a\u00020\u0002\u0012\b\b\u0002\u00101\u001a\u00020\u0002\u0012\b\b\u0002\u00104\u001a\u00020\u0002\u0012\b\b\u0002\u00107\u001a\u00020\t\u0012\b\b\u0002\u0010:\u001a\u00020\u0002\u0012\b\b\u0002\u0010>\u001a\u00020=\u0012\b\b\u0002\u0010D\u001a\u00020\u0002\u0012\b\b\u0002\u0010G\u001a\u00020\u0002\u0012\b\b\u0002\u0010K\u001a\u00020J\u0012\b\b\u0002\u0010Q\u001a\u00020\u0002\u0012\b\b\u0002\u0010T\u001a\u00020\u0002¢\u0006\u0004\bW\u0010XR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\"\u0010\u0010\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0004\u001a\u0004\b\u0011\u0010\u0006\"\u0004\b\u0012\u0010\bR\"\u0010\u0013\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0004\u001a\u0004\b\u0014\u0010\u0006\"\u0004\b\u0015\u0010\bR\"\u0010\u0016\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0004\u001a\u0004\b\u0017\u0010\u0006\"\u0004\b\u0018\u0010\bR\"\u0010\u0019\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u000b\u001a\u0004\b\u001a\u0010\r\"\u0004\b\u001b\u0010\u000fR\"\u0010\u001c\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u0004\u001a\u0004\b\u001d\u0010\u0006\"\u0004\b\u001e\u0010\bR\"\u0010\u001f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010\u0004\u001a\u0004\b \u0010\u0006\"\u0004\b!\u0010\bR\"\u0010\"\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010\u0004\u001a\u0004\b#\u0010\u0006\"\u0004\b$\u0010\bR\"\u0010%\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010\u0004\u001a\u0004\b&\u0010\u0006\"\u0004\b'\u0010\bR\"\u0010(\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b(\u0010\u0004\u001a\u0004\b)\u0010\u0006\"\u0004\b*\u0010\bR\"\u0010+\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b+\u0010\u0004\u001a\u0004\b,\u0010\u0006\"\u0004\b-\u0010\bR\"\u0010.\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010\u0004\u001a\u0004\b/\u0010\u0006\"\u0004\b0\u0010\bR\"\u00101\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b1\u0010\u0004\u001a\u0004\b2\u0010\u0006\"\u0004\b3\u0010\bR\"\u00104\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b4\u0010\u0004\u001a\u0004\b5\u0010\u0006\"\u0004\b6\u0010\bR\"\u00107\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b7\u0010\u000b\u001a\u0004\b8\u0010\r\"\u0004\b9\u0010\u000fR\"\u0010:\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b:\u0010\u0004\u001a\u0004\b;\u0010\u0006\"\u0004\b<\u0010\bR\"\u0010>\u001a\u00020=8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b>\u0010?\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR\"\u0010D\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bD\u0010\u0004\u001a\u0004\bE\u0010\u0006\"\u0004\bF\u0010\bR\"\u0010G\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bG\u0010\u0004\u001a\u0004\bH\u0010\u0006\"\u0004\bI\u0010\bR\"\u0010K\u001a\u00020J8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bK\u0010L\u001a\u0004\bM\u0010N\"\u0004\bO\u0010PR\"\u0010Q\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bQ\u0010\u0004\u001a\u0004\bR\u0010\u0006\"\u0004\bS\u0010\bR\"\u0010T\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bT\u0010\u0004\u001a\u0004\bU\u0010\u0006\"\u0004\bV\u0010\b¨\u0006["}, d2 = {"Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;", "Landroid/os/Parcelable;", BuildConfig.FLAVOR, "id", "Ljava/lang/String;", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", BuildConfig.FLAVOR, "downloadTaskId", "I", "getDownloadTaskId", "()I", "setDownloadTaskId", "(I)V", "title", "getTitle", "setTitle", "stars", "getStars", "setStars", "kind", "getKind", "setKind", "sizeMB", "getSizeMB", "setSizeMB", "season", "getSeason", "setSeason", "imgObjUrl", "getImgObjUrl", "setImgObjUrl", "filmRating", "getFilmRating", "setFilmRating", "tvShowRating", "getTvShowRating", "setTvShowRating", FileDownloadModel.PATH, "getPath", "setPath", "episodeNumber", "getEpisodeNumber", "setEpisodeNumber", "special", "getSpecial", "setSpecial", "useParentImg", "getUseParentImg", "setUseParentImg", "parentSkipping", "getParentSkipping", "setParentSkipping", "collectionID", "getCollectionID", "setCollectionID", "imgThumbObjUrl", "getImgThumbObjUrl", "setImgThumbObjUrl", "Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;", "skippingDurations", "Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;", "getSkippingDurations", "()Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;", "setSkippingDurations", "(Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;)V", "qualityName", "getQualityName", "setQualityName", "rootEpisode", "getRootEpisode", "setRootEpisode", BuildConfig.FLAVOR, "hasIntroSkipping", "Z", "getHasIntroSkipping", "()Z", "setHasIntroSkipping", "(Z)V", "episodeFlag", "getEpisodeFlag", "setEpisodeFlag", "lastUpdated", "getLastUpdated", "setLastUpdated", "<init>", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V", "Companion", "a", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final /* data */ class CinemanaDownloadItem implements Parcelable {
    public int collectionID;
    public int downloadTaskId;
    public String episodeFlag;
    public String episodeNumber;
    public String filmRating;
    public boolean hasIntroSkipping;
    public String id;
    public String imgObjUrl;
    public String imgThumbObjUrl;
    public String kind;
    public String lastUpdated;
    public String parentSkipping;
    public String path;
    public String qualityName;
    public String rootEpisode;
    public String season;
    public int sizeMB;
    public SkippingDurationsDB skippingDurations;
    public String special;
    public String stars;
    public String title;
    public String tvShowRating;
    public String useParentImg;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Parcelable.Creator<CinemanaDownloadItem> CREATOR = new b();

    /* JADX INFO: renamed from: com.shabakaty.cinemana.data.db.downloads.CinemanaDownloadItem$a, reason: from kotlin metadata */
    /* JADX INFO: compiled from: CinemanaDownloadEntity.kt */
    public static final class Companion {
        public Companion(nn0 nn0Var) {
        }

        public final CinemanaDownloadItem a(VideoModel videoModel, pw0 pw0Var) {
            String str;
            String str2;
            j32.e(videoModel, "videoModel");
            CinemanaDownloadItem cinemanaDownloadItem = new CinemanaDownloadItem(null, 0, null, null, null, 0, null, null, null, null, null, null, null, null, null, 0, null, null, null, null, false, null, null, 8388607);
            String str3 = videoModel.nb;
            j32.e(str3, "<set-?>");
            cinemanaDownloadItem.id = str3;
            cinemanaDownloadItem.downloadTaskId = pw0Var == null ? 0 : pw0Var.r;
            String strC = videoModel.c();
            j32.e(strC, "<set-?>");
            cinemanaDownloadItem.title = strC;
            String str4 = videoModel.stars;
            j32.e(str4, "<set-?>");
            cinemanaDownloadItem.stars = str4;
            String str5 = videoModel.kind;
            j32.e(str5, "<set-?>");
            cinemanaDownloadItem.kind = str5;
            String str6 = videoModel.season;
            j32.e(str6, "<set-?>");
            cinemanaDownloadItem.season = str6;
            String str7 = videoModel.imgMediumThumbObjUrl;
            j32.e(str7, "<set-?>");
            cinemanaDownloadItem.imgObjUrl = str7;
            String str8 = videoModel.filmRating;
            j32.e(str8, "<set-?>");
            cinemanaDownloadItem.filmRating = str8;
            String str9 = videoModel.seriesRating;
            j32.e(str9, "<set-?>");
            cinemanaDownloadItem.tvShowRating = str9;
            String str10 = BuildConfig.FLAVOR;
            cinemanaDownloadItem.path = (pw0Var == null || (str2 = pw0Var.x) == null) ? BuildConfig.FLAVOR : re4.g0(str2, "/downloads/", (2 & 2) != 0 ? str2 : null);
            String str11 = videoModel.episodeNummer;
            j32.e(str11, "<set-?>");
            cinemanaDownloadItem.episodeNumber = str11;
            String str12 = videoModel.episodeFlag;
            j32.e(str12, "<set-?>");
            cinemanaDownloadItem.episodeFlag = str12;
            String str13 = videoModel.isSpecial;
            j32.e(str13, "<set-?>");
            cinemanaDownloadItem.special = str13;
            String str14 = videoModel.useParentImg;
            j32.e(str14, "<set-?>");
            cinemanaDownloadItem.useParentImg = str14;
            String str15 = videoModel.parentSkipping;
            j32.e(str15, "<set-?>");
            cinemanaDownloadItem.parentSkipping = str15;
            cinemanaDownloadItem.collectionID = videoModel.downloadCollectionID;
            String str16 = videoModel.imgThumbObjUrl;
            j32.e(str16, "<set-?>");
            cinemanaDownloadItem.imgThumbObjUrl = str16;
            SkippingDurations skippingDurations = videoModel.skippingDurations;
            cinemanaDownloadItem.skippingDurations = new SkippingDurationsDB(skippingDurations.start, skippingDurations.end);
            Quality quality = videoModel.wantedQuality;
            if (quality != null && (str = quality.resolution) != null) {
                str10 = str;
            }
            cinemanaDownloadItem.qualityName = str10;
            cinemanaDownloadItem.sizeMB = pw0Var != null ? (int) (pw0Var.y / ((long) 1048000)) : 0;
            cinemanaDownloadItem.hasIntroSkipping = videoModel.hasIntroSkipping;
            String str17 = videoModel.rootSeries;
            j32.e(str17, "<set-?>");
            cinemanaDownloadItem.rootEpisode = str17;
            String strValueOf = String.valueOf(Calendar.getInstance().getTimeInMillis());
            j32.e(strValueOf, "<set-?>");
            cinemanaDownloadItem.lastUpdated = strValueOf;
            return cinemanaDownloadItem;
        }
    }

    /* JADX INFO: compiled from: CinemanaDownloadEntity.kt */
    public static final class b implements Parcelable.Creator<CinemanaDownloadItem> {
        @Override // android.os.Parcelable.Creator
        public CinemanaDownloadItem createFromParcel(Parcel parcel) {
            j32.e(parcel, "parcel");
            return new CinemanaDownloadItem(parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readString(), SkippingDurationsDB.CREATOR.createFromParcel(parcel), parcel.readString(), parcel.readString(), parcel.readInt() != 0, parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public CinemanaDownloadItem[] newArray(int i) {
            return new CinemanaDownloadItem[i];
        }
    }

    public CinemanaDownloadItem() {
        this(null, 0, null, null, null, 0, null, null, null, null, null, null, null, null, null, 0, null, null, null, null, false, null, null, 8388607);
    }

    public CinemanaDownloadItem(String str, int i, String str2, String str3, String str4, int i2, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, int i3, String str14, SkippingDurationsDB skippingDurationsDB, String str15, String str16, boolean z, String str17, String str18) {
        j32.e(str, "id");
        j32.e(str2, "title");
        j32.e(str3, "stars");
        j32.e(str4, "kind");
        j32.e(str5, "season");
        j32.e(str6, "imgObjUrl");
        j32.e(str7, "filmRating");
        j32.e(str8, "tvShowRating");
        j32.e(str9, FileDownloadModel.PATH);
        j32.e(str10, "episodeNumber");
        j32.e(str11, "special");
        j32.e(str12, "useParentImg");
        j32.e(str13, "parentSkipping");
        j32.e(str14, "imgThumbObjUrl");
        j32.e(skippingDurationsDB, "skippingDurations");
        j32.e(str15, "qualityName");
        j32.e(str16, "rootEpisode");
        j32.e(str17, "episodeFlag");
        j32.e(str18, "lastUpdated");
        this.id = str;
        this.downloadTaskId = i;
        this.title = str2;
        this.stars = str3;
        this.kind = str4;
        this.sizeMB = i2;
        this.season = str5;
        this.imgObjUrl = str6;
        this.filmRating = str7;
        this.tvShowRating = str8;
        this.path = str9;
        this.episodeNumber = str10;
        this.special = str11;
        this.useParentImg = str12;
        this.parentSkipping = str13;
        this.collectionID = i3;
        this.imgThumbObjUrl = str14;
        this.skippingDurations = skippingDurationsDB;
        this.qualityName = str15;
        this.rootEpisode = str16;
        this.hasIntroSkipping = z;
        this.episodeFlag = str17;
        this.lastUpdated = str18;
    }

    public final String a() {
        return (this.season.length() > 1 ? j32.j("S", this.season) : j32.j("S0", this.season)) + ' ' + (this.episodeNumber.length() > 1 ? j32.j("E", this.episodeNumber) : j32.j("E0", this.episodeNumber));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6, types: [java.util.List<com.shabakaty.downloader.o84>] */
    /* JADX WARN: Type inference failed for: r6v7, types: [com.shabakaty.downloader.w21] */
    /* JADX WARN: Type inference failed for: r6v8, types: [java.util.ArrayList] */
    public final VideoModel b(List<SubtitleDb> list, List<p84> list2, Context context) {
        List<Subtitle> listZ0;
        j32.e(context, "context");
        String str = new File(this.path).exists() ? this.path : ((Object) context.getFilesDir().getAbsolutePath()) + "/downloads/" + this.path;
        String str2 = null;
        VideoModel videoModel = new VideoModel(null, null, null, null, null, null, null, null, null, null, str2, str2, null, null, null, null, null, null, null, null, null, null, false, null, null, false, null, 0, null, null, null, null, false, null, null, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0L, null, null, false, null, null, null, null, false, -1, Integer.MAX_VALUE);
        videoModel.l(this.id);
        String strClean = DownloadTitle127.clean(this.title);
        j32.e(strClean, "value");
        videoModel.title = strClean;
        videoModel.enTitle = strClean;
        videoModel.arTitle = strClean;
        String str3 = this.stars;
        j32.e(str3, "<set-?>");
        videoModel.stars = str3;
        String str4 = this.kind;
        j32.e(str4, "<set-?>");
        videoModel.kind = str4;
        String str5 = this.season;
        j32.e(str5, "<set-?>");
        videoModel.season = str5;
        String str6 = this.imgObjUrl;
        j32.e(str6, "<set-?>");
        videoModel.imgObjUrl = str6;
        String str7 = this.imgObjUrl;
        j32.e(str7, "<set-?>");
        videoModel.imgMediumThumbObjUrl = str7;
        videoModel.k(this.imgObjUrl);
        String str8 = this.filmRating;
        j32.e(str8, "<set-?>");
        videoModel.filmRating = str8;
        String str9 = this.tvShowRating;
        j32.e(str9, "<set-?>");
        videoModel.seriesRating = str9;
        videoModel.j(this.episodeNumber);
        String str10 = this.episodeFlag;
        j32.e(str10, "<set-?>");
        videoModel.episodeFlag = str10;
        String str11 = this.special;
        j32.e(str11, "<set-?>");
        videoModel.isSpecial = str11;
        String str12 = this.useParentImg;
        j32.e(str12, "<set-?>");
        videoModel.useParentImg = str12;
        String str13 = this.parentSkipping;
        j32.e(str13, "<set-?>");
        videoModel.parentSkipping = str13;
        videoModel.downloadCollectionID = this.collectionID;
        videoModel.k(this.imgThumbObjUrl);
        SkippingDurationsDB skippingDurationsDB = this.skippingDurations;
        videoModel.q(new SkippingDurations(skippingDurationsDB.start, skippingDurationsDB.end));
        ?? arrayList = 0;
        if (list == null) {
            listZ0 = null;
        } else {
            ArrayList arrayList2 = new ArrayList(i50.O(list, 10));
            for (SubtitleDb subtitleDb : list) {
                arrayList2.add(new Subtitle(subtitleDb.id, subtitleDb.name, subtitleDb.type, subtitleDb.extension, subtitleDb.file));
            }
            listZ0 = m50.z0(arrayList2);
        }
        if (listZ0 == null) {
            listZ0 = new ArrayList<>();
        }
        videoModel.subtitles = listZ0;
        SkippingDurationsDB skippingDurationsDB2 = this.skippingDurations;
        videoModel.q(new SkippingDurations(skippingDurationsDB2.start, skippingDurationsDB2.end));
        videoModel.o(this.rootEpisode);
        videoModel.hasIntroSkipping = this.hasIntroSkipping;
        String str14 = this.qualityName;
        videoModel.qualities = iq6.t(new Quality(str14, str14, str));
        String str15 = this.qualityName;
        videoModel.wantedQuality = new Quality(str15, str15, this.path);
        if (list2 != null) {
            arrayList = new ArrayList(i50.O(list2, 10));
            for (p84 p84Var : list2) {
                arrayList.add(new o84(p84Var.t, p84Var.u, p84Var.v));
            }
        }
        if (arrayList == 0) {
            arrayList = w21.r;
        }
        videoModel.skippableScenes = arrayList;
        return videoModel;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CinemanaDownloadItem)) {
            return false;
        }
        CinemanaDownloadItem cinemanaDownloadItem = (CinemanaDownloadItem) obj;
        return j32.a(this.id, cinemanaDownloadItem.id) && this.downloadTaskId == cinemanaDownloadItem.downloadTaskId && j32.a(this.title, cinemanaDownloadItem.title) && j32.a(this.stars, cinemanaDownloadItem.stars) && j32.a(this.kind, cinemanaDownloadItem.kind) && this.sizeMB == cinemanaDownloadItem.sizeMB && j32.a(this.season, cinemanaDownloadItem.season) && j32.a(this.imgObjUrl, cinemanaDownloadItem.imgObjUrl) && j32.a(this.filmRating, cinemanaDownloadItem.filmRating) && j32.a(this.tvShowRating, cinemanaDownloadItem.tvShowRating) && j32.a(this.path, cinemanaDownloadItem.path) && j32.a(this.episodeNumber, cinemanaDownloadItem.episodeNumber) && j32.a(this.special, cinemanaDownloadItem.special) && j32.a(this.useParentImg, cinemanaDownloadItem.useParentImg) && j32.a(this.parentSkipping, cinemanaDownloadItem.parentSkipping) && this.collectionID == cinemanaDownloadItem.collectionID && j32.a(this.imgThumbObjUrl, cinemanaDownloadItem.imgThumbObjUrl) && j32.a(this.skippingDurations, cinemanaDownloadItem.skippingDurations) && j32.a(this.qualityName, cinemanaDownloadItem.qualityName) && j32.a(this.rootEpisode, cinemanaDownloadItem.rootEpisode) && this.hasIntroSkipping == cinemanaDownloadItem.hasIntroSkipping && j32.a(this.episodeFlag, cinemanaDownloadItem.episodeFlag) && j32.a(this.lastUpdated, cinemanaDownloadItem.lastUpdated);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [int] */
    /* JADX WARN: Type inference failed for: r1v22, types: [int] */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v28 */
    public int hashCode() {
        int iA = ik4.a(this.rootEpisode, ik4.a(this.qualityName, (this.skippingDurations.hashCode() + ik4.a(this.imgThumbObjUrl, (ik4.a(this.parentSkipping, ik4.a(this.useParentImg, ik4.a(this.special, ik4.a(this.episodeNumber, ik4.a(this.path, ik4.a(this.tvShowRating, ik4.a(this.filmRating, ik4.a(this.imgObjUrl, ik4.a(this.season, (ik4.a(this.kind, ik4.a(this.stars, ik4.a(this.title, ((this.id.hashCode() * 31) + this.downloadTaskId) * 31, 31), 31), 31) + this.sizeMB) * 31, 31), 31), 31), 31), 31), 31), 31), 31), 31) + this.collectionID) * 31, 31)) * 31, 31), 31);
        boolean z = this.hasIntroSkipping;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        return this.lastUpdated.hashCode() + ik4.a(this.episodeFlag, (iA + r1) * 31, 31);
    }

    public String toString() {
        StringBuilder sbA = um3.a("CinemanaDownloadItem(id=");
        sbA.append(this.id);
        sbA.append(", downloadTaskId=");
        sbA.append(this.downloadTaskId);
        sbA.append(", title=");
        sbA.append(this.title);
        sbA.append(", stars=");
        sbA.append(this.stars);
        sbA.append(", kind=");
        sbA.append(this.kind);
        sbA.append(", sizeMB=");
        sbA.append(this.sizeMB);
        sbA.append(", season=");
        sbA.append(this.season);
        sbA.append(", imgObjUrl=");
        sbA.append(this.imgObjUrl);
        sbA.append(", filmRating=");
        sbA.append(this.filmRating);
        sbA.append(", tvShowRating=");
        sbA.append(this.tvShowRating);
        sbA.append(", path=");
        sbA.append(this.path);
        sbA.append(", episodeNumber=");
        sbA.append(this.episodeNumber);
        sbA.append(", special=");
        sbA.append(this.special);
        sbA.append(", useParentImg=");
        sbA.append(this.useParentImg);
        sbA.append(", parentSkipping=");
        sbA.append(this.parentSkipping);
        sbA.append(", collectionID=");
        sbA.append(this.collectionID);
        sbA.append(", imgThumbObjUrl=");
        sbA.append(this.imgThumbObjUrl);
        sbA.append(", skippingDurations=");
        sbA.append(this.skippingDurations);
        sbA.append(", qualityName=");
        sbA.append(this.qualityName);
        sbA.append(", rootEpisode=");
        sbA.append(this.rootEpisode);
        sbA.append(", hasIntroSkipping=");
        sbA.append(this.hasIntroSkipping);
        sbA.append(", episodeFlag=");
        sbA.append(this.episodeFlag);
        sbA.append(", lastUpdated=");
        return h61.a(sbA, this.lastUpdated, ')');
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        j32.e(parcel, "out");
        parcel.writeString(this.id);
        parcel.writeInt(this.downloadTaskId);
        parcel.writeString(this.title);
        parcel.writeString(this.stars);
        parcel.writeString(this.kind);
        parcel.writeInt(this.sizeMB);
        parcel.writeString(this.season);
        parcel.writeString(this.imgObjUrl);
        parcel.writeString(this.filmRating);
        parcel.writeString(this.tvShowRating);
        parcel.writeString(this.path);
        parcel.writeString(this.episodeNumber);
        parcel.writeString(this.special);
        parcel.writeString(this.useParentImg);
        parcel.writeString(this.parentSkipping);
        parcel.writeInt(this.collectionID);
        parcel.writeString(this.imgThumbObjUrl);
        this.skippingDurations.writeToParcel(parcel, i);
        parcel.writeString(this.qualityName);
        parcel.writeString(this.rootEpisode);
        parcel.writeInt(this.hasIntroSkipping ? 1 : 0);
        parcel.writeString(this.episodeFlag);
        parcel.writeString(this.lastUpdated);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ CinemanaDownloadItem(String str, int i, String str2, String str3, String str4, int i2, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, int i3, String str14, SkippingDurationsDB skippingDurationsDB, String str15, String str16, boolean z, String str17, String str18, int i4) {
        SkippingDurationsDB skippingDurationsDB2;
        String str19 = (i4 & 1) != 0 ? "0" : str;
        int i5 = (i4 & 2) != 0 ? 0 : i;
        String str20 = (i4 & 4) != 0 ? BuildConfig.FLAVOR : str2;
        String str21 = (i4 & 8) != 0 ? BuildConfig.FLAVOR : str3;
        String str22 = (i4 & 16) != 0 ? BuildConfig.FLAVOR : str4;
        int i6 = (i4 & 32) != 0 ? 0 : i2;
        String str23 = (i4 & 64) != 0 ? BuildConfig.FLAVOR : str5;
        String str24 = (i4 & RecyclerView.b0.FLAG_IGNORE) != 0 ? BuildConfig.FLAVOR : str6;
        String str25 = (i4 & RecyclerView.b0.FLAG_TMP_DETACHED) != 0 ? BuildConfig.FLAVOR : str7;
        String str26 = (i4 & RecyclerView.b0.FLAG_ADAPTER_POSITION_UNKNOWN) != 0 ? BuildConfig.FLAVOR : str8;
        String str27 = (i4 & RecyclerView.b0.FLAG_ADAPTER_FULLUPDATE) != 0 ? BuildConfig.FLAVOR : str9;
        String str28 = (i4 & 2048) != 0 ? BuildConfig.FLAVOR : str10;
        String str29 = (i4 & 4096) != 0 ? BuildConfig.FLAVOR : str11;
        String str30 = (i4 & RecyclerView.b0.FLAG_BOUNCED_FROM_HIDDEN_LIST) != 0 ? BuildConfig.FLAVOR : str12;
        String str31 = (i4 & 16384) != 0 ? BuildConfig.FLAVOR : str13;
        int i7 = (i4 & 32768) != 0 ? 0 : i3;
        String str32 = (i4 & 65536) != 0 ? BuildConfig.FLAVOR : str14;
        String str33 = str31;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        if ((i4 & 131072) != 0) {
            skippingDurationsDB2 = new SkippingDurationsDB(objArr2 == true ? 1 : 0, objArr == true ? 1 : 0, 3);
        } else {
            skippingDurationsDB2 = skippingDurationsDB;
        }
        this(str19, i5, str20, str21, str22, i6, str23, str24, str25, str26, str27, str28, str29, str30, str33, i7, str32, skippingDurationsDB2, (262144 & i4) != 0 ? BuildConfig.FLAVOR : str15, (i4 & 524288) != 0 ? "0" : str16, (i4 & 1048576) != 0 ? false : z, (i4 & 2097152) != 0 ? "0000" : null, (i4 & 4194304) != 0 ? BuildConfig.FLAVOR : str18);
    }
}
