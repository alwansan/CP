.class public final Lcom/shabakaty/downloader/uf1$c;
.super Lcom/shabakaty/downloader/uf1$a;
.source "FlowableConcatMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/uf1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/uf1$a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final D:Lcom/shabakaty/downloader/ef4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ef4<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final E:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ef4;Lcom/shabakaty/downloader/in1;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ef4<",
            "-TR;>;",
            "Lcom/shabakaty/downloader/in1<",
            "-TT;+",
            "Lcom/shabakaty/downloader/wj3<",
            "+TR;>;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/shabakaty/downloader/uf1$a;-><init>(Lcom/shabakaty/downloader/in1;I)V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/uf1$c;->D:Lcom/shabakaty/downloader/ef4;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/uf1$c;->E:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uf1$a;->A:Lcom/shabakaty/downloader/fe;

    .line 2
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/d61;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/uf1$a;->r:Lcom/shabakaty/downloader/uf1$d;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/of4;->cancel()V

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/uf1$c;->D:Lcom/shabakaty/downloader/ef4;

    iget-object v0, p0, Lcom/shabakaty/downloader/uf1$a;->A:Lcom/shabakaty/downloader/fe;

    .line 6
    invoke-static {v0}, Lcom/shabakaty/downloader/d61;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    .line 7
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/uf1$c;->D:Lcom/shabakaty/downloader/ef4;

    invoke-interface {v2, p1}, Lcom/shabakaty/downloader/ef4;->e(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/uf1$c;->D:Lcom/shabakaty/downloader/ef4;

    iget-object v0, p0, Lcom/shabakaty/downloader/uf1$a;->A:Lcom/shabakaty/downloader/fe;

    .line 5
    invoke-static {v0}, Lcom/shabakaty/downloader/d61;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    .line 6
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/uf1$a;->z:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/uf1$a;->z:Z

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/uf1$a;->r:Lcom/shabakaty/downloader/uf1$d;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/of4;->cancel()V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/uf1$a;->v:Lcom/shabakaty/downloader/lf4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/lf4;->cancel()V

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uf1$a;->A:Lcom/shabakaty/downloader/fe;

    .line 2
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/d61;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/uf1$a;->v:Lcom/shabakaty/downloader/lf4;

    invoke-interface {p1}, Lcom/shabakaty/downloader/lf4;->cancel()V

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/uf1$c;->D:Lcom/shabakaty/downloader/ef4;

    iget-object v0, p0, Lcom/shabakaty/downloader/uf1$a;->A:Lcom/shabakaty/downloader/fe;

    .line 6
    invoke-static {v0}, Lcom/shabakaty/downloader/d61;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    .line 7
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public h()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uf1$c;->E:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_a

    .line 2
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/shabakaty/downloader/uf1$a;->z:Z

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/uf1$a;->B:Z

    if-nez v0, :cond_9

    .line 4
    iget-boolean v0, p0, Lcom/shabakaty/downloader/uf1$a;->y:Z

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/uf1$a;->x:Lcom/shabakaty/downloader/y64;

    invoke-interface {v1}, Lcom/shabakaty/downloader/y64;->j()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v0, :cond_3

    if-eqz v4, :cond_3

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/uf1$c;->D:Lcom/shabakaty/downloader/ef4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/ef4;->a()V

    return-void

    :cond_3
    if-nez v4, :cond_9

    .line 7
    :try_start_1
    iget-object v0, p0, Lcom/shabakaty/downloader/uf1$a;->s:Lcom/shabakaty/downloader/in1;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/in1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null Publisher"

    .line 8
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    check-cast v0, Lcom/shabakaty/downloader/wj3;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    iget v1, p0, Lcom/shabakaty/downloader/uf1$a;->C:I

    if-eq v1, v2, :cond_5

    .line 11
    iget v1, p0, Lcom/shabakaty/downloader/uf1$a;->w:I

    add-int/2addr v1, v2

    .line 12
    iget v4, p0, Lcom/shabakaty/downloader/uf1$a;->u:I

    if-ne v1, v4, :cond_4

    .line 13
    iput v3, p0, Lcom/shabakaty/downloader/uf1$a;->w:I

    .line 14
    iget-object v4, p0, Lcom/shabakaty/downloader/uf1$a;->v:Lcom/shabakaty/downloader/lf4;

    int-to-long v5, v1

    invoke-interface {v4, v5, v6}, Lcom/shabakaty/downloader/lf4;->u(J)V

    goto :goto_2

    .line 15
    :cond_4
    iput v1, p0, Lcom/shabakaty/downloader/uf1$a;->w:I

    .line 16
    :cond_5
    :goto_2
    instance-of v1, v0, Ljava/util/concurrent/Callable;

    if-eqz v1, :cond_8

    .line 17
    check-cast v0, Ljava/util/concurrent/Callable;

    .line 18
    :try_start_2
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_6

    goto :goto_0

    .line 19
    :cond_6
    iget-object v1, p0, Lcom/shabakaty/downloader/uf1$a;->r:Lcom/shabakaty/downloader/uf1$d;

    .line 20
    iget-boolean v1, v1, Lcom/shabakaty/downloader/of4;->y:Z

    if-eqz v1, :cond_7

    .line 21
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    iget-object v1, p0, Lcom/shabakaty/downloader/uf1$c;->D:Lcom/shabakaty/downloader/ef4;

    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/ef4;->e(Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/shabakaty/downloader/uf1$c;->D:Lcom/shabakaty/downloader/ef4;

    iget-object v1, p0, Lcom/shabakaty/downloader/uf1$a;->A:Lcom/shabakaty/downloader/fe;

    .line 25
    invoke-static {v1}, Lcom/shabakaty/downloader/d61;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v1

    .line 26
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    return-void

    .line 27
    :cond_7
    iput-boolean v2, p0, Lcom/shabakaty/downloader/uf1$a;->B:Z

    .line 28
    iget-object v1, p0, Lcom/shabakaty/downloader/uf1$a;->r:Lcom/shabakaty/downloader/uf1$d;

    new-instance v2, Lcom/shabakaty/downloader/uf1$f;

    iget-object v3, p0, Lcom/shabakaty/downloader/uf1$a;->r:Lcom/shabakaty/downloader/uf1$d;

    invoke-direct {v2, v0, v3}, Lcom/shabakaty/downloader/uf1$f;-><init>(Ljava/lang/Object;Lcom/shabakaty/downloader/ef4;)V

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/of4;->i(Lcom/shabakaty/downloader/lf4;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 29
    invoke-static {v0}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 30
    iget-object v1, p0, Lcom/shabakaty/downloader/uf1$a;->v:Lcom/shabakaty/downloader/lf4;

    invoke-interface {v1}, Lcom/shabakaty/downloader/lf4;->cancel()V

    .line 31
    iget-object v1, p0, Lcom/shabakaty/downloader/uf1$a;->A:Lcom/shabakaty/downloader/fe;

    .line 32
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/d61;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 33
    iget-object v0, p0, Lcom/shabakaty/downloader/uf1$c;->D:Lcom/shabakaty/downloader/ef4;

    iget-object v1, p0, Lcom/shabakaty/downloader/uf1$a;->A:Lcom/shabakaty/downloader/fe;

    .line 34
    invoke-static {v1}, Lcom/shabakaty/downloader/d61;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v1

    .line 35
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    return-void

    .line 36
    :cond_8
    iput-boolean v2, p0, Lcom/shabakaty/downloader/uf1$a;->B:Z

    .line 37
    iget-object v1, p0, Lcom/shabakaty/downloader/uf1$a;->r:Lcom/shabakaty/downloader/uf1$d;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/wj3;->a(Lcom/shabakaty/downloader/ef4;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 38
    invoke-static {v0}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 39
    iget-object v1, p0, Lcom/shabakaty/downloader/uf1$a;->v:Lcom/shabakaty/downloader/lf4;

    invoke-interface {v1}, Lcom/shabakaty/downloader/lf4;->cancel()V

    .line 40
    iget-object v1, p0, Lcom/shabakaty/downloader/uf1$a;->A:Lcom/shabakaty/downloader/fe;

    .line 41
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/d61;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 42
    iget-object v0, p0, Lcom/shabakaty/downloader/uf1$c;->D:Lcom/shabakaty/downloader/ef4;

    iget-object v1, p0, Lcom/shabakaty/downloader/uf1$a;->A:Lcom/shabakaty/downloader/fe;

    .line 43
    invoke-static {v1}, Lcom/shabakaty/downloader/d61;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v1

    .line 44
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    return-void

    :catchall_2
    move-exception v0

    .line 45
    invoke-static {v0}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 46
    iget-object v1, p0, Lcom/shabakaty/downloader/uf1$a;->v:Lcom/shabakaty/downloader/lf4;

    invoke-interface {v1}, Lcom/shabakaty/downloader/lf4;->cancel()V

    .line 47
    iget-object v1, p0, Lcom/shabakaty/downloader/uf1$a;->A:Lcom/shabakaty/downloader/fe;

    .line 48
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/d61;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 49
    iget-object v0, p0, Lcom/shabakaty/downloader/uf1$c;->D:Lcom/shabakaty/downloader/ef4;

    iget-object v1, p0, Lcom/shabakaty/downloader/uf1$a;->A:Lcom/shabakaty/downloader/fe;

    .line 50
    invoke-static {v1}, Lcom/shabakaty/downloader/d61;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v1

    .line 51
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    return-void

    .line 52
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/shabakaty/downloader/uf1$c;->E:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    :cond_a
    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uf1$c;->D:Lcom/shabakaty/downloader/ef4;

    invoke-interface {v0, p0}, Lcom/shabakaty/downloader/ef4;->d(Lcom/shabakaty/downloader/lf4;)V

    return-void
.end method

.method public u(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uf1$a;->r:Lcom/shabakaty/downloader/uf1$d;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/of4;->u(J)V

    return-void
.end method
