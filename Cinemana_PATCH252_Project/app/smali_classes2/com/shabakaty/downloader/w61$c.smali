.class public final Lcom/shabakaty/downloader/w61$c;
.super Lcom/shabakaty/downloader/wx3$c;
.source "ExecutorScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/w61;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/w61$c$b;,
        Lcom/shabakaty/downloader/w61$c$c;,
        Lcom/shabakaty/downloader/w61$c$a;
    }
.end annotation


# instance fields
.field public final r:Z

.field public final s:Ljava/util/concurrent/Executor;

.field public final t:Lcom/shabakaty/downloader/iv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/iv2<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public volatile u:Z

.field public final v:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final w:Lcom/shabakaty/downloader/c90;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/wx3$c;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/w61$c;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/c90;

    invoke-direct {v0}, Lcom/shabakaty/downloader/c90;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/w61$c;->w:Lcom/shabakaty/downloader/c90;

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/w61$c;->s:Ljava/util/concurrent/Executor;

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/iv2;

    invoke-direct {p1}, Lcom/shabakaty/downloader/iv2;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/w61$c;->t:Lcom/shabakaty/downloader/iv2;

    .line 6
    iput-boolean p2, p0, Lcom/shabakaty/downloader/w61$c;->r:Z

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Runnable;)Lcom/shabakaty/downloader/mu0;
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/t21;->r:Lcom/shabakaty/downloader/t21;

    iget-boolean v1, p0, Lcom/shabakaty/downloader/w61$c;->u:Z

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "run is null"

    .line 2
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-boolean v1, p0, Lcom/shabakaty/downloader/w61$c;->r:Z

    if-eqz v1, :cond_1

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/w61$c$b;

    iget-object v2, p0, Lcom/shabakaty/downloader/w61$c;->w:Lcom/shabakaty/downloader/c90;

    invoke-direct {v1, p1, v2}, Lcom/shabakaty/downloader/w61$c$b;-><init>(Ljava/lang/Runnable;Lcom/shabakaty/downloader/nu0;)V

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/w61$c;->w:Lcom/shabakaty/downloader/c90;

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/c90;->b(Lcom/shabakaty/downloader/mu0;)Z

    goto :goto_0

    .line 6
    :cond_1
    new-instance v1, Lcom/shabakaty/downloader/w61$c$a;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/w61$c$a;-><init>(Ljava/lang/Runnable;)V

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/w61$c;->t:Lcom/shabakaty/downloader/iv2;

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/iv2;->f(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/w61$c;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_2

    .line 9
    :try_start_0
    iget-object p1, p0, Lcom/shabakaty/downloader/w61$c;->s:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lcom/shabakaty/downloader/w61$c;->u:Z

    .line 11
    iget-object v1, p0, Lcom/shabakaty/downloader/w61$c;->t:Lcom/shabakaty/downloader/iv2;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/iv2;->clear()V

    .line 12
    invoke-static {p1}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    return-object v0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/mu0;
    .locals 5

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/t21;->r:Lcom/shabakaty/downloader/t21;

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-gtz v3, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/w61$c;->b(Ljava/lang/Runnable;)Lcom/shabakaty/downloader/mu0;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-boolean v1, p0, Lcom/shabakaty/downloader/w61$c;->u:Z

    if-eqz v1, :cond_1

    return-object v0

    .line 4
    :cond_1
    new-instance v1, Lcom/shabakaty/downloader/v04;

    invoke-direct {v1}, Lcom/shabakaty/downloader/v04;-><init>()V

    .line 5
    new-instance v2, Lcom/shabakaty/downloader/v04;

    invoke-direct {v2, v1}, Lcom/shabakaty/downloader/v04;-><init>(Lcom/shabakaty/downloader/mu0;)V

    const-string v3, "run is null"

    .line 6
    invoke-static {p1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    new-instance v3, Lcom/shabakaty/downloader/ux3;

    new-instance v4, Lcom/shabakaty/downloader/w61$c$c;

    invoke-direct {v4, p0, v2, p1}, Lcom/shabakaty/downloader/w61$c$c;-><init>(Lcom/shabakaty/downloader/w61$c;Lcom/shabakaty/downloader/v04;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/shabakaty/downloader/w61$c;->w:Lcom/shabakaty/downloader/c90;

    invoke-direct {v3, v4, p1}, Lcom/shabakaty/downloader/ux3;-><init>(Ljava/lang/Runnable;Lcom/shabakaty/downloader/nu0;)V

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/w61$c;->w:Lcom/shabakaty/downloader/c90;

    invoke-virtual {p1, v3}, Lcom/shabakaty/downloader/c90;->b(Lcom/shabakaty/downloader/mu0;)Z

    .line 9
    iget-object p1, p0, Lcom/shabakaty/downloader/w61$c;->s:Ljava/util/concurrent/Executor;

    instance-of v4, p1, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v4, :cond_2

    .line 10
    :try_start_0
    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v3, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 11
    invoke-virtual {v3, p1}, Lcom/shabakaty/downloader/ux3;->a(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    .line 12
    iput-boolean p2, p0, Lcom/shabakaty/downloader/w61$c;->u:Z

    .line 13
    invoke-static {p1}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    return-object v0

    .line 14
    :cond_2
    sget-object p1, Lcom/shabakaty/downloader/w61;->c:Lcom/shabakaty/downloader/wx3;

    invoke-virtual {p1, v3, p2, p3, p4}, Lcom/shabakaty/downloader/wx3;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/mu0;

    move-result-object p1

    .line 15
    new-instance p2, Lcom/shabakaty/downloader/qu0;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/qu0;-><init>(Lcom/shabakaty/downloader/mu0;)V

    invoke-virtual {v3, p2}, Lcom/shabakaty/downloader/ux3;->a(Ljava/util/concurrent/Future;)V

    .line 16
    :goto_0
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/pu0;->u(Ljava/util/concurrent/atomic/AtomicReference;Lcom/shabakaty/downloader/mu0;)Z

    return-object v2
.end method

.method public h()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/w61$c;->u:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/w61$c;->u:Z

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/w61$c;->w:Lcom/shabakaty/downloader/c90;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/c90;->h()V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/w61$c;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/w61$c;->t:Lcom/shabakaty/downloader/iv2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/iv2;->clear()V

    :cond_0
    return-void
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/w61$c;->u:Z

    return v0
.end method

.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w61$c;->t:Lcom/shabakaty/downloader/iv2;

    const/4 v1, 0x1

    .line 2
    :cond_0
    iget-boolean v2, p0, Lcom/shabakaty/downloader/w61$c;->u:Z

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/iv2;->clear()V

    return-void

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/iv2;->j()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    if-nez v2, :cond_3

    .line 5
    iget-boolean v2, p0, Lcom/shabakaty/downloader/w61$c;->u:Z

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/iv2;->clear()V

    return-void

    .line 7
    :cond_2
    iget-object v2, p0, Lcom/shabakaty/downloader/w61$c;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v1, v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 8
    :cond_3
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 9
    iget-boolean v2, p0, Lcom/shabakaty/downloader/w61$c;->u:Z

    if-eqz v2, :cond_1

    .line 10
    invoke-virtual {v0}, Lcom/shabakaty/downloader/iv2;->clear()V

    return-void
.end method
