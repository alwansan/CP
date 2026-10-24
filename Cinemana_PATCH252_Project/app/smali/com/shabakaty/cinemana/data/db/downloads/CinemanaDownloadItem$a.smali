.class public final Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem$a;
.super Ljava/lang/Object;
.source "CinemanaDownloadEntity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/nn0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/pw0;)Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;
    .locals 28

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "videoModel"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    move-object v3, v2

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

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const v27, 0x7fffff

    invoke-direct/range {v3 .. v27}, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    .line 2
    iget-object v3, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    const-string v4, "<set-?>"

    .line 3
    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-object v3, v2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->id:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    .line 5
    :cond_0
    iget v5, v1, Lcom/shabakaty/downloader/pw0;->r:I

    .line 6
    :goto_0
    iput v5, v2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->downloadTaskId:I

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->c()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-static {v5, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput-object v5, v2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->title:Ljava/lang/String;

    .line 10
    iget-object v5, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->stars:Ljava/lang/String;

    .line 11
    invoke-static {v5, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object v5, v2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->stars:Ljava/lang/String;

    .line 13
    iget-object v5, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->kind:Ljava/lang/String;

    .line 14
    invoke-static {v5, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object v5, v2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->kind:Ljava/lang/String;

    .line 16
    iget-object v5, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->season:Ljava/lang/String;

    .line 17
    invoke-static {v5, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object v5, v2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->season:Ljava/lang/String;

    .line 19
    iget-object v5, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->imgMediumThumbObjUrl:Ljava/lang/String;

    .line 20
    invoke-static {v5, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object v5, v2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->imgObjUrl:Ljava/lang/String;

    .line 22
    iget-object v5, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->filmRating:Ljava/lang/String;

    .line 23
    invoke-static {v5, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object v5, v2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->filmRating:Ljava/lang/String;

    .line 25
    iget-object v5, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->seriesRating:Ljava/lang/String;

    .line 26
    invoke-static {v5, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object v5, v2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->tvShowRating:Ljava/lang/String;

    const-string v5, ""

    if-nez v1, :cond_1

    goto :goto_1

    .line 28
    :cond_1
    iget-object v6, v1, Lcom/shabakaty/downloader/pw0;->x:Ljava/lang/String;

    if-nez v6, :cond_2

    :goto_1
    move-object v6, v5

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    const/4 v8, 0x2

    const-string v9, "/downloads/"

    .line 29
    invoke-static {v6, v9, v7, v8}, Lcom/shabakaty/downloader/re4;->h0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 30
    :goto_2
    iput-object v6, v2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->path:Ljava/lang/String;

    .line 31
    iget-object v6, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->episodeNummer:Ljava/lang/String;

    .line 32
    invoke-static {v6, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object v6, v2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->episodeNumber:Ljava/lang/String;

    .line 34
    iget-object v6, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->episodeFlag:Ljava/lang/String;

    .line 35
    invoke-static {v6, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object v6, v2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->episodeFlag:Ljava/lang/String;

    .line 37
    iget-object v6, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->isSpecial:Ljava/lang/String;

    .line 38
    invoke-static {v6, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iput-object v6, v2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->special:Ljava/lang/String;

    .line 40
    iget-object v6, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->useParentImg:Ljava/lang/String;

    .line 41
    invoke-static {v6, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput-object v6, v2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->useParentImg:Ljava/lang/String;

    .line 43
    iget-object v6, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->parentSkipping:Ljava/lang/String;

    .line 44
    invoke-static {v6, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object v6, v2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->parentSkipping:Ljava/lang/String;

    .line 46
    iget v6, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->downloadCollectionID:I

    .line 47
    iput v6, v2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->collectionID:I

    .line 48
    iget-object v6, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->imgThumbObjUrl:Ljava/lang/String;

    .line 49
    invoke-static {v6, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object v6, v2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->imgThumbObjUrl:Ljava/lang/String;

    .line 51
    iget-object v6, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->skippingDurations:Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;

    .line 52
    new-instance v7, Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;

    .line 53
    iget-object v8, v6, Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;->start:Ljava/util/List;

    .line 54
    iget-object v6, v6, Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;->end:Ljava/util/List;

    .line 55
    invoke-direct {v7, v8, v6}, Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 56
    iput-object v7, v2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->skippingDurations:Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;

    .line 57
    iget-object v6, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->wantedQuality:Lcom/shabakaty/cinemana/domain/models/local/Quality;

    if-nez v6, :cond_3

    goto :goto_3

    .line 58
    :cond_3
    iget-object v6, v6, Lcom/shabakaty/cinemana/domain/models/local/Quality;->resolution:Ljava/lang/String;

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    move-object v5, v6

    .line 59
    :goto_3
    iput-object v5, v2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->qualityName:Ljava/lang/String;

    if-nez v1, :cond_5

    goto :goto_4

    .line 60
    :cond_5
    iget-wide v5, v1, Lcom/shabakaty/downloader/pw0;->y:J

    const v1, 0xffdc0

    int-to-long v7, v1

    .line 61
    div-long/2addr v5, v7

    long-to-int v3, v5

    .line 62
    :goto_4
    iput v3, v2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->sizeMB:I

    .line 63
    iget-boolean v1, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->hasIntroSkipping:Z

    .line 64
    iput-boolean v1, v2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->hasIntroSkipping:Z

    .line 65
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->rootSeries:Ljava/lang/String;

    .line 66
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iput-object v0, v2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->rootEpisode:Ljava/lang/String;

    .line 68
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iput-object v0, v2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->lastUpdated:Ljava/lang/String;

    return-object v2
.end method
