.class public final Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;
.super Ljava/lang/Object;
.source "CinemanaDownloadEntity.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u00083\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0011\u0008\u0087\u0008\u0018\u0000 Y2\u00020\u0001:\u0001ZB\u00ed\u0001\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\"\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010%\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010(\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010+\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010.\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u00101\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u00104\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u00107\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010:\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010>\u001a\u00020=\u0012\u0008\u0008\u0002\u0010D\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010G\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010K\u001a\u00020J\u0012\u0008\u0008\u0002\u0010Q\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010T\u001a\u00020\u0002\u00a2\u0006\u0004\u0008W\u0010XR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\"\u0010\u0010\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0004\u001a\u0004\u0008\u0011\u0010\u0006\"\u0004\u0008\u0012\u0010\u0008R\"\u0010\u0013\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0004\u001a\u0004\u0008\u0014\u0010\u0006\"\u0004\u0008\u0015\u0010\u0008R\"\u0010\u0016\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0004\u001a\u0004\u0008\u0017\u0010\u0006\"\u0004\u0008\u0018\u0010\u0008R\"\u0010\u0019\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u000b\u001a\u0004\u0008\u001a\u0010\r\"\u0004\u0008\u001b\u0010\u000fR\"\u0010\u001c\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u0004\u001a\u0004\u0008\u001d\u0010\u0006\"\u0004\u0008\u001e\u0010\u0008R\"\u0010\u001f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010\u0004\u001a\u0004\u0008 \u0010\u0006\"\u0004\u0008!\u0010\u0008R\"\u0010\"\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010\u0004\u001a\u0004\u0008#\u0010\u0006\"\u0004\u0008$\u0010\u0008R\"\u0010%\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010\u0004\u001a\u0004\u0008&\u0010\u0006\"\u0004\u0008\'\u0010\u0008R\"\u0010(\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008(\u0010\u0004\u001a\u0004\u0008)\u0010\u0006\"\u0004\u0008*\u0010\u0008R\"\u0010+\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008+\u0010\u0004\u001a\u0004\u0008,\u0010\u0006\"\u0004\u0008-\u0010\u0008R\"\u0010.\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008.\u0010\u0004\u001a\u0004\u0008/\u0010\u0006\"\u0004\u00080\u0010\u0008R\"\u00101\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00081\u0010\u0004\u001a\u0004\u00082\u0010\u0006\"\u0004\u00083\u0010\u0008R\"\u00104\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00084\u0010\u0004\u001a\u0004\u00085\u0010\u0006\"\u0004\u00086\u0010\u0008R\"\u00107\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00087\u0010\u000b\u001a\u0004\u00088\u0010\r\"\u0004\u00089\u0010\u000fR\"\u0010:\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008:\u0010\u0004\u001a\u0004\u0008;\u0010\u0006\"\u0004\u0008<\u0010\u0008R\"\u0010>\u001a\u00020=8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008>\u0010?\u001a\u0004\u0008@\u0010A\"\u0004\u0008B\u0010CR\"\u0010D\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008D\u0010\u0004\u001a\u0004\u0008E\u0010\u0006\"\u0004\u0008F\u0010\u0008R\"\u0010G\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008G\u0010\u0004\u001a\u0004\u0008H\u0010\u0006\"\u0004\u0008I\u0010\u0008R\"\u0010K\u001a\u00020J8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008K\u0010L\u001a\u0004\u0008M\u0010N\"\u0004\u0008O\u0010PR\"\u0010Q\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008Q\u0010\u0004\u001a\u0004\u0008R\u0010\u0006\"\u0004\u0008S\u0010\u0008R\"\u0010T\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008T\u0010\u0004\u001a\u0004\u0008U\u0010\u0006\"\u0004\u0008V\u0010\u0008\u00a8\u0006["
    }
    d2 = {
        "Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;",
        "Landroid/os/Parcelable;",
        "",
        "id",
        "Ljava/lang/String;",
        "getId",
        "()Ljava/lang/String;",
        "setId",
        "(Ljava/lang/String;)V",
        "",
        "downloadTaskId",
        "I",
        "getDownloadTaskId",
        "()I",
        "setDownloadTaskId",
        "(I)V",
        "title",
        "getTitle",
        "setTitle",
        "stars",
        "getStars",
        "setStars",
        "kind",
        "getKind",
        "setKind",
        "sizeMB",
        "getSizeMB",
        "setSizeMB",
        "season",
        "getSeason",
        "setSeason",
        "imgObjUrl",
        "getImgObjUrl",
        "setImgObjUrl",
        "filmRating",
        "getFilmRating",
        "setFilmRating",
        "tvShowRating",
        "getTvShowRating",
        "setTvShowRating",
        "path",
        "getPath",
        "setPath",
        "episodeNumber",
        "getEpisodeNumber",
        "setEpisodeNumber",
        "special",
        "getSpecial",
        "setSpecial",
        "useParentImg",
        "getUseParentImg",
        "setUseParentImg",
        "parentSkipping",
        "getParentSkipping",
        "setParentSkipping",
        "collectionID",
        "getCollectionID",
        "setCollectionID",
        "imgThumbObjUrl",
        "getImgThumbObjUrl",
        "setImgThumbObjUrl",
        "Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;",
        "skippingDurations",
        "Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;",
        "getSkippingDurations",
        "()Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;",
        "setSkippingDurations",
        "(Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;)V",
        "qualityName",
        "getQualityName",
        "setQualityName",
        "rootEpisode",
        "getRootEpisode",
        "setRootEpisode",
        "",
        "hasIntroSkipping",
        "Z",
        "getHasIntroSkipping",
        "()Z",
        "setHasIntroSkipping",
        "(Z)V",
        "episodeFlag",
        "getEpisodeFlag",
        "setEpisodeFlag",
        "lastUpdated",
        "getLastUpdated",
        "setLastUpdated",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V",
        "Companion",
        "a",
        "app_productionBetaRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem$a;


# instance fields
.field public collectionID:I

.field public downloadTaskId:I

.field public episodeFlag:Ljava/lang/String;

.field public episodeNumber:Ljava/lang/String;

.field public filmRating:Ljava/lang/String;

.field public hasIntroSkipping:Z

.field public id:Ljava/lang/String;

.field public imgObjUrl:Ljava/lang/String;

.field public imgThumbObjUrl:Ljava/lang/String;

.field public kind:Ljava/lang/String;

.field public lastUpdated:Ljava/lang/String;

.field public parentSkipping:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public qualityName:Ljava/lang/String;

.field public rootEpisode:Ljava/lang/String;

.field public season:Ljava/lang/String;

.field public sizeMB:I

.field public skippingDurations:Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;

.field public special:Ljava/lang/String;

.field public stars:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public tvShowRating:Ljava/lang/String;

.field public useParentImg:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem$a;-><init>(Lcom/shabakaty/downloader/nn0;)V

    sput-object v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->Companion:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem$a;

    new-instance v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem$b;

    invoke-direct {v0}, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem$b;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 25

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const v24, 0x7fffff

    invoke-direct/range {v0 .. v24}, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    move-object/from16 v13, p15

    move-object/from16 v14, p17

    move-object/from16 v15, p18

    move-object/from16 v0, p19

    const-string v0, "id"

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {v2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stars"

    invoke-static {v3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {v4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "season"

    invoke-static {v5, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imgObjUrl"

    invoke-static {v6, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filmRating"

    invoke-static {v7, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tvShowRating"

    invoke-static {v8, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {v9, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "episodeNumber"

    invoke-static {v10, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "special"

    invoke-static {v11, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "useParentImg"

    invoke-static {v12, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentSkipping"

    invoke-static {v13, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imgThumbObjUrl"

    invoke-static {v14, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "skippingDurations"

    invoke-static {v15, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qualityName"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootEpisode"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "episodeFlag"

    move-object/from16 v15, p22

    invoke-static {v15, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastUpdated"

    move-object/from16 v15, p23

    invoke-static {v15, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v15, p19

    .line 2
    iput-object v1, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->id:Ljava/lang/String;

    move/from16 v1, p2

    .line 3
    iput v1, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->downloadTaskId:I

    .line 4
    iput-object v2, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->title:Ljava/lang/String;

    .line 5
    iput-object v3, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->stars:Ljava/lang/String;

    .line 6
    iput-object v4, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->kind:Ljava/lang/String;

    move/from16 v1, p6

    .line 7
    iput v1, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->sizeMB:I

    .line 8
    iput-object v5, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->season:Ljava/lang/String;

    .line 9
    iput-object v6, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->imgObjUrl:Ljava/lang/String;

    .line 10
    iput-object v7, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->filmRating:Ljava/lang/String;

    .line 11
    iput-object v8, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->tvShowRating:Ljava/lang/String;

    .line 12
    iput-object v9, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->path:Ljava/lang/String;

    .line 13
    iput-object v10, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->episodeNumber:Ljava/lang/String;

    .line 14
    iput-object v11, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->special:Ljava/lang/String;

    .line 15
    iput-object v12, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->useParentImg:Ljava/lang/String;

    .line 16
    iput-object v13, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->parentSkipping:Ljava/lang/String;

    move/from16 v1, p16

    .line 17
    iput v1, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->collectionID:I

    .line 18
    iput-object v14, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->imgThumbObjUrl:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 19
    iput-object v1, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->skippingDurations:Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;

    .line 20
    iput-object v15, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->qualityName:Ljava/lang/String;

    move-object/from16 v1, p20

    move-object/from16 v2, p22

    .line 21
    iput-object v1, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->rootEpisode:Ljava/lang/String;

    move/from16 v1, p21

    .line 22
    iput-boolean v1, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->hasIntroSkipping:Z

    .line 23
    iput-object v2, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->episodeFlag:Ljava/lang/String;

    move-object/from16 v1, p23

    .line 24
    iput-object v1, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->lastUpdated:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 24

    move/from16 v0, p24

    and-int/lit8 v1, v0, 0x1

    const-string v2, "0"

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v5, v0, 0x4

    const-string v6, ""

    if-eqz v5, :cond_2

    move-object v5, v6

    goto :goto_2

    :cond_2
    move-object/from16 v5, p3

    :goto_2
    and-int/lit8 v7, v0, 0x8

    if-eqz v7, :cond_3

    move-object v7, v6

    goto :goto_3

    :cond_3
    move-object/from16 v7, p4

    :goto_3
    and-int/lit8 v8, v0, 0x10

    if-eqz v8, :cond_4

    move-object v8, v6

    goto :goto_4

    :cond_4
    move-object/from16 v8, p5

    :goto_4
    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_5

    const/4 v9, 0x0

    goto :goto_5

    :cond_5
    move/from16 v9, p6

    :goto_5
    and-int/lit8 v10, v0, 0x40

    if-eqz v10, :cond_6

    move-object v10, v6

    goto :goto_6

    :cond_6
    move-object/from16 v10, p7

    :goto_6
    and-int/lit16 v11, v0, 0x80

    if-eqz v11, :cond_7

    move-object v11, v6

    goto :goto_7

    :cond_7
    move-object/from16 v11, p8

    :goto_7
    and-int/lit16 v12, v0, 0x100

    if-eqz v12, :cond_8

    move-object v12, v6

    goto :goto_8

    :cond_8
    move-object/from16 v12, p9

    :goto_8
    and-int/lit16 v13, v0, 0x200

    if-eqz v13, :cond_9

    move-object v13, v6

    goto :goto_9

    :cond_9
    move-object/from16 v13, p10

    :goto_9
    and-int/lit16 v14, v0, 0x400

    if-eqz v14, :cond_a

    move-object v14, v6

    goto :goto_a

    :cond_a
    move-object/from16 v14, p11

    :goto_a
    and-int/lit16 v15, v0, 0x800

    if-eqz v15, :cond_b

    move-object v15, v6

    goto :goto_b

    :cond_b
    move-object/from16 v15, p12

    :goto_b
    and-int/lit16 v4, v0, 0x1000

    if-eqz v4, :cond_c

    move-object v4, v6

    goto :goto_c

    :cond_c
    move-object/from16 v4, p13

    :goto_c
    move-object/from16 p22, v2

    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_d

    move-object v2, v6

    goto :goto_d

    :cond_d
    move-object/from16 v2, p14

    :goto_d
    move-object/from16 p2, v6

    and-int/lit16 v6, v0, 0x4000

    if-eqz v6, :cond_e

    move-object/from16 v6, p2

    goto :goto_e

    :cond_e
    move-object/from16 v6, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    const/16 v16, 0x0

    goto :goto_f

    :cond_f
    move/from16 v16, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_10

    move-object/from16 v17, p2

    goto :goto_10

    :cond_10
    move-object/from16 v17, p17

    :goto_10
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    move-object/from16 v19, v6

    const/4 v6, 0x0

    if-eqz v18, :cond_11

    move-object/from16 v18, v2

    .line 25
    new-instance v2, Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;

    move-object/from16 v20, v4

    const/4 v4, 0x3

    invoke-direct {v2, v6, v6, v4}, Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;-><init>(Ljava/util/List;Ljava/util/List;I)V

    goto :goto_11

    :cond_11
    move-object/from16 v18, v2

    move-object/from16 v20, v4

    move-object/from16 v2, p18

    :goto_11
    const/high16 v4, 0x40000

    and-int/2addr v4, v0

    if-eqz v4, :cond_12

    move-object/from16 v4, p2

    goto :goto_12

    :cond_12
    move-object/from16 v4, p19

    :goto_12
    const/high16 v21, 0x80000

    and-int v21, v0, v21

    if-eqz v21, :cond_13

    move-object/from16 v21, p22

    goto :goto_13

    :cond_13
    move-object/from16 v21, p20

    :goto_13
    const/high16 v22, 0x100000

    and-int v22, v0, v22

    if-eqz v22, :cond_14

    const/16 v22, 0x0

    goto :goto_14

    :cond_14
    move/from16 v22, p21

    :goto_14
    const/high16 v23, 0x200000

    and-int v23, v0, v23

    if-eqz v23, :cond_15

    const-string v6, "0000"

    :cond_15
    const/high16 v23, 0x400000

    and-int v0, v0, v23

    if-eqz v0, :cond_16

    move-object/from16 v0, p2

    goto :goto_15

    :cond_16
    move-object/from16 v0, p23

    :goto_15
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move/from16 p3, v3

    move-object/from16 p4, v5

    move-object/from16 p5, v7

    move-object/from16 p6, v8

    move/from16 p7, v9

    move-object/from16 p8, v10

    move-object/from16 p9, v11

    move-object/from16 p10, v12

    move-object/from16 p11, v13

    move-object/from16 p12, v14

    move-object/from16 p13, v15

    move-object/from16 p14, v20

    move-object/from16 p15, v18

    move-object/from16 p16, v19

    move/from16 p17, v16

    move-object/from16 p18, v17

    move-object/from16 p19, v2

    move-object/from16 p20, v4

    move-object/from16 p21, v21

    move/from16 p22, v22

    move-object/from16 p23, v6

    move-object/from16 p24, v0

    .line 26
    invoke-direct/range {p1 .. p24}, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->season:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->season:Ljava/lang/String;

    const-string v2, "S"

    invoke-static {v2, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->season:Ljava/lang/String;

    const-string v2, "S0"

    invoke-static {v2, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->episodeNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->episodeNumber:Ljava/lang/String;

    const-string v2, "E"

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->episodeNumber:Ljava/lang/String;

    const-string v2, "E0"

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 7
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/util/List;Ljava/util/List;Landroid/content/Context;)Lcom/shabakaty/cinemana/domain/models/local/VideoModel;
    .locals 72
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/data/db/downloads/SubtitleDb;",
            ">;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/p84;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "context"

    move-object/from16 v4, p3

    invoke-static {v4, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v3, Ljava/io/File;

    iget-object v5, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->path:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    iget-object v3, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->path:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/downloads/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5
    :goto_0
    new-instance v15, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-object v4, v15

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v71, v15

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const-wide/16 v59, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, -0x1

    const v70, 0x7fffffff

    invoke-direct/range {v4 .. v70}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/cinemana/domain/models/local/VideoLanguages;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJLjava/lang/String;Ljava/lang/String;ZLcom/shabakaty/downloader/q25;Ljava/util/List;Lcom/shabakaty/cinemana/domain/models/local/Quality;Ljava/lang/String;ZII)V

    .line 6
    iget-object v4, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->id:Ljava/lang/String;

    move-object/from16 v5, v71

    .line 7
    invoke-virtual {v5, v4}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->l(Ljava/lang/String;)V

    .line 8
    iget-object v4, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->title:Ljava/lang/String;

    invoke-static {v4}, Lcom/shabakaty/cinemana/features/DownloadTitle127;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "value"

    .line 9
    invoke-static {v4, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object v4, v5, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->title:Ljava/lang/String;

    .line 11
    iput-object v4, v5, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->enTitle:Ljava/lang/String;

    .line 12
    iput-object v4, v5, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->arTitle:Ljava/lang/String;

    .line 13
    iget-object v4, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->stars:Ljava/lang/String;

    const-string v6, "<set-?>"

    .line 14
    invoke-static {v4, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object v4, v5, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->stars:Ljava/lang/String;

    .line 16
    iget-object v4, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->kind:Ljava/lang/String;

    .line 17
    invoke-static {v4, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object v4, v5, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->kind:Ljava/lang/String;

    .line 19
    iget-object v4, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->season:Ljava/lang/String;

    .line 20
    invoke-static {v4, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object v4, v5, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->season:Ljava/lang/String;

    .line 22
    iget-object v4, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->imgObjUrl:Ljava/lang/String;

    .line 23
    invoke-static {v4, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object v4, v5, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->imgObjUrl:Ljava/lang/String;

    .line 25
    iget-object v4, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->imgObjUrl:Ljava/lang/String;

    .line 26
    invoke-static {v4, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object v4, v5, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->imgMediumThumbObjUrl:Ljava/lang/String;

    .line 28
    iget-object v4, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->imgObjUrl:Ljava/lang/String;

    .line 29
    invoke-virtual {v5, v4}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->k(Ljava/lang/String;)V

    .line 30
    iget-object v4, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->filmRating:Ljava/lang/String;

    .line 31
    invoke-static {v4, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object v4, v5, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->filmRating:Ljava/lang/String;

    .line 33
    iget-object v4, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->tvShowRating:Ljava/lang/String;

    .line 34
    invoke-static {v4, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object v4, v5, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->seriesRating:Ljava/lang/String;

    .line 36
    iget-object v4, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->episodeNumber:Ljava/lang/String;

    .line 37
    invoke-virtual {v5, v4}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->j(Ljava/lang/String;)V

    .line 38
    iget-object v4, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->episodeFlag:Ljava/lang/String;

    .line 39
    invoke-static {v4, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iput-object v4, v5, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->episodeFlag:Ljava/lang/String;

    .line 41
    iget-object v4, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->special:Ljava/lang/String;

    .line 42
    invoke-static {v4, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iput-object v4, v5, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->isSpecial:Ljava/lang/String;

    .line 44
    iget-object v4, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->useParentImg:Ljava/lang/String;

    .line 45
    invoke-static {v4, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iput-object v4, v5, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->useParentImg:Ljava/lang/String;

    .line 47
    iget-object v4, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->parentSkipping:Ljava/lang/String;

    .line 48
    invoke-static {v4, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iput-object v4, v5, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->parentSkipping:Ljava/lang/String;

    .line 50
    iget v4, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->collectionID:I

    .line 51
    iput v4, v5, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->downloadCollectionID:I

    .line 52
    iget-object v4, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->imgThumbObjUrl:Ljava/lang/String;

    .line 53
    invoke-virtual {v5, v4}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->k(Ljava/lang/String;)V

    .line 54
    iget-object v4, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->skippingDurations:Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;

    .line 55
    new-instance v6, Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;

    .line 56
    iget-object v7, v4, Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;->start:Ljava/util/List;

    .line 57
    iget-object v4, v4, Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;->end:Ljava/util/List;

    .line 58
    invoke-direct {v6, v7, v4}, Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 59
    invoke-virtual {v5, v6}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->q(Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;)V

    const/16 v4, 0xa

    const/4 v6, 0x0

    if-nez v1, :cond_1

    move-object v1, v6

    goto :goto_2

    .line 60
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v1, v4}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 62
    check-cast v8, Lcom/shabakaty/cinemana/data/db/downloads/SubtitleDb;

    .line 63
    new-instance v15, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    .line 64
    iget-object v10, v8, Lcom/shabakaty/cinemana/data/db/downloads/SubtitleDb;->id:Ljava/lang/String;

    .line 65
    iget-object v11, v8, Lcom/shabakaty/cinemana/data/db/downloads/SubtitleDb;->name:Ljava/lang/String;

    .line 66
    iget-object v12, v8, Lcom/shabakaty/cinemana/data/db/downloads/SubtitleDb;->type:Ljava/lang/String;

    .line 67
    iget-object v13, v8, Lcom/shabakaty/cinemana/data/db/downloads/SubtitleDb;->extension:Ljava/lang/String;

    .line 68
    iget-object v14, v8, Lcom/shabakaty/cinemana/data/db/downloads/SubtitleDb;->file:Ljava/lang/String;

    move-object v9, v15

    .line 69
    invoke-direct/range {v9 .. v14}, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 70
    :cond_2
    invoke-static {v7}, Lcom/shabakaty/downloader/m50;->z0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    :goto_2
    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    :cond_3
    iput-object v1, v5, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->subtitles:Ljava/util/List;

    .line 72
    iget-object v1, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->skippingDurations:Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;

    .line 73
    new-instance v7, Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;

    .line 74
    iget-object v8, v1, Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;->start:Ljava/util/List;

    .line 75
    iget-object v1, v1, Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;->end:Ljava/util/List;

    .line 76
    invoke-direct {v7, v8, v1}, Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 77
    invoke-virtual {v5, v7}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->q(Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;)V

    .line 78
    iget-object v1, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->rootEpisode:Ljava/lang/String;

    .line 79
    invoke-virtual {v5, v1}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->o(Ljava/lang/String;)V

    .line 80
    iget-boolean v1, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->hasIntroSkipping:Z

    .line 81
    iput-boolean v1, v5, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->hasIntroSkipping:Z

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/shabakaty/cinemana/domain/models/local/Quality;

    const/4 v7, 0x0

    .line 82
    new-instance v8, Lcom/shabakaty/cinemana/domain/models/local/Quality;

    .line 83
    iget-object v9, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->qualityName:Ljava/lang/String;

    .line 84
    invoke-direct {v8, v9, v9, v3}, Lcom/shabakaty/cinemana/domain/models/local/Quality;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v8, v1, v7

    .line 85
    invoke-static {v1}, Lcom/shabakaty/downloader/iq6;->t([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 86
    iput-object v1, v5, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->qualities:Ljava/util/List;

    .line 87
    new-instance v1, Lcom/shabakaty/cinemana/domain/models/local/Quality;

    .line 88
    iget-object v3, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->qualityName:Ljava/lang/String;

    .line 89
    iget-object v7, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->path:Ljava/lang/String;

    .line 90
    invoke-direct {v1, v3, v3, v7}, Lcom/shabakaty/cinemana/domain/models/local/Quality;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iput-object v1, v5, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->wantedQuality:Lcom/shabakaty/cinemana/domain/models/local/Quality;

    if-nez v2, :cond_4

    goto :goto_4

    .line 92
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v2, v4}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 94
    check-cast v2, Lcom/shabakaty/downloader/p84;

    .line 95
    new-instance v3, Lcom/shabakaty/downloader/o84;

    .line 96
    iget-wide v8, v2, Lcom/shabakaty/downloader/p84;->t:J

    .line 97
    iget-wide v10, v2, Lcom/shabakaty/downloader/p84;->u:J

    .line 98
    iget-object v12, v2, Lcom/shabakaty/downloader/p84;->v:Ljava/lang/String;

    move-object v7, v3

    .line 99
    invoke-direct/range {v7 .. v12}, Lcom/shabakaty/downloader/o84;-><init>(JJLjava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    :goto_4
    if-nez v6, :cond_6

    .line 100
    sget-object v6, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    .line 101
    :cond_6
    iput-object v6, v5, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->skippableScenes:Ljava/util/List;

    return-object v5
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->downloadTaskId:I

    iget v3, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->downloadTaskId:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->stars:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->stars:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->kind:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->kind:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->sizeMB:I

    iget v3, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->sizeMB:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->season:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->season:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->imgObjUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->imgObjUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->filmRating:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->filmRating:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->tvShowRating:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->tvShowRating:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->path:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->episodeNumber:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->episodeNumber:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->special:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->special:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->useParentImg:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->useParentImg:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->parentSkipping:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->parentSkipping:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->collectionID:I

    iget v3, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->collectionID:I

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->imgThumbObjUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->imgThumbObjUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->skippingDurations:Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;

    iget-object v3, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->skippingDurations:Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->qualityName:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->qualityName:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->rootEpisode:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->rootEpisode:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-boolean v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->hasIntroSkipping:Z

    iget-boolean v3, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->hasIntroSkipping:Z

    if-eq v1, v3, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->episodeFlag:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->episodeFlag:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->lastUpdated:Ljava/lang/String;

    iget-object p1, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->lastUpdated:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    return v2

    :cond_18
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->downloadTaskId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->title:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->stars:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->kind:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->sizeMB:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->season:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->imgObjUrl:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->filmRating:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->tvShowRating:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->path:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->episodeNumber:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->special:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->useParentImg:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->parentSkipping:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->collectionID:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->imgThumbObjUrl:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->skippingDurations:Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;

    invoke-virtual {v1}, Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->qualityName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->rootEpisode:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-boolean v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->hasIntroSkipping:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->episodeFlag:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->lastUpdated:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "CinemanaDownloadItem(id="

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", downloadTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->downloadTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", stars="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->stars:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", kind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->kind:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sizeMB="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->sizeMB:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", season="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->season:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", imgObjUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->imgObjUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", filmRating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->filmRating:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tvShowRating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->tvShowRating:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", episodeNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->episodeNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", special="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->special:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", useParentImg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->useParentImg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", parentSkipping="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->parentSkipping:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", collectionID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->collectionID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imgThumbObjUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->imgThumbObjUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", skippingDurations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->skippingDurations:Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", qualityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->qualityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rootEpisode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->rootEpisode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hasIntroSkipping="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->hasIntroSkipping:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", episodeFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->episodeFlag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lastUpdated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->lastUpdated:Ljava/lang/String;

    const/16 v2, 0x29

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/h61;->a(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->downloadTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->stars:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->kind:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->sizeMB:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->season:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->imgObjUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->filmRating:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->tvShowRating:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->episodeNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->special:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->useParentImg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->parentSkipping:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->collectionID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->imgThumbObjUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->skippingDurations:Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->qualityName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->rootEpisode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->hasIntroSkipping:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->episodeFlag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->lastUpdated:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
