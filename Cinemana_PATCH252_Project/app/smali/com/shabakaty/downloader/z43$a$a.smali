.class public final Lcom/shabakaty/downloader/z43$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ObservableFlatMapMaybe.java"

# interfaces
.implements Lcom/shabakaty/downloader/do2;
.implements Lcom/shabakaty/downloader/mu0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/z43$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lcom/shabakaty/downloader/mu0;",
        ">;",
        "Lcom/shabakaty/downloader/do2<",
        "TR;>;",
        "Lcom/shabakaty/downloader/mu0;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/z43$a;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/z43$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/z43$a$a;->r:Lcom/shabakaty/downloader/z43$a;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/z43$a$a;->r:Lcom/shabakaty/downloader/z43$a;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/z43$a;->t:Lcom/shabakaty/downloader/c90;

    invoke-virtual {v1, p0}, Lcom/shabakaty/downloader/c90;->a(Lcom/shabakaty/downloader/mu0;)Z

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4
    iget-object v3, v0, Lcom/shabakaty/downloader/z43$a;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    .line 5
    :cond_0
    iget-object v2, v0, Lcom/shabakaty/downloader/z43$a;->x:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/ua4;

    if-eqz v1, :cond_3

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ua4;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    :cond_1
    iget-object v1, v0, Lcom/shabakaty/downloader/z43$a;->v:Lcom/shabakaty/downloader/fe;

    .line 8
    invoke-static {v1}, Lcom/shabakaty/downloader/d61;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 9
    iget-object v0, v0, Lcom/shabakaty/downloader/z43$a;->r:Lcom/shabakaty/downloader/q53;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/q53;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, v0, Lcom/shabakaty/downloader/z43$a;->r:Lcom/shabakaty/downloader/q53;

    invoke-interface {v0}, Lcom/shabakaty/downloader/q53;->a()V

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/z43$a;->f()V

    goto :goto_0

    .line 13
    :cond_5
    iget-object v1, v0, Lcom/shabakaty/downloader/z43$a;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 14
    invoke-virtual {v0}, Lcom/shabakaty/downloader/z43$a;->d()V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/z43$a$a;->r:Lcom/shabakaty/downloader/z43$a;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/z43$a;->t:Lcom/shabakaty/downloader/c90;

    invoke-virtual {v1, p0}, Lcom/shabakaty/downloader/c90;->a(Lcom/shabakaty/downloader/mu0;)Z

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/z43$a;->v:Lcom/shabakaty/downloader/fe;

    .line 4
    invoke-static {v1, p1}, Lcom/shabakaty/downloader/d61;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-boolean p1, v0, Lcom/shabakaty/downloader/z43$a;->s:Z

    if-nez p1, :cond_0

    .line 6
    iget-object p1, v0, Lcom/shabakaty/downloader/z43$a;->y:Lcom/shabakaty/downloader/mu0;

    invoke-interface {p1}, Lcom/shabakaty/downloader/mu0;->h()V

    .line 7
    iget-object p1, v0, Lcom/shabakaty/downloader/z43$a;->t:Lcom/shabakaty/downloader/c90;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/c90;->h()V

    .line 8
    :cond_0
    iget-object p1, v0, Lcom/shabakaty/downloader/z43$a;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 9
    invoke-virtual {v0}, Lcom/shabakaty/downloader/z43$a;->d()V

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public c(Lcom/shabakaty/downloader/mu0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/pu0;->E(Ljava/util/concurrent/atomic/AtomicReference;Lcom/shabakaty/downloader/mu0;)Z

    return-void
.end method

.method public h()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/pu0;->f(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public n()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/mu0;

    invoke-static {v0}, Lcom/shabakaty/downloader/pu0;->j(Lcom/shabakaty/downloader/mu0;)Z

    move-result v0

    return v0
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/z43$a$a;->r:Lcom/shabakaty/downloader/z43$a;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/z43$a;->t:Lcom/shabakaty/downloader/c90;

    invoke-virtual {v1, p0}, Lcom/shabakaty/downloader/c90;->a(Lcom/shabakaty/downloader/mu0;)Z

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4
    iget-object v3, v0, Lcom/shabakaty/downloader/z43$a;->r:Lcom/shabakaty/downloader/q53;

    invoke-interface {v3, p1}, Lcom/shabakaty/downloader/q53;->e(Ljava/lang/Object;)V

    .line 5
    iget-object p1, v0, Lcom/shabakaty/downloader/z43$a;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    .line 6
    :cond_0
    iget-object p1, v0, Lcom/shabakaty/downloader/z43$a;->x:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ua4;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ua4;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    :cond_1
    iget-object p1, v0, Lcom/shabakaty/downloader/z43$a;->v:Lcom/shabakaty/downloader/fe;

    .line 9
    invoke-static {p1}, Lcom/shabakaty/downloader/d61;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 10
    iget-object v0, v0, Lcom/shabakaty/downloader/z43$a;->r:Lcom/shabakaty/downloader/q53;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/q53;->b(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object p1, v0, Lcom/shabakaty/downloader/z43$a;->r:Lcom/shabakaty/downloader/q53;

    invoke-interface {p1}, Lcom/shabakaty/downloader/q53;->a()V

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    .line 13
    :cond_4
    iget-object v1, v0, Lcom/shabakaty/downloader/z43$a;->x:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/ua4;

    if-eqz v1, :cond_5

    goto :goto_0

    .line 14
    :cond_5
    new-instance v1, Lcom/shabakaty/downloader/ua4;

    .line 15
    sget v2, Lcom/shabakaty/downloader/qf1;->r:I

    .line 16
    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/ua4;-><init>(I)V

    .line 17
    iget-object v2, v0, Lcom/shabakaty/downloader/z43$a;->x:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 18
    :goto_0
    monitor-enter v1

    .line 19
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/ua4;->f(Ljava/lang/Object;)Z

    .line 20
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    iget-object p1, v0, Lcom/shabakaty/downloader/z43$a;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 22
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    .line 23
    :cond_6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/z43$a;->f()V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 24
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
