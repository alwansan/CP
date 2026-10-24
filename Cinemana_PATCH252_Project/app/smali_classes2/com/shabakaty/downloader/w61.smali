.class public final Lcom/shabakaty/downloader/w61;
.super Lcom/shabakaty/downloader/wx3;
.source "ExecutorScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/w61$a;,
        Lcom/shabakaty/downloader/w61$b;,
        Lcom/shabakaty/downloader/w61$c;
    }
.end annotation


# static fields
.field public static final c:Lcom/shabakaty/downloader/wx3;


# instance fields
.field public final b:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ay3;->a:Lcom/shabakaty/downloader/wx3;

    .line 2
    sput-object v0, Lcom/shabakaty/downloader/w61;->c:Lcom/shabakaty/downloader/wx3;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/wx3;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/w61;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/wx3$c;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/w61$c;

    iget-object v1, p0, Lcom/shabakaty/downloader/w61;->b:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/w61$c;-><init>(Ljava/util/concurrent/Executor;Z)V

    return-object v0
.end method

.method public b(Ljava/lang/Runnable;)Lcom/shabakaty/downloader/mu0;
    .locals 1

    const-string v0, "run is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/w61;->b:Ljava/util/concurrent/Executor;

    instance-of v0, v0, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/tx3;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/tx3;-><init>(Ljava/lang/Runnable;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/w61;->b:Ljava/util/concurrent/Executor;

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/y;->a(Ljava/util/concurrent/Future;)V

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/w61$c$a;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/w61$c$a;-><init>(Ljava/lang/Runnable;)V

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/w61;->b:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    .line 9
    sget-object p1, Lcom/shabakaty/downloader/t21;->r:Lcom/shabakaty/downloader/t21;

    return-object p1
.end method

.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/mu0;
    .locals 2

    const-string v0, "run is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/w61;->b:Ljava/util/concurrent/Executor;

    instance-of v0, v0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    new-instance v0, Lcom/shabakaty/downloader/tx3;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/tx3;-><init>(Ljava/lang/Runnable;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/w61;->b:Ljava/util/concurrent/Executor;

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/y;->a(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    .line 7
    sget-object p1, Lcom/shabakaty/downloader/t21;->r:Lcom/shabakaty/downloader/t21;

    return-object p1

    .line 8
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/w61$b;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/w61$b;-><init>(Ljava/lang/Runnable;)V

    .line 9
    sget-object p1, Lcom/shabakaty/downloader/w61;->c:Lcom/shabakaty/downloader/wx3;

    new-instance v1, Lcom/shabakaty/downloader/w61$a;

    invoke-direct {v1, p0, v0}, Lcom/shabakaty/downloader/w61$a;-><init>(Lcom/shabakaty/downloader/w61;Lcom/shabakaty/downloader/w61$b;)V

    invoke-virtual {p1, v1, p2, p3, p4}, Lcom/shabakaty/downloader/wx3;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/mu0;

    move-result-object p1

    .line 10
    iget-object p2, v0, Lcom/shabakaty/downloader/w61$b;->r:Lcom/shabakaty/downloader/v04;

    .line 11
    invoke-static {p2, p1}, Lcom/shabakaty/downloader/pu0;->u(Ljava/util/concurrent/atomic/AtomicReference;Lcom/shabakaty/downloader/mu0;)Z

    return-object v0
.end method

.method public d(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/mu0;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w61;->b:Ljava/util/concurrent/Executor;

    instance-of v0, v0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Lcom/shabakaty/downloader/sx3;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/sx3;-><init>(Ljava/lang/Runnable;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/w61;->b:Ljava/util/concurrent/Executor;

    move-object v1, p1

    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    move-object v2, v0

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/y;->a(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    .line 6
    sget-object p1, Lcom/shabakaty/downloader/t21;->r:Lcom/shabakaty/downloader/t21;

    return-object p1

    .line 7
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/shabakaty/downloader/wx3;->d(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/mu0;

    move-result-object p1

    return-object p1
.end method
