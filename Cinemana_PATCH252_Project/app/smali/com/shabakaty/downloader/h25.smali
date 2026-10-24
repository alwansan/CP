.class public final Lcom/shabakaty/downloader/h25;
.super Ljava/lang/Object;
.source "VideoModelDao_Impl.java"

# interfaces
.implements Lcom/shabakaty/downloader/g25;


# instance fields
.field public final a:Lcom/shabakaty/downloader/vt3;

.field public final b:Lcom/shabakaty/downloader/x31;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/x31<",
            "Lcom/shabakaty/downloader/i25;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/shabakaty/downloader/f54;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vt3;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/h25;->a:Lcom/shabakaty/downloader/vt3;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/h25$b;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/h25$b;-><init>(Lcom/shabakaty/downloader/h25;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/h25;->b:Lcom/shabakaty/downloader/x31;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/h25$c;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/h25$c;-><init>(Lcom/shabakaty/downloader/h25;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/h25;->c:Lcom/shabakaty/downloader/f54;

    return-void
.end method


# virtual methods
.method public b(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/h25;->a:Lcom/shabakaty/downloader/vt3;

    new-instance v1, Lcom/shabakaty/downloader/h25$a;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/h25$a;-><init>(Lcom/shabakaty/downloader/h25;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p1}, Lcom/shabakaty/downloader/af0;->c(Lcom/shabakaty/downloader/vt3;ZLjava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/i25;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/h25;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->b()V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/h25;->a:Lcom/shabakaty/downloader/vt3;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->i()V

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/h25;->b:Lcom/shabakaty/downloader/x31;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/x31;->f(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/h25;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/h25;->a:Lcom/shabakaty/downloader/vt3;

    .line 9
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->j()V

    return-void

    :catchall_0
    move-exception p1

    .line 10
    iget-object v0, p0, Lcom/shabakaty/downloader/h25;->a:Lcom/shabakaty/downloader/vt3;

    .line 11
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 12
    throw p1
.end method

.method public t(Ljava/lang/String;)Lcom/shabakaty/downloader/i25;
    .locals 124

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "SELECT * FROM video_model WHERE nb = ?"

    const/4 v3, 0x1

    .line 1
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/yt3;->a(Ljava/lang/String;I)Lcom/shabakaty/downloader/yt3;

    move-result-object v2

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/yt3;->T0(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v2, v3, v0}, Lcom/shabakaty/downloader/yt3;->I(ILjava/lang/String;)V

    .line 4
    :goto_0
    iget-object v0, v1, Lcom/shabakaty/downloader/h25;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->b()V

    .line 5
    iget-object v0, v1, Lcom/shabakaty/downloader/h25;->a:Lcom/shabakaty/downloader/vt3;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v2, v4, v5}, Lcom/shabakaty/downloader/lh0;->b(Lcom/shabakaty/downloader/vt3;Lcom/shabakaty/downloader/bi4;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    const-string v0, "nb"

    .line 6
    invoke-static {v6, v0}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v7, "enTitle"

    .line 7
    invoke-static {v6, v7}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "arTitle"

    .line 8
    invoke-static {v6, v8}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "otherTitle"

    .line 9
    invoke-static {v6, v9}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "stars"

    .line 10
    invoke-static {v6, v10}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "fileFile"

    .line 11
    invoke-static {v6, v11}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "arContent"

    .line 12
    invoke-static {v6, v12}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "enContent"

    .line 13
    invoke-static {v6, v13}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "mDate"

    .line 14
    invoke-static {v6, v14}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "year"

    .line 15
    invoke-static {v6, v15}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v3, "kind"

    .line 16
    invoke-static {v6, v3}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "season"

    .line 17
    invoke-static {v6, v4}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "img"

    .line 18
    invoke-static {v6, v5}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v1, "imgThumb"

    .line 19
    invoke-static {v6, v1}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "imgMediumThumb"

    .line 20
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "imgObjUrl"

    .line 21
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "imgMediumThumbObjUrl"

    .line 22
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "filmRating"

    .line 23
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "tvShowRating"

    .line 24
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "episodeNummer"

    .line 25
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "rate"

    .line 26
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "special"

    .line 27
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "itemDate"

    .line 28
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "duration"

    .line 29
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "imdbUrlRef"

    .line 30
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    const-string v2, "rootSeries"

    .line 31
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v28, v2

    const-string v2, "useParentImg"

    .line 32
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v29, v2

    const-string v2, "showComments"

    .line 33
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v30, v2

    const-string v2, "episodeFlag"

    .line 34
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v31, v2

    const-string v2, "trailer"

    .line 35
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v32, v2

    const-string v2, "mock"

    .line 36
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v33, v2

    const-string v2, "audioStreamNumber"

    .line 37
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v34, v2

    const-string v2, "parentSkipping"

    .line 38
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v35, v2

    const-string v2, "collectionID"

    .line 39
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v36, v2

    const-string v2, "deleted"

    .line 40
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v37, v2

    const-string v2, "imgThumbObjUrl"

    .line 41
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v38, v2

    const-string v2, "ratingImg"

    .line 42
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v39, v2

    const-string v2, "arTranslationFilePath"

    .line 43
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v40, v2

    const-string v2, "hasIntroSkipping"

    .line 44
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v41, v2

    const-string v2, "videoLikesNumber"

    .line 45
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v42, v2

    const-string v2, "videoDisLikesNumber"

    .line 46
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v43, v2

    const-string v2, "videoCommentsNumber"

    .line 47
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v44, v2

    const-string v2, "videoViewsNumber"

    .line 48
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v45, v2

    const-string v2, "itemOrderList"

    .line 49
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v46, v2

    const-string v2, "listId"

    .line 50
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v47, v2

    const-string v2, "listSortOrder"

    .line 51
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v48, v2

    const-string v2, "castable"

    .line 52
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v49, v2

    const-string v2, "publishDate"

    .line 53
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v50, v2

    const-string v2, "episodeDesc"

    .line 54
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v51, v2

    const-string v2, "qualityName"

    .line 55
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v52, v2

    const-string v2, "customArTitle"

    .line 56
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v53, v2

    const-string v2, "customEnTitle"

    .line 57
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v54, v2

    const-string v2, "finished"

    .line 58
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v55, v2

    const-string v2, "url"

    .line 59
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v56, v2

    const-string v2, "downloadTaskId"

    .line 60
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v57, v2

    const-string v2, "downloadedTime"

    .line 61
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v58, v2

    const-string v2, "size"

    .line 62
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v59, v2

    const-string v2, "description"

    .line 63
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v60, v2

    const-string v2, "addedToWatchLater"

    .line 64
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v61, v2

    const-string v2, "watched"

    .line 65
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 66
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v62

    if-eqz v62, :cond_39

    .line 67
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v62

    if-eqz v62, :cond_1

    const/16 v63, 0x0

    goto :goto_1

    .line 68
    :cond_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v63, v0

    .line 69
    :goto_1
    invoke-interface {v6, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v64, 0x0

    goto :goto_2

    .line 70
    :cond_2
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v64, v0

    .line 71
    :goto_2
    invoke-interface {v6, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v65, 0x0

    goto :goto_3

    .line 72
    :cond_3
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v65, v0

    .line 73
    :goto_3
    invoke-interface {v6, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v66, 0x0

    goto :goto_4

    .line 74
    :cond_4
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v66, v0

    .line 75
    :goto_4
    invoke-interface {v6, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v67, 0x0

    goto :goto_5

    .line 76
    :cond_5
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v67, v0

    .line 77
    :goto_5
    invoke-interface {v6, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v68, 0x0

    goto :goto_6

    .line 78
    :cond_6
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v68, v0

    .line 79
    :goto_6
    invoke-interface {v6, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v69, 0x0

    goto :goto_7

    .line 80
    :cond_7
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v69, v0

    .line 81
    :goto_7
    invoke-interface {v6, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v70, 0x0

    goto :goto_8

    .line 82
    :cond_8
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v70, v0

    .line 83
    :goto_8
    invoke-interface {v6, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v71, 0x0

    goto :goto_9

    .line 84
    :cond_9
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v71, v0

    .line 85
    :goto_9
    invoke-interface {v6, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v72, 0x0

    goto :goto_a

    .line 86
    :cond_a
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v72, v0

    .line 87
    :goto_a
    invoke-interface {v6, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v73, 0x0

    goto :goto_b

    .line 88
    :cond_b
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v73, v0

    .line 89
    :goto_b
    invoke-interface {v6, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v74, 0x0

    goto :goto_c

    .line 90
    :cond_c
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v74, v0

    .line 91
    :goto_c
    invoke-interface {v6, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v75, 0x0

    goto :goto_d

    .line 92
    :cond_d
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v75, v0

    .line 93
    :goto_d
    invoke-interface {v6, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_e

    move/from16 v0, v17

    const/16 v76, 0x0

    goto :goto_e

    .line 94
    :cond_e
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v76, v0

    move/from16 v0, v17

    .line 95
    :goto_e
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_f

    move/from16 v0, v18

    const/16 v77, 0x0

    goto :goto_f

    .line 96
    :cond_f
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v77, v0

    move/from16 v0, v18

    .line 97
    :goto_f
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_10

    move/from16 v0, v19

    const/16 v78, 0x0

    goto :goto_10

    .line 98
    :cond_10
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v78, v0

    move/from16 v0, v19

    .line 99
    :goto_10
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_11

    move/from16 v0, v20

    const/16 v79, 0x0

    goto :goto_11

    .line 100
    :cond_11
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v79, v0

    move/from16 v0, v20

    .line 101
    :goto_11
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_12

    move/from16 v0, v21

    const/16 v80, 0x0

    goto :goto_12

    .line 102
    :cond_12
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v80, v0

    move/from16 v0, v21

    .line 103
    :goto_12
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_13

    move/from16 v0, v22

    const/16 v81, 0x0

    goto :goto_13

    .line 104
    :cond_13
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v81, v0

    move/from16 v0, v22

    .line 105
    :goto_13
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_14

    move/from16 v0, v23

    const/16 v82, 0x0

    goto :goto_14

    .line 106
    :cond_14
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v82, v0

    move/from16 v0, v23

    .line 107
    :goto_14
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_15

    move/from16 v0, v24

    const/16 v83, 0x0

    goto :goto_15

    .line 108
    :cond_15
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v83, v0

    move/from16 v0, v24

    .line 109
    :goto_15
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_16

    move/from16 v0, v25

    const/16 v84, 0x0

    goto :goto_16

    .line 110
    :cond_16
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v84, v0

    move/from16 v0, v25

    .line 111
    :goto_16
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_17

    move/from16 v0, v26

    const/16 v85, 0x0

    goto :goto_17

    .line 112
    :cond_17
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v85, v0

    move/from16 v0, v26

    .line 113
    :goto_17
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_18

    move/from16 v0, v27

    const/16 v86, 0x0

    goto :goto_18

    .line 114
    :cond_18
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v86, v0

    move/from16 v0, v27

    .line 115
    :goto_18
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_19

    move/from16 v0, v28

    const/16 v87, 0x0

    goto :goto_19

    .line 116
    :cond_19
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v87, v0

    move/from16 v0, v28

    .line 117
    :goto_19
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    move/from16 v0, v29

    const/16 v88, 0x0

    goto :goto_1a

    .line 118
    :cond_1a
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v88, v0

    move/from16 v0, v29

    .line 119
    :goto_1a
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    move/from16 v0, v30

    const/16 v89, 0x0

    goto :goto_1b

    .line 120
    :cond_1b
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v89, v0

    move/from16 v0, v30

    .line 121
    :goto_1b
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1c

    move/from16 v0, v31

    const/16 v90, 0x1

    goto :goto_1c

    :cond_1c
    move/from16 v0, v31

    const/16 v90, 0x0

    .line 122
    :goto_1c
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    move/from16 v0, v32

    const/16 v91, 0x0

    goto :goto_1d

    .line 123
    :cond_1d
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v91, v0

    move/from16 v0, v32

    .line 124
    :goto_1d
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    move/from16 v0, v33

    const/16 v92, 0x0

    goto :goto_1e

    .line 125
    :cond_1e
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v92, v0

    move/from16 v0, v33

    .line 126
    :goto_1e
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1f

    move/from16 v0, v34

    const/16 v93, 0x1

    goto :goto_1f

    :cond_1f
    move/from16 v0, v34

    const/16 v93, 0x0

    .line 127
    :goto_1f
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_20

    move/from16 v0, v35

    const/16 v94, 0x0

    goto :goto_20

    .line 128
    :cond_20
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v94, v0

    move/from16 v0, v35

    .line 129
    :goto_20
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_21

    move/from16 v0, v36

    const/16 v95, 0x0

    goto :goto_21

    .line 130
    :cond_21
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v95, v0

    move/from16 v0, v36

    .line 131
    :goto_21
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v96

    move/from16 v0, v37

    .line 132
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_22

    move/from16 v0, v38

    const/16 v97, 0x0

    goto :goto_22

    .line 133
    :cond_22
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v97, v0

    move/from16 v0, v38

    .line 134
    :goto_22
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_23

    move/from16 v0, v39

    const/16 v98, 0x0

    goto :goto_23

    .line 135
    :cond_23
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v98, v0

    move/from16 v0, v39

    .line 136
    :goto_23
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_24

    move/from16 v0, v40

    const/16 v99, 0x0

    goto :goto_24

    .line 137
    :cond_24
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v99, v0

    move/from16 v0, v40

    .line 138
    :goto_24
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_25

    move/from16 v0, v41

    const/16 v100, 0x0

    goto :goto_25

    .line 139
    :cond_25
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v100, v0

    move/from16 v0, v41

    .line 140
    :goto_25
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_26

    move/from16 v0, v42

    const/16 v101, 0x1

    goto :goto_26

    :cond_26
    move/from16 v0, v42

    const/16 v101, 0x0

    .line 141
    :goto_26
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_27

    move/from16 v0, v43

    const/16 v102, 0x0

    goto :goto_27

    .line 142
    :cond_27
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v102, v0

    move/from16 v0, v43

    .line 143
    :goto_27
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_28

    move/from16 v0, v44

    const/16 v103, 0x0

    goto :goto_28

    .line 144
    :cond_28
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v103, v0

    move/from16 v0, v44

    .line 145
    :goto_28
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v104

    move/from16 v0, v45

    .line 146
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_29

    move/from16 v0, v46

    const/16 v105, 0x0

    goto :goto_29

    .line 147
    :cond_29
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v105, v0

    move/from16 v0, v46

    .line 148
    :goto_29
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    move/from16 v0, v47

    const/16 v106, 0x0

    goto :goto_2a

    .line 149
    :cond_2a
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v106, v0

    move/from16 v0, v47

    .line 150
    :goto_2a
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    move/from16 v0, v48

    const/16 v107, 0x0

    goto :goto_2b

    .line 151
    :cond_2b
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v107, v0

    move/from16 v0, v48

    .line 152
    :goto_2b
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    move/from16 v0, v49

    const/16 v108, 0x0

    goto :goto_2c

    .line 153
    :cond_2c
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v108, v0

    move/from16 v0, v49

    .line 154
    :goto_2c
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    move/from16 v0, v50

    const/16 v109, 0x0

    goto :goto_2d

    .line 155
    :cond_2d
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v109, v0

    move/from16 v0, v50

    .line 156
    :goto_2d
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    move/from16 v0, v51

    const/16 v110, 0x0

    goto :goto_2e

    .line 157
    :cond_2e
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v110, v0

    move/from16 v0, v51

    .line 158
    :goto_2e
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2f

    move/from16 v0, v52

    const/16 v111, 0x0

    goto :goto_2f

    .line 159
    :cond_2f
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v111, v0

    move/from16 v0, v52

    .line 160
    :goto_2f
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_30

    move/from16 v0, v53

    const/16 v112, 0x0

    goto :goto_30

    .line 161
    :cond_30
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v112, v0

    move/from16 v0, v53

    .line 162
    :goto_30
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_31

    move/from16 v0, v54

    const/16 v113, 0x0

    goto :goto_31

    .line 163
    :cond_31
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v113, v0

    move/from16 v0, v54

    .line 164
    :goto_31
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_32

    move/from16 v0, v55

    const/16 v114, 0x0

    goto :goto_32

    .line 165
    :cond_32
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v114, v0

    move/from16 v0, v55

    .line 166
    :goto_32
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_33

    move/from16 v0, v56

    const/16 v115, 0x1

    goto :goto_33

    :cond_33
    move/from16 v0, v56

    const/16 v115, 0x0

    .line 167
    :goto_33
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_34

    move/from16 v0, v57

    const/16 v116, 0x0

    goto :goto_34

    .line 168
    :cond_34
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v116, v0

    move/from16 v0, v57

    .line 169
    :goto_34
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v117

    move/from16 v0, v58

    .line 170
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v118

    move/from16 v0, v59

    .line 171
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_35

    move/from16 v0, v60

    const/16 v120, 0x0

    goto :goto_35

    .line 172
    :cond_35
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v120, v0

    move/from16 v0, v60

    .line 173
    :goto_35
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_36

    move/from16 v0, v61

    const/16 v121, 0x0

    goto :goto_36

    .line 174
    :cond_36
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v121, v5

    move/from16 v0, v61

    .line 175
    :goto_36
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_37

    const/16 v122, 0x1

    goto :goto_37

    :cond_37
    const/16 v122, 0x0

    .line 176
    :goto_37
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_38

    const/16 v123, 0x1

    goto :goto_38

    :cond_38
    const/16 v123, 0x0

    .line 177
    :goto_38
    new-instance v5, Lcom/shabakaty/downloader/i25;

    move-object/from16 v62, v5

    invoke-direct/range {v62 .. v123}, Lcom/shabakaty/downloader/i25;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJLjava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_39

    :cond_39
    const/4 v5, 0x0

    .line 178
    :goto_39
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 179
    invoke-virtual/range {v16 .. v16}, Lcom/shabakaty/downloader/yt3;->c()V

    return-object v5

    :catchall_0
    move-exception v0

    goto :goto_3a

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    .line 180
    :goto_3a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 181
    invoke-virtual/range {v16 .. v16}, Lcom/shabakaty/downloader/yt3;->c()V

    .line 182
    throw v0
.end method
