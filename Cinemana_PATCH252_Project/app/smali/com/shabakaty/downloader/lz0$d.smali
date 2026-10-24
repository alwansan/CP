.class public Lcom/shabakaty/downloader/lz0$d;
.super Ljava/lang/Object;
.source "DownloadsDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/lz0;->k()Lcom/shabakaty/downloader/te1;
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
        "Lcom/shabakaty/downloader/pw0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/yt3;

.field public final synthetic s:Lcom/shabakaty/downloader/lz0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/lz0;Lcom/shabakaty/downloader/yt3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/lz0$d;->s:Lcom/shabakaty/downloader/lz0;

    iput-object p2, p0, Lcom/shabakaty/downloader/lz0$d;->r:Lcom/shabakaty/downloader/yt3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 19

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/shabakaty/downloader/lz0$d;->s:Lcom/shabakaty/downloader/lz0;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/lz0;->a:Lcom/shabakaty/downloader/vt3;

    .line 3
    iget-object v2, v1, Lcom/shabakaty/downloader/lz0$d;->r:Lcom/shabakaty/downloader/yt3;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/downloader/lh0;->b(Lcom/shabakaty/downloader/vt3;Lcom/shabakaty/downloader/bi4;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "task_id"

    .line 4
    invoke-static {v2, v0}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "external_id"

    .line 5
    invoke-static {v2, v5}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "progress_bytes"

    .line 6
    invoke-static {v2, v6}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "title"

    .line 7
    invoke-static {v2, v7}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "url"

    .line 8
    invoke-static {v2, v8}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "img"

    .line 9
    invoke-static {v2, v9}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "path"

    .line 10
    invoke-static {v2, v10}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "size_bytes"

    .line 11
    invoke-static {v2, v11}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "status"

    .line 12
    invoke-static {v2, v12}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "last_updated"

    .line 13
    invoke-static {v2, v13}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 14
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 16
    new-instance v15, Lcom/shabakaty/downloader/pw0;

    invoke-direct {v15}, Lcom/shabakaty/downloader/pw0;-><init>()V

    .line 17
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 18
    iput v3, v15, Lcom/shabakaty/downloader/pw0;->r:I

    .line 19
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v4

    goto :goto_1

    .line 20
    :cond_0
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 21
    :goto_1
    invoke-virtual {v15, v3}, Lcom/shabakaty/downloader/pw0;->f(Ljava/lang/String;)V

    move/from16 v16, v5

    .line 22
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 23
    iput-wide v4, v15, Lcom/shabakaty/downloader/pw0;->t:J

    .line 24
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_2

    .line 25
    :cond_1
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 26
    :goto_2
    invoke-virtual {v15, v4}, Lcom/shabakaty/downloader/pw0;->l(Ljava/lang/String;)V

    .line 27
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_3

    .line 28
    :cond_2
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 29
    :goto_3
    invoke-virtual {v15, v4}, Lcom/shabakaty/downloader/pw0;->m(Ljava/lang/String;)V

    .line 30
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    goto :goto_4

    .line 31
    :cond_3
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 32
    :goto_4
    invoke-virtual {v15, v4}, Lcom/shabakaty/downloader/pw0;->g(Ljava/lang/String;)V

    .line 33
    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    goto :goto_5

    .line 34
    :cond_4
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 35
    :goto_5
    invoke-virtual {v15, v4}, Lcom/shabakaty/downloader/pw0;->j(Ljava/lang/String;)V

    .line 36
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 37
    iput-wide v4, v15, Lcom/shabakaty/downloader/pw0;->y:J

    .line 38
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 39
    invoke-static {}, Lcom/shabakaty/downloader/xc4;->values()[Lcom/shabakaty/downloader/xc4;

    move-result-object v5

    array-length v3, v5

    move/from16 v17, v0

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v3, :cond_7

    aget-object v1, v5, v0

    move/from16 v18, v3

    .line 40
    iget v3, v1, Lcom/shabakaty/downloader/xc4;->r:I

    if-ne v3, v4, :cond_5

    const/4 v3, 0x1

    goto :goto_7

    :cond_5
    const/4 v3, 0x0

    :goto_7
    if-eqz v3, :cond_6

    goto :goto_8

    :cond_6
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p0

    move/from16 v3, v18

    goto :goto_6

    :cond_7
    const/4 v1, 0x0

    .line 41
    :goto_8
    invoke-virtual {v15, v1}, Lcom/shabakaty/downloader/pw0;->k(Lcom/shabakaty/downloader/xc4;)V

    .line 42
    invoke-interface {v2, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_9

    .line 43
    :cond_8
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 44
    :goto_9
    invoke-virtual {v15, v0}, Lcom/shabakaty/downloader/pw0;->i(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v1, p0

    move/from16 v5, v16

    move/from16 v0, v17

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 46
    :cond_9
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v14

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 47
    throw v0
.end method

.method public finalize()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lz0$d;->r:Lcom/shabakaty/downloader/yt3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/yt3;->c()V

    return-void
.end method
