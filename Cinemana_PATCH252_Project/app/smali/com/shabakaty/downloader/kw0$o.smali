.class public Lcom/shabakaty/downloader/kw0$o;
.super Ljava/lang/Object;
.source "DownloadDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/kw0;->I()Landroidx/lifecycle/LiveData;
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
        "Lcom/shabakaty/downloader/d50;",
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
    iput-object p1, p0, Lcom/shabakaty/downloader/kw0$o;->s:Lcom/shabakaty/downloader/kw0;

    iput-object p2, p0, Lcom/shabakaty/downloader/kw0$o;->r:Lcom/shabakaty/downloader/yt3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kw0$o;->s:Lcom/shabakaty/downloader/kw0;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->i()V

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/kw0$o;->s:Lcom/shabakaty/downloader/kw0;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/kw0$o;->r:Lcom/shabakaty/downloader/yt3;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/shabakaty/downloader/lh0;->b(Lcom/shabakaty/downloader/vt3;Lcom/shabakaty/downloader/bi4;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "id"

    .line 8
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "name"

    .line 9
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "image"

    .line 10
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 11
    new-instance v5, Lcom/shabakaty/downloader/jl2;

    const/16 v6, 0xa

    .line 12
    invoke-direct {v5, v6}, Lcom/shabakaty/downloader/jl2;-><init>(I)V

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 14
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 15
    invoke-virtual {v5, v6, v7}, Lcom/shabakaty/downloader/jl2;->g(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-nez v8, :cond_0

    .line 16
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-virtual {v5, v6, v7, v8}, Lcom/shabakaty/downloader/jl2;->k(JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v6, -0x1

    .line 18
    invoke-interface {v0, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 19
    iget-object v6, p0, Lcom/shabakaty/downloader/kw0$o;->s:Lcom/shabakaty/downloader/kw0;

    .line 20
    invoke-virtual {v6, v5}, Lcom/shabakaty/downloader/kw0;->L(Lcom/shabakaty/downloader/jl2;)V

    .line 21
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 23
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    move-object v7, v3

    goto :goto_5

    .line 24
    :cond_3
    :goto_2
    new-instance v7, Lcom/shabakaty/downloader/gz0;

    invoke-direct {v7}, Lcom/shabakaty/downloader/gz0;-><init>()V

    .line 25
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 26
    iput v8, v7, Lcom/shabakaty/downloader/gz0;->r:I

    .line 27
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v8, v3

    goto :goto_3

    .line 28
    :cond_4
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 29
    :goto_3
    invoke-virtual {v7, v8}, Lcom/shabakaty/downloader/gz0;->c(Ljava/lang/String;)V

    .line 30
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v8, v3

    goto :goto_4

    .line 31
    :cond_5
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 32
    :goto_4
    invoke-virtual {v7, v8}, Lcom/shabakaty/downloader/gz0;->b(Ljava/lang/String;)V

    .line 33
    :goto_5
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 34
    invoke-virtual {v5, v8, v9}, Lcom/shabakaty/downloader/jl2;->g(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-nez v8, :cond_6

    .line 35
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 36
    :cond_6
    new-instance v9, Lcom/shabakaty/downloader/d50;

    invoke-direct {v9, v7, v8}, Lcom/shabakaty/downloader/d50;-><init>(Lcom/shabakaty/downloader/gz0;Ljava/util/List;)V

    .line 37
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 38
    :cond_7
    iget-object v1, p0, Lcom/shabakaty/downloader/kw0$o;->s:Lcom/shabakaty/downloader/kw0;

    .line 39
    iget-object v1, v1, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    .line 40
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 42
    iget-object v0, p0, Lcom/shabakaty/downloader/kw0$o;->s:Lcom/shabakaty/downloader/kw0;

    .line 43
    iget-object v0, v0, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    .line 44
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->j()V

    return-object v6

    :catchall_0
    move-exception v1

    .line 45
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 46
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 47
    iget-object v1, p0, Lcom/shabakaty/downloader/kw0$o;->s:Lcom/shabakaty/downloader/kw0;

    .line 48
    iget-object v1, v1, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    .line 49
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 50
    throw v0
.end method

.method public finalize()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kw0$o;->r:Lcom/shabakaty/downloader/yt3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/yt3;->c()V

    return-void
.end method
