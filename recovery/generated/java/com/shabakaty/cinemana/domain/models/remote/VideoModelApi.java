package com.shabakaty.cinemana.domain.models.remote;

import android.annotation.SuppressLint;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.downloader.c14;
import com.shabakaty.downloader.h61;
import com.shabakaty.downloader.ik4;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.j60;
import com.shabakaty.downloader.um3;
import com.shabakaty.downloader.w21;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: VideoModelApi.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\bD\n\u0002\u0010\u000b\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b%\b\u0086\b\u0018\u00002\u00020\u0001:\f\u00ad\u0001®\u0001¯\u0001°\u0001±\u0001²\u0001R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\"\u0010\f\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0004\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\"\u0010\u000f\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0004\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\"\u0010\u0012\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\"\u0010\u0015\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0004\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\"\u0010\u0018\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0004\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\bR\"\u0010\u001b\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u0004\u001a\u0004\b\u001c\u0010\u0006\"\u0004\b\u001d\u0010\bR\"\u0010\u001e\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u0004\u001a\u0004\b\u001f\u0010\u0006\"\u0004\b \u0010\bR\"\u0010!\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b!\u0010\u0004\u001a\u0004\b\"\u0010\u0006\"\u0004\b#\u0010\bR\"\u0010$\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b$\u0010\u0004\u001a\u0004\b%\u0010\u0006\"\u0004\b&\u0010\bR\"\u0010'\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b'\u0010\u0004\u001a\u0004\b(\u0010\u0006\"\u0004\b)\u0010\bR\"\u0010*\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b*\u0010\u0004\u001a\u0004\b+\u0010\u0006\"\u0004\b,\u0010\bR\"\u0010-\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b-\u0010\u0004\u001a\u0004\b.\u0010\u0006\"\u0004\b/\u0010\bR\"\u00100\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b0\u0010\u0004\u001a\u0004\b1\u0010\u0006\"\u0004\b2\u0010\bR\"\u00103\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b3\u0010\u0004\u001a\u0004\b4\u0010\u0006\"\u0004\b5\u0010\bR\"\u00106\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b6\u0010\u0004\u001a\u0004\b6\u0010\u0006\"\u0004\b7\u0010\bR\"\u00108\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b8\u0010\u0004\u001a\u0004\b9\u0010\u0006\"\u0004\b:\u0010\bR\"\u0010;\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b;\u0010\u0004\u001a\u0004\b<\u0010\u0006\"\u0004\b=\u0010\bR\"\u0010>\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b>\u0010\u0004\u001a\u0004\b?\u0010\u0006\"\u0004\b@\u0010\bR\"\u0010A\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bA\u0010\u0004\u001a\u0004\bB\u0010\u0006\"\u0004\bC\u0010\bR\"\u0010D\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bD\u0010\u0004\u001a\u0004\bE\u0010\u0006\"\u0004\bF\u0010\bR\"\u0010H\u001a\u00020G8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bH\u0010I\u001a\u0004\bJ\u0010K\"\u0004\bL\u0010MR\"\u0010N\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bN\u0010\u0004\u001a\u0004\bO\u0010\u0006\"\u0004\bP\u0010\bR\"\u0010Q\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bQ\u0010\u0004\u001a\u0004\bR\u0010\u0006\"\u0004\bS\u0010\bR\"\u0010T\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bT\u0010\u0004\u001a\u0004\bU\u0010\u0006\"\u0004\bV\u0010\bR\"\u0010W\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bW\u0010\u0004\u001a\u0004\bX\u0010\u0006\"\u0004\bY\u0010\bR\"\u0010[\u001a\u00020Z8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b[\u0010\\\u001a\u0004\b]\u0010^\"\u0004\b_\u0010`R\"\u0010a\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\ba\u0010\u0004\u001a\u0004\bb\u0010\u0006\"\u0004\bc\u0010\bR(\u0010f\u001a\b\u0012\u0004\u0012\u00020e0d8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bf\u0010g\u001a\u0004\bh\u0010i\"\u0004\bj\u0010kR\"\u0010l\u001a\u00020G8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bl\u0010I\u001a\u0004\bm\u0010K\"\u0004\bn\u0010MR(\u0010p\u001a\b\u0012\u0004\u0012\u00020o0d8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bp\u0010g\u001a\u0004\bq\u0010i\"\u0004\br\u0010kR(\u0010t\u001a\b\u0012\u0004\u0012\u00020s0d8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bt\u0010g\u001a\u0004\bu\u0010i\"\u0004\bv\u0010kR\"\u0010w\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bw\u0010\u0004\u001a\u0004\bx\u0010\u0006\"\u0004\by\u0010\bR\"\u0010z\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bz\u0010\u0004\u001a\u0004\b{\u0010\u0006\"\u0004\b|\u0010\bR&\u0010~\u001a\u00020}8\u0006@\u0006X\u0087\u000e¢\u0006\u0016\n\u0004\b~\u0010\u007f\u001a\u0006\b\u0080\u0001\u0010\u0081\u0001\"\u0006\b\u0082\u0001\u0010\u0083\u0001R*\u0010\u0085\u0001\u001a\u00030\u0084\u00018\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0006\b\u0085\u0001\u0010\u0086\u0001\u001a\u0006\b\u0087\u0001\u0010\u0088\u0001\"\u0006\b\u0089\u0001\u0010\u008a\u0001R&\u0010\u008b\u0001\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0015\n\u0005\b\u008b\u0001\u0010\u0004\u001a\u0005\b\u008c\u0001\u0010\u0006\"\u0005\b\u008d\u0001\u0010\bR-\u0010\u008f\u0001\u001a\t\u0012\u0005\u0012\u00030\u008e\u00010d8\u0006@\u0006X\u0087\u000e¢\u0006\u0015\n\u0005\b\u008f\u0001\u0010g\u001a\u0005\b\u0090\u0001\u0010i\"\u0005\b\u0091\u0001\u0010kR-\u0010\u0092\u0001\u001a\t\u0012\u0005\u0012\u00030\u008e\u00010d8\u0006@\u0006X\u0087\u000e¢\u0006\u0015\n\u0005\b\u0092\u0001\u0010g\u001a\u0005\b\u0093\u0001\u0010i\"\u0005\b\u0094\u0001\u0010kR-\u0010\u0095\u0001\u001a\t\u0012\u0005\u0012\u00030\u008e\u00010d8\u0006@\u0006X\u0087\u000e¢\u0006\u0015\n\u0005\b\u0095\u0001\u0010g\u001a\u0005\b\u0096\u0001\u0010i\"\u0005\b\u0097\u0001\u0010kR&\u0010\u0098\u0001\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0015\n\u0005\b\u0098\u0001\u0010\u0004\u001a\u0005\b\u0099\u0001\u0010\u0006\"\u0005\b\u009a\u0001\u0010\bR&\u0010\u009b\u0001\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0015\n\u0005\b\u009b\u0001\u0010\u0004\u001a\u0005\b\u009c\u0001\u0010\u0006\"\u0005\b\u009d\u0001\u0010\bR&\u0010\u009e\u0001\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0015\n\u0005\b\u009e\u0001\u0010\u0004\u001a\u0005\b\u009f\u0001\u0010\u0006\"\u0005\b \u0001\u0010\bR&\u0010¡\u0001\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0015\n\u0005\b¡\u0001\u0010\u0004\u001a\u0005\b¢\u0001\u0010\u0006\"\u0005\b£\u0001\u0010\bR&\u0010¤\u0001\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0015\n\u0005\b¤\u0001\u0010\u0004\u001a\u0005\b¥\u0001\u0010\u0006\"\u0005\b¦\u0001\u0010\bR&\u0010§\u0001\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0015\n\u0005\b§\u0001\u0010\u0004\u001a\u0005\b¨\u0001\u0010\u0006\"\u0005\b©\u0001\u0010\bR&\u0010ª\u0001\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0015\n\u0005\bª\u0001\u0010\u0004\u001a\u0005\b«\u0001\u0010\u0006\"\u0005\b¬\u0001\u0010\b¨\u0006³\u0001"}, d2 = {"Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "nb", "Ljava/lang/String;", "getNb", "()Ljava/lang/String;", "setNb", "(Ljava/lang/String;)V", "enTitle", "getEnTitle", "setEnTitle", "arTitle", "getArTitle", "setArTitle", "stars", "getStars", "setStars", "arContent", "getArContent", "setArContent", "enContent", "getEnContent", "setEnContent", "mDate", "getMDate", "setMDate", "year", "getYear", "setYear", "kind", "getKind", "setKind", "season", "getSeason", "setSeason", "imgObjUrl", "getImgObjUrl", "setImgObjUrl", "imgMediumThumbObjUrl", "getImgMediumThumbObjUrl", "setImgMediumThumbObjUrl", "filmRating", "getFilmRating", "setFilmRating", "seriesRating", "getSeriesRating", "setSeriesRating", "episodeNummer", "getEpisodeNummer", "setEpisodeNummer", "rate", "getRate", "setRate", "isSpecial", "setSpecial", "itemDate", "getItemDate", "setItemDate", "duration", "getDuration", "setDuration", "imdbUrlRef", "getImdbUrlRef", "setImdbUrlRef", "rootSeries", "getRootSeries", "setRootSeries", "useParentImg", "getUseParentImg", "setUseParentImg", BuildConfig.FLAVOR, "showComments", "Z", "getShowComments", "()Z", "setShowComments", "(Z)V", "episodeFlag", "getEpisodeFlag", "setEpisodeFlag", "trailer", "getTrailer", "setTrailer", "parentSkipping", "getParentSkipping", "setParentSkipping", "imgThumbObjUrl", "getImgThumbObjUrl", "setImgThumbObjUrl", "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$SkippingDurationsApi;", "skippingDurations", "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$SkippingDurationsApi;", "getSkippingDurations", "()Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$SkippingDurationsApi;", "setSkippingDurations", "(Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$SkippingDurationsApi;)V", "arTranslationFilePath", "getArTranslationFilePath", "setArTranslationFilePath", BuildConfig.FLAVOR, "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$a;", "translations", "Ljava/util/List;", "getTranslations", "()Ljava/util/List;", "setTranslations", "(Ljava/util/List;)V", "hasIntroSkipping", "getHasIntroSkipping", "setHasIntroSkipping", "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$IntroSkippingApi;", "introSkipping", "getIntroSkipping", "setIntroSkipping", "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$CategoryApi;", "categories", "getCategories", "setCategories", "videoLikesNumber", "getVideoLikesNumber", "setVideoLikesNumber", "videoDisLikesNumber", "getVideoDisLikesNumber", "setVideoDisLikesNumber", "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$VideoLanguagesApi;", "videoLanguages", "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$VideoLanguagesApi;", "getVideoLanguages", "()Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$VideoLanguagesApi;", "setVideoLanguages", "(Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$VideoLanguagesApi;)V", BuildConfig.FLAVOR, "videoCommentsNumber", "I", "getVideoCommentsNumber", "()I", "setVideoCommentsNumber", "(I)V", "videoViewsNumber", "getVideoViewsNumber", "setVideoViewsNumber", "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$StaffsInfoApi;", "directorsInfo", "getDirectorsInfo", "setDirectorsInfo", "actorsInfo", "getActorsInfo", "setActorsInfo", "writersInfo", "getWritersInfo", "setWritersInfo", "itemOrderList", "getItemOrderList", "setItemOrderList", "listId", "getListId", "setListId", "listSortOrder", "getListSortOrder", "setListSortOrder", "customArTitle", "getCustomArTitle", "setCustomArTitle", "customEnTitle", "getCustomEnTitle", "setCustomEnTitle", "castable", "getCastable", "setCastable", "publishDate", "getPublishDate", "setPublishDate", "CategoryApi", "IntroSkippingApi", "SkippingDurationsApi", "StaffsInfoApi", "a", "VideoLanguagesApi", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final /* data */ class VideoModelApi {

    @c14("actorsInfo")
    public List<StaffsInfoApi> actorsInfo;

    @c14("ar_content")
    public String arContent;

    @c14("ar_title")
    public String arTitle;

    @c14("arTranslationFilePath")
    public String arTranslationFilePath;

    @c14("castable")
    public String castable;

    @c14("categories")
    public List<CategoryApi> categories;

    @c14("custom_ar_title")
    public String customArTitle;

    @c14("custom_en_title")
    public String customEnTitle;

    @c14("directorsInfo")
    public List<StaffsInfoApi> directorsInfo;

    @c14("duration")
    public String duration;

    @c14("en_content")
    public String enContent;

    @c14("en_title")
    public String enTitle;

    @c14("episode_flag")
    public String episodeFlag;

    @c14("episodeNummer")
    public String episodeNummer;

    @c14("filmRating")
    public String filmRating;

    @c14("hasIntroSkipping")
    public boolean hasIntroSkipping;

    @c14("imdbUrlRef")
    public String imdbUrlRef;

    @c14("imgMediumThumbObjUrl")
    public String imgMediumThumbObjUrl;

    @c14("imgObjUrl")
    public String imgObjUrl;

    @c14("imgThumbObjUrl")
    public String imgThumbObjUrl;

    @c14("introSkipping")
    public List<IntroSkippingApi> introSkipping;

    @c14("isSpecial")
    public String isSpecial;

    @c14("itemDate")
    public String itemDate;

    @c14("item_order_list")
    public String itemOrderList;

    @c14("kind")
    public String kind;

    @c14("list_id")
    public String listId;

    @c14("list_sort_order")
    public String listSortOrder;

    @c14("mDate")
    public String mDate;

    @c14("nb")
    public String nb;

    @c14("parent_skipping")
    public String parentSkipping;

    @c14("publishDate")
    public String publishDate;

    @c14("rate")
    public String rate;

    @c14("rootSeries")
    public String rootSeries;

    @c14("season")
    public String season;

    @c14("seriesRating")
    public String seriesRating;

    @c14("showComments")
    public boolean showComments;

    @c14("skippingDurations")
    public SkippingDurationsApi skippingDurations;

    @c14("stars")
    public String stars;

    @c14("trailer")
    public String trailer;

    @c14("translations")
    public List<a> translations;

    @c14("useParentImg")
    public String useParentImg;

    @c14("videoCommentsNumber")
    public int videoCommentsNumber;

    @c14("videoDisLikesNumber")
    public String videoDisLikesNumber;

    @c14("videoLanguages")
    public VideoLanguagesApi videoLanguages;

    @c14("videoLikesNumber")
    public String videoLikesNumber;

    @c14("videoViewsNumber")
    public String videoViewsNumber;

    @c14("writersInfo")
    public List<StaffsInfoApi> writersInfo;

    @c14("year")
    public String year;

    /* JADX INFO: compiled from: VideoModelApi.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\n\b\u0087\b\u0018\u00002\u00020\u0001R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\b¨\u0006\f"}, d2 = {"Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$CategoryApi;", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "enTitle", "Ljava/lang/String;", "getEnTitle", "()Ljava/lang/String;", "setEnTitle", "(Ljava/lang/String;)V", "arTitle", "getArTitle", "setArTitle", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
    @SuppressLint({"ParcelCreator"})
    public static final /* data */ class CategoryApi {

        @c14("ar_title")
        public String arTitle;

        @c14("en_title")
        public String enTitle;

        public CategoryApi() {
            j32.e(BuildConfig.FLAVOR, "enTitle");
            j32.e(BuildConfig.FLAVOR, "arTitle");
            this.enTitle = BuildConfig.FLAVOR;
            this.arTitle = BuildConfig.FLAVOR;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CategoryApi)) {
                return false;
            }
            CategoryApi categoryApi = (CategoryApi) obj;
            return j32.a(this.enTitle, categoryApi.enTitle) && j32.a(this.arTitle, categoryApi.arTitle);
        }

        public int hashCode() {
            return this.arTitle.hashCode() + (this.enTitle.hashCode() * 31);
        }

        public String toString() {
            StringBuilder sbA = um3.a("CategoryApi(enTitle=");
            sbA.append(this.enTitle);
            sbA.append(", arTitle=");
            return h61.a(sbA, this.arTitle, ')');
        }
    }

    /* JADX INFO: compiled from: VideoModelApi.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\r\b\u0087\b\u0018\u00002\u00020\u0001R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\"\u0010\f\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0004\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\b¨\u0006\u000f"}, d2 = {"Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$IntroSkippingApi;", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "start", "Ljava/lang/String;", "getStart", "()Ljava/lang/String;", "setStart", "(Ljava/lang/String;)V", "end", "getEnd", "setEnd", "controlLevel", "getControlLevel", "setControlLevel", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
    @SuppressLint({"ParcelCreator"})
    public static final /* data */ class IntroSkippingApi {

        @c14("control_level")
        public String controlLevel;

        @c14("end")
        public String end;

        @c14("start")
        public String start;

        public IntroSkippingApi() {
            j32.e(BuildConfig.FLAVOR, "start");
            j32.e(BuildConfig.FLAVOR, "end");
            j32.e(BuildConfig.FLAVOR, "controlLevel");
            this.start = BuildConfig.FLAVOR;
            this.end = BuildConfig.FLAVOR;
            this.controlLevel = BuildConfig.FLAVOR;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof IntroSkippingApi)) {
                return false;
            }
            IntroSkippingApi introSkippingApi = (IntroSkippingApi) obj;
            return j32.a(this.start, introSkippingApi.start) && j32.a(this.end, introSkippingApi.end) && j32.a(this.controlLevel, introSkippingApi.controlLevel);
        }

        public int hashCode() {
            return this.controlLevel.hashCode() + ik4.a(this.end, this.start.hashCode() * 31, 31);
        }

        public String toString() {
            StringBuilder sbA = um3.a("IntroSkippingApi(start=");
            sbA.append(this.start);
            sbA.append(", end=");
            sbA.append(this.end);
            sbA.append(", controlLevel=");
            return h61.a(sbA, this.controlLevel, ')');
        }
    }

    /* JADX INFO: compiled from: VideoModelApi.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\n\b\u0087\b\u0018\u00002\u00020\u0001R(\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR(\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0005\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\t¨\u0006\r"}, d2 = {"Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$SkippingDurationsApi;", BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, "start", "Ljava/util/List;", "getStart", "()Ljava/util/List;", "setStart", "(Ljava/util/List;)V", "end", "getEnd", "setEnd", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
    @SuppressLint({"ParcelCreator"})
    public static final /* data */ class SkippingDurationsApi {

        @c14("end")
        public List<String> end;

        @c14("start")
        public List<String> start;

        public SkippingDurationsApi() {
            this(null, null, 3);
        }

        public SkippingDurationsApi(List list, List list2, int i) {
            w21 w21Var = (i & 1) != 0 ? w21.r : null;
            w21 w21Var2 = (i & 2) != 0 ? w21.r : null;
            j32.e(w21Var, "start");
            j32.e(w21Var2, "end");
            this.start = w21Var;
            this.end = w21Var2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SkippingDurationsApi)) {
                return false;
            }
            SkippingDurationsApi skippingDurationsApi = (SkippingDurationsApi) obj;
            return j32.a(this.start, skippingDurationsApi.start) && j32.a(this.end, skippingDurationsApi.end);
        }

        public int hashCode() {
            return this.end.hashCode() + (this.start.hashCode() * 31);
        }

        public String toString() {
            StringBuilder sbA = um3.a("SkippingDurationsApi(start=");
            sbA.append(this.start);
            sbA.append(", end=");
            sbA.append(this.end);
            sbA.append(')');
            return sbA.toString();
        }
    }

    /* JADX INFO: compiled from: VideoModelApi.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0016\b\u0087\b\u0018\u00002\u00020\u0001R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\"\u0010\f\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0004\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR$\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0004\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR$\u0010\u0012\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR$\u0010\u0015\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0004\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\b¨\u0006\u0018"}, d2 = {"Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$StaffsInfoApi;", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "nb", "Ljava/lang/String;", "getNb", "()Ljava/lang/String;", "setNb", "(Ljava/lang/String;)V", "name", "getName", "setName", "role", "getRole", "setRole", "staffImg", "getStaffImg", "setStaffImg", "staffImgThumb", "getStaffImgThumb", "setStaffImgThumb", "staffImgMediumThumb", "getStaffImgMediumThumb", "setStaffImgMediumThumb", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
    @SuppressLint({"ParcelCreator"})
    public static final /* data */ class StaffsInfoApi {

        @c14("name")
        public String name;

        @c14("nb")
        public String nb;

        @c14("role")
        public String role;

        @c14("staff_img")
        public String staffImg;

        @c14("staff_img_medium_thumb")
        public String staffImgMediumThumb;

        @c14("staff_img_thumb")
        public String staffImgThumb;

        public StaffsInfoApi() {
            j32.e(BuildConfig.FLAVOR, "nb");
            j32.e(BuildConfig.FLAVOR, "name");
            j32.e(BuildConfig.FLAVOR, "role");
            this.nb = BuildConfig.FLAVOR;
            this.name = BuildConfig.FLAVOR;
            this.role = BuildConfig.FLAVOR;
            this.staffImg = BuildConfig.FLAVOR;
            this.staffImgThumb = BuildConfig.FLAVOR;
            this.staffImgMediumThumb = BuildConfig.FLAVOR;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof StaffsInfoApi)) {
                return false;
            }
            StaffsInfoApi staffsInfoApi = (StaffsInfoApi) obj;
            return j32.a(this.nb, staffsInfoApi.nb) && j32.a(this.name, staffsInfoApi.name) && j32.a(this.role, staffsInfoApi.role) && j32.a(this.staffImg, staffsInfoApi.staffImg) && j32.a(this.staffImgThumb, staffsInfoApi.staffImgThumb) && j32.a(this.staffImgMediumThumb, staffsInfoApi.staffImgMediumThumb);
        }

        public int hashCode() {
            int iA = ik4.a(this.role, ik4.a(this.name, this.nb.hashCode() * 31, 31), 31);
            String str = this.staffImg;
            int iHashCode = (iA + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.staffImgThumb;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.staffImgMediumThumb;
            return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
        }

        public String toString() {
            StringBuilder sbA = um3.a("StaffsInfoApi(nb=");
            sbA.append(this.nb);
            sbA.append(", name=");
            sbA.append(this.name);
            sbA.append(", role=");
            sbA.append(this.role);
            sbA.append(", staffImg=");
            sbA.append((Object) this.staffImg);
            sbA.append(", staffImgThumb=");
            sbA.append((Object) this.staffImgThumb);
            sbA.append(", staffImgMediumThumb=");
            sbA.append((Object) this.staffImgMediumThumb);
            sbA.append(')');
            return sbA.toString();
        }
    }

    /* JADX INFO: compiled from: VideoModelApi.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\n\b\u0087\b\u0018\u00002\u00020\u0001R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\b¨\u0006\f"}, d2 = {"Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$VideoLanguagesApi;", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "enTitle", "Ljava/lang/String;", "getEnTitle", "()Ljava/lang/String;", "setEnTitle", "(Ljava/lang/String;)V", "arTitle", "getArTitle", "setArTitle", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
    @SuppressLint({"ParcelCreator"})
    public static final /* data */ class VideoLanguagesApi {

        @c14("ar_title")
        public String arTitle;

        @c14("en_title")
        public String enTitle;

        public VideoLanguagesApi() {
            this(null, null, 3);
        }

        public VideoLanguagesApi(String str, String str2, int i) {
            String str3 = (i & 1) != 0 ? BuildConfig.FLAVOR : null;
            String str4 = (i & 2) != 0 ? BuildConfig.FLAVOR : null;
            j32.e(str3, "enTitle");
            j32.e(str4, "arTitle");
            this.enTitle = str3;
            this.arTitle = str4;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof VideoLanguagesApi)) {
                return false;
            }
            VideoLanguagesApi videoLanguagesApi = (VideoLanguagesApi) obj;
            return j32.a(this.enTitle, videoLanguagesApi.enTitle) && j32.a(this.arTitle, videoLanguagesApi.arTitle);
        }

        public int hashCode() {
            return this.arTitle.hashCode() + (this.enTitle.hashCode() * 31);
        }

        public String toString() {
            StringBuilder sbA = um3.a("VideoLanguagesApi(enTitle=");
            sbA.append(this.enTitle);
            sbA.append(", arTitle=");
            return h61.a(sbA, this.arTitle, ')');
        }
    }

    /* JADX INFO: compiled from: VideoModelApi.kt */
    @SuppressLint({"ParcelCreator"})
    public static final class a {

        @c14("id")
        public int a;

        @c14("name")
        public String b;

        @c14("type")
        public String c;

        @c14("extention")
        public String d;

        @c14("file")
        public String e;

        public a() {
            j32.e(BuildConfig.FLAVOR, "name");
            j32.e(BuildConfig.FLAVOR, "type");
            j32.e(BuildConfig.FLAVOR, "extention");
            j32.e(BuildConfig.FLAVOR, "file");
            this.a = 0;
            this.b = BuildConfig.FLAVOR;
            this.c = BuildConfig.FLAVOR;
            this.d = BuildConfig.FLAVOR;
            this.e = BuildConfig.FLAVOR;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a == aVar.a && j32.a(this.b, aVar.b) && j32.a(this.c, aVar.c) && j32.a(this.d, aVar.d) && j32.a(this.e, aVar.e);
        }

        public int hashCode() {
            return this.e.hashCode() + ik4.a(this.d, ik4.a(this.c, ik4.a(this.b, this.a * 31, 31), 31), 31);
        }

        public String toString() {
            StringBuilder sbA = um3.a("TranslationApi(id=");
            sbA.append(this.a);
            sbA.append(", name=");
            sbA.append(this.b);
            sbA.append(", type=");
            sbA.append(this.c);
            sbA.append(", extention=");
            sbA.append(this.d);
            sbA.append(", file=");
            return h61.a(sbA, this.e, ')');
        }
    }

    public VideoModelApi() {
        SkippingDurationsApi skippingDurationsApi = new SkippingDurationsApi(null, null, 3);
        w21 w21Var = w21.r;
        VideoLanguagesApi videoLanguagesApi = new VideoLanguagesApi(null, null, 3);
        j32.e("0", "nb");
        j32.e(BuildConfig.FLAVOR, "enTitle");
        j32.e(BuildConfig.FLAVOR, "arTitle");
        j32.e(BuildConfig.FLAVOR, "stars");
        j32.e(BuildConfig.FLAVOR, "arContent");
        j32.e(BuildConfig.FLAVOR, "enContent");
        j32.e(BuildConfig.FLAVOR, "mDate");
        j32.e(BuildConfig.FLAVOR, "year");
        j32.e(BuildConfig.FLAVOR, "kind");
        j32.e(BuildConfig.FLAVOR, "season");
        j32.e(BuildConfig.FLAVOR, "imgObjUrl");
        j32.e(BuildConfig.FLAVOR, "imgMediumThumbObjUrl");
        j32.e(BuildConfig.FLAVOR, "filmRating");
        j32.e(BuildConfig.FLAVOR, "seriesRating");
        j32.e(BuildConfig.FLAVOR, "episodeNummer");
        j32.e(BuildConfig.FLAVOR, "rate");
        j32.e(BuildConfig.FLAVOR, "isSpecial");
        j32.e(BuildConfig.FLAVOR, "itemDate");
        j32.e(BuildConfig.FLAVOR, "duration");
        j32.e(BuildConfig.FLAVOR, "imdbUrlRef");
        j32.e(BuildConfig.FLAVOR, "rootSeries");
        j32.e(BuildConfig.FLAVOR, "useParentImg");
        j32.e(BuildConfig.FLAVOR, "episodeFlag");
        j32.e(BuildConfig.FLAVOR, "trailer");
        j32.e(BuildConfig.FLAVOR, "parentSkipping");
        j32.e(BuildConfig.FLAVOR, "imgThumbObjUrl");
        j32.e(skippingDurationsApi, "skippingDurations");
        j32.e(BuildConfig.FLAVOR, "arTranslationFilePath");
        j32.e(w21Var, "translations");
        j32.e(w21Var, "introSkipping");
        j32.e(w21Var, "categories");
        j32.e(BuildConfig.FLAVOR, "videoLikesNumber");
        j32.e(BuildConfig.FLAVOR, "videoDisLikesNumber");
        j32.e(videoLanguagesApi, "videoLanguages");
        j32.e(BuildConfig.FLAVOR, "videoViewsNumber");
        j32.e(w21Var, "directorsInfo");
        j32.e(w21Var, "actorsInfo");
        j32.e(w21Var, "writersInfo");
        j32.e(BuildConfig.FLAVOR, "itemOrderList");
        j32.e(BuildConfig.FLAVOR, "listId");
        j32.e(BuildConfig.FLAVOR, "listSortOrder");
        j32.e(BuildConfig.FLAVOR, "customArTitle");
        j32.e(BuildConfig.FLAVOR, "customEnTitle");
        j32.e(BuildConfig.FLAVOR, "castable");
        j32.e(BuildConfig.FLAVOR, "publishDate");
        this.nb = "0";
        this.enTitle = BuildConfig.FLAVOR;
        this.arTitle = BuildConfig.FLAVOR;
        this.stars = BuildConfig.FLAVOR;
        this.arContent = BuildConfig.FLAVOR;
        this.enContent = BuildConfig.FLAVOR;
        this.mDate = BuildConfig.FLAVOR;
        this.year = BuildConfig.FLAVOR;
        this.kind = BuildConfig.FLAVOR;
        this.season = BuildConfig.FLAVOR;
        this.imgObjUrl = BuildConfig.FLAVOR;
        this.imgMediumThumbObjUrl = BuildConfig.FLAVOR;
        this.filmRating = BuildConfig.FLAVOR;
        this.seriesRating = BuildConfig.FLAVOR;
        this.episodeNummer = BuildConfig.FLAVOR;
        this.rate = BuildConfig.FLAVOR;
        this.isSpecial = BuildConfig.FLAVOR;
        this.itemDate = BuildConfig.FLAVOR;
        this.duration = BuildConfig.FLAVOR;
        this.imdbUrlRef = BuildConfig.FLAVOR;
        this.rootSeries = BuildConfig.FLAVOR;
        this.useParentImg = BuildConfig.FLAVOR;
        this.showComments = false;
        this.episodeFlag = BuildConfig.FLAVOR;
        this.trailer = BuildConfig.FLAVOR;
        this.parentSkipping = BuildConfig.FLAVOR;
        this.imgThumbObjUrl = BuildConfig.FLAVOR;
        this.skippingDurations = skippingDurationsApi;
        this.arTranslationFilePath = BuildConfig.FLAVOR;
        this.translations = w21Var;
        this.hasIntroSkipping = false;
        this.introSkipping = w21Var;
        this.categories = w21Var;
        this.videoLikesNumber = BuildConfig.FLAVOR;
        this.videoDisLikesNumber = BuildConfig.FLAVOR;
        this.videoLanguages = videoLanguagesApi;
        this.videoCommentsNumber = 0;
        this.videoViewsNumber = BuildConfig.FLAVOR;
        this.directorsInfo = w21Var;
        this.actorsInfo = w21Var;
        this.writersInfo = w21Var;
        this.itemOrderList = BuildConfig.FLAVOR;
        this.listId = BuildConfig.FLAVOR;
        this.listSortOrder = BuildConfig.FLAVOR;
        this.customArTitle = BuildConfig.FLAVOR;
        this.customEnTitle = BuildConfig.FLAVOR;
        this.castable = BuildConfig.FLAVOR;
        this.publishDate = BuildConfig.FLAVOR;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VideoModelApi)) {
            return false;
        }
        VideoModelApi videoModelApi = (VideoModelApi) obj;
        return j32.a(this.nb, videoModelApi.nb) && j32.a(this.enTitle, videoModelApi.enTitle) && j32.a(this.arTitle, videoModelApi.arTitle) && j32.a(this.stars, videoModelApi.stars) && j32.a(this.arContent, videoModelApi.arContent) && j32.a(this.enContent, videoModelApi.enContent) && j32.a(this.mDate, videoModelApi.mDate) && j32.a(this.year, videoModelApi.year) && j32.a(this.kind, videoModelApi.kind) && j32.a(this.season, videoModelApi.season) && j32.a(this.imgObjUrl, videoModelApi.imgObjUrl) && j32.a(this.imgMediumThumbObjUrl, videoModelApi.imgMediumThumbObjUrl) && j32.a(this.filmRating, videoModelApi.filmRating) && j32.a(this.seriesRating, videoModelApi.seriesRating) && j32.a(this.episodeNummer, videoModelApi.episodeNummer) && j32.a(this.rate, videoModelApi.rate) && j32.a(this.isSpecial, videoModelApi.isSpecial) && j32.a(this.itemDate, videoModelApi.itemDate) && j32.a(this.duration, videoModelApi.duration) && j32.a(this.imdbUrlRef, videoModelApi.imdbUrlRef) && j32.a(this.rootSeries, videoModelApi.rootSeries) && j32.a(this.useParentImg, videoModelApi.useParentImg) && this.showComments == videoModelApi.showComments && j32.a(this.episodeFlag, videoModelApi.episodeFlag) && j32.a(this.trailer, videoModelApi.trailer) && j32.a(this.parentSkipping, videoModelApi.parentSkipping) && j32.a(this.imgThumbObjUrl, videoModelApi.imgThumbObjUrl) && j32.a(this.skippingDurations, videoModelApi.skippingDurations) && j32.a(this.arTranslationFilePath, videoModelApi.arTranslationFilePath) && j32.a(this.translations, videoModelApi.translations) && this.hasIntroSkipping == videoModelApi.hasIntroSkipping && j32.a(this.introSkipping, videoModelApi.introSkipping) && j32.a(this.categories, videoModelApi.categories) && j32.a(this.videoLikesNumber, videoModelApi.videoLikesNumber) && j32.a(this.videoDisLikesNumber, videoModelApi.videoDisLikesNumber) && j32.a(this.videoLanguages, videoModelApi.videoLanguages) && this.videoCommentsNumber == videoModelApi.videoCommentsNumber && j32.a(this.videoViewsNumber, videoModelApi.videoViewsNumber) && j32.a(this.directorsInfo, videoModelApi.directorsInfo) && j32.a(this.actorsInfo, videoModelApi.actorsInfo) && j32.a(this.writersInfo, videoModelApi.writersInfo) && j32.a(this.itemOrderList, videoModelApi.itemOrderList) && j32.a(this.listId, videoModelApi.listId) && j32.a(this.listSortOrder, videoModelApi.listSortOrder) && j32.a(this.customArTitle, videoModelApi.customArTitle) && j32.a(this.customEnTitle, videoModelApi.customEnTitle) && j32.a(this.castable, videoModelApi.castable) && j32.a(this.publishDate, videoModelApi.publishDate);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v24, types: [int] */
    /* JADX WARN: Type inference failed for: r0v33, types: [int] */
    /* JADX WARN: Type inference failed for: r1v22, types: [int] */
    /* JADX WARN: Type inference failed for: r1v55 */
    /* JADX WARN: Type inference failed for: r1v56 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [int] */
    /* JADX WARN: Type inference failed for: r2v4 */
    public int hashCode() {
        int iA = ik4.a(this.useParentImg, ik4.a(this.rootSeries, ik4.a(this.imdbUrlRef, ik4.a(this.duration, ik4.a(this.itemDate, ik4.a(this.isSpecial, ik4.a(this.rate, ik4.a(this.episodeNummer, ik4.a(this.seriesRating, ik4.a(this.filmRating, ik4.a(this.imgMediumThumbObjUrl, ik4.a(this.imgObjUrl, ik4.a(this.season, ik4.a(this.kind, ik4.a(this.year, ik4.a(this.mDate, ik4.a(this.enContent, ik4.a(this.arContent, ik4.a(this.stars, ik4.a(this.arTitle, ik4.a(this.enTitle, this.nb.hashCode() * 31, 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31);
        boolean z = this.showComments;
        int r1 = z ? 1 : 0;
        if (z) {
            r1 = 1;
        }
        int iA2 = j60.a(this.translations, ik4.a(this.arTranslationFilePath, (this.skippingDurations.hashCode() + ik4.a(this.imgThumbObjUrl, ik4.a(this.parentSkipping, ik4.a(this.trailer, ik4.a(this.episodeFlag, (iA + r1) * 31, 31), 31), 31), 31)) * 31, 31), 31);
        boolean z2 = this.hasIntroSkipping;
        return this.publishDate.hashCode() + ik4.a(this.castable, ik4.a(this.customEnTitle, ik4.a(this.customArTitle, ik4.a(this.listSortOrder, ik4.a(this.listId, ik4.a(this.itemOrderList, j60.a(this.writersInfo, j60.a(this.actorsInfo, j60.a(this.directorsInfo, ik4.a(this.videoViewsNumber, (((this.videoLanguages.hashCode() + ik4.a(this.videoDisLikesNumber, ik4.a(this.videoLikesNumber, j60.a(this.categories, j60.a(this.introSkipping, (iA2 + (z2 ? 1 : 0)) * 31, 31), 31), 31), 31)) * 31) + this.videoCommentsNumber) * 31, 31), 31), 31), 31), 31), 31), 31), 31), 31), 31);
    }

    public String toString() {
        StringBuilder sbA = um3.a("VideoModelApi(nb=");
        sbA.append(this.nb);
        sbA.append(", enTitle=");
        sbA.append(this.enTitle);
        sbA.append(", arTitle=");
        sbA.append(this.arTitle);
        sbA.append(", stars=");
        sbA.append(this.stars);
        sbA.append(", arContent=");
        sbA.append(this.arContent);
        sbA.append(", enContent=");
        sbA.append(this.enContent);
        sbA.append(", mDate=");
        sbA.append(this.mDate);
        sbA.append(", year=");
        sbA.append(this.year);
        sbA.append(", kind=");
        sbA.append(this.kind);
        sbA.append(", season=");
        sbA.append(this.season);
        sbA.append(", imgObjUrl=");
        sbA.append(this.imgObjUrl);
        sbA.append(", imgMediumThumbObjUrl=");
        sbA.append(this.imgMediumThumbObjUrl);
        sbA.append(", filmRating=");
        sbA.append(this.filmRating);
        sbA.append(", seriesRating=");
        sbA.append(this.seriesRating);
        sbA.append(", episodeNummer=");
        sbA.append(this.episodeNummer);
        sbA.append(", rate=");
        sbA.append(this.rate);
        sbA.append(", isSpecial=");
        sbA.append(this.isSpecial);
        sbA.append(", itemDate=");
        sbA.append(this.itemDate);
        sbA.append(", duration=");
        sbA.append(this.duration);
        sbA.append(", imdbUrlRef=");
        sbA.append(this.imdbUrlRef);
        sbA.append(", rootSeries=");
        sbA.append(this.rootSeries);
        sbA.append(", useParentImg=");
        sbA.append(this.useParentImg);
        sbA.append(", showComments=");
        sbA.append(this.showComments);
        sbA.append(", episodeFlag=");
        sbA.append(this.episodeFlag);
        sbA.append(", trailer=");
        sbA.append(this.trailer);
        sbA.append(", parentSkipping=");
        sbA.append(this.parentSkipping);
        sbA.append(", imgThumbObjUrl=");
        sbA.append(this.imgThumbObjUrl);
        sbA.append(", skippingDurations=");
        sbA.append(this.skippingDurations);
        sbA.append(", arTranslationFilePath=");
        sbA.append(this.arTranslationFilePath);
        sbA.append(", translations=");
        sbA.append(this.translations);
        sbA.append(", hasIntroSkipping=");
        sbA.append(this.hasIntroSkipping);
        sbA.append(", introSkipping=");
        sbA.append(this.introSkipping);
        sbA.append(", categories=");
        sbA.append(this.categories);
        sbA.append(", videoLikesNumber=");
        sbA.append(this.videoLikesNumber);
        sbA.append(", videoDisLikesNumber=");
        sbA.append(this.videoDisLikesNumber);
        sbA.append(", videoLanguages=");
        sbA.append(this.videoLanguages);
        sbA.append(", videoCommentsNumber=");
        sbA.append(this.videoCommentsNumber);
        sbA.append(", videoViewsNumber=");
        sbA.append(this.videoViewsNumber);
        sbA.append(", directorsInfo=");
        sbA.append(this.directorsInfo);
        sbA.append(", actorsInfo=");
        sbA.append(this.actorsInfo);
        sbA.append(", writersInfo=");
        sbA.append(this.writersInfo);
        sbA.append(", itemOrderList=");
        sbA.append(this.itemOrderList);
        sbA.append(", listId=");
        sbA.append(this.listId);
        sbA.append(", listSortOrder=");
        sbA.append(this.listSortOrder);
        sbA.append(", customArTitle=");
        sbA.append(this.customArTitle);
        sbA.append(", customEnTitle=");
        sbA.append(this.customEnTitle);
        sbA.append(", castable=");
        sbA.append(this.castable);
        sbA.append(", publishDate=");
        return h61.a(sbA, this.publishDate, ')');
    }
}
