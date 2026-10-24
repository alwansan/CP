.class public Lcom/shabakaty/downloader/lz0$b;
.super Ljava/lang/Object;
.source "DownloadsDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/lz0;->f(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/shabakaty/downloader/pw0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/yt3;

.field public final synthetic s:Lcom/shabakaty/downloader/lz0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/lz0;Lcom/shabakaty/downloader/yt3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/lz0$b;->s:Lcom/shabakaty/downloader/lz0;

    iput-object p2, p0, Lcom/shabakaty/downloader/lz0$b;->r:Lcom/shabakaty/downloader/yt3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lz0$b;->s:Lcom/shabakaty/downloader/lz0;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/lz0;->a:Lcom/shabakaty/downloader/vt3;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/lz0$b;->r:Lcom/shabakaty/downloader/yt3;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/shabakaty/downloader/lh0;->b(Lcom/shabakaty/downloader/vt3;Lcom/shabakaty/downloader/bi4;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    const-string v1, "task_id"

    .line 4
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v4, "external_id"

    .line 5
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "progress_bytes"

    .line 6
    invoke-static {v0, v5}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "title"

    .line 7
    invoke-static {v0, v6}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "url"

    .line 8
    invoke-static {v0, v7}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "img"

    .line 9
    invoke-static {v0, v8}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "path"

    .line 10
    invoke-static {v0, v9}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "size_bytes"

    .line 11
    invoke-static {v0, v10}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "status"

    .line 12
    invoke-static {v0, v11}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "last_updated"

    .line 13
    invoke-static {v0, v12}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 14
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 15
    new-instance v13, Lcom/shabakaty/downloader/pw0;

    invoke-direct {v13}, Lcom/shabakaty/downloader/pw0;-><init>()V

    .line 16
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 17
    iput v1, v13, Lcom/shabakaty/downloader/pw0;->r:I

    .line 18
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 19
    :cond_0
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 20
    :goto_0
    invoke-virtual {v13, v1}, Lcom/shabakaty/downloader/pw0;->f(Ljava/lang/String;)V

    .line 21
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 22
    iput-wide v4, v13, Lcom/shabakaty/downloader/pw0;->t:J

    .line 23
    invoke-interface {v0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_1

    .line 24
    :cond_1
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 25
    :goto_1
    invoke-virtual {v13, v1}, Lcom/shabakaty/downloader/pw0;->l(Ljava/lang/String;)V

    .line 26
    invoke-interface {v0, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v2

    goto :goto_2

    .line 27
    :cond_2
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 28
    :goto_2
    invoke-virtual {v13, v1}, Lcom/shabakaty/downloader/pw0;->m(Ljava/lang/String;)V

    .line 29
    invoke-interface {v0, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, v2

    goto :goto_3

    .line 30
    :cond_3
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 31
    :goto_3
    invoke-virtual {v13, v1}, Lcom/shabakaty/downloader/pw0;->g(Ljava/lang/String;)V

    .line 32
    invoke-interface {v0, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, v2

    goto :goto_4

    .line 33
    :cond_4
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 34
    :goto_4
    invoke-virtual {v13, v1}, Lcom/shabakaty/downloader/pw0;->j(Ljava/lang/String;)V

    .line 35
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 36
    iput-wide v4, v13, Lcom/shabakaty/downloader/pw0;->y:J

    .line 37
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 38
    invoke-static {}, Lcom/shabakaty/downloader/xc4;->values()[Lcom/shabakaty/downloader/xc4;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v5, :cond_7

    aget-object v7, v4, v6

    .line 39
    iget v8, v7, Lcom/shabakaty/downloader/xc4;->r:I

    if-ne v8, v1, :cond_5

    const/4 v8, 0x1

    goto :goto_6

    :cond_5
    const/4 v8, 0x0

    :goto_6
    if-eqz v8, :cond_6

    goto :goto_7

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_7
    move-object v7, v2

    .line 40
    :goto_7
    invoke-virtual {v13, v7}, Lcom/shabakaty/downloader/pw0;->k(Lcom/shabakaty/downloader/xc4;)V

    .line 41
    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_8

    .line 42
    :cond_8
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 43
    :goto_8
    invoke-virtual {v13, v2}, Lcom/shabakaty/downloader/pw0;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v13

    .line 44
    :cond_9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 45
    iget-object v0, p0, Lcom/shabakaty/downloader/lz0$b;->r:Lcom/shabakaty/downloader/yt3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/yt3;->c()V

    return-object v2

    :catchall_0
    move-exception v1

    .line 46
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 47
    iget-object v0, p0, Lcom/shabakaty/downloader/lz0$b;->r:Lcom/shabakaty/downloader/yt3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/yt3;->c()V

    .line 48
    throw v1
.end method
