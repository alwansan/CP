.class public final Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;
.super Ljava/lang/Object;
.source "VideoModelApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$SkippingDurationsApi;,
        Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$a;,
        Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$IntroSkippingApi;,
        Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$CategoryApi;,
        Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$VideoLanguagesApi;,
        Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$StaffsInfoApi;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008D\n\u0002\u0010\u000b\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008%\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u000c\u00ad\u0001\u00ae\u0001\u00af\u0001\u00b0\u0001\u00b1\u0001\u00b2\u0001R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\u0004\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\"\u0010\u000c\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\u0004\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\"\u0010\u000f\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0004\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\"\u0010\u0012\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0004\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R\"\u0010\u0015\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0004\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u0008R\"\u0010\u0018\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0004\u001a\u0004\u0008\u0019\u0010\u0006\"\u0004\u0008\u001a\u0010\u0008R\"\u0010\u001b\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u0004\u001a\u0004\u0008\u001c\u0010\u0006\"\u0004\u0008\u001d\u0010\u0008R\"\u0010\u001e\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u0004\u001a\u0004\u0008\u001f\u0010\u0006\"\u0004\u0008 \u0010\u0008R\"\u0010!\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008!\u0010\u0004\u001a\u0004\u0008\"\u0010\u0006\"\u0004\u0008#\u0010\u0008R\"\u0010$\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010\u0004\u001a\u0004\u0008%\u0010\u0006\"\u0004\u0008&\u0010\u0008R\"\u0010\'\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\'\u0010\u0004\u001a\u0004\u0008(\u0010\u0006\"\u0004\u0008)\u0010\u0008R\"\u0010*\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010\u0004\u001a\u0004\u0008+\u0010\u0006\"\u0004\u0008,\u0010\u0008R\"\u0010-\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008-\u0010\u0004\u001a\u0004\u0008.\u0010\u0006\"\u0004\u0008/\u0010\u0008R\"\u00100\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u00080\u0010\u0004\u001a\u0004\u00081\u0010\u0006\"\u0004\u00082\u0010\u0008R\"\u00103\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u00083\u0010\u0004\u001a\u0004\u00084\u0010\u0006\"\u0004\u00085\u0010\u0008R\"\u00106\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u00086\u0010\u0004\u001a\u0004\u00086\u0010\u0006\"\u0004\u00087\u0010\u0008R\"\u00108\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u00088\u0010\u0004\u001a\u0004\u00089\u0010\u0006\"\u0004\u0008:\u0010\u0008R\"\u0010;\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008;\u0010\u0004\u001a\u0004\u0008<\u0010\u0006\"\u0004\u0008=\u0010\u0008R\"\u0010>\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008>\u0010\u0004\u001a\u0004\u0008?\u0010\u0006\"\u0004\u0008@\u0010\u0008R\"\u0010A\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008A\u0010\u0004\u001a\u0004\u0008B\u0010\u0006\"\u0004\u0008C\u0010\u0008R\"\u0010D\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008D\u0010\u0004\u001a\u0004\u0008E\u0010\u0006\"\u0004\u0008F\u0010\u0008R\"\u0010H\u001a\u00020G8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008H\u0010I\u001a\u0004\u0008J\u0010K\"\u0004\u0008L\u0010MR\"\u0010N\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008N\u0010\u0004\u001a\u0004\u0008O\u0010\u0006\"\u0004\u0008P\u0010\u0008R\"\u0010Q\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008Q\u0010\u0004\u001a\u0004\u0008R\u0010\u0006\"\u0004\u0008S\u0010\u0008R\"\u0010T\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008T\u0010\u0004\u001a\u0004\u0008U\u0010\u0006\"\u0004\u0008V\u0010\u0008R\"\u0010W\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008W\u0010\u0004\u001a\u0004\u0008X\u0010\u0006\"\u0004\u0008Y\u0010\u0008R\"\u0010[\u001a\u00020Z8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008[\u0010\\\u001a\u0004\u0008]\u0010^\"\u0004\u0008_\u0010`R\"\u0010a\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008a\u0010\u0004\u001a\u0004\u0008b\u0010\u0006\"\u0004\u0008c\u0010\u0008R(\u0010f\u001a\u0008\u0012\u0004\u0012\u00020e0d8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008f\u0010g\u001a\u0004\u0008h\u0010i\"\u0004\u0008j\u0010kR\"\u0010l\u001a\u00020G8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008l\u0010I\u001a\u0004\u0008m\u0010K\"\u0004\u0008n\u0010MR(\u0010p\u001a\u0008\u0012\u0004\u0012\u00020o0d8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008p\u0010g\u001a\u0004\u0008q\u0010i\"\u0004\u0008r\u0010kR(\u0010t\u001a\u0008\u0012\u0004\u0012\u00020s0d8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008t\u0010g\u001a\u0004\u0008u\u0010i\"\u0004\u0008v\u0010kR\"\u0010w\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008w\u0010\u0004\u001a\u0004\u0008x\u0010\u0006\"\u0004\u0008y\u0010\u0008R\"\u0010z\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008z\u0010\u0004\u001a\u0004\u0008{\u0010\u0006\"\u0004\u0008|\u0010\u0008R&\u0010~\u001a\u00020}8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0004\u0008~\u0010\u007f\u001a\u0006\u0008\u0080\u0001\u0010\u0081\u0001\"\u0006\u0008\u0082\u0001\u0010\u0083\u0001R*\u0010\u0085\u0001\u001a\u00030\u0084\u00018\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0085\u0001\u0010\u0086\u0001\u001a\u0006\u0008\u0087\u0001\u0010\u0088\u0001\"\u0006\u0008\u0089\u0001\u0010\u008a\u0001R&\u0010\u008b\u0001\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0015\n\u0005\u0008\u008b\u0001\u0010\u0004\u001a\u0005\u0008\u008c\u0001\u0010\u0006\"\u0005\u0008\u008d\u0001\u0010\u0008R-\u0010\u008f\u0001\u001a\t\u0012\u0005\u0012\u00030\u008e\u00010d8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0015\n\u0005\u0008\u008f\u0001\u0010g\u001a\u0005\u0008\u0090\u0001\u0010i\"\u0005\u0008\u0091\u0001\u0010kR-\u0010\u0092\u0001\u001a\t\u0012\u0005\u0012\u00030\u008e\u00010d8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0092\u0001\u0010g\u001a\u0005\u0008\u0093\u0001\u0010i\"\u0005\u0008\u0094\u0001\u0010kR-\u0010\u0095\u0001\u001a\t\u0012\u0005\u0012\u00030\u008e\u00010d8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0095\u0001\u0010g\u001a\u0005\u0008\u0096\u0001\u0010i\"\u0005\u0008\u0097\u0001\u0010kR&\u0010\u0098\u0001\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0098\u0001\u0010\u0004\u001a\u0005\u0008\u0099\u0001\u0010\u0006\"\u0005\u0008\u009a\u0001\u0010\u0008R&\u0010\u009b\u0001\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0015\n\u0005\u0008\u009b\u0001\u0010\u0004\u001a\u0005\u0008\u009c\u0001\u0010\u0006\"\u0005\u0008\u009d\u0001\u0010\u0008R&\u0010\u009e\u0001\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0015\n\u0005\u0008\u009e\u0001\u0010\u0004\u001a\u0005\u0008\u009f\u0001\u0010\u0006\"\u0005\u0008\u00a0\u0001\u0010\u0008R&\u0010\u00a1\u0001\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00a1\u0001\u0010\u0004\u001a\u0005\u0008\u00a2\u0001\u0010\u0006\"\u0005\u0008\u00a3\u0001\u0010\u0008R&\u0010\u00a4\u0001\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00a4\u0001\u0010\u0004\u001a\u0005\u0008\u00a5\u0001\u0010\u0006\"\u0005\u0008\u00a6\u0001\u0010\u0008R&\u0010\u00a7\u0001\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00a7\u0001\u0010\u0004\u001a\u0005\u0008\u00a8\u0001\u0010\u0006\"\u0005\u0008\u00a9\u0001\u0010\u0008R&\u0010\u00aa\u0001\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00aa\u0001\u0010\u0004\u001a\u0005\u0008\u00ab\u0001\u0010\u0006\"\u0005\u0008\u00ac\u0001\u0010\u0008\u00a8\u0006\u00b3\u0001"
    }
    d2 = {
        "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;",
        "",
        "",
        "nb",
        "Ljava/lang/String;",
        "getNb",
        "()Ljava/lang/String;",
        "setNb",
        "(Ljava/lang/String;)V",
        "enTitle",
        "getEnTitle",
        "setEnTitle",
        "arTitle",
        "getArTitle",
        "setArTitle",
        "stars",
        "getStars",
        "setStars",
        "arContent",
        "getArContent",
        "setArContent",
        "enContent",
        "getEnContent",
        "setEnContent",
        "mDate",
        "getMDate",
        "setMDate",
        "year",
        "getYear",
        "setYear",
        "kind",
        "getKind",
        "setKind",
        "season",
        "getSeason",
        "setSeason",
        "imgObjUrl",
        "getImgObjUrl",
        "setImgObjUrl",
        "imgMediumThumbObjUrl",
        "getImgMediumThumbObjUrl",
        "setImgMediumThumbObjUrl",
        "filmRating",
        "getFilmRating",
        "setFilmRating",
        "seriesRating",
        "getSeriesRating",
        "setSeriesRating",
        "episodeNummer",
        "getEpisodeNummer",
        "setEpisodeNummer",
        "rate",
        "getRate",
        "setRate",
        "isSpecial",
        "setSpecial",
        "itemDate",
        "getItemDate",
        "setItemDate",
        "duration",
        "getDuration",
        "setDuration",
        "imdbUrlRef",
        "getImdbUrlRef",
        "setImdbUrlRef",
        "rootSeries",
        "getRootSeries",
        "setRootSeries",
        "useParentImg",
        "getUseParentImg",
        "setUseParentImg",
        "",
        "showComments",
        "Z",
        "getShowComments",
        "()Z",
        "setShowComments",
        "(Z)V",
        "episodeFlag",
        "getEpisodeFlag",
        "setEpisodeFlag",
        "trailer",
        "getTrailer",
        "setTrailer",
        "parentSkipping",
        "getParentSkipping",
        "setParentSkipping",
        "imgThumbObjUrl",
        "getImgThumbObjUrl",
        "setImgThumbObjUrl",
        "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$SkippingDurationsApi;",
        "skippingDurations",
        "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$SkippingDurationsApi;",
        "getSkippingDurations",
        "()Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$SkippingDurationsApi;",
        "setSkippingDurations",
        "(Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$SkippingDurationsApi;)V",
        "arTranslationFilePath",
        "getArTranslationFilePath",
        "setArTranslationFilePath",
        "",
        "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$a;",
        "translations",
        "Ljava/util/List;",
        "getTranslations",
        "()Ljava/util/List;",
        "setTranslations",
        "(Ljava/util/List;)V",
        "hasIntroSkipping",
        "getHasIntroSkipping",
        "setHasIntroSkipping",
        "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$IntroSkippingApi;",
        "introSkipping",
        "getIntroSkipping",
        "setIntroSkipping",
        "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$CategoryApi;",
        "categories",
        "getCategories",
        "setCategories",
        "videoLikesNumber",
        "getVideoLikesNumber",
        "setVideoLikesNumber",
        "videoDisLikesNumber",
        "getVideoDisLikesNumber",
        "setVideoDisLikesNumber",
        "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$VideoLanguagesApi;",
        "videoLanguages",
        "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$VideoLanguagesApi;",
        "getVideoLanguages",
        "()Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$VideoLanguagesApi;",
        "setVideoLanguages",
        "(Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$VideoLanguagesApi;)V",
        "",
        "videoCommentsNumber",
        "I",
        "getVideoCommentsNumber",
        "()I",
        "setVideoCommentsNumber",
        "(I)V",
        "videoViewsNumber",
        "getVideoViewsNumber",
        "setVideoViewsNumber",
        "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$StaffsInfoApi;",
        "directorsInfo",
        "getDirectorsInfo",
        "setDirectorsInfo",
        "actorsInfo",
        "getActorsInfo",
        "setActorsInfo",
        "writersInfo",
        "getWritersInfo",
        "setWritersInfo",
        "itemOrderList",
        "getItemOrderList",
        "setItemOrderList",
        "listId",
        "getListId",
        "setListId",
        "listSortOrder",
        "getListSortOrder",
        "setListSortOrder",
        "customArTitle",
        "getCustomArTitle",
        "setCustomArTitle",
        "customEnTitle",
        "getCustomEnTitle",
        "setCustomEnTitle",
        "castable",
        "getCastable",
        "setCastable",
        "publishDate",
        "getPublishDate",
        "setPublishDate",
        "CategoryApi",
        "IntroSkippingApi",
        "SkippingDurationsApi",
        "StaffsInfoApi",
        "a",
        "VideoLanguagesApi",
        "app_productionBetaRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public actorsInfo:Ljava/util/List;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "actorsInfo"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$StaffsInfoApi;",
            ">;"
        }
    .end annotation
.end field

.field public arContent:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "ar_content"
    .end annotation
.end field

.field public arTitle:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "ar_title"
    .end annotation
.end field

.field public arTranslationFilePath:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "arTranslationFilePath"
    .end annotation
.end field

.field public castable:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "castable"
    .end annotation
.end field

.field public categories:Ljava/util/List;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "categories"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$CategoryApi;",
            ">;"
        }
    .end annotation
.end field

.field public customArTitle:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "custom_ar_title"
    .end annotation
.end field

.field public customEnTitle:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "custom_en_title"
    .end annotation
.end field

.field public directorsInfo:Ljava/util/List;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "directorsInfo"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$StaffsInfoApi;",
            ">;"
        }
    .end annotation
.end field

.field public duration:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "duration"
    .end annotation
.end field

.field public enContent:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "en_content"
    .end annotation
.end field

.field public enTitle:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "en_title"
    .end annotation
.end field

.field public episodeFlag:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "episode_flag"
    .end annotation
.end field

.field public episodeNummer:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "episodeNummer"
    .end annotation
.end field

.field public filmRating:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "filmRating"
    .end annotation
.end field

.field public hasIntroSkipping:Z
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "hasIntroSkipping"
    .end annotation
.end field

.field public imdbUrlRef:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "imdbUrlRef"
    .end annotation
.end field

.field public imgMediumThumbObjUrl:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "imgMediumThumbObjUrl"
    .end annotation
.end field

.field public imgObjUrl:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "imgObjUrl"
    .end annotation
.end field

.field public imgThumbObjUrl:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "imgThumbObjUrl"
    .end annotation
.end field

.field public introSkipping:Ljava/util/List;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "introSkipping"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$IntroSkippingApi;",
            ">;"
        }
    .end annotation
.end field

.field public isSpecial:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "isSpecial"
    .end annotation
.end field

.field public itemDate:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "itemDate"
    .end annotation
.end field

.field public itemOrderList:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "item_order_list"
    .end annotation
.end field

.field public kind:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "kind"
    .end annotation
.end field

.field public listId:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "list_id"
    .end annotation
.end field

.field public listSortOrder:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "list_sort_order"
    .end annotation
.end field

.field public mDate:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "mDate"
    .end annotation
.end field

.field public nb:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "nb"
    .end annotation
.end field

.field public parentSkipping:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "parent_skipping"
    .end annotation
.end field

.field public publishDate:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "publishDate"
    .end annotation
.end field

.field public rate:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "rate"
    .end annotation
.end field

.field public rootSeries:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "rootSeries"
    .end annotation
.end field

.field public season:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "season"
    .end annotation
.end field

.field public seriesRating:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "seriesRating"
    .end annotation
.end field

.field public showComments:Z
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "showComments"
    .end annotation
.end field

.field public skippingDurations:Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$SkippingDurationsApi;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "skippingDurations"
    .end annotation
.end field

.field public stars:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "stars"
    .end annotation
.end field

.field public trailer:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "trailer"
    .end annotation
.end field

.field public translations:Ljava/util/List;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "translations"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$a;",
            ">;"
        }
    .end annotation
.end field

.field public useParentImg:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "useParentImg"
    .end annotation
.end field

.field public videoCommentsNumber:I
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "videoCommentsNumber"
    .end annotation
.end field

.field public videoDisLikesNumber:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "videoDisLikesNumber"
    .end annotation
.end field

.field public videoLanguages:Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$VideoLanguagesApi;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "videoLanguages"
    .end annotation
.end field

.field public videoLikesNumber:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "videoLikesNumber"
    .end annotation
.end field

.field public videoViewsNumber:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "videoViewsNumber"
    .end annotation
.end field

.field public writersInfo:Ljava/util/List;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "writersInfo"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$StaffsInfoApi;",
            ">;"
        }
    .end annotation
.end field

.field public year:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "year"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    const-string v0, "0"

    const-string v1, ""

    const/4 v2, 0x0

    .line 1
    new-instance v3, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$SkippingDurationsApi;

    const/4 v4, 0x3

    invoke-direct {v3, v2, v2, v4}, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$SkippingDurationsApi;-><init>(Ljava/util/List;Ljava/util/List;I)V

    .line 2
    sget-object v5, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    .line 3
    new-instance v6, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$VideoLanguagesApi;

    invoke-direct {v6, v2, v2, v4}, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$VideoLanguagesApi;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "nb"

    .line 4
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "enTitle"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "arTitle"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "stars"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "arContent"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "enContent"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "mDate"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "year"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "kind"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "season"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "imgObjUrl"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "imgMediumThumbObjUrl"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "filmRating"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "seriesRating"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "episodeNummer"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "rate"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "isSpecial"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "itemDate"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "duration"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "imdbUrlRef"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "rootSeries"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "useParentImg"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "episodeFlag"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "trailer"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "parentSkipping"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "imgThumbObjUrl"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "skippingDurations"

    invoke-static {v3, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "arTranslationFilePath"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "translations"

    invoke-static {v5, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "introSkipping"

    invoke-static {v5, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "categories"

    invoke-static {v5, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "videoLikesNumber"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "videoDisLikesNumber"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "videoLanguages"

    invoke-static {v6, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "videoViewsNumber"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "directorsInfo"

    invoke-static {v5, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "actorsInfo"

    invoke-static {v5, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "writersInfo"

    invoke-static {v5, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "itemOrderList"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "listId"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "listSortOrder"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "customArTitle"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "customEnTitle"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "castable"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "publishDate"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->nb:Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->enTitle:Ljava/lang/String;

    .line 8
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->arTitle:Ljava/lang/String;

    .line 9
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->stars:Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->arContent:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->enContent:Ljava/lang/String;

    .line 12
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->mDate:Ljava/lang/String;

    .line 13
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->year:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->kind:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->season:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->imgObjUrl:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->imgMediumThumbObjUrl:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->filmRating:Ljava/lang/String;

    .line 19
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->seriesRating:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->episodeNummer:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->rate:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->isSpecial:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->itemDate:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->duration:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->imdbUrlRef:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->rootSeries:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->useParentImg:Ljava/lang/String;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->showComments:Z

    .line 29
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->episodeFlag:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->trailer:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->parentSkipping:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->imgThumbObjUrl:Ljava/lang/String;

    .line 33
    iput-object v3, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->skippingDurations:Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$SkippingDurationsApi;

    .line 34
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->arTranslationFilePath:Ljava/lang/String;

    .line 35
    iput-object v5, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->translations:Ljava/util/List;

    .line 36
    iput-boolean v0, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->hasIntroSkipping:Z

    .line 37
    iput-object v5, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->introSkipping:Ljava/util/List;

    .line 38
    iput-object v5, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->categories:Ljava/util/List;

    .line 39
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->videoLikesNumber:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->videoDisLikesNumber:Ljava/lang/String;

    .line 41
    iput-object v6, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->videoLanguages:Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$VideoLanguagesApi;

    .line 42
    iput v0, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->videoCommentsNumber:I

    .line 43
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->videoViewsNumber:Ljava/lang/String;

    .line 44
    iput-object v5, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->directorsInfo:Ljava/util/List;

    .line 45
    iput-object v5, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->actorsInfo:Ljava/util/List;

    .line 46
    iput-object v5, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->writersInfo:Ljava/util/List;

    .line 47
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->itemOrderList:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->listId:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->listSortOrder:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->customArTitle:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->customEnTitle:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->castable:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->publishDate:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->nb:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->nb:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->enTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->enTitle:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->arTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->arTitle:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->stars:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->stars:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->arContent:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->arContent:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->enContent:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->enContent:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->mDate:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->mDate:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->year:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->year:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->kind:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->kind:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->season:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->season:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->imgObjUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->imgObjUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->imgMediumThumbObjUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->imgMediumThumbObjUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->filmRating:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->filmRating:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->seriesRating:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->seriesRating:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->episodeNummer:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->episodeNummer:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->rate:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->rate:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->isSpecial:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->isSpecial:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->itemDate:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->itemDate:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->duration:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->duration:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->imdbUrlRef:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->imdbUrlRef:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->rootSeries:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->rootSeries:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->useParentImg:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->useParentImg:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-boolean v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->showComments:Z

    iget-boolean v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->showComments:Z

    if-eq v1, v3, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->episodeFlag:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->episodeFlag:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->trailer:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->trailer:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->parentSkipping:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->parentSkipping:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v2

    :cond_1b
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->imgThumbObjUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->imgThumbObjUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v2

    :cond_1c
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->skippingDurations:Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$SkippingDurationsApi;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->skippingDurations:Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$SkippingDurationsApi;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v2

    :cond_1d
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->arTranslationFilePath:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->arTranslationFilePath:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->translations:Ljava/util/List;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->translations:Ljava/util/List;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v2

    :cond_1f
    iget-boolean v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->hasIntroSkipping:Z

    iget-boolean v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->hasIntroSkipping:Z

    if-eq v1, v3, :cond_20

    return v2

    :cond_20
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->introSkipping:Ljava/util/List;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->introSkipping:Ljava/util/List;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v2

    :cond_21
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->categories:Ljava/util/List;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->categories:Ljava/util/List;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->videoLikesNumber:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->videoLikesNumber:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    return v2

    :cond_23
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->videoDisLikesNumber:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->videoDisLikesNumber:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    return v2

    :cond_24
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->videoLanguages:Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$VideoLanguagesApi;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->videoLanguages:Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$VideoLanguagesApi;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    return v2

    :cond_25
    iget v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->videoCommentsNumber:I

    iget v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->videoCommentsNumber:I

    if-eq v1, v3, :cond_26

    return v2

    :cond_26
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->videoViewsNumber:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->videoViewsNumber:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    return v2

    :cond_27
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->directorsInfo:Ljava/util/List;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->directorsInfo:Ljava/util/List;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    return v2

    :cond_28
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->actorsInfo:Ljava/util/List;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->actorsInfo:Ljava/util/List;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->writersInfo:Ljava/util/List;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->writersInfo:Ljava/util/List;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    return v2

    :cond_2a
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->itemOrderList:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->itemOrderList:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    return v2

    :cond_2b
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->listId:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->listId:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    return v2

    :cond_2c
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->listSortOrder:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->listSortOrder:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->customArTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->customArTitle:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    return v2

    :cond_2e
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->customEnTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->customEnTitle:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    return v2

    :cond_2f
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->castable:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->castable:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v2

    :cond_30
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->publishDate:Ljava/lang/String;

    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->publishDate:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    return v2

    :cond_31
    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->nb:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->enTitle:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->arTitle:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->stars:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->arContent:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->enContent:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->mDate:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->year:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->kind:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->season:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->imgObjUrl:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->imgMediumThumbObjUrl:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->filmRating:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->seriesRating:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->episodeNummer:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->rate:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->isSpecial:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->itemDate:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->duration:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->imdbUrlRef:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->rootSeries:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->useParentImg:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-boolean v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->showComments:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->episodeFlag:Ljava/lang/String;

    const/16 v3, 0x1f

    invoke-static {v1, v0, v3}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->trailer:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->parentSkipping:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->imgThumbObjUrl:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->skippingDurations:Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$SkippingDurationsApi;

    invoke-virtual {v1}, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$SkippingDurationsApi;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->arTranslationFilePath:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->translations:Ljava/util/List;

    invoke-static {v1, v0, v3}, Lcom/shabakaty/downloader/j60;->a(Ljava/util/List;II)I

    move-result v0

    iget-boolean v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->hasIntroSkipping:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->introSkipping:Ljava/util/List;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/j60;->a(Ljava/util/List;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->categories:Ljava/util/List;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/j60;->a(Ljava/util/List;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->videoLikesNumber:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->videoDisLikesNumber:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->videoLanguages:Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$VideoLanguagesApi;

    invoke-virtual {v1}, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$VideoLanguagesApi;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->videoCommentsNumber:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->videoViewsNumber:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->directorsInfo:Ljava/util/List;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/j60;->a(Ljava/util/List;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->actorsInfo:Ljava/util/List;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/j60;->a(Ljava/util/List;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->writersInfo:Ljava/util/List;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/j60;->a(Ljava/util/List;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->itemOrderList:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->listId:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->listSortOrder:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->customArTitle:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->customEnTitle:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->castable:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->publishDate:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "VideoModelApi(nb="

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->nb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", enTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->enTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", arTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->arTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", stars="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->stars:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", arContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->arContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", enContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->enContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->mDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->year:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", kind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->kind:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", season="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->season:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", imgObjUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->imgObjUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", imgMediumThumbObjUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->imgMediumThumbObjUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", filmRating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->filmRating:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", seriesRating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->seriesRating:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", episodeNummer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->episodeNummer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->rate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isSpecial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->isSpecial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", itemDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->itemDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->duration:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", imdbUrlRef="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->imdbUrlRef:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rootSeries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->rootSeries:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", useParentImg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->useParentImg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", showComments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->showComments:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", episodeFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->episodeFlag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", trailer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->trailer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", parentSkipping="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->parentSkipping:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", imgThumbObjUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->imgThumbObjUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", skippingDurations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->skippingDurations:Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$SkippingDurationsApi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", arTranslationFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->arTranslationFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", translations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->translations:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasIntroSkipping="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->hasIntroSkipping:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", introSkipping="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->introSkipping:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", categories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->categories:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoLikesNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->videoLikesNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoDisLikesNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->videoDisLikesNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoLanguages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->videoLanguages:Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$VideoLanguagesApi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoCommentsNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->videoCommentsNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoViewsNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->videoViewsNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", directorsInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->directorsInfo:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", actorsInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->actorsInfo:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", writersInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->writersInfo:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", itemOrderList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->itemOrderList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", listId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->listId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", listSortOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->listSortOrder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", customArTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->customArTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", customEnTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->customEnTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", castable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->castable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", publishDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->publishDate:Ljava/lang/String;

    const/16 v2, 0x29

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/h61;->a(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
