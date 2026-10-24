.class public abstract Lcom/shabakaty/downloader/gr5;
.super Ljava/lang/Object;


# static fields
.field public static volatile d:Landroid/os/Handler;


# instance fields
.field public final a:Lcom/shabakaty/downloader/fj5;

.field public final b:Ljava/lang/Runnable;

.field public volatile c:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fj5;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "null reference"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/gr5;->a:Lcom/shabakaty/downloader/fj5;

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/zz6;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/zz6;-><init>(Lcom/shabakaty/downloader/gr5;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/gr5;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/shabakaty/downloader/gr5;->c:J

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gr5;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/gr5;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()Landroid/os/Handler;
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/gr5;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/gr5;->d:Landroid/os/Handler;

    return-object v0

    .line 3
    :cond_0
    const-class v0, Lcom/shabakaty/downloader/gr5;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/gr5;->d:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/c26;

    iget-object v2, p0, Lcom/shabakaty/downloader/gr5;->a:Lcom/shabakaty/downloader/fj5;

    .line 6
    iget-object v2, v2, Lcom/shabakaty/downloader/fj5;->a:Landroid/content/Context;

    .line 7
    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/c26;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/shabakaty/downloader/gr5;->d:Landroid/os/Handler;

    .line 8
    :cond_1
    sget-object v1, Lcom/shabakaty/downloader/gr5;->d:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract c()V
.end method

.method public final d()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/gr5;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e(J)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gr5;->a()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/gr5;->a:Lcom/shabakaty/downloader/fj5;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/fj5;->c:Lcom/shabakaty/downloader/x30;

    .line 4
    check-cast v0, Lcom/shabakaty/downloader/mn0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 6
    iput-wide v0, p0, Lcom/shabakaty/downloader/gr5;->c:J

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gr5;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/gr5;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/gr5;->a:Lcom/shabakaty/downloader/fj5;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/fj5;->c()Lcom/shabakaty/downloader/wv5;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "Failed to schedule delayed post. time"

    invoke-virtual {v0, p2, p1}, Lcom/shabakaty/downloader/fq1;->G1(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
