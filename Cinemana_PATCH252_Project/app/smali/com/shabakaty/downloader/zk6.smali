.class public final synthetic Lcom/shabakaty/downloader/zk6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cloud-messaging@@16.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final s:Lcom/shabakaty/downloader/ra6;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ra6;I)V
    .locals 1

    iput p2, p0, Lcom/shabakaty/downloader/zk6;->r:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/zk6;->s:Lcom/shabakaty/downloader/ra6;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/zk6;->s:Lcom/shabakaty/downloader/ra6;

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/zk6;->s:Lcom/shabakaty/downloader/ra6;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/shabakaty/downloader/zk6;->r:I

    const/4 v1, 0x2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/zk6;->s:Lcom/shabakaty/downloader/ra6;

    .line 2
    :goto_0
    monitor-enter v0

    .line 3
    :try_start_0
    iget v2, v0, Lcom/shabakaty/downloader/ra6;->r:I

    if-eq v2, v1, :cond_0

    .line 4
    monitor-exit v0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v2, v0, Lcom/shabakaty/downloader/ra6;->u:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ra6;->c()V

    .line 7
    monitor-exit v0

    :goto_1
    return-void

    .line 8
    :cond_1
    iget-object v2, v0, Lcom/shabakaty/downloader/ra6;->u:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/oc7;

    .line 9
    iget-object v3, v0, Lcom/shabakaty/downloader/ra6;->v:Landroid/util/SparseArray;

    iget v4, v2, Lcom/shabakaty/downloader/oc7;->a:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    iget-object v3, v0, Lcom/shabakaty/downloader/ra6;->w:Lcom/shabakaty/downloader/n56;

    .line 11
    iget-object v3, v3, Lcom/shabakaty/downloader/n56;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/ScheduledExecutorService;

    .line 12
    new-instance v4, Lcom/shabakaty/downloader/md7;

    invoke-direct {v4, v0, v2}, Lcom/shabakaty/downloader/md7;-><init>(Lcom/shabakaty/downloader/ra6;Lcom/shabakaty/downloader/oc7;)V

    const-wide/16 v5, 0x1e

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6, v7}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "MessengerIpcClient"

    const/4 v4, 0x3

    .line 14
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "MessengerIpcClient"

    .line 15
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Sending "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_2
    iget-object v3, v0, Lcom/shabakaty/downloader/ra6;->w:Lcom/shabakaty/downloader/n56;

    .line 17
    iget-object v3, v3, Lcom/shabakaty/downloader/n56;->a:Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    .line 18
    iget-object v4, v0, Lcom/shabakaty/downloader/ra6;->s:Landroid/os/Messenger;

    .line 19
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 20
    iget v6, v2, Lcom/shabakaty/downloader/oc7;->c:I

    iput v6, v5, Landroid/os/Message;->what:I

    .line 21
    iget v6, v2, Lcom/shabakaty/downloader/oc7;->a:I

    iput v6, v5, Landroid/os/Message;->arg1:I

    .line 22
    iput-object v4, v5, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 23
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v6, "oneWay"

    .line 24
    invoke-virtual {v2}, Lcom/shabakaty/downloader/oc7;->d()Z

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v6, "pkg"

    .line 25
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "data"

    .line 26
    iget-object v2, v2, Lcom/shabakaty/downloader/oc7;->d:Landroid/os/Bundle;

    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {v5, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 28
    :try_start_1
    iget-object v2, v0, Lcom/shabakaty/downloader/ra6;->t:Lcom/shabakaty/downloader/qz2;

    .line 29
    iget-object v3, v2, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Landroid/os/Messenger;

    if-eqz v4, :cond_3

    .line 30
    check-cast v3, Landroid/os/Messenger;

    invoke-virtual {v3, v5}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 31
    :cond_3
    iget-object v2, v2, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lcom/shabakaty/downloader/dd5;

    if-eqz v3, :cond_4

    .line 32
    check-cast v2, Lcom/shabakaty/downloader/dd5;

    .line 33
    iget-object v2, v2, Lcom/shabakaty/downloader/dd5;->r:Landroid/os/Messenger;

    .line 34
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-virtual {v2, v5}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 36
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Both messengers are null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v2

    .line 37
    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/ra6;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    .line 38
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 39
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/zk6;->s:Lcom/shabakaty/downloader/ra6;

    .line 40
    monitor-enter v0

    .line 41
    :try_start_3
    iget v1, v0, Lcom/shabakaty/downloader/ra6;->r:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    const-string v1, "Timed out while binding"

    .line 42
    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/ra6;->a(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 43
    :cond_5
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1

    .line 44
    :goto_2
    iget-object v0, p0, Lcom/shabakaty/downloader/zk6;->s:Lcom/shabakaty/downloader/ra6;

    const-string v2, "Service disconnected"

    .line 45
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/ra6;->a(ILjava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
