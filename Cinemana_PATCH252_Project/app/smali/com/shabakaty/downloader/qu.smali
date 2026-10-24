.class public final synthetic Lcom/shabakaty/downloader/qu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/tu;

.field public final synthetic s:Landroid/content/Context;

.field public final synthetic t:Ljava/util/concurrent/Executor;

.field public final synthetic u:Lcom/shabakaty/downloader/ar$a;

.field public final synthetic v:J


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/tu;Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/ar$a;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/qu;->r:Lcom/shabakaty/downloader/tu;

    iput-object p2, p0, Lcom/shabakaty/downloader/qu;->s:Landroid/content/Context;

    iput-object p3, p0, Lcom/shabakaty/downloader/qu;->t:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/shabakaty/downloader/qu;->u:Lcom/shabakaty/downloader/ar$a;

    iput-wide p5, p0, Lcom/shabakaty/downloader/qu;->v:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v1, p0, Lcom/shabakaty/downloader/qu;->r:Lcom/shabakaty/downloader/tu;

    iget-object v0, p0, Lcom/shabakaty/downloader/qu;->s:Landroid/content/Context;

    iget-object v2, p0, Lcom/shabakaty/downloader/qu;->t:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Lcom/shabakaty/downloader/qu;->u:Lcom/shabakaty/downloader/ar$a;

    iget-wide v3, p0, Lcom/shabakaty/downloader/qu;->v:J

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x0

    .line 1
    :try_start_0
    invoke-static {v0}, Lcom/shabakaty/downloader/tu;->a(Landroid/content/Context;)Landroid/app/Application;

    move-result-object v7

    iput-object v7, v1, Lcom/shabakaty/downloader/tu;->j:Landroid/content/Context;

    if-nez v7, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v1, Lcom/shabakaty/downloader/tu;->j:Landroid/content/Context;

    .line 3
    :cond_0
    iget-object v0, v1, Lcom/shabakaty/downloader/tu;->c:Lcom/shabakaty/downloader/uu;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/uu;->r:Lcom/shabakaty/downloader/k83;

    sget-object v7, Lcom/shabakaty/downloader/uu;->s:Lcom/shabakaty/downloader/o90$a;

    invoke-virtual {v0, v7, v6}, Lcom/shabakaty/downloader/k83;->a(Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/qt$a;

    if-eqz v0, :cond_5

    .line 5
    iget-object v7, v1, Lcom/shabakaty/downloader/tu;->d:Ljava/util/concurrent/Executor;

    iget-object v8, v1, Lcom/shabakaty/downloader/tu;->e:Landroid/os/Handler;

    .line 6
    new-instance v9, Lcom/shabakaty/downloader/dg;

    invoke-direct {v9, v7, v8}, Lcom/shabakaty/downloader/dg;-><init>(Ljava/util/concurrent/Executor;Landroid/os/Handler;)V

    .line 7
    iget-object v7, v1, Lcom/shabakaty/downloader/tu;->c:Lcom/shabakaty/downloader/uu;

    .line 8
    iget-object v7, v7, Lcom/shabakaty/downloader/uu;->r:Lcom/shabakaty/downloader/k83;

    sget-object v8, Lcom/shabakaty/downloader/uu;->y:Lcom/shabakaty/downloader/o90$a;

    invoke-virtual {v7, v8, v6}, Lcom/shabakaty/downloader/k83;->a(Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/fu;

    .line 9
    iget-object v8, v1, Lcom/shabakaty/downloader/tu;->j:Landroid/content/Context;

    invoke-interface {v0, v8, v9, v7}, Lcom/shabakaty/downloader/qt$a;->a(Landroid/content/Context;Lcom/shabakaty/downloader/hu;Lcom/shabakaty/downloader/fu;)Lcom/shabakaty/downloader/qt;

    move-result-object v0

    iput-object v0, v1, Lcom/shabakaty/downloader/tu;->g:Lcom/shabakaty/downloader/qt;

    .line 10
    iget-object v0, v1, Lcom/shabakaty/downloader/tu;->c:Lcom/shabakaty/downloader/uu;

    .line 11
    iget-object v0, v0, Lcom/shabakaty/downloader/uu;->r:Lcom/shabakaty/downloader/k83;

    sget-object v8, Lcom/shabakaty/downloader/uu;->t:Lcom/shabakaty/downloader/o90$a;

    invoke-virtual {v0, v8, v6}, Lcom/shabakaty/downloader/k83;->a(Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/mt$a;

    if-eqz v0, :cond_4

    .line 12
    iget-object v8, v1, Lcom/shabakaty/downloader/tu;->j:Landroid/content/Context;

    iget-object v9, v1, Lcom/shabakaty/downloader/tu;->g:Lcom/shabakaty/downloader/qt;

    .line 13
    invoke-interface {v9}, Lcom/shabakaty/downloader/qt;->c()Ljava/lang/Object;

    move-result-object v9

    iget-object v10, v1, Lcom/shabakaty/downloader/tu;->g:Lcom/shabakaty/downloader/qt;

    .line 14
    invoke-interface {v10}, Lcom/shabakaty/downloader/qt;->a()Ljava/util/Set;

    move-result-object v10

    .line 15
    invoke-interface {v0, v8, v9, v10}, Lcom/shabakaty/downloader/mt$a;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/util/Set;)Lcom/shabakaty/downloader/mt;

    move-result-object v0

    iput-object v0, v1, Lcom/shabakaty/downloader/tu;->h:Lcom/shabakaty/downloader/mt;

    .line 16
    iget-object v0, v1, Lcom/shabakaty/downloader/tu;->c:Lcom/shabakaty/downloader/uu;

    .line 17
    iget-object v0, v0, Lcom/shabakaty/downloader/uu;->r:Lcom/shabakaty/downloader/k83;

    sget-object v8, Lcom/shabakaty/downloader/uu;->u:Lcom/shabakaty/downloader/o90$a;

    invoke-virtual {v0, v8, v6}, Lcom/shabakaty/downloader/k83;->a(Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ix4$b;

    if-eqz v0, :cond_3

    .line 18
    iget-object v8, v1, Lcom/shabakaty/downloader/tu;->j:Landroid/content/Context;

    invoke-interface {v0, v8}, Lcom/shabakaty/downloader/ix4$b;->a(Landroid/content/Context;)Lcom/shabakaty/downloader/ix4;

    move-result-object v0

    iput-object v0, v1, Lcom/shabakaty/downloader/tu;->i:Lcom/shabakaty/downloader/ix4;

    .line 19
    instance-of v0, v2, Lcom/shabakaty/downloader/pt;

    if-eqz v0, :cond_1

    .line 20
    move-object v0, v2

    check-cast v0, Lcom/shabakaty/downloader/pt;

    .line 21
    iget-object v8, v1, Lcom/shabakaty/downloader/tu;->g:Lcom/shabakaty/downloader/qt;

    invoke-virtual {v0, v8}, Lcom/shabakaty/downloader/pt;->b(Lcom/shabakaty/downloader/qt;)V

    .line 22
    :cond_1
    iget-object v0, v1, Lcom/shabakaty/downloader/tu;->a:Lcom/shabakaty/downloader/du;

    iget-object v8, v1, Lcom/shabakaty/downloader/tu;->g:Lcom/shabakaty/downloader/qt;

    invoke-virtual {v0, v8}, Lcom/shabakaty/downloader/du;->b(Lcom/shabakaty/downloader/qt;)V

    .line 23
    const-class v0, Lcom/shabakaty/downloader/h02;

    .line 24
    sget-object v8, Lcom/shabakaty/downloader/rs0;->a:Lcom/shabakaty/downloader/al3;

    invoke-virtual {v8, v0}, Lcom/shabakaty/downloader/al3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/zk3;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 25
    iget-object v0, v1, Lcom/shabakaty/downloader/tu;->j:Landroid/content/Context;

    iget-object v8, v1, Lcom/shabakaty/downloader/tu;->a:Lcom/shabakaty/downloader/du;

    invoke-static {v0, v8, v7}, Lcom/shabakaty/downloader/ku;->a(Landroid/content/Context;Lcom/shabakaty/downloader/du;Lcom/shabakaty/downloader/fu;)V

    .line 26
    :cond_2
    invoke-virtual {v1}, Lcom/shabakaty/downloader/tu;->e()V

    .line 27
    invoke-virtual {v5, v6}, Lcom/shabakaty/downloader/ar$a;->a(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 28
    :cond_3
    new-instance v0, Lcom/shabakaty/downloader/v02;

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Invalid app configuration provided. Missing UseCaseConfigFactory."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v7}, Lcom/shabakaty/downloader/v02;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 29
    :cond_4
    new-instance v0, Lcom/shabakaty/downloader/v02;

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Invalid app configuration provided. Missing CameraDeviceSurfaceManager."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v7}, Lcom/shabakaty/downloader/v02;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 30
    :cond_5
    new-instance v0, Lcom/shabakaty/downloader/v02;

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Invalid app configuration provided. Missing CameraFactory."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v7}, Lcom/shabakaty/downloader/v02;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_0
    .catch Lcom/shabakaty/downloader/ku$a; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/shabakaty/downloader/v02; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 31
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v3

    const-wide/16 v9, 0x9c4

    cmp-long v11, v7, v9

    if-gez v11, :cond_7

    const-string v6, "CameraX"

    .line 32
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Retry init. Start time "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " current time "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 34
    invoke-static {v6, v7, v0}, Lcom/shabakaty/downloader/vk2;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    iget-object v6, v1, Lcom/shabakaty/downloader/tu;->e:Landroid/os/Handler;

    new-instance v7, Lcom/shabakaty/downloader/pu;

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/pu;-><init>(Lcom/shabakaty/downloader/tu;Ljava/util/concurrent/Executor;JLcom/shabakaty/downloader/ar$a;)V

    const-string v0, "retry_token"

    const-wide/16 v1, 0x1f4

    .line 36
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_6

    .line 37
    invoke-virtual {v6, v7, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_1

    .line 38
    :cond_6
    invoke-static {v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v3

    .line 39
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 40
    invoke-virtual {v6, v3, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 41
    :cond_7
    iget-object v2, v1, Lcom/shabakaty/downloader/tu;->b:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x3

    .line 42
    :try_start_1
    iput v3, v1, Lcom/shabakaty/downloader/tu;->k:I

    .line 43
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    instance-of v1, v0, Lcom/shabakaty/downloader/ku$a;

    if-eqz v1, :cond_8

    const-string v0, "CameraX"

    const-string v1, "The device might underreport the amount of the cameras. Finish the initialize task since we are already reaching the maximum number of retries."

    .line 45
    invoke-static {v0, v1, v6}, Lcom/shabakaty/downloader/vk2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    invoke-virtual {v5, v6}, Lcom/shabakaty/downloader/ar$a;->a(Ljava/lang/Object;)Z

    goto :goto_1

    .line 47
    :cond_8
    instance-of v1, v0, Lcom/shabakaty/downloader/v02;

    if-eqz v1, :cond_9

    .line 48
    invoke-virtual {v5, v0}, Lcom/shabakaty/downloader/ar$a;->c(Ljava/lang/Throwable;)Z

    goto :goto_1

    .line 49
    :cond_9
    new-instance v1, Lcom/shabakaty/downloader/v02;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/v02;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v5, v1}, Lcom/shabakaty/downloader/ar$a;->c(Ljava/lang/Throwable;)Z

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 50
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
