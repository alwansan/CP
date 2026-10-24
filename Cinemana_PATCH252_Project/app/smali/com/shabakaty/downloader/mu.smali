.class public final synthetic Lcom/shabakaty/downloader/mu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/ar$c;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/tu;

.field public final synthetic t:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/tu;Landroid/content/Context;I)V
    .locals 0

    iput p3, p0, Lcom/shabakaty/downloader/mu;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/mu;->s:Lcom/shabakaty/downloader/tu;

    iput-object p2, p0, Lcom/shabakaty/downloader/mu;->t:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final f(Lcom/shabakaty/downloader/ar$a;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lcom/shabakaty/downloader/mu;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/mu;->s:Lcom/shabakaty/downloader/tu;

    iget-object v1, p0, Lcom/shabakaty/downloader/mu;->t:Landroid/content/Context;

    .line 1
    sget-object v2, Lcom/shabakaty/downloader/tu;->m:Ljava/lang/Object;

    monitor-enter v2

    .line 2
    :try_start_0
    sget-object v3, Lcom/shabakaty/downloader/tu;->q:Lcom/shabakaty/downloader/pi2;

    invoke-static {v3}, Lcom/shabakaty/downloader/io1;->a(Lcom/shabakaty/downloader/pi2;)Lcom/shabakaty/downloader/io1;

    move-result-object v3

    new-instance v4, Lcom/shabakaty/downloader/hj4;

    invoke-direct {v4, v0, v1}, Lcom/shabakaty/downloader/hj4;-><init>(Lcom/shabakaty/downloader/tu;Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lcom/shabakaty/downloader/jl3;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 4
    invoke-virtual {v3, v4, v1}, Lcom/shabakaty/downloader/io1;->c(Lcom/shabakaty/downloader/od;Ljava/util/concurrent/Executor;)Lcom/shabakaty/downloader/io1;

    move-result-object v1

    .line 5
    new-instance v3, Lcom/shabakaty/downloader/ru;

    invoke-direct {v3, p1, v0}, Lcom/shabakaty/downloader/ru;-><init>(Lcom/shabakaty/downloader/ar$a;Lcom/shabakaty/downloader/tu;)V

    .line 6
    invoke-static {}, Lcom/shabakaty/downloader/jl3;->a()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/ko1$d;

    invoke-direct {v0, v1, v3}, Lcom/shabakaty/downloader/ko1$d;-><init>(Ljava/util/concurrent/Future;Lcom/shabakaty/downloader/ho1;)V

    .line 8
    iget-object v1, v1, Lcom/shabakaty/downloader/io1;->r:Lcom/shabakaty/downloader/pi2;

    invoke-interface {v1, v0, p1}, Lcom/shabakaty/downloader/pi2;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 9
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "CameraX-initialize"

    return-object p1

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 11
    :goto_0
    iget-object v4, p0, Lcom/shabakaty/downloader/mu;->s:Lcom/shabakaty/downloader/tu;

    iget-object v5, p0, Lcom/shabakaty/downloader/mu;->t:Landroid/content/Context;

    .line 12
    iget-object v0, v4, Lcom/shabakaty/downloader/tu;->d:Ljava/util/concurrent/Executor;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 13
    new-instance v1, Lcom/shabakaty/downloader/qu;

    move-object v3, v1

    move-object v6, v0

    move-object v7, p1

    invoke-direct/range {v3 .. v9}, Lcom/shabakaty/downloader/qu;-><init>(Lcom/shabakaty/downloader/tu;Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/ar$a;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string p1, "CameraX initInternal"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
