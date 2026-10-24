.class public final Lcom/shabakaty/downloader/ze5;
.super Landroid/database/ContentObserver;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fl6;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/ze5;->a:I

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ze5;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/qe5;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/ze5;->a:I

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ze5;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    iget p1, p0, Lcom/shabakaty/downloader/ze5;->a:I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 1
    :pswitch_0
    iget-object p1, p0, Lcom/shabakaty/downloader/ze5;->b:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/qe5;

    .line 2
    iget-object v1, p1, Lcom/shabakaty/downloader/qe5;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object v0, p1, Lcom/shabakaty/downloader/qe5;->e:Ljava/util/Map;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/ze5;->b:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/qe5;

    .line 4
    iget-object v0, p1, Lcom/shabakaty/downloader/qe5;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object p1, p1, Lcom/shabakaty/downloader/qe5;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/if5;

    invoke-interface {v1}, Lcom/shabakaty/downloader/if5;->k()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 5
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 6
    :goto_1
    iget-object p1, p0, Lcom/shabakaty/downloader/ze5;->b:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/fl6;

    .line 7
    iget-object v1, p1, Lcom/shabakaty/downloader/fl6;->d:Ljava/lang/Object;

    .line 8
    monitor-enter v1

    :try_start_3
    iput-object v0, p1, Lcom/shabakaty/downloader/fl6;->e:Ljava/util/Map;

    .line 9
    sget-object v0, Lcom/shabakaty/downloader/on6;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 11
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    monitor-enter p1

    :try_start_4
    iget-object v0, p1, Lcom/shabakaty/downloader/fl6;->f:Ljava/util/List;

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/ll6;

    .line 13
    invoke-interface {v1}, Lcom/shabakaty/downloader/ll6;->a()V

    goto :goto_2

    .line 14
    :cond_1
    monitor-exit p1

    return-void

    :catchall_2
    move-exception v0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_3
    move-exception p1

    .line 15
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
