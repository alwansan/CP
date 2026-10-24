.class public Lcom/shabakaty/downloader/v24$x;
.super Ljava/lang/Object;
.source "SettingsDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/v24;->j(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/yt3;

.field public final synthetic s:Lcom/shabakaty/downloader/v24;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/v24;Lcom/shabakaty/downloader/yt3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/v24$x;->s:Lcom/shabakaty/downloader/v24;

    iput-object p2, p0, Lcom/shabakaty/downloader/v24$x;->r:Lcom/shabakaty/downloader/yt3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 24

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/shabakaty/downloader/v24$x;->s:Lcom/shabakaty/downloader/v24;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/v24;->a:Lcom/shabakaty/downloader/vt3;

    .line 3
    iget-object v2, v1, Lcom/shabakaty/downloader/v24$x;->r:Lcom/shabakaty/downloader/yt3;

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

    .line 18
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v16

    if-eqz v16, :cond_e

    .line 19
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 20
    :cond_0
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    const/16 v17, 0x1

    if-eqz v16, :cond_2

    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-nez v16, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v16, v0

    const/4 v7, 0x0

    goto :goto_5

    .line 22
    :cond_2
    :goto_1
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_3

    move-object/from16 v16, v0

    const/4 v5, 0x0

    goto :goto_2

    .line 23
    :cond_3
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v16, v0

    .line 24
    :goto_2
    iget-object v0, v1, Lcom/shabakaty/downloader/v24$x;->s:Lcom/shabakaty/downloader/v24;

    .line 25
    iget-object v0, v0, Lcom/shabakaty/downloader/v24;->c:Lcom/shabakaty/downloader/zl2;

    .line 26
    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/zl2;->f(Ljava/lang/String;)Lcom/shabakaty/downloader/ia3;

    move-result-object v0

    .line 27
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    .line 28
    :goto_3
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    .line 29
    :goto_4
    new-instance v7, Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;

    invoke-direct {v7, v0, v5, v6}, Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;-><init>(Lcom/shabakaty/downloader/ia3;ZZ)V

    .line 30
    :goto_5
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

    goto :goto_6

    :cond_6
    const/4 v9, 0x0

    goto :goto_a

    .line 31
    :cond_7
    :goto_6
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_7

    .line 32
    :cond_8
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 33
    :goto_7
    iget-object v5, v1, Lcom/shabakaty/downloader/v24$x;->s:Lcom/shabakaty/downloader/v24;

    .line 34
    iget-object v5, v5, Lcom/shabakaty/downloader/v24;->d:Lcom/shabakaty/downloader/xl2;

    .line 35
    invoke-virtual {v5, v0}, Lcom/shabakaty/downloader/xl2;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/tx4;

    move-result-object v0

    .line 36
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 37
    iget-object v6, v1, Lcom/shabakaty/downloader/v24$x;->s:Lcom/shabakaty/downloader/v24;

    .line 38
    iget-object v6, v6, Lcom/shabakaty/downloader/v24;->e:Lcom/shabakaty/downloader/cp6;

    .line 39
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x2

    if-ne v5, v6, :cond_9

    .line 40
    sget-object v5, Lcom/shabakaty/downloader/ky4$b;->b:Lcom/shabakaty/downloader/ky4$b;

    goto :goto_8

    .line 41
    :cond_9
    sget-object v5, Lcom/shabakaty/downloader/ky4$a;->b:Lcom/shabakaty/downloader/ky4$a;

    .line 42
    :goto_8
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 43
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_a

    const/4 v8, 0x1

    goto :goto_9

    :cond_a
    const/4 v8, 0x0

    .line 44
    :goto_9
    new-instance v9, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;

    invoke-direct {v9, v0, v5, v6, v8}, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;-><init>(Lcom/shabakaty/downloader/tx4;Lcom/shabakaty/downloader/ky4;IZ)V

    .line 45
    :goto_a
    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_b

    :cond_b
    const/4 v4, 0x0

    goto :goto_d

    .line 46
    :cond_c
    :goto_b
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 47
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 48
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 49
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 50
    iget-object v5, v1, Lcom/shabakaty/downloader/v24$x;->s:Lcom/shabakaty/downloader/v24;

    .line 51
    iget-object v5, v5, Lcom/shabakaty/downloader/v24;->f:Lcom/shabakaty/downloader/kd;

    .line 52
    invoke-virtual {v5, v0}, Lcom/shabakaty/downloader/kd;->c(I)Lcom/shabakaty/downloader/fg4;

    move-result-object v21

    .line 53
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    .line 54
    iget-object v3, v1, Lcom/shabakaty/downloader/v24$x;->s:Lcom/shabakaty/downloader/v24;

    .line 55
    iget-object v3, v3, Lcom/shabakaty/downloader/v24;->g:Lcom/shabakaty/downloader/wt2;

    .line 56
    invoke-virtual {v3, v0}, Lcom/shabakaty/downloader/wt2;->c(F)Lcom/shabakaty/downloader/hg4;

    move-result-object v22

    .line 57
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v4, 0x0

    goto :goto_c

    .line 58
    :cond_d
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 59
    :goto_c
    iget-object v0, v1, Lcom/shabakaty/downloader/v24$x;->s:Lcom/shabakaty/downloader/v24;

    .line 60
    iget-object v0, v0, Lcom/shabakaty/downloader/v24;->h:Lcom/shabakaty/downloader/ll3;

    .line 61
    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/ll3;->e(Ljava/lang/String;)Lcom/shabakaty/downloader/gg4;

    move-result-object v23

    .line 62
    new-instance v4, Lcom/shabakaty/downloader/pg4;

    move-object/from16 v17, v4

    invoke-direct/range {v17 .. v23}, Lcom/shabakaty/downloader/pg4;-><init>(IIILcom/shabakaty/downloader/fg4;Lcom/shabakaty/downloader/hg4;Lcom/shabakaty/downloader/gg4;)V

    .line 63
    :goto_d
    new-instance v0, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;

    move-object/from16 v3, v16

    invoke-direct {v0, v3, v7, v9, v4}, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;-><init>(Ljava/lang/String;Lcom/shabakaty/cinemana/data/db/settings/FilterSettingsEntity;Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;Lcom/shabakaty/downloader/pg4;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v0

    goto :goto_e

    :cond_e
    const/4 v4, 0x0

    .line 64
    :goto_e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 65
    iget-object v0, v1, Lcom/shabakaty/downloader/v24$x;->r:Lcom/shabakaty/downloader/yt3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/yt3;->c()V

    return-object v4

    :catchall_0
    move-exception v0

    .line 66
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 67
    iget-object v2, v1, Lcom/shabakaty/downloader/v24$x;->r:Lcom/shabakaty/downloader/yt3;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/yt3;->c()V

    .line 68
    throw v0
.end method
