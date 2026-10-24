.class public Lcom/shabakaty/downloader/kw0$p;
.super Ljava/lang/Object;
.source "DownloadDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/kw0;->n(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/yt3;

.field public final synthetic s:Lcom/shabakaty/downloader/kw0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/kw0;Lcom/shabakaty/downloader/yt3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/kw0$p;->s:Lcom/shabakaty/downloader/kw0;

    iput-object p2, p0, Lcom/shabakaty/downloader/kw0$p;->r:Lcom/shabakaty/downloader/yt3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 54

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/shabakaty/downloader/kw0$p;->s:Lcom/shabakaty/downloader/kw0;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->i()V

    .line 5
    :try_start_0
    iget-object v0, v1, Lcom/shabakaty/downloader/kw0$p;->s:Lcom/shabakaty/downloader/kw0;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    .line 7
    iget-object v2, v1, Lcom/shabakaty/downloader/kw0$p;->r:Lcom/shabakaty/downloader/yt3;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/downloader/lh0;->b(Lcom/shabakaty/downloader/vt3;Lcom/shabakaty/downloader/bi4;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    const-string v0, "id"

    .line 8
    invoke-static {v2, v0}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "downloadTaskId"

    .line 9
    invoke-static {v2, v5}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "title"

    .line 10
    invoke-static {v2, v6}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "stars"

    .line 11
    invoke-static {v2, v7}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "kind"

    .line 12
    invoke-static {v2, v8}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "sizeMB"

    .line 13
    invoke-static {v2, v9}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "season"

    .line 14
    invoke-static {v2, v10}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "imgObjUrl"

    .line 15
    invoke-static {v2, v11}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "filmRating"

    .line 16
    invoke-static {v2, v12}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "tvShowRating"

    .line 17
    invoke-static {v2, v13}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "path"

    .line 18
    invoke-static {v2, v14}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "episodeNumber"

    .line 19
    invoke-static {v2, v15}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v3, "special"

    .line 20
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "useParentImg"

    .line 21
    invoke-static {v2, v4}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v17, v4

    const-string v4, "parentSkipping"

    .line 22
    invoke-static {v2, v4}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v18, v4

    const-string v4, "collectionID"

    .line 23
    invoke-static {v2, v4}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v19, v4

    const-string v4, "imgThumbObjUrl"

    .line 24
    invoke-static {v2, v4}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v20, v4

    const-string v4, "qualityName"

    .line 25
    invoke-static {v2, v4}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v21, v4

    const-string v4, "rootEpisode"

    .line 26
    invoke-static {v2, v4}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v22, v4

    const-string v4, "hasIntroSkipping"

    .line 27
    invoke-static {v2, v4}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v23, v4

    const-string v4, "episodeFlag"

    .line 28
    invoke-static {v2, v4}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v24, v4

    const-string v4, "lastUpdated"

    .line 29
    invoke-static {v2, v4}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v25, v4

    const-string v4, "skippingDurations_start"

    .line 30
    invoke-static {v2, v4}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v26, v4

    const-string v4, "skippingDurations_end"

    .line 31
    invoke-static {v2, v4}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v27, v4

    .line 32
    new-instance v4, Lcom/shabakaty/downloader/ad;

    invoke-direct {v4}, Lcom/shabakaty/downloader/ad;-><init>()V

    move/from16 v28, v3

    .line 33
    new-instance v3, Lcom/shabakaty/downloader/ad;

    invoke-direct {v3}, Lcom/shabakaty/downloader/ad;-><init>()V

    .line 34
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v29

    if-eqz v29, :cond_2

    move/from16 v29, v15

    .line 35
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 36
    invoke-virtual {v4, v15}, Lcom/shabakaty/downloader/m64;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/util/ArrayList;

    if-nez v30, :cond_0

    move/from16 v30, v14

    .line 37
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-virtual {v4, v15, v14}, Lcom/shabakaty/downloader/m64;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    move/from16 v30, v14

    .line 39
    :goto_1
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 40
    invoke-virtual {v3, v14}, Lcom/shabakaty/downloader/m64;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    if-nez v15, :cond_1

    .line 41
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-virtual {v3, v14, v15}, Lcom/shabakaty/downloader/m64;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move/from16 v15, v29

    move/from16 v14, v30

    goto :goto_0

    :cond_2
    move/from16 v30, v14

    move/from16 v29, v15

    const/4 v14, -0x1

    .line 43
    invoke-interface {v2, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 44
    iget-object v14, v1, Lcom/shabakaty/downloader/kw0$p;->s:Lcom/shabakaty/downloader/kw0;

    .line 45
    invoke-virtual {v14, v4}, Lcom/shabakaty/downloader/kw0;->N(Lcom/shabakaty/downloader/ad;)V

    .line 46
    iget-object v14, v1, Lcom/shabakaty/downloader/kw0$p;->s:Lcom/shabakaty/downloader/kw0;

    .line 47
    invoke-virtual {v14, v3}, Lcom/shabakaty/downloader/kw0;->M(Lcom/shabakaty/downloader/ad;)V

    .line 48
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_2b

    .line 49
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v14, :cond_11

    :try_start_2
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-interface {v2, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_11

    move/from16 v14, v30

    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_10

    move/from16 v15, v29

    invoke-interface {v2, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v29

    if-eqz v29, :cond_f

    move-object/from16 v29, v3

    move/from16 v3, v28

    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_d

    move-object/from16 v28, v4

    move/from16 v4, v17

    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_e

    move/from16 v1, v18

    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_c

    move/from16 v18, v1

    move/from16 v1, v19

    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_b

    move/from16 v19, v1

    move/from16 v1, v20

    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_a

    move/from16 v20, v1

    move/from16 v1, v21

    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_9

    move/from16 v21, v1

    move/from16 v1, v22

    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_8

    move/from16 v22, v1

    move/from16 v1, v23

    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_7

    move/from16 v23, v1

    move/from16 v1, v24

    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_6

    move/from16 v24, v1

    move/from16 v1, v25

    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_5

    move/from16 v25, v1

    move/from16 v1, v26

    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_4

    move/from16 v26, v1

    move/from16 v1, v27

    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-nez v17, :cond_3

    goto :goto_5

    :cond_3
    const/4 v1, 0x0

    move-object/from16 v4, p0

    goto/16 :goto_1d

    :cond_4
    move/from16 v26, v1

    goto :goto_2

    :cond_5
    move/from16 v25, v1

    goto :goto_2

    :cond_6
    move/from16 v24, v1

    goto :goto_2

    :cond_7
    move/from16 v23, v1

    goto :goto_2

    :cond_8
    move/from16 v22, v1

    goto :goto_2

    :cond_9
    move/from16 v21, v1

    goto :goto_2

    :cond_a
    move/from16 v20, v1

    goto :goto_2

    :cond_b
    move/from16 v19, v1

    goto :goto_2

    :cond_c
    move/from16 v18, v1

    goto :goto_2

    :cond_d
    move-object/from16 v28, v4

    move/from16 v4, v17

    :cond_e
    :goto_2
    move/from16 v1, v27

    goto :goto_5

    :cond_f
    move-object/from16 v29, v3

    move/from16 v1, v27

    goto :goto_4

    :cond_10
    move/from16 v1, v27

    move/from16 v15, v29

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object/from16 v4, p0

    goto/16 :goto_1f

    :cond_11
    move/from16 v1, v27

    move/from16 v15, v29

    move/from16 v14, v30

    :goto_3
    move-object/from16 v29, v3

    :goto_4
    move/from16 v3, v28

    move-object/from16 v28, v4

    move/from16 v4, v17

    .line 50
    :goto_5
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_12

    const/16 v31, 0x0

    goto :goto_6

    .line 51
    :cond_12
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v31, v17

    .line 52
    :goto_6
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 53
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_13

    const/16 v33, 0x0

    goto :goto_7

    .line 54
    :cond_13
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v33, v5

    .line 55
    :goto_7
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_14

    const/16 v34, 0x0

    goto :goto_8

    .line 56
    :cond_14
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v34, v5

    .line 57
    :goto_8
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v35, 0x0

    goto :goto_9

    .line 58
    :cond_15
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v35, v5

    .line 59
    :goto_9
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    .line 60
    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_16

    const/16 v37, 0x0

    goto :goto_a

    .line 61
    :cond_16
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v37, v5

    .line 62
    :goto_a
    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_17

    const/16 v38, 0x0

    goto :goto_b

    .line 63
    :cond_17
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v38, v5

    .line 64
    :goto_b
    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v39, 0x0

    goto :goto_c

    .line 65
    :cond_18
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v39, v5

    .line 66
    :goto_c
    invoke-interface {v2, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_19

    const/16 v40, 0x0

    goto :goto_d

    .line 67
    :cond_19
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v40, v5

    .line 68
    :goto_d
    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_1a

    const/16 v41, 0x0

    goto :goto_e

    .line 69
    :cond_1a
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v41, v5

    .line 70
    :goto_e
    invoke-interface {v2, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_1b

    const/16 v42, 0x0

    goto :goto_f

    .line 71
    :cond_1b
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v42, v5

    .line 72
    :goto_f
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_1c

    const/16 v43, 0x0

    goto :goto_10

    .line 73
    :cond_1c
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v43, v3

    .line 74
    :goto_10
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    move/from16 v3, v18

    const/16 v44, 0x0

    goto :goto_11

    .line 75
    :cond_1d
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v44, v3

    move/from16 v3, v18

    .line 76
    :goto_11
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1e

    move/from16 v3, v19

    const/16 v45, 0x0

    goto :goto_12

    .line 77
    :cond_1e
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v45, v3

    move/from16 v3, v19

    .line 78
    :goto_12
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v46

    move/from16 v3, v20

    .line 79
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    move/from16 v3, v21

    const/16 v47, 0x0

    goto :goto_13

    .line 80
    :cond_1f
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v47, v3

    move/from16 v3, v21

    .line 81
    :goto_13
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_20

    move/from16 v3, v22

    const/16 v49, 0x0

    goto :goto_14

    .line 82
    :cond_20
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v49, v3

    move/from16 v3, v22

    .line 83
    :goto_14
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_21

    move/from16 v3, v23

    const/16 v50, 0x0

    goto :goto_15

    .line 84
    :cond_21
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v50, v3

    move/from16 v3, v23

    .line 85
    :goto_15
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_22

    move/from16 v3, v24

    const/16 v51, 0x1

    goto :goto_16

    :cond_22
    const/4 v3, 0x0

    move/from16 v3, v24

    const/16 v51, 0x0

    .line 86
    :goto_16
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_23

    move/from16 v3, v25

    const/16 v52, 0x0

    goto :goto_17

    .line 87
    :cond_23
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v52, v3

    move/from16 v3, v25

    .line 88
    :goto_17
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_24

    move/from16 v3, v26

    const/16 v53, 0x0

    goto :goto_18

    .line 89
    :cond_24
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v53, v3

    move/from16 v3, v26

    .line 90
    :goto_18
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_25

    goto :goto_19

    :cond_25
    const/16 v48, 0x0

    move-object/from16 v4, p0

    goto :goto_1c

    .line 91
    :cond_26
    :goto_19
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_27

    const/4 v3, 0x0

    goto :goto_1a

    .line 92
    :cond_27
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1a
    move-object/from16 v4, p0

    .line 93
    :try_start_3
    iget-object v5, v4, Lcom/shabakaty/downloader/kw0$p;->s:Lcom/shabakaty/downloader/kw0;

    .line 94
    iget-object v5, v5, Lcom/shabakaty/downloader/kw0;->c:Lcom/shabakaty/downloader/ce4;

    .line 95
    invoke-virtual {v5, v3}, Lcom/shabakaty/downloader/ce4;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 96
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_28

    const/4 v1, 0x0

    goto :goto_1b

    .line 97
    :cond_28
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 98
    :goto_1b
    iget-object v5, v4, Lcom/shabakaty/downloader/kw0$p;->s:Lcom/shabakaty/downloader/kw0;

    .line 99
    iget-object v5, v5, Lcom/shabakaty/downloader/kw0;->c:Lcom/shabakaty/downloader/ce4;

    .line 100
    invoke-virtual {v5, v1}, Lcom/shabakaty/downloader/ce4;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 101
    new-instance v5, Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;

    invoke-direct {v5, v3, v1}, Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;-><init>(Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v48, v5

    .line 102
    :goto_1c
    new-instance v1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    move-object/from16 v30, v1

    invoke-direct/range {v30 .. v53}, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 103
    :goto_1d
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v5, v28

    .line 104
    invoke-virtual {v5, v3}, Lcom/shabakaty/downloader/m64;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_29

    .line 105
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 106
    :cond_29
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, v29

    .line 107
    invoke-virtual {v5, v0}, Lcom/shabakaty/downloader/m64;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_2a

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    :cond_2a
    new-instance v5, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;

    invoke-direct {v5, v1, v3, v0}, Lcom/shabakaty/cinemana/data/db/downloads/CombinedDownloadItem;-><init>(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v16, v5

    goto :goto_1e

    :cond_2b
    move-object v4, v1

    const/16 v16, 0x0

    .line 110
    :goto_1e
    iget-object v0, v4, Lcom/shabakaty/downloader/kw0$p;->s:Lcom/shabakaty/downloader/kw0;

    .line 111
    iget-object v0, v0, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    .line 112
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 113
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 114
    iget-object v0, v4, Lcom/shabakaty/downloader/kw0$p;->r:Lcom/shabakaty/downloader/yt3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/yt3;->c()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 115
    iget-object v0, v4, Lcom/shabakaty/downloader/kw0$p;->s:Lcom/shabakaty/downloader/kw0;

    .line 116
    iget-object v0, v0, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    .line 117
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->j()V

    return-object v16

    :catchall_1
    move-exception v0

    goto :goto_1f

    :catchall_2
    move-exception v0

    move-object v4, v1

    .line 118
    :goto_1f
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 119
    iget-object v1, v4, Lcom/shabakaty/downloader/kw0$p;->r:Lcom/shabakaty/downloader/yt3;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/yt3;->c()V

    .line 120
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_20

    :catchall_4
    move-exception v0

    move-object v4, v1

    .line 121
    :goto_20
    iget-object v1, v4, Lcom/shabakaty/downloader/kw0$p;->s:Lcom/shabakaty/downloader/kw0;

    .line 122
    iget-object v1, v1, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    .line 123
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 124
    throw v0
.end method
