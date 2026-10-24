.class public final Lcom/shabakaty/downloader/uf1$b;
.super Lcom/shabakaty/downloader/uf1$a;
.source "FlowableConcatMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/uf1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
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

.field public final E:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ef4;Lcom/shabakaty/downloader/in1;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ef4<",
            "-TR;>;",
            "Lcom/shabakaty/downloader/in1<",
            "-TT;+",
            "Lcom/shabakaty/downloader/wj3<",
            "+TR;>;>;IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/shabakaty/downloader/uf1$a;-><init>(Lcom/shabakaty/downloader/in1;I)V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/uf1$b;->D:Lcom/shabakaty/downloader/ef4;

    .line 3
    iput-boolean p4, p0, Lcom/shabakaty/downloader/uf1$b;->E:Z

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

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/shabakaty/downloader/uf1$a;->y:Z

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uf1$b;->h()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uf1$b;->D:Lcom/shabakaty/downloader/ef4;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/ef4;->e(Ljava/lang/Object;)V

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

    if-eqz v0, :cond_1

    .line 3
    iget-boolean p1, p0, Lcom/shabakaty/downloader/uf1$b;->E:Z

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/uf1$a;->v:Lcom/shabakaty/downloader/lf4;

    invoke-interface {p1}, Lcom/shabakaty/downloader/lf4;->cancel()V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/shabakaty/downloader/uf1$a;->y:Z

    :cond_0
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/shabakaty/downloader/uf1$a;->B:Z

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uf1$b;->h()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public h()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_d

    .line 2
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/shabakaty/downloader/uf1$a;->z:Z

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/uf1$a;->B:Z

    if-nez v0, :cond_c

    .line 4
    iget-boolean v0, p0, Lcom/shabakaty/downloader/uf1$a;->y:Z

    if-eqz v0, :cond_2

    .line 5
    iget-boolean v1, p0, Lcom/shabakaty/downloader/uf1$b;->E:Z

    if-nez v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/uf1$a;->A:Lcom/shabakaty/downloader/fe;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/uf1$b;->D:Lcom/shabakaty/downloader/ef4;

    iget-object v1, p0, Lcom/shabakaty/downloader/uf1$a;->A:Lcom/shabakaty/downloader/fe;

    .line 8
    invoke-static {v1}, Lcom/shabakaty/downloader/d61;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    return-void

    .line 10
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/uf1$a;->x:Lcom/shabakaty/downloader/y64;

    invoke-interface {v1}, Lcom/shabakaty/downloader/y64;->j()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/uf1$a;->A:Lcom/shabakaty/downloader/fe;

    .line 12
    invoke-static {v0}, Lcom/shabakaty/downloader/d61;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 13
    iget-object v1, p0, Lcom/shabakaty/downloader/uf1$b;->D:Lcom/shabakaty/downloader/ef4;

    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/shabakaty/downloader/uf1$b;->D:Lcom/shabakaty/downloader/ef4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/ef4;->a()V

    :goto_2
    return-void

    :cond_5
    if-nez v4, :cond_c

    .line 15
    :try_start_1
    iget-object v0, p0, Lcom/shabakaty/downloader/uf1$a;->s:Lcom/shabakaty/downloader/in1;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/in1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null Publisher"

    .line 16
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    check-cast v0, Lcom/shabakaty/downloader/wj3;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    iget v1, p0, Lcom/shabakaty/downloader/uf1$a;->C:I

    if-eq v1, v2, :cond_7

    .line 19
    iget v1, p0, Lcom/shabakaty/downloader/uf1$a;->w:I

    add-int/2addr v1, v2

    .line 20
    iget v4, p0, Lcom/shabakaty/downloader/uf1$a;->u:I

    if-ne v1, v4, :cond_6

    .line 21
    iput v3, p0, Lcom/shabakaty/downloader/uf1$a;->w:I

    .line 22
    iget-object v3, p0, Lcom/shabakaty/downloader/uf1$a;->v:Lcom/shabakaty/downloader/lf4;

    int-to-long v4, v1

    invoke-interface {v3, v4, v5}, Lcom/shabakaty/downloader/lf4;->u(J)V

    goto :goto_3

    .line 23
    :cond_6
    iput v1, p0, Lcom/shabakaty/downloader/uf1$a;->w:I

    .line 24
    :cond_7
    :goto_3
    instance-of v1, v0, Ljava/util/concurrent/Callable;

    if-eqz v1, :cond_b

    .line 25
    check-cast v0, Ljava/util/concurrent/Callable;

    .line 26
    :try_start_2
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 27
    invoke-static {v0}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 28
    iget-object v1, p0, Lcom/shabakaty/downloader/uf1$a;->A:Lcom/shabakaty/downloader/fe;

    .line 29
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/d61;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 30
    iget-boolean v0, p0, Lcom/shabakaty/downloader/uf1$b;->E:Z

    if-nez v0, :cond_8

    .line 31
    iget-object v0, p0, Lcom/shabakaty/downloader/uf1$a;->v:Lcom/shabakaty/downloader/lf4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/lf4;->cancel()V

    .line 32
    iget-object v0, p0, Lcom/shabakaty/downloader/uf1$b;->D:Lcom/shabakaty/downloader/ef4;

    iget-object v1, p0, Lcom/shabakaty/downloader/uf1$a;->A:Lcom/shabakaty/downloader/fe;

    .line 33
    invoke-static {v1}, Lcom/shabakaty/downloader/d61;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v1

    .line 34
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_8
    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_9

    goto/16 :goto_0

    .line 35
    :cond_9
    iget-object v1, p0, Lcom/shabakaty/downloader/uf1$a;->r:Lcom/shabakaty/downloader/uf1$d;

    .line 36
    iget-boolean v1, v1, Lcom/shabakaty/downloader/of4;->y:Z

    if-eqz v1, :cond_a

    .line 37
    iget-object v1, p0, Lcom/shabakaty/downloader/uf1$b;->D:Lcom/shabakaty/downloader/ef4;

    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/ef4;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 38
    :cond_a
    iput-boolean v2, p0, Lcom/shabakaty/downloader/uf1$a;->B:Z

    .line 39
    iget-object v1, p0, Lcom/shabakaty/downloader/uf1$a;->r:Lcom/shabakaty/downloader/uf1$d;

    new-instance v2, Lcom/shabakaty/downloader/uf1$f;

    iget-object v3, p0, Lcom/shabakaty/downloader/uf1$a;->r:Lcom/shabakaty/downloader/uf1$d;

    invoke-direct {v2, v0, v3}, Lcom/shabakaty/downloader/uf1$f;-><init>(Ljava/lang/Object;Lcom/shabakaty/downloader/ef4;)V

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/of4;->i(Lcom/shabakaty/downloader/lf4;)V

    goto :goto_5

    .line 40
    :cond_b
    iput-boolean v2, p0, Lcom/shabakaty/downloader/uf1$a;->B:Z

    .line 41
    iget-object v1, p0, Lcom/shabakaty/downloader/uf1$a;->r:Lcom/shabakaty/downloader/uf1$d;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/wj3;->a(Lcom/shabakaty/downloader/ef4;)V

    goto :goto_5

    :catchall_1
    move-exception v0

    .line 42
    invoke-static {v0}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 43
    iget-object v1, p0, Lcom/shabakaty/downloader/uf1$a;->v:Lcom/shabakaty/downloader/lf4;

    invoke-interface {v1}, Lcom/shabakaty/downloader/lf4;->cancel()V

    .line 44
    iget-object v1, p0, Lcom/shabakaty/downloader/uf1$a;->A:Lcom/shabakaty/downloader/fe;

    .line 45
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/d61;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 46
    iget-object v0, p0, Lcom/shabakaty/downloader/uf1$b;->D:Lcom/shabakaty/downloader/ef4;

    iget-object v1, p0, Lcom/shabakaty/downloader/uf1$a;->A:Lcom/shabakaty/downloader/fe;

    .line 47
    invoke-static {v1}, Lcom/shabakaty/downloader/d61;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v1

    .line 48
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    return-void

    :catchall_2
    move-exception v0

    .line 49
    invoke-static {v0}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 50
    iget-object v1, p0, Lcom/shabakaty/downloader/uf1$a;->v:Lcom/shabakaty/downloader/lf4;

    invoke-interface {v1}, Lcom/shabakaty/downloader/lf4;->cancel()V

    .line 51
    iget-object v1, p0, Lcom/shabakaty/downloader/uf1$a;->A:Lcom/shabakaty/downloader/fe;

    .line 52
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/d61;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 53
    iget-object v0, p0, Lcom/shabakaty/downloader/uf1$b;->D:Lcom/shabakaty/downloader/ef4;

    iget-object v1, p0, Lcom/shabakaty/downloader/uf1$a;->A:Lcom/shabakaty/downloader/fe;

    .line 54
    invoke-static {v1}, Lcom/shabakaty/downloader/d61;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v1

    .line 55
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    return-void

    .line 56
    :cond_c
    :goto_5
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    :cond_d
    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uf1$b;->D:Lcom/shabakaty/downloader/ef4;

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
