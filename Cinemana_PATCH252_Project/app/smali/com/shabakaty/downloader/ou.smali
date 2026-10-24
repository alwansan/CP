.class public final synthetic Lcom/shabakaty/downloader/ou;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/tu;

.field public final synthetic t:Lcom/shabakaty/downloader/ar$a;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/tu;Lcom/shabakaty/downloader/ar$a;I)V
    .locals 1

    iput p3, p0, Lcom/shabakaty/downloader/ou;->r:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ou;->s:Lcom/shabakaty/downloader/tu;

    iput-object p2, p0, Lcom/shabakaty/downloader/ou;->t:Lcom/shabakaty/downloader/ar$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/shabakaty/downloader/ou;->r:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ou;->s:Lcom/shabakaty/downloader/tu;

    iget-object v2, p0, Lcom/shabakaty/downloader/ou;->t:Lcom/shabakaty/downloader/ar$a;

    const/4 v3, 0x4

    .line 1
    iget-object v4, v0, Lcom/shabakaty/downloader/tu;->b:Ljava/lang/Object;

    monitor-enter v4

    .line 2
    :try_start_0
    iget-object v5, v0, Lcom/shabakaty/downloader/tu;->e:Landroid/os/Handler;

    const-string v6, "retry_token"

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    iget v5, v0, Lcom/shabakaty/downloader/tu;->k:I

    invoke-static {v5}, Lcom/shabakaty/downloader/su;->k(I)I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    if-eq v5, v1, :cond_1

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iput v3, v0, Lcom/shabakaty/downloader/tu;->k:I

    .line 5
    new-instance v3, Lcom/shabakaty/downloader/lu;

    invoke-direct {v3, v0, v1}, Lcom/shabakaty/downloader/lu;-><init>(Lcom/shabakaty/downloader/tu;I)V

    invoke-static {v3}, Lcom/shabakaty/downloader/ar;->a(Lcom/shabakaty/downloader/ar$c;)Lcom/shabakaty/downloader/pi2;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/downloader/tu;->l:Lcom/shabakaty/downloader/pi2;

    .line 6
    :goto_0
    iget-object v0, v0, Lcom/shabakaty/downloader/tu;->l:Lcom/shabakaty/downloader/pi2;

    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CameraX could not be shutdown when it is initializing."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_2
    iput v3, v0, Lcom/shabakaty/downloader/tu;->k:I

    .line 9
    invoke-static {v1}, Lcom/shabakaty/downloader/ko1;->c(Ljava/lang/Object;)Lcom/shabakaty/downloader/pi2;

    move-result-object v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :goto_1
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/ko1;->e(Lcom/shabakaty/downloader/pi2;Lcom/shabakaty/downloader/ar$a;)V

    return-void

    .line 11
    :goto_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 12
    :goto_3
    iget-object v0, p0, Lcom/shabakaty/downloader/ou;->s:Lcom/shabakaty/downloader/tu;

    iget-object v2, p0, Lcom/shabakaty/downloader/ou;->t:Lcom/shabakaty/downloader/ar$a;

    .line 13
    iget-object v3, v0, Lcom/shabakaty/downloader/tu;->f:Landroid/os/HandlerThread;

    if-eqz v3, :cond_5

    .line 14
    iget-object v3, v0, Lcom/shabakaty/downloader/tu;->d:Ljava/util/concurrent/Executor;

    instance-of v4, v3, Lcom/shabakaty/downloader/pt;

    if-eqz v4, :cond_4

    .line 15
    check-cast v3, Lcom/shabakaty/downloader/pt;

    .line 16
    iget-object v4, v3, Lcom/shabakaty/downloader/pt;->r:Ljava/lang/Object;

    monitor-enter v4

    .line 17
    :try_start_2
    iget-object v5, v3, Lcom/shabakaty/downloader/pt;->s:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v5}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v5

    if-nez v5, :cond_3

    .line 18
    iget-object v3, v3, Lcom/shabakaty/downloader/pt;->s:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_5

    .line 19
    :cond_3
    :goto_4
    monitor-exit v4

    goto :goto_6

    :goto_5
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 20
    :cond_4
    :goto_6
    iget-object v0, v0, Lcom/shabakaty/downloader/tu;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 21
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/ar$a;->a(Ljava/lang/Object;)Z

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
