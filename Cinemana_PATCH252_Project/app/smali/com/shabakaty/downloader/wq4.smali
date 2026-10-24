.class public Lcom/shabakaty/downloader/wq4;
.super Ljava/lang/Object;
.source "TransportManager.java"

# interfaces
.implements Lcom/shabakaty/downloader/sb$b;


# static fields
.field public static final I:Lcom/shabakaty/downloader/i7;

.field public static final J:Lcom/shabakaty/downloader/wq4;


# instance fields
.field public A:Landroid/content/Context;

.field public B:Lcom/shabakaty/downloader/w90;

.field public C:Lcom/shabakaty/downloader/tm3;

.field public D:Lcom/shabakaty/downloader/sb;

.field public E:Lcom/shabakaty/downloader/mc$b;

.field public F:Ljava/lang/String;

.field public G:Ljava/lang/String;

.field public H:Z

.field public final r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/shabakaty/downloader/lb3;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public u:Lcom/shabakaty/downloader/ec1;

.field public v:Lcom/shabakaty/downloader/zc1;

.field public w:Lcom/shabakaty/downloader/mc1;

.field public x:Lcom/shabakaty/downloader/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/pj3<",
            "Lcom/shabakaty/downloader/pq4;",
            ">;"
        }
    .end annotation
.end field

.field public y:Lcom/shabakaty/downloader/ke1;

.field public z:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/i7;->d()Lcom/shabakaty/downloader/i7;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/wq4;->I:Lcom/shabakaty/downloader/i7;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/wq4;

    invoke-direct {v0}, Lcom/shabakaty/downloader/wq4;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/wq4;->J:Lcom/shabakaty/downloader/wq4;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/wq4;->s:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/shabakaty/downloader/wq4;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    iput-boolean v1, p0, Lcom/shabakaty/downloader/wq4;->H:Z

    .line 5
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0xa

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/wq4;->z:Ljava/util/concurrent/ExecutorService;

    .line 6
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/wq4;->r:Ljava/util/Map;

    const/16 v1, 0x32

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KEY_AVAILABLE_TRACES_FOR_CACHING"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "KEY_AVAILABLE_NETWORK_REQUESTS_FOR_CACHING"

    .line 8
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "KEY_AVAILABLE_GAUGES_FOR_CACHING"

    .line 9
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/shabakaty/downloader/oy2;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oy2;->f0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oy2;->W()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oy2;->b0()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oy2;->R()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, "UNKNOWN"

    .line 5
    :goto_1
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oy2;->Y()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v5

    const/4 p0, 0x1

    aput-object v2, v4, p0

    const/4 p0, 0x2

    long-to-double v0, v0

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v5

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, p0

    const-string p0, "network request trace: %s (responseCode: %s, responseTime: %.4fms)"

    .line 8
    invoke-static {v3, p0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/shabakaty/downloader/rb3;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/rb3;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/shabakaty/downloader/rb3;->i()Lcom/shabakaty/downloader/uo4;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/downloader/wq4;->c(Lcom/shabakaty/downloader/uo4;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p0}, Lcom/shabakaty/downloader/rb3;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {p0}, Lcom/shabakaty/downloader/rb3;->l()Lcom/shabakaty/downloader/oy2;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/downloader/wq4;->a(Lcom/shabakaty/downloader/oy2;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    invoke-interface {p0}, Lcom/shabakaty/downloader/rb3;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {p0}, Lcom/shabakaty/downloader/rb3;->m()Lcom/shabakaty/downloader/ro1;

    move-result-object p0

    .line 7
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ro1;->J()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ro1;->G()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 10
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ro1;->F()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const-string p0, "gauges (hasMetadata: %b, cpuGaugeCount: %d, memoryGaugeCount: %d)"

    .line 11
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "log"

    return-object p0
.end method

.method public static c(Lcom/shabakaty/downloader/uo4;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uo4;->O()J

    move-result-wide v0

    .line 2
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uo4;->P()Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x0

    aput-object p0, v3, v4

    long-to-double v0, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v4

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 v0, 0x1

    aput-object p0, v3, v0

    const-string p0, "trace metric: %s (duration: %.4fms)"

    .line 5
    invoke-static {v2, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wq4;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final e(Lcom/shabakaty/downloader/qb3$b;Lcom/shabakaty/downloader/oc;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wq4;->d()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/wq4;->r:Ljava/util/Map;

    const-string v6, "KEY_AVAILABLE_TRACES_FOR_CACHING"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3
    iget-object v7, p0, Lcom/shabakaty/downloader/wq4;->r:Ljava/util/Map;

    const-string v8, "KEY_AVAILABLE_NETWORK_REQUESTS_FOR_CACHING"

    .line 4
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 5
    iget-object v9, p0, Lcom/shabakaty/downloader/wq4;->r:Ljava/util/Map;

    const-string v10, "KEY_AVAILABLE_GAUGES_FOR_CACHING"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qb3$b;->h()Z

    move-result v11

    if-eqz v11, :cond_0

    if-lez v0, :cond_0

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/wq4;->r:Ljava/util/Map;

    sub-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qb3$b;->k()Z

    move-result v6

    if-eqz v6, :cond_1

    if-lez v7, :cond_1

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/wq4;->r:Ljava/util/Map;

    sub-int/2addr v7, v5

    .line 10
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 11
    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qb3$b;->f()Z

    move-result v6

    if-eqz v6, :cond_2

    if-lez v9, :cond_2

    .line 13
    iget-object v0, p0, Lcom/shabakaty/downloader/wq4;->r:Ljava/util/Map;

    sub-int/2addr v9, v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_2
    sget-object v6, Lcom/shabakaty/downloader/wq4;->I:Lcom/shabakaty/downloader/i7;

    new-array v3, v3, [Ljava/lang/Object;

    .line 15
    invoke-static {p1}, Lcom/shabakaty/downloader/wq4;->b(Lcom/shabakaty/downloader/rb3;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v4

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    .line 17
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    .line 18
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    const-string v0, "%s is not allowed to cache. Cache exhausted the limit (availableTracesForCaching: %d, availableNetworkRequestsForCaching: %d, availableGaugesForCaching: %d)."

    .line 19
    invoke-virtual {v6, v0, v3}, Lcom/shabakaty/downloader/i7;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 20
    sget-object v0, Lcom/shabakaty/downloader/wq4;->I:Lcom/shabakaty/downloader/i7;

    const-string v1, "Transport is not initialized yet, %s will be queued for to be dispatched later"

    new-array v2, v5, [Ljava/lang/Object;

    .line 21
    invoke-static {p1}, Lcom/shabakaty/downloader/wq4;->b(Lcom/shabakaty/downloader/rb3;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/i7;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lcom/shabakaty/downloader/wq4;->s:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/shabakaty/downloader/lb3;

    invoke-direct {v1, p1, p2}, Lcom/shabakaty/downloader/lb3;-><init>(Lcom/shabakaty/downloader/qb3$b;Lcom/shabakaty/downloader/oc;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void

    .line 24
    :cond_4
    iget-object v0, p0, Lcom/shabakaty/downloader/wq4;->B:Lcom/shabakaty/downloader/w90;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/w90;->o()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 25
    iget-object v0, p0, Lcom/shabakaty/downloader/wq4;->E:Lcom/shabakaty/downloader/mc$b;

    .line 26
    iget-object v0, v0, Lcom/shabakaty/downloader/qp1$a;->s:Lcom/shabakaty/downloader/qp1;

    check-cast v0, Lcom/shabakaty/downloader/mc;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/mc;->J()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 27
    iget-boolean v0, p0, Lcom/shabakaty/downloader/wq4;->H:Z

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    .line 28
    :try_start_0
    iget-object v6, p0, Lcom/shabakaty/downloader/wq4;->w:Lcom/shabakaty/downloader/mc1;

    invoke-interface {v6}, Lcom/shabakaty/downloader/mc1;->getId()Lcom/shabakaty/downloader/uk4;

    move-result-object v6

    const-wide/32 v7, 0xea60

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v6, v7, v8, v9}, Lcom/shabakaty/downloader/kl4;->b(Lcom/shabakaty/downloader/uk4;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    goto :goto_2

    :catch_0
    move-exception v6

    .line 29
    sget-object v7, Lcom/shabakaty/downloader/wq4;->I:Lcom/shabakaty/downloader/i7;

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v4

    const-string v6, "Task to retrieve Installation Id is timed out: %s"

    invoke-virtual {v7, v6, v8}, Lcom/shabakaty/downloader/i7;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catch_1
    move-exception v6

    .line 30
    sget-object v7, Lcom/shabakaty/downloader/wq4;->I:Lcom/shabakaty/downloader/i7;

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v4

    const-string v6, "Task to retrieve Installation Id is interrupted: %s"

    invoke-virtual {v7, v6, v8}, Lcom/shabakaty/downloader/i7;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catch_2
    move-exception v6

    .line 31
    sget-object v7, Lcom/shabakaty/downloader/wq4;->I:Lcom/shabakaty/downloader/i7;

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v4

    const-string v6, "Unable to retrieve Installation Id: %s"

    invoke-virtual {v7, v6, v8}, Lcom/shabakaty/downloader/i7;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 33
    iget-object v6, p0, Lcom/shabakaty/downloader/wq4;->E:Lcom/shabakaty/downloader/mc$b;

    .line 34
    invoke-virtual {v6}, Lcom/shabakaty/downloader/qp1$a;->q()V

    .line 35
    iget-object v6, v6, Lcom/shabakaty/downloader/qp1$a;->s:Lcom/shabakaty/downloader/qp1;

    check-cast v6, Lcom/shabakaty/downloader/mc;

    invoke-static {v6, v0}, Lcom/shabakaty/downloader/mc;->E(Lcom/shabakaty/downloader/mc;Ljava/lang/String;)V

    goto :goto_3

    .line 36
    :cond_6
    sget-object v0, Lcom/shabakaty/downloader/wq4;->I:Lcom/shabakaty/downloader/i7;

    .line 37
    iget-boolean v6, v0, Lcom/shabakaty/downloader/i7;->b:Z

    if-eqz v6, :cond_7

    .line 38
    iget-object v0, v0, Lcom/shabakaty/downloader/i7;->a:Lcom/shabakaty/downloader/lk2;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "FirebasePerformance"

    const-string v6, "Firebase Installation Id is empty, contact Firebase Support for debugging."

    .line 39
    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/shabakaty/downloader/wq4;->E:Lcom/shabakaty/downloader/mc$b;

    .line 41
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qp1$a;->q()V

    .line 42
    iget-object v6, v0, Lcom/shabakaty/downloader/qp1$a;->s:Lcom/shabakaty/downloader/qp1;

    check-cast v6, Lcom/shabakaty/downloader/mc;

    invoke-static {v6, p2}, Lcom/shabakaty/downloader/mc;->C(Lcom/shabakaty/downloader/mc;Lcom/shabakaty/downloader/oc;)V

    .line 43
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qb3$b;->h()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 44
    iget-object p2, v0, Lcom/shabakaty/downloader/qp1$a;->r:Lcom/shabakaty/downloader/qp1;

    .line 45
    invoke-virtual {p2}, Lcom/shabakaty/downloader/qp1;->y()Lcom/shabakaty/downloader/qp1$a;

    move-result-object p2

    .line 46
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qp1$a;->o()Lcom/shabakaty/downloader/qp1;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/qp1$a;->r(Lcom/shabakaty/downloader/qp1;)Lcom/shabakaty/downloader/qp1$a;

    .line 47
    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/mc$b;

    .line 48
    iget-object p2, p0, Lcom/shabakaty/downloader/wq4;->v:Lcom/shabakaty/downloader/zc1;

    if-nez p2, :cond_8

    .line 49
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wq4;->d()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 50
    sget-object p2, Lcom/shabakaty/downloader/zc1;->f:Lcom/shabakaty/downloader/i7;

    .line 51
    invoke-static {}, Lcom/shabakaty/downloader/ec1;->b()Lcom/shabakaty/downloader/ec1;

    move-result-object p2

    const-class v6, Lcom/shabakaty/downloader/zc1;

    .line 52
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ec1;->a()V

    .line 53
    iget-object p2, p2, Lcom/shabakaty/downloader/ec1;->d:Lcom/shabakaty/downloader/z80;

    invoke-virtual {p2, v6}, Lcom/shabakaty/downloader/s;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 54
    check-cast p2, Lcom/shabakaty/downloader/zc1;

    .line 55
    iput-object p2, p0, Lcom/shabakaty/downloader/wq4;->v:Lcom/shabakaty/downloader/zc1;

    .line 56
    :cond_8
    iget-object p2, p0, Lcom/shabakaty/downloader/wq4;->v:Lcom/shabakaty/downloader/zc1;

    if-eqz p2, :cond_9

    .line 57
    new-instance v6, Ljava/util/HashMap;

    iget-object p2, p2, Lcom/shabakaty/downloader/zc1;->a:Ljava/util/Map;

    invoke-direct {v6, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_4

    .line 58
    :cond_9
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    .line 59
    :goto_4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qp1$a;->q()V

    .line 60
    iget-object p2, v0, Lcom/shabakaty/downloader/qp1$a;->s:Lcom/shabakaty/downloader/qp1;

    check-cast p2, Lcom/shabakaty/downloader/mc;

    invoke-static {p2}, Lcom/shabakaty/downloader/mc;->D(Lcom/shabakaty/downloader/mc;)Ljava/util/Map;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/jm2;

    invoke-virtual {p2, v6}, Lcom/shabakaty/downloader/jm2;->putAll(Ljava/util/Map;)V

    .line 61
    :cond_a
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qp1$a;->q()V

    .line 62
    iget-object p2, p1, Lcom/shabakaty/downloader/qp1$a;->s:Lcom/shabakaty/downloader/qp1;

    check-cast p2, Lcom/shabakaty/downloader/qb3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qp1$a;->n()Lcom/shabakaty/downloader/qp1;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/mc;

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/qb3;->B(Lcom/shabakaty/downloader/qb3;Lcom/shabakaty/downloader/mc;)V

    .line 63
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qp1$a;->n()Lcom/shabakaty/downloader/qp1;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/qb3;

    .line 64
    iget-object p2, p0, Lcom/shabakaty/downloader/wq4;->B:Lcom/shabakaty/downloader/w90;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/w90;->o()Z

    move-result p2

    if-nez p2, :cond_c

    .line 65
    sget-object p2, Lcom/shabakaty/downloader/wq4;->I:Lcom/shabakaty/downloader/i7;

    const-string v0, "Performance collection is not enabled, dropping %s"

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/shabakaty/downloader/wq4;->b(Lcom/shabakaty/downloader/rb3;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {p2, v0, v6}, Lcom/shabakaty/downloader/i7;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    :goto_5
    const/4 p2, 0x0

    goto/16 :goto_11

    .line 66
    :cond_c
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qb3;->F()Lcom/shabakaty/downloader/mc;

    move-result-object p2

    invoke-virtual {p2}, Lcom/shabakaty/downloader/mc;->J()Z

    move-result p2

    if-nez p2, :cond_d

    .line 67
    sget-object p2, Lcom/shabakaty/downloader/wq4;->I:Lcom/shabakaty/downloader/i7;

    const-string v0, "App Instance ID is null or empty, dropping %s"

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/shabakaty/downloader/wq4;->b(Lcom/shabakaty/downloader/rb3;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {p2, v0, v6}, Lcom/shabakaty/downloader/i7;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 68
    :cond_d
    iget-object p2, p0, Lcom/shabakaty/downloader/wq4;->A:Landroid/content/Context;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qb3;->h()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 71
    new-instance v6, Lcom/shabakaty/downloader/yc1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/qb3;->i()Lcom/shabakaty/downloader/uo4;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/shabakaty/downloader/yc1;-><init>(Lcom/shabakaty/downloader/uo4;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_e
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qb3;->k()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 73
    new-instance v6, Lcom/shabakaty/downloader/wc1;

    .line 74
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qb3;->l()Lcom/shabakaty/downloader/oy2;

    move-result-object v7

    invoke-direct {v6, v7, p2}, Lcom/shabakaty/downloader/wc1;-><init>(Lcom/shabakaty/downloader/oy2;Landroid/content/Context;)V

    .line 75
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_f
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qb3;->G()Z

    move-result p2

    if-eqz p2, :cond_10

    .line 77
    new-instance p2, Lcom/shabakaty/downloader/uc1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/qb3;->F()Lcom/shabakaty/downloader/mc;

    move-result-object v6

    invoke-direct {p2, v6}, Lcom/shabakaty/downloader/uc1;-><init>(Lcom/shabakaty/downloader/mc;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_10
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qb3;->f()Z

    move-result p2

    if-eqz p2, :cond_11

    .line 79
    new-instance p2, Lcom/shabakaty/downloader/vc1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/qb3;->m()Lcom/shabakaty/downloader/ro1;

    move-result-object v6

    invoke-direct {p2, v6}, Lcom/shabakaty/downloader/vc1;-><init>(Lcom/shabakaty/downloader/ro1;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_11
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_12

    .line 81
    invoke-static {}, Lcom/shabakaty/downloader/i7;->d()Lcom/shabakaty/downloader/i7;

    move-result-object p2

    .line 82
    iget-boolean v0, p2, Lcom/shabakaty/downloader/i7;->b:Z

    if-eqz v0, :cond_14

    .line 83
    iget-object p2, p2, Lcom/shabakaty/downloader/i7;->a:Lcom/shabakaty/downloader/lk2;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "FirebasePerformance"

    const-string v0, "No validators found for PerfMetric."

    .line 84
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 85
    :cond_12
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_13
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/sb3;

    .line 86
    invoke-virtual {v0}, Lcom/shabakaty/downloader/sb3;->a()Z

    move-result v0

    if-nez v0, :cond_13

    :cond_14
    :goto_6
    const/4 p2, 0x0

    goto :goto_7

    :cond_15
    const/4 p2, 0x1

    :goto_7
    if-nez p2, :cond_16

    .line 87
    sget-object p2, Lcom/shabakaty/downloader/wq4;->I:Lcom/shabakaty/downloader/i7;

    const-string v0, "Unable to process the PerfMetric (%s) due to missing or invalid values. See earlier log statements for additional information on the specific missing/invalid values."

    new-array v6, v5, [Ljava/lang/Object;

    .line 88
    invoke-static {p1}, Lcom/shabakaty/downloader/wq4;->b(Lcom/shabakaty/downloader/rb3;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 89
    invoke-virtual {p2, v0, v6}, Lcom/shabakaty/downloader/i7;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 90
    :cond_16
    iget-object p2, p0, Lcom/shabakaty/downloader/wq4;->C:Lcom/shabakaty/downloader/tm3;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qb3;->h()Z

    move-result v0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 92
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    if-eqz v0, :cond_1b

    .line 93
    iget-object v0, p2, Lcom/shabakaty/downloader/tm3;->a:Lcom/shabakaty/downloader/w90;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-class v7, Lcom/shabakaty/downloader/sa0;

    monitor-enter v7

    .line 95
    :try_start_1
    sget-object v8, Lcom/shabakaty/downloader/sa0;->a:Lcom/shabakaty/downloader/sa0;

    if-nez v8, :cond_17

    .line 96
    new-instance v8, Lcom/shabakaty/downloader/sa0;

    invoke-direct {v8}, Lcom/shabakaty/downloader/sa0;-><init>()V

    sput-object v8, Lcom/shabakaty/downloader/sa0;->a:Lcom/shabakaty/downloader/sa0;

    .line 97
    :cond_17
    sget-object v8, Lcom/shabakaty/downloader/sa0;->a:Lcom/shabakaty/downloader/sa0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v7

    .line 98
    invoke-virtual {v0, v8}, Lcom/shabakaty/downloader/w90;->j(Lcom/shabakaty/downloader/ta0;)Lcom/shabakaty/downloader/d83;

    move-result-object v7

    .line 99
    invoke-virtual {v7}, Lcom/shabakaty/downloader/d83;->c()Z

    move-result v9

    if-eqz v9, :cond_18

    invoke-virtual {v7}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v0, v9}, Lcom/shabakaty/downloader/w90;->p(F)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 100
    iget-object v0, v0, Lcom/shabakaty/downloader/w90;->c:Lcom/shabakaty/downloader/ms0;

    const-string v8, "com.google.firebase.perf.TraceSamplingRate"

    invoke-virtual {v7}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v0, v8, v9}, Lcom/shabakaty/downloader/ms0;->c(Ljava/lang/String;F)Z

    .line 101
    invoke-virtual {v7}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_8

    .line 102
    :cond_18
    invoke-virtual {v0, v8}, Lcom/shabakaty/downloader/w90;->b(Lcom/shabakaty/downloader/ta0;)Lcom/shabakaty/downloader/d83;

    move-result-object v7

    .line 103
    invoke-virtual {v7}, Lcom/shabakaty/downloader/d83;->c()Z

    move-result v8

    if-eqz v8, :cond_19

    invoke-virtual {v7}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v0, v8}, Lcom/shabakaty/downloader/w90;->p(F)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 104
    invoke-virtual {v7}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_8

    .line 105
    :cond_19
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 106
    :goto_8
    iget v7, p2, Lcom/shabakaty/downloader/tm3;->b:F

    cmpg-float v0, v7, v0

    if-gez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_9

    :cond_1a
    const/4 v0, 0x0

    :goto_9
    if-nez v0, :cond_1b

    .line 107
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qb3;->i()Lcom/shabakaty/downloader/uo4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/uo4;->Q()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/tm3;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_e

    :catchall_0
    move-exception p1

    .line 108
    monitor-exit v7

    throw p1

    .line 109
    :cond_1b
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qb3;->k()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 110
    iget-object v0, p2, Lcom/shabakaty/downloader/tm3;->a:Lcom/shabakaty/downloader/w90;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-class v7, Lcom/shabakaty/downloader/ga0;

    monitor-enter v7

    .line 112
    :try_start_2
    sget-object v8, Lcom/shabakaty/downloader/ga0;->a:Lcom/shabakaty/downloader/ga0;

    if-nez v8, :cond_1c

    .line 113
    new-instance v8, Lcom/shabakaty/downloader/ga0;

    invoke-direct {v8}, Lcom/shabakaty/downloader/ga0;-><init>()V

    sput-object v8, Lcom/shabakaty/downloader/ga0;->a:Lcom/shabakaty/downloader/ga0;

    .line 114
    :cond_1c
    sget-object v8, Lcom/shabakaty/downloader/ga0;->a:Lcom/shabakaty/downloader/ga0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v7

    .line 115
    invoke-virtual {v0, v8}, Lcom/shabakaty/downloader/w90;->j(Lcom/shabakaty/downloader/ta0;)Lcom/shabakaty/downloader/d83;

    move-result-object v7

    .line 116
    invoke-virtual {v7}, Lcom/shabakaty/downloader/d83;->c()Z

    move-result v9

    if-eqz v9, :cond_1d

    invoke-virtual {v7}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v0, v9}, Lcom/shabakaty/downloader/w90;->p(F)Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 117
    iget-object v0, v0, Lcom/shabakaty/downloader/w90;->c:Lcom/shabakaty/downloader/ms0;

    const-string v6, "com.google.firebase.perf.NetworkRequestSamplingRate"

    invoke-virtual {v7}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v0, v6, v8}, Lcom/shabakaty/downloader/ms0;->c(Ljava/lang/String;F)Z

    .line 118
    invoke-virtual {v7}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_a

    .line 119
    :cond_1d
    invoke-virtual {v0, v8}, Lcom/shabakaty/downloader/w90;->b(Lcom/shabakaty/downloader/ta0;)Lcom/shabakaty/downloader/d83;

    move-result-object v7

    .line 120
    invoke-virtual {v7}, Lcom/shabakaty/downloader/d83;->c()Z

    move-result v8

    if-eqz v8, :cond_1e

    invoke-virtual {v7}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v0, v8}, Lcom/shabakaty/downloader/w90;->p(F)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 121
    invoke-virtual {v7}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_a

    .line 122
    :cond_1e
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 123
    :goto_a
    iget v6, p2, Lcom/shabakaty/downloader/tm3;->b:F

    cmpg-float v0, v6, v0

    if-gez v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_b

    :cond_1f
    const/4 v0, 0x0

    :goto_b
    if-nez v0, :cond_20

    .line 124
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qb3;->l()Lcom/shabakaty/downloader/oy2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/oy2;->S()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/tm3;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_e

    :catchall_1
    move-exception p1

    .line 125
    monitor-exit v7

    throw p1

    .line 126
    :cond_20
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qb3;->h()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 127
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qb3;->i()Lcom/shabakaty/downloader/uo4;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uo4;->P()Ljava/lang/String;

    move-result-object v0

    const-string v6, "_fs"

    .line 129
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 130
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qb3;->i()Lcom/shabakaty/downloader/uo4;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uo4;->P()Ljava/lang/String;

    move-result-object v0

    const-string v6, "_bs"

    .line 132
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 133
    :cond_21
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qb3;->i()Lcom/shabakaty/downloader/uo4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/uo4;->K()I

    move-result v0

    if-lez v0, :cond_22

    goto :goto_c

    .line 134
    :cond_22
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qb3;->f()Z

    move-result v0

    if-eqz v0, :cond_23

    :goto_c
    const/4 v0, 0x0

    goto :goto_d

    :cond_23
    const/4 v0, 0x1

    :goto_d
    if-nez v0, :cond_24

    const/4 p2, 0x1

    goto :goto_f

    .line 135
    :cond_24
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qb3;->k()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 136
    iget-object p2, p2, Lcom/shabakaty/downloader/tm3;->d:Lcom/shabakaty/downloader/tm3$a;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/tm3$a;->b()Z

    move-result p2

    goto :goto_f

    .line 137
    :cond_25
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qb3;->h()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 138
    iget-object p2, p2, Lcom/shabakaty/downloader/tm3;->c:Lcom/shabakaty/downloader/tm3$a;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/tm3$a;->b()Z

    move-result p2

    goto :goto_f

    :cond_26
    :goto_e
    const/4 p2, 0x0

    :goto_f
    if-nez p2, :cond_2a

    .line 139
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qb3;->h()Z

    move-result p2

    const-wide/16 v6, 0x1

    if-eqz p2, :cond_27

    .line 140
    iget-object p2, p0, Lcom/shabakaty/downloader/wq4;->D:Lcom/shabakaty/downloader/sb;

    const-string v0, "_fstec"

    invoke-virtual {p2, v0, v6, v7}, Lcom/shabakaty/downloader/sb;->c(Ljava/lang/String;J)V

    goto :goto_10

    .line 141
    :cond_27
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qb3;->k()Z

    move-result p2

    if-eqz p2, :cond_28

    .line 142
    iget-object p2, p0, Lcom/shabakaty/downloader/wq4;->D:Lcom/shabakaty/downloader/sb;

    const-string v0, "_fsntc"

    invoke-virtual {p2, v0, v6, v7}, Lcom/shabakaty/downloader/sb;->c(Ljava/lang/String;J)V

    .line 143
    :cond_28
    :goto_10
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qb3;->h()Z

    move-result p2

    if-eqz p2, :cond_29

    .line 144
    sget-object p2, Lcom/shabakaty/downloader/wq4;->I:Lcom/shabakaty/downloader/i7;

    const-string v0, "Rate Limited - %s"

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/qb3;->i()Lcom/shabakaty/downloader/uo4;

    move-result-object v7

    invoke-static {v7}, Lcom/shabakaty/downloader/wq4;->c(Lcom/shabakaty/downloader/uo4;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {p2, v0, v6}, Lcom/shabakaty/downloader/i7;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 145
    :cond_29
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qb3;->k()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 146
    sget-object p2, Lcom/shabakaty/downloader/wq4;->I:Lcom/shabakaty/downloader/i7;

    const-string v0, "Rate Limited - %s"

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/qb3;->l()Lcom/shabakaty/downloader/oy2;

    move-result-object v7

    invoke-static {v7}, Lcom/shabakaty/downloader/wq4;->a(Lcom/shabakaty/downloader/oy2;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {p2, v0, v6}, Lcom/shabakaty/downloader/i7;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_2a
    const/4 p2, 0x1

    :goto_11
    if-eqz p2, :cond_32

    .line 147
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qb3;->h()Z

    move-result p2

    if-eqz p2, :cond_2c

    .line 148
    sget-object p2, Lcom/shabakaty/downloader/wq4;->I:Lcom/shabakaty/downloader/i7;

    new-array v0, v2, [Ljava/lang/Object;

    .line 149
    invoke-static {p1}, Lcom/shabakaty/downloader/wq4;->b(Lcom/shabakaty/downloader/rb3;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v4

    invoke-virtual {p1}, Lcom/shabakaty/downloader/qb3;->i()Lcom/shabakaty/downloader/uo4;

    move-result-object v6

    .line 150
    invoke-virtual {v6}, Lcom/shabakaty/downloader/uo4;->P()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_st_"

    .line 151
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "android-ide"

    const-string v9, "perf-android-sdk"

    if-eqz v7, :cond_2b

    .line 152
    iget-object v7, p0, Lcom/shabakaty/downloader/wq4;->G:Ljava/lang/String;

    iget-object v10, p0, Lcom/shabakaty/downloader/wq4;->F:Ljava/lang/String;

    .line 153
    invoke-static {v7, v10}, Lcom/shabakaty/downloader/kf5;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v7, v3, v4

    aput-object v6, v3, v5

    aput-object v9, v3, v2

    aput-object v8, v3, v1

    const-string v1, "%s/metrics/trace/SCREEN_TRACE/%s?utm_source=%s&utm_medium=%s"

    .line 154
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_12

    .line 155
    :cond_2b
    iget-object v7, p0, Lcom/shabakaty/downloader/wq4;->G:Ljava/lang/String;

    iget-object v10, p0, Lcom/shabakaty/downloader/wq4;->F:Ljava/lang/String;

    .line 156
    invoke-static {v7, v10}, Lcom/shabakaty/downloader/kf5;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v7, v3, v4

    aput-object v6, v3, v5

    aput-object v9, v3, v2

    aput-object v8, v3, v1

    const-string v1, "%s/metrics/trace/DURATION_TRACE/%s?utm_source=%s&utm_medium=%s"

    .line 157
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_12
    aput-object v1, v0, v5

    const-string v1, "Logging %s. In a minute, visit the Firebase console to view your data: %s"

    .line 158
    invoke-virtual {p2, v1, v0}, Lcom/shabakaty/downloader/i7;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_13

    .line 159
    :cond_2c
    sget-object p2, Lcom/shabakaty/downloader/wq4;->I:Lcom/shabakaty/downloader/i7;

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/shabakaty/downloader/wq4;->b(Lcom/shabakaty/downloader/rb3;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "Logging %s"

    invoke-virtual {p2, v1, v0}, Lcom/shabakaty/downloader/i7;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    :goto_13
    iget-object p2, p0, Lcom/shabakaty/downloader/wq4;->y:Lcom/shabakaty/downloader/ke1;

    .line 161
    iget-object v0, p2, Lcom/shabakaty/downloader/ke1;->c:Lcom/shabakaty/downloader/mq4;

    const-string v1, "FirebasePerformance"

    if-nez v0, :cond_2e

    .line 162
    iget-object v0, p2, Lcom/shabakaty/downloader/ke1;->b:Lcom/shabakaty/downloader/pj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/pj3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/pq4;

    if-eqz v0, :cond_2d

    .line 163
    iget-object v2, p2, Lcom/shabakaty/downloader/ke1;->a:Ljava/lang/String;

    const-class v3, Lcom/shabakaty/downloader/qb3;

    .line 164
    new-instance v6, Lcom/shabakaty/downloader/o31;

    const-string v7, "proto"

    invoke-direct {v6, v7}, Lcom/shabakaty/downloader/o31;-><init>(Ljava/lang/String;)V

    .line 165
    sget-object v7, Lcom/shabakaty/downloader/wx;->A:Lcom/shabakaty/downloader/wx;

    .line 166
    invoke-interface {v0, v2, v3, v6, v7}, Lcom/shabakaty/downloader/pq4;->a(Ljava/lang/String;Ljava/lang/Class;Lcom/shabakaty/downloader/o31;Lcom/shabakaty/downloader/aq4;)Lcom/shabakaty/downloader/mq4;

    move-result-object v0

    iput-object v0, p2, Lcom/shabakaty/downloader/ke1;->c:Lcom/shabakaty/downloader/mq4;

    goto :goto_14

    .line 167
    :cond_2d
    sget-object v0, Lcom/shabakaty/downloader/ke1;->d:Lcom/shabakaty/downloader/i7;

    .line 168
    iget-boolean v2, v0, Lcom/shabakaty/downloader/i7;->b:Z

    if-eqz v2, :cond_2e

    .line 169
    iget-object v0, v0, Lcom/shabakaty/downloader/i7;->a:Lcom/shabakaty/downloader/lk2;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Flg TransportFactory is not available at the moment"

    .line 170
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_2e
    :goto_14
    iget-object p2, p2, Lcom/shabakaty/downloader/ke1;->c:Lcom/shabakaty/downloader/mq4;

    if-eqz p2, :cond_2f

    const/4 v4, 0x1

    :cond_2f
    if-nez v4, :cond_30

    .line 172
    sget-object p1, Lcom/shabakaty/downloader/ke1;->d:Lcom/shabakaty/downloader/i7;

    .line 173
    iget-boolean p2, p1, Lcom/shabakaty/downloader/i7;->b:Z

    if-eqz p2, :cond_31

    .line 174
    iget-object p1, p1, Lcom/shabakaty/downloader/i7;->a:Lcom/shabakaty/downloader/lk2;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Unable to dispatch event because Flg Transport is not available"

    .line 175
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 176
    :cond_30
    invoke-static {p1}, Lcom/shabakaty/downloader/i51;->d(Ljava/lang/Object;)Lcom/shabakaty/downloader/i51;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/shabakaty/downloader/mq4;->a(Lcom/shabakaty/downloader/i51;)V

    .line 177
    :cond_31
    :goto_15
    invoke-static {}, Lcom/google/firebase/perf/session/SessionManager;->getInstance()Lcom/google/firebase/perf/session/SessionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/perf/session/SessionManager;->updatePerfSessionIfExpired()Z

    :cond_32
    return-void
.end method

.method public onUpdateAppState(Lcom/shabakaty/downloader/oc;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/oc;->t:Lcom/shabakaty/downloader/oc;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/shabakaty/downloader/wq4;->H:Z

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wq4;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/wq4;->z:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/shabakaty/downloader/vq4;

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/vq4;-><init>(Lcom/shabakaty/downloader/wq4;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
