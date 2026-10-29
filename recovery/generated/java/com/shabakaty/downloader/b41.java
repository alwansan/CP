package com.shabakaty.downloader;

import com.liulishuo.filedownloader.model.FileDownloadModel;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import java.util.List;
import kotlin.reflect.KProperty;

/* JADX INFO: compiled from: EpisodeItem.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b41 {
    public static final /* synthetic */ KProperty<Object>[] h = {a41.a(b41.class, "nb", "getNb()Ljava/lang/String;", 0), a41.a(b41.class, "enTitle", "getEnTitle()Ljava/lang/String;", 0), a41.a(b41.class, "arTitle", "getArTitle()Ljava/lang/String;", 0), a41.a(b41.class, "stars", "getStars()Ljava/lang/String;", 0), a41.a(b41.class, "arContent", "getArContent()Ljava/lang/String;", 0), a41.a(b41.class, "enContent", "getEnContent()Ljava/lang/String;", 0), a41.a(b41.class, "year", "getYear()Ljava/lang/String;", 0), a41.a(b41.class, "season", "getSeason()Ljava/lang/String;", 0), a41.a(b41.class, "img", "getImg()Ljava/lang/String;", 0), a41.a(b41.class, "imgObjUrl", "getImgObjUrl()Ljava/lang/String;", 0), a41.a(b41.class, "imgMediumThumbObjUrl", "getImgMediumThumbObjUrl()Ljava/lang/String;", 0), a41.a(b41.class, "episodeNummer", "getEpisodeNummer()Ljava/lang/String;", 0), a41.a(b41.class, "rate", "getRate()Ljava/lang/String;", 0), a41.a(b41.class, "duration", "getDuration()Ljava/lang/String;", 0), a41.a(b41.class, "rootSeries", "getRootSeries()Ljava/lang/String;", 0), a41.a(b41.class, "episodeFlag", "getEpisodeFlag()Ljava/lang/String;", 0), a41.a(b41.class, "trailer", "getTrailer()Ljava/lang/String;", 0), a41.a(b41.class, "parentSkipping", "getParentSkipping()Ljava/lang/String;", 0), a41.a(b41.class, "collectionID", "getCollectionID()I", 0), a41.a(b41.class, "imgThumbObjUrl", "getImgThumbObjUrl()Ljava/lang/String;", 0), a41.a(b41.class, "skippingDurations", "getSkippingDurations()Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;", 0), a41.a(b41.class, "subtitles", "getSubtitles()Ljava/util/List;", 0), a41.a(b41.class, "hasIntroSkipping", "getHasIntroSkipping()Z", 0), a41.a(b41.class, "categories", "getCategories()Ljava/util/List;", 0), a41.a(b41.class, "videoLikesNumber", "getVideoLikesNumber()Ljava/lang/String;", 0), a41.a(b41.class, "videoDisLikesNumber", "getVideoDisLikesNumber()Ljava/lang/String;", 0), a41.a(b41.class, "actorsInfo", "getActorsInfo()Ljava/util/List;", 0), a41.a(b41.class, "directorsInfo", "getDirectorsInfo()Ljava/util/List;", 0), a41.a(b41.class, "writersInfo", "getWritersInfo()Ljava/util/List;", 0), a41.a(b41.class, "listId", "getListId()Ljava/lang/String;", 0), a41.a(b41.class, "episodeDesc", "getEpisodeDesc()Ljava/lang/String;", 0), a41.a(b41.class, "type", "getType()I", 0), a41.a(b41.class, "finished", "getFinished()Z", 0), a41.a(b41.class, "url", "getUrl()Ljava/lang/String;", 0), a41.a(b41.class, "downloadTaskId", "getDownloadTaskId()I", 0), a41.a(b41.class, "size", "getSize()Ljava/lang/String;", 0), a41.a(b41.class, "watched", "getWatched()Z", 0), a41.a(b41.class, FileDownloadModel.STATUS, "getStatus()Lcom/shabakaty/cinemana/domain/models/local/VideoStatus;", 0), a41.a(b41.class, "qualities", "getQualities()Ljava/util/List;", 0)};
    public boolean a;
    public final VideoModel b;
    public final VideoModel c;
    public final VideoModel d;
    public final VideoModel e;
    public final VideoModel f;
    public final VideoModel g;

    public b41(boolean z, VideoModel videoModel) {
        this.a = z;
        this.b = videoModel;
        this.c = videoModel;
        this.d = videoModel;
        this.e = videoModel;
        this.f = videoModel;
        this.g = videoModel;
    }

    public final String a() {
        return this.f.episodeNummer;
    }

    public final String b() {
        return this.e.imgMediumThumbObjUrl;
    }

    public final String c() {
        return this.c.nb;
    }

    public final List d() {
        return this.g.qualities;
    }

    public final String e() {
        return this.d.season;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b41)) {
            return false;
        }
        b41 b41Var = (b41) obj;
        return this.a == b41Var.a && j32.a(this.b, b41Var.b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    public int hashCode() {
        boolean z = this.a;
        int r0 = z ? 1 : 0;
        if (z) {
            r0 = 1;
        }
        return this.b.hashCode() + (r0 * 31);
    }

    public String toString() {
        StringBuilder sbA = um3.a("EpisodeItem(isSelected=");
        sbA.append(this.a);
        sbA.append(", videoModel=");
        sbA.append(this.b);
        sbA.append(')');
        return sbA.toString();
    }
}
