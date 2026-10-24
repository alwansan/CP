.class public abstract Lcom/shabakaty/downloader/li5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.1"


# static fields
.field public static volatile d:Landroid/os/Handler;


# instance fields
.field public final a:Lcom/shabakaty/downloader/pi6;

.field public final b:Ljava/lang/Runnable;

.field public volatile c:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/pi6;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "null reference"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/li5;->a:Lcom/shabakaty/downloader/pi6;

    new-instance v0, Lcom/shabakaty/downloader/md7;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/md7;-><init>(Lcom/shabakaty/downloader/li5;Lcom/shabakaty/downloader/pi6;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/li5;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/shabakaty/downloader/li5;->c:J

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/li5;->d()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/li5;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract b()V
.end method

.method public final c(J)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/li5;->a()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/li5;->a:Lcom/shabakaty/downloader/pi6;

    .line 2
    invoke-interface {v0}, Lcom/shabakaty/downloader/pi6;->k()Lcom/shabakaty/downloader/x30;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/mn0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    iput-wide v0, p0, Lcom/shabakaty/downloader/li5;->c:J

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/li5;->d()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/li5;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/li5;->a:Lcom/shabakaty/downloader/pi6;

    .line 6
    invoke-interface {v0}, Lcom/shabakaty/downloader/pi6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    .line 8
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "Failed to schedule delayed post. time"

    invoke-virtual {v0, p2, p1}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final d()Landroid/os/Handler;
    .locals 3

    sget-object v0, Lcom/shabakaty/downloader/li5;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/shabakaty/downloader/li5;->d:Landroid/os/Handler;

    return-object v0

    :cond_0
    const-class v0, Lcom/shabakaty/downloader/li5;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/li5;->d:Landroid/os/Handler;

    if-nez v1, :cond_1

    new-instance v1, Lcom/shabakaty/downloader/os5;

    iget-object v2, p0, Lcom/shabakaty/downloader/li5;->a:Lcom/shabakaty/downloader/pi6;

    .line 1
    invoke-interface {v2}, Lcom/shabakaty/downloader/pi6;->m()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/os5;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/shabakaty/downloader/li5;->d:Landroid/os/Handler;

    :cond_1
    sget-object v1, Lcom/shabakaty/downloader/li5;->d:Landroid/os/Handler;

    .line 2
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
