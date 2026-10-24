.class public Lcom/shabakaty/downloader/nw3;
.super Ljava/lang/Object;
.source "SafeCloseImageReaderProxy.java"

# interfaces
.implements Lcom/shabakaty/downloader/gz1;


# instance fields
.field public final a:Ljava/lang/Object;

.field public volatile b:I

.field public volatile c:Z

.field public final d:Lcom/shabakaty/downloader/gz1;

.field public final e:Landroid/view/Surface;

.field public f:Lcom/shabakaty/downloader/zh1$a;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gz1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/nw3;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/nw3;->b:I

    .line 4
    iput-boolean v0, p0, Lcom/shabakaty/downloader/nw3;->c:Z

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/my1;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/my1;-><init>(Lcom/shabakaty/downloader/nw3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/nw3;->f:Lcom/shabakaty/downloader/zh1$a;

    .line 6
    iput-object p1, p0, Lcom/shabakaty/downloader/nw3;->d:Lcom/shabakaty/downloader/gz1;

    .line 7
    invoke-interface {p1}, Lcom/shabakaty/downloader/gz1;->a()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/nw3;->e:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public a()Landroid/view/Surface;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/nw3;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/nw3;->d:Lcom/shabakaty/downloader/gz1;

    invoke-interface {v1}, Lcom/shabakaty/downloader/gz1;->a()Landroid/view/Surface;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b()Lcom/shabakaty/downloader/fz1;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/nw3;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/nw3;->d:Lcom/shabakaty/downloader/gz1;

    invoke-interface {v1}, Lcom/shabakaty/downloader/gz1;->b()Lcom/shabakaty/downloader/fz1;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/nw3;->d(Lcom/shabakaty/downloader/fz1;)Lcom/shabakaty/downloader/fz1;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/nw3;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/nw3;->d:Lcom/shabakaty/downloader/gz1;

    invoke-interface {v1}, Lcom/shabakaty/downloader/gz1;->c()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/nw3;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/nw3;->e:Landroid/view/Surface;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/nw3;->d:Lcom/shabakaty/downloader/gz1;

    invoke-interface {v1}, Lcom/shabakaty/downloader/gz1;->close()V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d(Lcom/shabakaty/downloader/fz1;)Lcom/shabakaty/downloader/fz1;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/nw3;->a:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/shabakaty/downloader/nw3;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/shabakaty/downloader/nw3;->b:I

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/i74;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/i74;-><init>(Lcom/shabakaty/downloader/fz1;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/nw3;->f:Lcom/shabakaty/downloader/zh1$a;

    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/zh1;->a(Lcom/shabakaty/downloader/zh1$a;)V

    .line 5
    monitor-exit v0

    return-object v1

    :cond_0
    const/4 p1, 0x0

    .line 6
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e(Lcom/shabakaty/downloader/gz1$a;Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/nw3;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/nw3;->d:Lcom/shabakaty/downloader/gz1;

    new-instance v2, Lcom/shabakaty/downloader/mw3;

    invoke-direct {v2, p0, p1}, Lcom/shabakaty/downloader/mw3;-><init>(Lcom/shabakaty/downloader/nw3;Lcom/shabakaty/downloader/gz1$a;)V

    invoke-interface {v1, v2, p2}, Lcom/shabakaty/downloader/gz1;->e(Lcom/shabakaty/downloader/gz1$a;Ljava/util/concurrent/Executor;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public f()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/nw3;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/nw3;->d:Lcom/shabakaty/downloader/gz1;

    invoke-interface {v1}, Lcom/shabakaty/downloader/gz1;->f()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public g()Lcom/shabakaty/downloader/fz1;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/nw3;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/nw3;->d:Lcom/shabakaty/downloader/gz1;

    invoke-interface {v1}, Lcom/shabakaty/downloader/gz1;->g()Lcom/shabakaty/downloader/fz1;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/nw3;->d(Lcom/shabakaty/downloader/fz1;)Lcom/shabakaty/downloader/fz1;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
