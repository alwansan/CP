.class public Lcom/shabakaty/downloader/v24$y;
.super Ljava/lang/Object;
.source "SettingsDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/v24;->d()Lcom/shabakaty/downloader/te1;
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
        "Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/yt3;

.field public final synthetic s:Lcom/shabakaty/downloader/v24;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/v24;Lcom/shabakaty/downloader/yt3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/v24$y;->s:Lcom/shabakaty/downloader/v24;

    iput-object p2, p0, Lcom/shabakaty/downloader/v24$y;->r:Lcom/shabakaty/downloader/yt3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 31

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/shabakaty/downloader/v24$y;->s:Lcom/shabakaty/downloader/v24;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/v24;->a:Lcom/shabakaty/downloader/vt3;

    .line 3
    iget-object v2, v1, Lcom/shabakaty/downloader/v24$y;->r:Lcom/shabakaty/downloader/yt3;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/downloader/lh0;->b(Lcom/shabakaty/downloader/vt3;Lcom/shabakaty/downloader/bi4;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "userId"

    .line 4
    invoke-static {v2, v0}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "filter_parentalLevel"

    .line 5
    invoke-static {v2, v5}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "filter_skipInAppropriateScenes"

    .line 6
    invoke-static {v2, v6}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "filter_showContentWithNoSubtitle"

    .line 7
    invoke-static {v2, v7}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "app_language"

    .line 8
    invoke-static {v2, v8}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "app_theme"

    .line 9
    invoke-static {v2, v9}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "app_seekPeriod"

    .line 10
    invoke-static {v2, v10}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "app_showSubtitles"

    .line 11
    invoke-static {v2, v11}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "subtitles_subtitleColor"

    .line 12
    invoke-static {v2, v12}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "subtitles_subtitleEdgeColor"

    .line 13
    invoke-static {v2, v13}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "subtitles_subtitleBackgroundColor"

    .line 14
    invoke-static {v2, v14}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "subtitles_subtitleEdge"

    .line 15
    invoke-static {v2, v15}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v3, "subtitles_subtitleFontScale"

    .line 16
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "subtitles_subtitleFontFamily"

    .line 17
    invoke-static {v2, v4}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v16, v4

    .line 18
    new-instance v4, Ljava/util/ArrayList;

    move/from16 v17, v3

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 20
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 21
    :cond_0
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 22
    :goto_1
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    const/16 v19, 0x1

    if-eqz v18, :cond_2

    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-nez v18, :cond_1

    goto :goto_2

    :cond_1
    move/from16 v20, v0

    move/from16 v18, v5

    move/from16 v21, v6

    move/from16 v22, v7

    const/4 v7, 0x0

    goto :goto_6

    .line 23
    :cond_2
    :goto_2
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_3

    move/from16 v20, v0

    move/from16 v18, v5

    const/4 v0, 0x0

    goto :goto_3

    .line 24
    :cond_3
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v18, v5

    .line 25
    :goto_3
    iget-object v5, v1, Lcom/shabakaty/downloader/v24$y;->s:Lcom/shabakaty/downloader/v24;

    .line 26
    iget-object v5, v5, Lcom/shabakaty/downloader/v24;->c:Lcom/shabakaty/downloader/zl2;

    .line 27
    invoke-virtual {v5, v0}, Lcom/shabakaty/downloader/zl2;->f(Ljava/lang/String;)Lcom/shabakaty/downloader/ia3;

    move-result-object v0

    .line 28
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    .line 29
    :goto_4
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    if-eqz v21, :cond_5

    move/from16 v21, v6

    move/from16 v22, v7

    const/4 v6, 0x1

    goto :goto_5

    :cond_5
    move/from16 v21, v6

    move/from16 v22, v7

    const/4 v6, 0x0

    .line 30
    :goto_5
    new-instance v7, Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;

    invoke-direct {v7, v0, v5, v6}, Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;-><init>(Lcom/shabakaty/downloader/ia3;ZZ)V

    .line 31
    :goto_6
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_7

    :cond_6
    move/from16 v19, v8

    move/from16 v23, v9

    const/4 v9, 0x0

    goto :goto_b

    .line 32
    :cond_7
    :goto_7
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_8

    .line 33
    :cond_8
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 34
    :goto_8
    iget-object v5, v1, Lcom/shabakaty/downloader/v24$y;->s:Lcom/shabakaty/downloader/v24;

    .line 35
    iget-object v5, v5, Lcom/shabakaty/downloader/v24;->d:Lcom/shabakaty/downloader/xl2;

    .line 36
    invoke-virtual {v5, v0}, Lcom/shabakaty/downloader/xl2;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/tx4;

    move-result-object v0

    .line 37
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 38
    iget-object v6, v1, Lcom/shabakaty/downloader/v24$y;->s:Lcom/shabakaty/downloader/v24;

    .line 39
    iget-object v6, v6, Lcom/shabakaty/downloader/v24;->e:Lcom/shabakaty/downloader/cp6;

    .line 40
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x2

    if-ne v5, v6, :cond_9

    .line 41
    sget-object v5, Lcom/shabakaty/downloader/ky4$b;->b:Lcom/shabakaty/downloader/ky4$b;

    goto :goto_9

    .line 42
    :cond_9
    sget-object v5, Lcom/shabakaty/downloader/ky4$a;->b:Lcom/shabakaty/downloader/ky4$a;

    .line 43
    :goto_9
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 44
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v19, v8

    if-eqz v23, :cond_a

    move/from16 v23, v9

    const/4 v8, 0x1

    goto :goto_a

    :cond_a
    move/from16 v23, v9

    const/4 v8, 0x0

    .line 45
    :goto_a
    new-instance v9, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;

    invoke-direct {v9, v0, v5, v6, v8}, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;-><init>(Lcom/shabakaty/downloader/tx4;Lcom/shabakaty/downloader/ky4;IZ)V

    .line 46
    :goto_b
    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v2, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v2, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_d

    move/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_c

    move/from16 v5, v16

    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_c

    :cond_b
    const/4 v6, 0x0

    goto :goto_e

    :cond_c
    move/from16 v5, v16

    goto :goto_c

    :cond_d
    move/from16 v5, v16

    move/from16 v0, v17

    .line 47
    :goto_c
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 48
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 49
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 50
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 51
    iget-object v8, v1, Lcom/shabakaty/downloader/v24$y;->s:Lcom/shabakaty/downloader/v24;

    .line 52
    iget-object v8, v8, Lcom/shabakaty/downloader/v24;->f:Lcom/shabakaty/downloader/kd;

    .line 53
    invoke-virtual {v8, v6}, Lcom/shabakaty/downloader/kd;->c(I)Lcom/shabakaty/downloader/fg4;

    move-result-object v28

    .line 54
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v6

    .line 55
    iget-object v8, v1, Lcom/shabakaty/downloader/v24$y;->s:Lcom/shabakaty/downloader/v24;

    .line 56
    iget-object v8, v8, Lcom/shabakaty/downloader/v24;->g:Lcom/shabakaty/downloader/wt2;

    .line 57
    invoke-virtual {v8, v6}, Lcom/shabakaty/downloader/wt2;->c(F)Lcom/shabakaty/downloader/hg4;

    move-result-object v29

    .line 58
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v6, 0x0

    goto :goto_d

    .line 59
    :cond_e
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 60
    :goto_d
    iget-object v8, v1, Lcom/shabakaty/downloader/v24$y;->s:Lcom/shabakaty/downloader/v24;

    .line 61
    iget-object v8, v8, Lcom/shabakaty/downloader/v24;->h:Lcom/shabakaty/downloader/ll3;

    .line 62
    invoke-virtual {v8, v6}, Lcom/shabakaty/downloader/ll3;->e(Ljava/lang/String;)Lcom/shabakaty/downloader/gg4;

    move-result-object v30

    .line 63
    new-instance v6, Lcom/shabakaty/downloader/pg4;

    move-object/from16 v24, v6

    invoke-direct/range {v24 .. v30}, Lcom/shabakaty/downloader/pg4;-><init>(IIILcom/shabakaty/downloader/fg4;Lcom/shabakaty/downloader/hg4;Lcom/shabakaty/downloader/gg4;)V

    .line 64
    :goto_e
    new-instance v8, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;

    invoke-direct {v8, v3, v7, v9, v6}, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;-><init>(Ljava/lang/String;Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;Lcom/shabakaty/downloader/pg4;)V

    .line 65
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v17, v0

    move/from16 v16, v5

    move/from16 v5, v18

    move/from16 v8, v19

    move/from16 v0, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v9, v23

    goto/16 :goto_0

    .line 66
    :cond_f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v4

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 67
    throw v0
.end method

.method public finalize()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/v24$y;->r:Lcom/shabakaty/downloader/yt3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/yt3;->c()V

    return-void
.end method
