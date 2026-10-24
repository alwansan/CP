.class public abstract Lcom/shabakaty/downloader/s31;
.super Landroid/app/Service;
.source "com.google.firebase:firebase-messaging@@22.0.0"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UnwrappedWakefulBroadcastReceiver"
    }
.end annotation


# instance fields
.field public final r:Ljava/util/concurrent/ExecutorService;

.field public s:Landroid/os/Binder;

.field public final t:Ljava/lang/Object;

.field public u:I

.field public v:I


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v7, Lcom/shabakaty/downloader/nw2;

    const-string v0, "Firebase-Messaging-Intent-Handle"

    invoke-direct {v7, v0}, Lcom/shabakaty/downloader/nw2;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 3
    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x3c

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 5
    invoke-static {v8}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/shabakaty/downloader/s31;->r:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/s31;->t:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/s31;->v:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/g55;->b:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/g55;->c:Lcom/shabakaty/downloader/f55;

    if-eqz v1, :cond_0

    const-string v1, "com.google.firebase.iid.WakeLockHolder.wakefulintent"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.google.firebase.iid.WakeLockHolder.wakefulintent"

    .line 4
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    sget-object p1, Lcom/shabakaty/downloader/g55;->c:Lcom/shabakaty/downloader/f55;

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/f55;->b()V

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 8
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/s31;->t:Ljava/lang/Object;

    .line 9
    monitor-enter p1

    :try_start_1
    iget v0, p0, Lcom/shabakaty/downloader/s31;->v:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/shabakaty/downloader/s31;->v:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/shabakaty/downloader/s31;->u:I

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopSelfResult(I)Z

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 11
    :cond_2
    :goto_1
    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public abstract b(Landroid/content/Intent;)V
.end method

.method public final declared-synchronized onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string p1, "EnhancedIntentService"

    const/4 v0, 0x3

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "EnhancedIntentService"

    const-string v0, "Service received bind request"

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/s31;->s:Landroid/os/Binder;

    if-nez p1, :cond_1

    new-instance p1, Lcom/shabakaty/downloader/h75;

    new-instance v0, Lcom/shabakaty/downloader/s31$a;

    .line 3
    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/s31$a;-><init>(Lcom/shabakaty/downloader/s31;)V

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/h75;-><init>(Lcom/shabakaty/downloader/h75$a;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/s31;->s:Landroid/os/Binder;

    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/s31;->s:Landroid/os/Binder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/s31;->r:Ljava/util/concurrent/ExecutorService;

    .line 1
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    iget-object p2, p0, Lcom/shabakaty/downloader/s31;->t:Ljava/lang/Object;

    .line 1
    monitor-enter p2

    :try_start_0
    iput p3, p0, Lcom/shabakaty/downloader/s31;->u:I

    iget p3, p0, Lcom/shabakaty/downloader/s31;->v:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/shabakaty/downloader/s31;->v:I

    .line 2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-static {}, Lcom/shabakaty/downloader/p14;->a()Lcom/shabakaty/downloader/p14;

    move-result-object p2

    .line 4
    iget-object p2, p2, Lcom/shabakaty/downloader/p14;->d:Ljava/util/Queue;

    .line 5
    invoke-interface {p2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    const/4 p3, 0x2

    if-nez p2, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/s31;->a(Landroid/content/Intent;)V

    return p3

    .line 7
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/zk4;

    invoke-direct {v0}, Lcom/shabakaty/downloader/zk4;-><init>()V

    iget-object v1, p0, Lcom/shabakaty/downloader/s31;->r:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/shabakaty/downloader/so5;

    .line 8
    invoke-direct {v2, p0, p2, v0}, Lcom/shabakaty/downloader/so5;-><init>(Lcom/shabakaty/downloader/s31;Landroid/content/Intent;Lcom/shabakaty/downloader/zk4;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 9
    iget-object p2, v0, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    .line 10
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ye7;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/s31;->a(Landroid/content/Intent;)V

    return p3

    :cond_1
    sget-object p3, Lcom/shabakaty/downloader/r31;->r:Ljava/util/concurrent/Executor;

    .line 12
    new-instance v0, Lcom/shabakaty/downloader/qz2;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/qz2;-><init>(Lcom/shabakaty/downloader/s31;Landroid/content/Intent;)V

    .line 13
    iget-object p1, p2, Lcom/shabakaty/downloader/ye7;->b:Lcom/shabakaty/downloader/ic7;

    new-instance v1, Lcom/shabakaty/downloader/rk6;

    .line 14
    sget v2, Lcom/shabakaty/downloader/if7;->a:I

    invoke-direct {v1, p3, v0}, Lcom/shabakaty/downloader/rk6;-><init>(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/k63;)V

    .line 15
    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/ic7;->c(Lcom/shabakaty/downloader/jd7;)V

    .line 16
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ye7;->u()V

    const/4 p1, 0x3

    return p1

    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
