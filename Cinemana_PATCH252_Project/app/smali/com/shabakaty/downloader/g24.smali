.class public final Lcom/shabakaty/downloader/g24;
.super Lcom/shabakaty/downloader/b0;
.source "SettableFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/b0<",
        "TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public j(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/b0;->x:Ljava/lang/Object;

    .line 2
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/b0;->w:Lcom/shabakaty/downloader/b0$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/shabakaty/downloader/b0$b;->b(Lcom/shabakaty/downloader/b0;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-static {p0}, Lcom/shabakaty/downloader/b0;->b(Lcom/shabakaty/downloader/b0;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public k(Ljava/lang/Throwable;)Z
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/b0$d;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/b0$d;-><init>(Ljava/lang/Throwable;)V

    .line 4
    sget-object p1, Lcom/shabakaty/downloader/b0;->w:Lcom/shabakaty/downloader/b0$b;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Lcom/shabakaty/downloader/b0$b;->b(Lcom/shabakaty/downloader/b0;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {p0}, Lcom/shabakaty/downloader/b0;->b(Lcom/shabakaty/downloader/b0;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public l(Lcom/shabakaty/downloader/pi2;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/pi2<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/b0;->r:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 3
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p1}, Lcom/shabakaty/downloader/b0;->e(Lcom/shabakaty/downloader/pi2;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/b0;->w:Lcom/shabakaty/downloader/b0$b;

    invoke-virtual {v0, p0, v3, p1}, Lcom/shabakaty/downloader/b0$b;->b(Lcom/shabakaty/downloader/b0;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    invoke-static {p0}, Lcom/shabakaty/downloader/b0;->b(Lcom/shabakaty/downloader/b0;)V

    :goto_0
    const/4 v1, 0x1

    goto :goto_2

    .line 7
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/b0$g;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/b0$g;-><init>(Lcom/shabakaty/downloader/b0;Lcom/shabakaty/downloader/pi2;)V

    .line 8
    sget-object v4, Lcom/shabakaty/downloader/b0;->w:Lcom/shabakaty/downloader/b0$b;

    invoke-virtual {v4, p0, v3, v0}, Lcom/shabakaty/downloader/b0$b;->b(Lcom/shabakaty/downloader/b0;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/jt0;->r:Lcom/shabakaty/downloader/jt0;

    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/pi2;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    new-instance v1, Lcom/shabakaty/downloader/b0$d;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/b0$d;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 11
    :catchall_1
    sget-object v1, Lcom/shabakaty/downloader/b0$d;->b:Lcom/shabakaty/downloader/b0$d;

    .line 12
    :goto_1
    sget-object p1, Lcom/shabakaty/downloader/b0;->w:Lcom/shabakaty/downloader/b0$b;

    invoke-virtual {p1, p0, v0, v1}, Lcom/shabakaty/downloader/b0$b;->b(Lcom/shabakaty/downloader/b0;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/b0;->r:Ljava/lang/Object;

    .line 14
    :cond_2
    instance-of v2, v0, Lcom/shabakaty/downloader/b0$c;

    if-eqz v2, :cond_3

    .line 15
    check-cast v0, Lcom/shabakaty/downloader/b0$c;

    iget-boolean v0, v0, Lcom/shabakaty/downloader/b0$c;->a:Z

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_3
    :goto_2
    return v1
.end method
