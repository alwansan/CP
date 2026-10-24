.class public abstract Lcom/shabakaty/downloader/iy1;
.super Ljava/lang/Object;
.source "ImageAnalysisAbstractAnalyzer.java"

# interfaces
.implements Lcom/shabakaty/downloader/gz1$a;


# instance fields
.field public a:Lcom/shabakaty/downloader/fy1$a;

.field public volatile b:I

.field public c:Ljava/util/concurrent/Executor;

.field public final d:Ljava/lang/Object;

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/iy1;->d:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/iy1;->e:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/gz1;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/iy1;->b(Lcom/shabakaty/downloader/gz1;)Lcom/shabakaty/downloader/fz1;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/iy1;->e(Lcom/shabakaty/downloader/fz1;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ImageAnalysisAnalyzer"

    const-string v1, "Failed to acquire image."

    .line 3
    invoke-static {v0, v1, p1}, Lcom/shabakaty/downloader/vk2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public abstract b(Lcom/shabakaty/downloader/gz1;)Lcom/shabakaty/downloader/fz1;
.end method

.method public c(Lcom/shabakaty/downloader/fz1;)Lcom/shabakaty/downloader/pi2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/fz1;",
            ")",
            "Lcom/shabakaty/downloader/pi2<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/iy1;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/iy1;->c:Ljava/util/concurrent/Executor;

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/iy1;->a:Lcom/shabakaty/downloader/fy1$a;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/gy1;

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/shabakaty/downloader/gy1;-><init>(Lcom/shabakaty/downloader/iy1;Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/fz1;Lcom/shabakaty/downloader/fy1$a;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/ar;->a(Lcom/shabakaty/downloader/ar$c;)Lcom/shabakaty/downloader/pi2;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lcom/shabakaty/downloader/y73;

    const-string v0, "No analyzer or executor currently set."

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/y73;-><init>(Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/vz1$a;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/vz1$a;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    return-object p1

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public abstract d()V
.end method

.method public abstract e(Lcom/shabakaty/downloader/fz1;)V
.end method

.method public f(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/fy1$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/iy1;->d:Ljava/lang/Object;

    monitor-enter v0

    if-nez p2, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/iy1;->d()V

    .line 3
    :cond_0
    iput-object p2, p0, Lcom/shabakaty/downloader/iy1;->a:Lcom/shabakaty/downloader/fy1$a;

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/iy1;->c:Ljava/util/concurrent/Executor;

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
