.class public Lcom/shabakaty/downloader/kw0$q;
.super Ljava/lang/Object;
.source "DownloadDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/kw0;->A(Ljava/lang/Integer;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/shabakaty/downloader/gz0;",
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
    iput-object p1, p0, Lcom/shabakaty/downloader/kw0$q;->s:Lcom/shabakaty/downloader/kw0;

    iput-object p2, p0, Lcom/shabakaty/downloader/kw0$q;->r:Lcom/shabakaty/downloader/yt3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kw0$q;->s:Lcom/shabakaty/downloader/kw0;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->i()V

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/kw0$q;->s:Lcom/shabakaty/downloader/kw0;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/kw0$q;->r:Lcom/shabakaty/downloader/yt3;

    const/4 v2, 0x0

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
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 12
    new-instance v5, Lcom/shabakaty/downloader/gz0;

    invoke-direct {v5}, Lcom/shabakaty/downloader/gz0;-><init>()V

    .line 13
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 14
    iput v1, v5, Lcom/shabakaty/downloader/gz0;->r:I

    .line 15
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v3

    goto :goto_0

    .line 16
    :cond_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 17
    :goto_0
    invoke-virtual {v5, v1}, Lcom/shabakaty/downloader/gz0;->c(Ljava/lang/String;)V

    .line 18
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 19
    :cond_1
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 20
    :goto_1
    invoke-virtual {v5, v3}, Lcom/shabakaty/downloader/gz0;->b(Ljava/lang/String;)V

    move-object v3, v5

    .line 21
    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/kw0$q;->s:Lcom/shabakaty/downloader/kw0;

    .line 22
    iget-object v1, v1, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    .line 23
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 25
    iget-object v0, p0, Lcom/shabakaty/downloader/kw0$q;->r:Lcom/shabakaty/downloader/yt3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/yt3;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 26
    iget-object v0, p0, Lcom/shabakaty/downloader/kw0$q;->s:Lcom/shabakaty/downloader/kw0;

    .line 27
    iget-object v0, v0, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    .line 28
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->j()V

    return-object v3

    :catchall_0
    move-exception v1

    .line 29
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 30
    iget-object v0, p0, Lcom/shabakaty/downloader/kw0$q;->r:Lcom/shabakaty/downloader/yt3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/yt3;->c()V

    .line 31
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 32
    iget-object v1, p0, Lcom/shabakaty/downloader/kw0$q;->s:Lcom/shabakaty/downloader/kw0;

    .line 33
    iget-object v1, v1, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    .line 34
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 35
    throw v0
.end method
