.class public final Lcom/shabakaty/downloader/g66;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-sdk-api@@19.0.1"


# static fields
.field public static volatile g:Lcom/shabakaty/downloader/g66;


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public final b:Lcom/shabakaty/downloader/gb;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/shabakaty/downloader/oj6;",
            "Lcom/shabakaty/downloader/w36;",
            ">;>;"
        }
    .end annotation
.end field

.field public d:I

.field public e:Z

.field public volatile f:Lcom/shabakaty/downloader/nu5;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    new-instance v7, Lcom/shabakaty/downloader/y16;

    invoke-direct {v7}, Lcom/shabakaty/downloader/y16;-><init>()V

    .line 2
    new-instance p2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 3
    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x3c

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 5
    invoke-static {p2}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    .line 6
    iput-object p2, p0, Lcom/shabakaty/downloader/g66;->a:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/shabakaty/downloader/gb;

    .line 7
    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/gb;-><init>(Lcom/shabakaty/downloader/g66;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/g66;->b:Lcom/shabakaty/downloader/gb;

    new-instance p2, Ljava/util/ArrayList;

    .line 8
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/shabakaty/downloader/g66;->c:Ljava/util/List;

    .line 9
    :try_start_0
    invoke-static {p1}, Lcom/shabakaty/downloader/bd6;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "google_app_id"

    .line 10
    invoke-static {p1, v1, p2}, Lcom/shabakaty/downloader/jl3;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    const-string p2, "FA"

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    const-string v0, "Deferring to Google Analytics for Firebase for event data collection. https://goo.gl/J1sWQy"

    .line 11
    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    if-nez p3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez p4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    xor-int/2addr v0, v2

    if-eqz v0, :cond_3

    const-string v0, "Specified origin or custom app id is null. Both parameters will be ignored."

    .line 12
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_3
    :goto_3
    new-instance v0, Lcom/shabakaty/downloader/wy5;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    move-object v6, p5

    .line 14
    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/wy5;-><init>(Lcom/shabakaty/downloader/g66;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)V

    .line 15
    iget-object p3, p0, Lcom/shabakaty/downloader/g66;->a:Ljava/util/concurrent/ExecutorService;

    .line 16
    invoke-interface {p3, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    if-nez p1, :cond_4

    const-string p1, "Unable to register lifecycle notifications. Application null."

    .line 18
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 19
    :cond_4
    new-instance p2, Lcom/shabakaty/downloader/b66;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/b66;-><init>(Lcom/shabakaty/downloader/g66;)V

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/shabakaty/downloader/g66;
    .locals 6

    const-string p1, "null reference"

    .line 1
    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/g66;->g:Lcom/shabakaty/downloader/g66;

    if-nez p1, :cond_1

    const-class p1, Lcom/shabakaty/downloader/g66;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/shabakaty/downloader/g66;->g:Lcom/shabakaty/downloader/g66;

    if-nez p2, :cond_0

    new-instance p2, Lcom/shabakaty/downloader/g66;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v5, p4

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/g66;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    sput-object p2, Lcom/shabakaty/downloader/g66;->g:Lcom/shabakaty/downloader/g66;

    .line 4
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/shabakaty/downloader/g66;->g:Lcom/shabakaty/downloader/g66;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;ZZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/shabakaty/downloader/g66;->e:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/shabakaty/downloader/g66;->e:Z

    const-string v0, "FA"

    if-eqz p2, :cond_0

    const-string p2, "Data collection startup failed. No data will be collected."

    .line 1
    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    const-string p2, "Error with data collection. Data lost."

    if-eqz p3, :cond_1

    .line 2
    new-instance p3, Lcom/shabakaty/downloader/t16;

    .line 3
    invoke-direct {p3, p0, p2, p1}, Lcom/shabakaty/downloader/t16;-><init>(Lcom/shabakaty/downloader/g66;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/g66;->a:Ljava/util/concurrent/ExecutorService;

    .line 5
    invoke-interface {v1, p3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 6
    :cond_1
    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;)V
    .locals 8

    new-instance p6, Lcom/shabakaty/downloader/h36;

    const/4 v2, 0x0

    move-object v0, p6

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/shabakaty/downloader/h36;-><init>(Lcom/shabakaty/downloader/g66;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/g66;->a:Ljava/util/concurrent/ExecutorService;

    .line 3
    invoke-interface {p1, p6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)I
    .locals 3

    new-instance v0, Lcom/shabakaty/downloader/ts5;

    .line 1
    invoke-direct {v0}, Lcom/shabakaty/downloader/ts5;-><init>()V

    new-instance v1, Lcom/shabakaty/downloader/t16;

    .line 2
    invoke-direct {v1, p0, p1, v0}, Lcom/shabakaty/downloader/t16;-><init>(Lcom/shabakaty/downloader/g66;Ljava/lang/String;Lcom/shabakaty/downloader/ts5;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/g66;->a:Ljava/util/concurrent/ExecutorService;

    .line 4
    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x2710

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/ts5;->g2(J)Landroid/os/Bundle;

    move-result-object p1

    const-class v0, Ljava/lang/Integer;

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/ts5;->i2(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/16 p1, 0x19

    return p1

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/shabakaty/downloader/ts5;

    .line 1
    invoke-direct {v0}, Lcom/shabakaty/downloader/ts5;-><init>()V

    new-instance v1, Lcom/shabakaty/downloader/ex5;

    .line 2
    invoke-direct {v1, p0, p1, p2, v0}, Lcom/shabakaty/downloader/ex5;-><init>(Lcom/shabakaty/downloader/g66;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/ts5;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/g66;->a:Ljava/util/concurrent/ExecutorService;

    .line 4
    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const-wide/16 p1, 0x1388

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/ts5;->g2(J)Landroid/os/Bundle;

    move-result-object p1

    const-class p2, Ljava/util/List;

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/ts5;->i2(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v6, Lcom/shabakaty/downloader/ts5;

    .line 1
    invoke-direct {v6}, Lcom/shabakaty/downloader/ts5;-><init>()V

    new-instance v7, Lcom/shabakaty/downloader/l16;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, v6

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/l16;-><init>(Lcom/shabakaty/downloader/g66;Ljava/lang/String;Ljava/lang/String;ZLcom/shabakaty/downloader/ts5;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/g66;->a:Ljava/util/concurrent/ExecutorService;

    .line 4
    invoke-interface {p1, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const-wide/16 p1, 0x1388

    .line 5
    invoke-virtual {v6, p1, p2}, Lcom/shabakaty/downloader/ts5;->g2(J)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 6
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    new-instance p2, Ljava/util/HashMap;

    .line 8
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(I)V

    .line 9
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 11
    instance-of v2, v1, Ljava/lang/Double;

    if-nez v2, :cond_2

    instance-of v2, v1, Ljava/lang/Long;

    if-nez v2, :cond_2

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 12
    :cond_2
    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object p2

    .line 13
    :cond_4
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
