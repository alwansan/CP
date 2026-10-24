.class public Lcom/shabakaty/downloader/t25$i;
.super Ljava/lang/Object;
.source "VideoStatusDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/t25;->z(Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/yt3;

.field public final synthetic s:Lcom/shabakaty/downloader/t25;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/t25;Lcom/shabakaty/downloader/yt3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/t25$i;->s:Lcom/shabakaty/downloader/t25;

    iput-object p2, p0, Lcom/shabakaty/downloader/t25$i;->r:Lcom/shabakaty/downloader/yt3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 24

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/shabakaty/downloader/t25$i;->s:Lcom/shabakaty/downloader/t25;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    .line 3
    iget-object v2, v1, Lcom/shabakaty/downloader/t25$i;->r:Lcom/shabakaty/downloader/yt3;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3}, Lcom/shabakaty/downloader/lh0;->b(Lcom/shabakaty/downloader/vt3;Lcom/shabakaty/downloader/bi4;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "id"

    .line 4
    invoke-static {v2, v0}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "videoId"

    .line 5
    invoke-static {v2, v5}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "liked"

    .line 6
    invoke-static {v2, v6}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "watched"

    .line 7
    invoke-static {v2, v7}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "annoying"

    .line 8
    invoke-static {v2, v8}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "disLiked"

    .line 9
    invoke-static {v2, v9}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "favorite"

    .line 10
    invoke-static {v2, v10}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "watchLater"

    .line 11
    invoke-static {v2, v11}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "videoProgress"

    .line 12
    invoke-static {v2, v12}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 13
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 14
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object v14, v3

    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 16
    :goto_0
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v15, v3

    goto :goto_1

    .line 17
    :cond_1
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 18
    :goto_1
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    const/16 v16, 0x1

    goto :goto_2

    :cond_2
    const/16 v16, 0x0

    .line 19
    :goto_2
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v17, 0x1

    goto :goto_3

    :cond_3
    const/16 v17, 0x0

    .line 20
    :goto_3
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/16 v18, 0x1

    goto :goto_4

    :cond_4
    const/16 v18, 0x0

    .line 21
    :goto_4
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v19, 0x1

    goto :goto_5

    :cond_5
    const/16 v19, 0x0

    .line 22
    :goto_5
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_6

    const/16 v20, 0x1

    goto :goto_6

    :cond_6
    const/16 v20, 0x0

    .line 23
    :goto_6
    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_7
    move-object/from16 v21, v3

    goto :goto_8

    .line 24
    :cond_7
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    .line 25
    :goto_8
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 26
    new-instance v3, Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;

    move-object v13, v3

    invoke-direct/range {v13 .. v23}, Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    if-eqz v3, :cond_9

    .line 27
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v3

    .line 28
    :cond_9
    :try_start_1
    new-instance v0, Lcom/shabakaty/downloader/z21;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Query returned empty result set: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/shabakaty/downloader/t25$i;->r:Lcom/shabakaty/downloader/yt3;

    .line 29
    iget-object v4, v4, Lcom/shabakaty/downloader/yt3;->r:Ljava/lang/String;

    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/shabakaty/downloader/z21;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 31
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 32
    throw v0
.end method

.method public finalize()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/t25$i;->r:Lcom/shabakaty/downloader/yt3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/yt3;->c()V

    return-void
.end method
