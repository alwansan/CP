.class public final synthetic Lcom/shabakaty/downloader/lu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/ar$c;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/tu;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/tu;I)V
    .locals 1

    iput p2, p0, Lcom/shabakaty/downloader/lu;->r:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/lu;->s:Lcom/shabakaty/downloader/tu;

    return-void
.end method


# virtual methods
.method public final f(Lcom/shabakaty/downloader/ar$a;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lcom/shabakaty/downloader/lu;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/lu;->s:Lcom/shabakaty/downloader/tu;

    .line 1
    sget-object v1, Lcom/shabakaty/downloader/tu;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 2
    :try_start_0
    sget-object v2, Lcom/shabakaty/downloader/tu;->p:Lcom/shabakaty/downloader/pi2;

    new-instance v3, Lcom/shabakaty/downloader/ou;

    const/4 v4, 0x0

    invoke-direct {v3, v0, p1, v4}, Lcom/shabakaty/downloader/ou;-><init>(Lcom/shabakaty/downloader/tu;Lcom/shabakaty/downloader/ar$a;I)V

    .line 3
    invoke-static {}, Lcom/shabakaty/downloader/jl3;->a()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 4
    invoke-interface {v2, v3, p1}, Lcom/shabakaty/downloader/pi2;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "CameraX shutdown"

    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/lu;->s:Lcom/shabakaty/downloader/tu;

    .line 8
    iget-object v1, v0, Lcom/shabakaty/downloader/tu;->a:Lcom/shabakaty/downloader/du;

    .line 9
    iget-object v2, v1, Lcom/shabakaty/downloader/du;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 10
    :try_start_2
    iget-object v3, v1, Lcom/shabakaty/downloader/du;->b:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 11
    iget-object v1, v1, Lcom/shabakaty/downloader/du;->d:Lcom/shabakaty/downloader/pi2;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/shabakaty/downloader/ko1;->c(Ljava/lang/Object;)Lcom/shabakaty/downloader/pi2;

    move-result-object v1

    :cond_0
    monitor-exit v2

    goto :goto_2

    .line 12
    :cond_1
    iget-object v3, v1, Lcom/shabakaty/downloader/du;->d:Lcom/shabakaty/downloader/pi2;

    if-nez v3, :cond_2

    .line 13
    new-instance v3, Lcom/shabakaty/downloader/cu;

    invoke-direct {v3, v1}, Lcom/shabakaty/downloader/cu;-><init>(Lcom/shabakaty/downloader/du;)V

    invoke-static {v3}, Lcom/shabakaty/downloader/ar;->a(Lcom/shabakaty/downloader/ar$c;)Lcom/shabakaty/downloader/pi2;

    move-result-object v3

    .line 14
    iput-object v3, v1, Lcom/shabakaty/downloader/du;->d:Lcom/shabakaty/downloader/pi2;

    .line 15
    :cond_2
    iget-object v4, v1, Lcom/shabakaty/downloader/du;->c:Ljava/util/Set;

    iget-object v5, v1, Lcom/shabakaty/downloader/du;->b:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 16
    iget-object v4, v1, Lcom/shabakaty/downloader/du;->b:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/vt;

    .line 17
    invoke-interface {v5}, Lcom/shabakaty/downloader/vt;->a()Lcom/shabakaty/downloader/pi2;

    move-result-object v6

    new-instance v7, Lcom/shabakaty/downloader/or;

    invoke-direct {v7, v1, v5}, Lcom/shabakaty/downloader/or;-><init>(Lcom/shabakaty/downloader/du;Lcom/shabakaty/downloader/vt;)V

    .line 18
    invoke-static {}, Lcom/shabakaty/downloader/jl3;->a()Ljava/util/concurrent/Executor;

    move-result-object v5

    .line 19
    invoke-interface {v6, v7, v5}, Lcom/shabakaty/downloader/pi2;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_1

    .line 20
    :cond_3
    iget-object v1, v1, Lcom/shabakaty/downloader/du;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 21
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v1, v3

    .line 22
    :goto_2
    new-instance v2, Lcom/shabakaty/downloader/ou;

    const/4 v3, 0x1

    invoke-direct {v2, v0, p1, v3}, Lcom/shabakaty/downloader/ou;-><init>(Lcom/shabakaty/downloader/tu;Lcom/shabakaty/downloader/ar$a;I)V

    iget-object p1, v0, Lcom/shabakaty/downloader/tu;->d:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v2, p1}, Lcom/shabakaty/downloader/pi2;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    const-string p1, "CameraX shutdownInternal"

    return-object p1

    :catchall_1
    move-exception p1

    .line 23
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
