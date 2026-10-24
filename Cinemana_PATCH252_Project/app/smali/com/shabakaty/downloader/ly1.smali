.class public final Lcom/shabakaty/downloader/ly1;
.super Lcom/shabakaty/downloader/iy1;
.source "ImageAnalysisNonBlockingAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ly1$b;
    }
.end annotation


# instance fields
.field public final f:Ljava/util/concurrent/Executor;

.field public final g:Ljava/lang/Object;

.field public h:Lcom/shabakaty/downloader/fz1;

.field public i:Lcom/shabakaty/downloader/ly1$b;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/iy1;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/ly1;->g:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/ly1;->f:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public b(Lcom/shabakaty/downloader/gz1;)Lcom/shabakaty/downloader/fz1;
    .locals 0

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/gz1;->b()Lcom/shabakaty/downloader/fz1;

    move-result-object p1

    return-object p1
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ly1;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/ly1;->h:Lcom/shabakaty/downloader/fz1;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Lcom/shabakaty/downloader/fz1;->close()V

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/shabakaty/downloader/ly1;->h:Lcom/shabakaty/downloader/fz1;

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e(Lcom/shabakaty/downloader/fz1;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ly1;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/shabakaty/downloader/iy1;->e:Z

    if-nez v1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/shabakaty/downloader/fz1;->close()V

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/ly1;->i:Lcom/shabakaty/downloader/ly1$b;

    if-eqz v1, :cond_3

    .line 6
    invoke-interface {p1}, Lcom/shabakaty/downloader/fz1;->N0()Lcom/shabakaty/downloader/xy1;

    move-result-object v1

    invoke-interface {v1}, Lcom/shabakaty/downloader/xy1;->getTimestamp()J

    move-result-wide v1

    iget-object v3, p0, Lcom/shabakaty/downloader/ly1;->i:Lcom/shabakaty/downloader/ly1$b;

    .line 7
    invoke-virtual {v3}, Lcom/shabakaty/downloader/zh1;->N0()Lcom/shabakaty/downloader/xy1;

    move-result-object v3

    invoke-interface {v3}, Lcom/shabakaty/downloader/xy1;->getTimestamp()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    .line 8
    invoke-interface {p1}, Lcom/shabakaty/downloader/fz1;->close()V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/ly1;->h:Lcom/shabakaty/downloader/fz1;

    if-eqz v1, :cond_2

    .line 10
    invoke-interface {v1}, Lcom/shabakaty/downloader/fz1;->close()V

    .line 11
    :cond_2
    iput-object p1, p0, Lcom/shabakaty/downloader/ly1;->h:Lcom/shabakaty/downloader/fz1;

    .line 12
    :goto_0
    monitor-exit v0

    return-void

    .line 13
    :cond_3
    new-instance v1, Lcom/shabakaty/downloader/ly1$b;

    invoke-direct {v1, p1, p0}, Lcom/shabakaty/downloader/ly1$b;-><init>(Lcom/shabakaty/downloader/fz1;Lcom/shabakaty/downloader/ly1;)V

    .line 14
    iput-object v1, p0, Lcom/shabakaty/downloader/ly1;->i:Lcom/shabakaty/downloader/ly1$b;

    .line 15
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/iy1;->c(Lcom/shabakaty/downloader/fz1;)Lcom/shabakaty/downloader/pi2;

    move-result-object p1

    new-instance v2, Lcom/shabakaty/downloader/ly1$a;

    invoke-direct {v2, p0, v1}, Lcom/shabakaty/downloader/ly1$a;-><init>(Lcom/shabakaty/downloader/ly1;Lcom/shabakaty/downloader/ly1$b;)V

    .line 16
    invoke-static {}, Lcom/shabakaty/downloader/jl3;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 17
    new-instance v3, Lcom/shabakaty/downloader/ko1$d;

    invoke-direct {v3, p1, v2}, Lcom/shabakaty/downloader/ko1$d;-><init>(Ljava/util/concurrent/Future;Lcom/shabakaty/downloader/ho1;)V

    invoke-interface {p1, v3, v1}, Lcom/shabakaty/downloader/pi2;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 18
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
