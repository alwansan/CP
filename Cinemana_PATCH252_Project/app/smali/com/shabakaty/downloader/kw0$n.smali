.class public Lcom/shabakaty/downloader/kw0$n;
.super Ljava/lang/Object;
.source "DownloadDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/kw0;->C()Lcom/shabakaty/downloader/t43;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/yt3;

.field public final synthetic s:Lcom/shabakaty/downloader/kw0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/kw0;Lcom/shabakaty/downloader/yt3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/kw0$n;->s:Lcom/shabakaty/downloader/kw0;

    iput-object p2, p0, Lcom/shabakaty/downloader/kw0$n;->r:Lcom/shabakaty/downloader/yt3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 54

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/shabakaty/downloader/kw0$n;->s:Lcom/shabakaty/downloader/kw0;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    .line 3
    iget-object v2, v1, Lcom/shabakaty/downloader/kw0$n;->r:Lcom/shabakaty/downloader/yt3;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/downloader/lh0;->b(Lcom/shabakaty/downloader/vt3;Lcom/shabakaty/downloader/bi4;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "id"

    .line 4
    invoke-static {v2, v0}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "downloadTaskId"

    .line 5
    invoke-static {v2, v5}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "title"

    .line 6
    invoke-static {v2, v6}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "stars"

    .line 7
    invoke-static {v2, v7}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "kind"

    .line 8
    invoke-static {v2, v8}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "sizeMB"

    .line 9
    invoke-static {v2, v9}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "season"

    .line 10
    invoke-static {v2, v10}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "imgObjUrl"

    .line 11
    invoke-static {v2, v11}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "filmRating"

    .line 12
    invoke-static {v2, v12}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "tvShowRating"

    .line 13
    invoke-static {v2, v13}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "path"

    .line 14
    invoke-static {v2, v14}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "episodeNumber"

    .line 15
    invoke-static {v2, v15}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v3, "special"

    .line 16
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "useParentImg"

    .line 17
    invoke-static {v2, v4}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v1, "parentSkipping"

    .line 18
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v16, v1

    const-string v1, "collectionID"

    .line 19
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "imgThumbObjUrl"

    .line 20
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "qualityName"

    .line 21
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "rootEpisode"

    .line 22
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "hasIntroSkipping"

    .line 23
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    const-string v1, "episodeFlag"

    .line 24
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "lastUpdated"

    .line 25
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    const-string v1, "skippingDurations_start"

    .line 26
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "skippingDurations_end"

    .line 27
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v25, v1

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    move/from16 v26, v4

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 30
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v28, 0x0

    goto :goto_1

    .line 31
    :cond_0
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v28, v4

    .line 32
    :goto_1
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 33
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v30, 0x0

    goto :goto_2

    .line 34
    :cond_1
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v30, v4

    .line 35
    :goto_2
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v31, 0x0

    goto :goto_3

    .line 36
    :cond_2
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v31, v4

    .line 37
    :goto_3
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v32, 0x0

    goto :goto_4

    .line 38
    :cond_3
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v32, v4

    .line 39
    :goto_4
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 40
    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v34, 0x0

    goto :goto_5

    .line 41
    :cond_4
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v34, v4

    .line 42
    :goto_5
    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v35, 0x0

    goto :goto_6

    .line 43
    :cond_5
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v35, v4

    .line 44
    :goto_6
    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v36, 0x0

    goto :goto_7

    .line 45
    :cond_6
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v36, v4

    .line 46
    :goto_7
    invoke-interface {v2, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v37, 0x0

    goto :goto_8

    .line 47
    :cond_7
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v37, v4

    .line 48
    :goto_8
    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v38, 0x0

    goto :goto_9

    .line 49
    :cond_8
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v38, v4

    .line 50
    :goto_9
    invoke-interface {v2, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_9

    const/16 v39, 0x0

    goto :goto_a

    .line 51
    :cond_9
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v39, v4

    .line 52
    :goto_a
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_a

    move/from16 v4, v26

    const/16 v40, 0x0

    goto :goto_b

    .line 53
    :cond_a
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v40, v4

    move/from16 v4, v26

    .line 54
    :goto_b
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_b

    const/16 v41, 0x0

    goto :goto_c

    .line 55
    :cond_b
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v41, v26

    :goto_c
    move/from16 v26, v0

    move/from16 v0, v16

    .line 56
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_c

    const/16 v42, 0x0

    goto :goto_d

    .line 57
    :cond_c
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v42, v16

    :goto_d
    move/from16 v16, v0

    move/from16 v0, v17

    .line 58
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v43

    move/from16 v17, v0

    move/from16 v0, v18

    .line 59
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_d

    move/from16 v18, v0

    move/from16 v0, v19

    const/16 v44, 0x0

    goto :goto_e

    .line 60
    :cond_d
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v44, v18

    move/from16 v18, v0

    move/from16 v0, v19

    .line 61
    :goto_e
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_e

    move/from16 v19, v0

    move/from16 v0, v20

    const/16 v46, 0x0

    goto :goto_f

    .line 62
    :cond_e
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v46, v19

    move/from16 v19, v0

    move/from16 v0, v20

    .line 63
    :goto_f
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_f

    move/from16 v20, v0

    move/from16 v0, v21

    const/16 v47, 0x0

    goto :goto_10

    .line 64
    :cond_f
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v47, v20

    move/from16 v20, v0

    move/from16 v0, v21

    .line 65
    :goto_10
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    if-eqz v21, :cond_10

    const/16 v21, 0x1

    move/from16 v21, v0

    move/from16 v0, v22

    const/16 v48, 0x1

    goto :goto_11

    :cond_10
    move/from16 v21, v0

    move/from16 v0, v22

    const/16 v48, 0x0

    .line 66
    :goto_11
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_11

    move/from16 v22, v0

    move/from16 v0, v23

    const/16 v49, 0x0

    goto :goto_12

    .line 67
    :cond_11
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v49, v22

    move/from16 v22, v0

    move/from16 v0, v23

    .line 68
    :goto_12
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_12

    move/from16 v23, v0

    move/from16 v0, v24

    const/16 v50, 0x0

    goto :goto_13

    .line 69
    :cond_12
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v50, v23

    move/from16 v23, v0

    move/from16 v0, v24

    .line 70
    :goto_13
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_14

    move/from16 v24, v3

    move/from16 v3, v25

    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-nez v25, :cond_13

    goto :goto_14

    :cond_13
    move/from16 v51, v0

    move/from16 v53, v3

    move/from16 v25, v4

    move/from16 v52, v5

    const/16 v45, 0x0

    move-object/from16 v4, p0

    goto :goto_17

    :cond_14
    move/from16 v24, v3

    move/from16 v3, v25

    .line 71
    :goto_14
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_15

    move/from16 v51, v0

    const/4 v0, 0x0

    goto :goto_15

    .line 72
    :cond_15
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v51, v0

    move-object/from16 v0, v25

    :goto_15
    move/from16 v25, v4

    move/from16 v52, v5

    move-object/from16 v4, p0

    .line 73
    :try_start_2
    iget-object v5, v4, Lcom/shabakaty/downloader/kw0$n;->s:Lcom/shabakaty/downloader/kw0;

    .line 74
    iget-object v5, v5, Lcom/shabakaty/downloader/kw0;->c:Lcom/shabakaty/downloader/ce4;

    .line 75
    invoke-virtual {v5, v0}, Lcom/shabakaty/downloader/ce4;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 76
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_16

    move/from16 v53, v3

    const/4 v5, 0x0

    goto :goto_16

    .line 77
    :cond_16
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v53, v3

    .line 78
    :goto_16
    iget-object v3, v4, Lcom/shabakaty/downloader/kw0$n;->s:Lcom/shabakaty/downloader/kw0;

    .line 79
    iget-object v3, v3, Lcom/shabakaty/downloader/kw0;->c:Lcom/shabakaty/downloader/ce4;

    .line 80
    invoke-virtual {v3, v5}, Lcom/shabakaty/downloader/ce4;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 81
    new-instance v5, Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;

    invoke-direct {v5, v0, v3}, Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;-><init>(Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v45, v5

    .line 82
    :goto_17
    new-instance v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    move-object/from16 v27, v0

    invoke-direct/range {v27 .. v50}, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v3, v24

    move/from16 v0, v26

    move/from16 v24, v51

    move/from16 v5, v52

    move/from16 v26, v25

    move/from16 v25, v53

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_18

    :cond_17
    move-object/from16 v4, p0

    .line 84
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_1
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_18

    :catchall_2
    move-exception v0

    move-object v4, v1

    :goto_18
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 85
    throw v0
.end method

.method public finalize()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kw0$n;->r:Lcom/shabakaty/downloader/yt3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/yt3;->c()V

    return-void
.end method
