.class public final Lcom/shabakaty/downloader/jt2;
.super Lcom/shabakaty/downloader/ht2;
.source "Migrations.kt"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x3

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/shabakaty/downloader/ht2;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/yh4;)V
    .locals 39

    move-object/from16 v6, p1

    const-string v0, "database"

    invoke-static {v6, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/it2;->a:Lcom/shabakaty/downloader/it2;

    const-string v0, "SELECT * FROM DownloadItem"

    .line 2
    invoke-interface {v6, v0}, Lcom/shabakaty/downloader/yh4;->y0(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    const-string v7, "0"

    const-string v8, "season"

    const-string v9, " "

    const/4 v10, 0x4

    const-string v11, "title"

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v2, :cond_10

    const-string v2, "videoFile"

    .line 5
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 6
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move-object v2, v4

    goto :goto_1

    :cond_1
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 7
    :goto_1
    invoke-static {v2}, Lcom/shabakaty/downloader/ea2;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/z92;

    move-result-object v2

    .line 8
    instance-of v3, v2, Lcom/shabakaty/downloader/ca2;

    if-eqz v3, :cond_0

    .line 9
    invoke-virtual {v2}, Lcom/shabakaty/downloader/z92;->d()Lcom/shabakaty/downloader/ca2;

    move-result-object v2

    .line 10
    invoke-virtual {v2, v11}, Lcom/shabakaty/downloader/ca2;->l(Ljava/lang/String;)Lcom/shabakaty/downloader/z92;

    move-result-object v3

    const-string v5, ""

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/shabakaty/downloader/z92;->i()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    :goto_2
    move-object/from16 v17, v5

    goto :goto_3

    :cond_3
    const/16 v11, 0xa

    const/16 v14, 0x20

    .line 11
    invoke-static {v3, v11, v14, v12, v10}, Lcom/shabakaty/downloader/ne4;->G(Ljava/lang/String;CCZI)Ljava/lang/String;

    move-result-object v3

    const-string v11, " , "

    .line 12
    invoke-static {v3, v11, v9, v12, v10}, Lcom/shabakaty/downloader/ne4;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v3

    const-string v11, " \u060c "

    .line 13
    invoke-static {v3, v11, v9, v12, v10}, Lcom/shabakaty/downloader/ne4;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v3

    :goto_3
    const-string v3, "videoModel"

    .line 14
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/ca2;->l(Ljava/lang/String;)Lcom/shabakaty/downloader/z92;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_4

    .line 15
    :cond_4
    instance-of v3, v2, Lcom/shabakaty/downloader/ca2;

    if-ne v3, v13, :cond_5

    const/4 v12, 0x1

    :cond_5
    :goto_4
    if-eqz v12, :cond_0

    .line 16
    invoke-virtual {v2}, Lcom/shabakaty/downloader/z92;->d()Lcom/shabakaty/downloader/ca2;

    move-result-object v2

    const-string v3, "kind"

    .line 17
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/ca2;->l(Ljava/lang/String;)Lcom/shabakaty/downloader/z92;

    move-result-object v3

    if-nez v3, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v3}, Lcom/shabakaty/downloader/z92;->i()Ljava/lang/String;

    move-result-object v4

    :goto_5
    const-string v3, "2"

    .line 18
    invoke-static {v4, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "nb"

    .line 19
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/ca2;->l(Ljava/lang/String;)Lcom/shabakaty/downloader/z92;

    move-result-object v3

    if-nez v3, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v3}, Lcom/shabakaty/downloader/z92;->i()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    :goto_6
    move-object v15, v5

    goto :goto_7

    :cond_8
    move-object v15, v3

    :goto_7
    const-string v3, "episodeNummer"

    .line 20
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/ca2;->l(Ljava/lang/String;)Lcom/shabakaty/downloader/z92;

    move-result-object v3

    if-nez v3, :cond_9

    goto :goto_8

    :cond_9
    invoke-virtual {v3}, Lcom/shabakaty/downloader/z92;->i()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a

    :goto_8
    move-object/from16 v26, v5

    goto :goto_9

    :cond_a
    move-object/from16 v26, v3

    .line 21
    :goto_9
    invoke-virtual {v2, v8}, Lcom/shabakaty/downloader/ca2;->l(Ljava/lang/String;)Lcom/shabakaty/downloader/z92;

    move-result-object v3

    if-nez v3, :cond_b

    goto :goto_a

    :cond_b
    invoke-virtual {v3}, Lcom/shabakaty/downloader/z92;->i()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c

    :goto_a
    move-object/from16 v21, v5

    goto :goto_b

    :cond_c
    move-object/from16 v21, v3

    :goto_b
    const-string v3, "rootSeries"

    .line 22
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/ca2;->l(Ljava/lang/String;)Lcom/shabakaty/downloader/z92;

    move-result-object v2

    if-nez v2, :cond_d

    goto :goto_c

    :cond_d
    invoke-virtual {v2}, Lcom/shabakaty/downloader/z92;->i()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e

    goto :goto_c

    :cond_e
    move-object v5, v2

    .line 23
    :goto_c
    invoke-static {v5, v7}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v34, v15

    goto :goto_d

    :cond_f
    move-object/from16 v34, v5

    .line 24
    :goto_d
    new-instance v2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    move-object v14, v2

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const v38, 0x77f7ba

    invoke-direct/range {v14 .. v38}, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/shabakaty/cinemana/data/db/downloads/SkippingDurationsDB;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    .line 25
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 26
    :cond_10
    sput-object v1, Lcom/shabakaty/downloader/it2;->b:Ljava/util/List;

    .line 27
    sget-object v0, Lcom/shabakaty/downloader/it2;->a:Lcom/shabakaty/downloader/it2;

    .line 28
    sget-object v0, Lcom/shabakaty/downloader/it2;->c:Lcom/shabakaty/downloader/kf2;

    check-cast v0, Lcom/shabakaty/downloader/qj4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qj4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 29
    invoke-interface {v6, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    .line 30
    sget-object v0, Lcom/shabakaty/downloader/it2;->d:Lcom/shabakaty/downloader/kf2;

    check-cast v0, Lcom/shabakaty/downloader/qj4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qj4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 31
    invoke-interface {v6, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcom/shabakaty/downloader/it2;->e:Lcom/shabakaty/downloader/kf2;

    check-cast v0, Lcom/shabakaty/downloader/qj4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qj4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 33
    invoke-interface {v6, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/shabakaty/downloader/it2;->f:Lcom/shabakaty/downloader/kf2;

    check-cast v0, Lcom/shabakaty/downloader/qj4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qj4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 35
    invoke-interface {v6, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/shabakaty/downloader/it2;->g:Lcom/shabakaty/downloader/kf2;

    check-cast v0, Lcom/shabakaty/downloader/qj4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qj4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 37
    invoke-interface {v6, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    .line 38
    sget-object v0, Lcom/shabakaty/downloader/it2;->h:Lcom/shabakaty/downloader/kf2;

    check-cast v0, Lcom/shabakaty/downloader/qj4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qj4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 39
    invoke-interface {v6, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    .line 40
    sget-object v0, Lcom/shabakaty/downloader/it2;->i:Lcom/shabakaty/downloader/kf2;

    check-cast v0, Lcom/shabakaty/downloader/qj4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qj4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 41
    invoke-interface {v6, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    .line 42
    sget-object v0, Lcom/shabakaty/downloader/it2;->j:Lcom/shabakaty/downloader/kf2;

    check-cast v0, Lcom/shabakaty/downloader/qj4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qj4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 43
    invoke-interface {v6, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    .line 44
    sget-object v0, Lcom/shabakaty/downloader/it2;->k:Lcom/shabakaty/downloader/kf2;

    check-cast v0, Lcom/shabakaty/downloader/qj4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qj4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 45
    invoke-interface {v6, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/shabakaty/downloader/it2;->l:Lcom/shabakaty/downloader/kf2;

    check-cast v0, Lcom/shabakaty/downloader/qj4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qj4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    invoke-interface {v6, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/shabakaty/downloader/it2;->m:Lcom/shabakaty/downloader/kf2;

    check-cast v0, Lcom/shabakaty/downloader/qj4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qj4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    invoke-interface {v6, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/shabakaty/downloader/it2;->n:Lcom/shabakaty/downloader/kf2;

    check-cast v0, Lcom/shabakaty/downloader/qj4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qj4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 51
    invoke-interface {v6, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/shabakaty/downloader/it2;->o:Lcom/shabakaty/downloader/kf2;

    check-cast v0, Lcom/shabakaty/downloader/qj4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qj4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 53
    invoke-interface {v6, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/shabakaty/downloader/it2;->b:Ljava/util/List;

    .line 55
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_e
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    .line 56
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 57
    iget-object v1, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->episodeNumber:Ljava/lang/String;

    const-string v2, "episodeNumber"

    .line 58
    invoke-virtual {v3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v1, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->season:Ljava/lang/String;

    .line 60
    invoke-virtual {v3, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v1, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->title:Ljava/lang/String;

    .line 62
    invoke-virtual {v3, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v1, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->rootEpisode:Ljava/lang/String;

    const-string v2, "rootEpisode"

    .line 64
    invoke-virtual {v3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v1, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->rootEpisode:Ljava/lang/String;

    .line 66
    invoke-static {v1}, Lcom/shabakaty/downloader/vd5;->B(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "collectionID"

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-array v5, v13, [Ljava/lang/String;

    .line 67
    iget-object v0, v0, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->id:Ljava/lang/String;

    aput-object v0, v5, v12

    const/4 v2, 0x5

    const-string v1, "CinemanaDownloadItem"

    const-string v4, "id = ?"

    move-object/from16 v0, p1

    .line 68
    invoke-interface/range {v0 .. v5}, Lcom/shabakaty/downloader/yh4;->n0(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_e

    .line 69
    :cond_11
    sget-object v0, Lcom/shabakaty/downloader/it2;->a:Lcom/shabakaty/downloader/it2;

    .line 70
    sget-object v0, Lcom/shabakaty/downloader/it2;->b:Ljava/util/List;

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    .line 73
    iget-object v3, v3, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->rootEpisode:Ljava/lang/String;

    .line 74
    invoke-static {v3, v7}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v13

    if-eqz v3, :cond_12

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 75
    :cond_13
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 76
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 78
    move-object v4, v3

    check-cast v4, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    .line 79
    iget-object v4, v4, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->rootEpisode:Ljava/lang/String;

    .line 80
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 81
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 82
    :cond_15
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    .line 83
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 84
    iget-object v3, v1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->rootEpisode:Ljava/lang/String;

    .line 85
    invoke-static {v3}, Lcom/shabakaty/downloader/vd5;->B(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 86
    iget-object v1, v1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->title:Ljava/lang/String;

    .line 87
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v1, v3, v12, v12, v4}, Lcom/shabakaty/downloader/re4;->e0(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v10}, Lcom/shabakaty/downloader/m50;->W(Ljava/util/List;I)Ljava/util/List;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x3e

    const-string v14, " "

    invoke-static/range {v13 .. v20}, Lcom/shabakaty/downloader/m50;->g0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lcom/shabakaty/downloader/tm1;I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "name"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DownloadsCollectionItem"

    .line 88
    invoke-interface {v6, v1, v10, v2}, Lcom/shabakaty/downloader/yh4;->A0(Ljava/lang/String;ILandroid/content/ContentValues;)J

    goto :goto_11

    :cond_16
    return-void
.end method
