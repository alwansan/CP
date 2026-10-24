.class public final Lcom/shabakaty/downloader/tf1$a;
.super Lcom/shabakaty/downloader/gl;
.source "FlowableCombineLatest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/tf1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/gl<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public volatile A:Z

.field public final B:Ljava/util/concurrent/atomic/AtomicLong;

.field public volatile C:Z

.field public final D:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Lcom/shabakaty/downloader/ef4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ef4<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final s:Lcom/shabakaty/downloader/in1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/in1<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field

.field public final t:[Lcom/shabakaty/downloader/tf1$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestInnerSubscriber<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final u:Lcom/shabakaty/downloader/ua4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ua4<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final v:[Ljava/lang/Object;

.field public final w:Z

.field public x:Z

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ef4;Lcom/shabakaty/downloader/in1;IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ef4<",
            "-TR;>;",
            "Lcom/shabakaty/downloader/in1<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;IIZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/gl;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/tf1$a;->r:Lcom/shabakaty/downloader/ef4;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/tf1$a;->s:Lcom/shabakaty/downloader/in1;

    .line 4
    new-array p1, p3, [Lcom/shabakaty/downloader/tf1$b;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/tf1$b;

    invoke-direct {v0, p0, p2, p4}, Lcom/shabakaty/downloader/tf1$b;-><init>(Lcom/shabakaty/downloader/tf1$a;II)V

    aput-object v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/tf1$a;->t:[Lcom/shabakaty/downloader/tf1$b;

    .line 7
    new-array p1, p3, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/shabakaty/downloader/tf1$a;->v:[Ljava/lang/Object;

    .line 8
    new-instance p1, Lcom/shabakaty/downloader/ua4;

    invoke-direct {p1, p4}, Lcom/shabakaty/downloader/ua4;-><init>(I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/tf1$a;->u:Lcom/shabakaty/downloader/ua4;

    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/tf1$a;->B:Ljava/util/concurrent/atomic/AtomicLong;

    .line 10
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/tf1$a;->D:Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    iput-boolean p5, p0, Lcom/shabakaty/downloader/tf1$a;->w:Z

    return-void
.end method


# virtual methods
.method public D(I)I
    .locals 2

    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 1
    :cond_1
    iput-boolean v1, p0, Lcom/shabakaty/downloader/tf1$a;->x:Z

    return p1
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/tf1$a;->A:Z

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/tf1$a;->h()V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tf1$a;->u:Lcom/shabakaty/downloader/ua4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ua4;->clear()V

    return-void
.end method

.method public h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tf1$a;->t:[Lcom/shabakaty/downloader/tf1$b;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-static {v3}, Lcom/shabakaty/downloader/pf4;->f(Ljava/util/concurrent/atomic/AtomicReference;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public i(ZZLcom/shabakaty/downloader/ef4;Lcom/shabakaty/downloader/ua4;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lcom/shabakaty/downloader/ef4<",
            "*>;",
            "Lcom/shabakaty/downloader/ua4<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/tf1$a;->A:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/tf1$a;->h()V

    .line 3
    invoke-virtual {p4}, Lcom/shabakaty/downloader/ua4;->clear()V

    return v1

    :cond_0
    if-eqz p1, :cond_4

    .line 4
    iget-boolean p1, p0, Lcom/shabakaty/downloader/tf1$a;->w:Z

    if-eqz p1, :cond_2

    if-eqz p2, :cond_4

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/tf1$a;->h()V

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/tf1$a;->D:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lcom/shabakaty/downloader/d61;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    sget-object p2, Lcom/shabakaty/downloader/d61;->a:Ljava/lang/Throwable;

    if-eq p1, p2, :cond_1

    .line 8
    invoke-interface {p3, p1}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {p3}, Lcom/shabakaty/downloader/ef4;->a()V

    :goto_0
    return v1

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/tf1$a;->D:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lcom/shabakaty/downloader/d61;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 11
    sget-object v0, Lcom/shabakaty/downloader/d61;->a:Ljava/lang/Throwable;

    if-eq p1, v0, :cond_3

    .line 12
    invoke-virtual {p0}, Lcom/shabakaty/downloader/tf1$a;->h()V

    .line 13
    invoke-virtual {p4}, Lcom/shabakaty/downloader/ua4;->clear()V

    .line 14
    invoke-interface {p3, p1}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    return v1

    :cond_3
    if-eqz p2, :cond_4

    .line 15
    invoke-virtual {p0}, Lcom/shabakaty/downloader/tf1$a;->h()V

    .line 16
    invoke-interface {p3}, Lcom/shabakaty/downloader/ef4;->a()V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tf1$a;->u:Lcom/shabakaty/downloader/ua4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ua4;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public j()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tf1$a;->u:Lcom/shabakaty/downloader/ua4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ua4;->j()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/tf1$a;->u:Lcom/shabakaty/downloader/ua4;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ua4;->j()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/tf1$a;->s:Lcom/shabakaty/downloader/in1;

    invoke-interface {v2, v1}, Lcom/shabakaty/downloader/in1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The combiner returned a null value"

    .line 4
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    check-cast v0, Lcom/shabakaty/downloader/tf1$b;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/tf1$b;->c()V

    return-object v1
.end method

.method public k()V
    .locals 14

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/shabakaty/downloader/tf1$a;->x:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/tf1$a;->r:Lcom/shabakaty/downloader/ef4;

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/tf1$a;->u:Lcom/shabakaty/downloader/ua4;

    .line 5
    :cond_1
    iget-boolean v3, p0, Lcom/shabakaty/downloader/tf1$a;->A:Z

    if-eqz v3, :cond_2

    .line 6
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ua4;->clear()V

    goto/16 :goto_3

    .line 7
    :cond_2
    iget-object v3, p0, Lcom/shabakaty/downloader/tf1$a;->D:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    .line 8
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ua4;->clear()V

    .line 9
    invoke-interface {v0, v3}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 10
    :cond_3
    iget-boolean v3, p0, Lcom/shabakaty/downloader/tf1$a;->C:Z

    .line 11
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ua4;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v5, 0x0

    .line 12
    invoke-interface {v0, v5}, Lcom/shabakaty/downloader/ef4;->e(Ljava/lang/Object;)V

    :cond_4
    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    .line 13
    invoke-interface {v0}, Lcom/shabakaty/downloader/ef4;->a()V

    goto/16 :goto_3

    :cond_5
    neg-int v1, v1

    .line 14
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/shabakaty/downloader/tf1$a;->r:Lcom/shabakaty/downloader/ef4;

    .line 16
    iget-object v2, p0, Lcom/shabakaty/downloader/tf1$a;->u:Lcom/shabakaty/downloader/ua4;

    const/4 v3, 0x1

    .line 17
    :cond_7
    iget-object v4, p0, Lcom/shabakaty/downloader/tf1$a;->B:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-wide v8, v6

    :goto_0
    cmp-long v10, v8, v4

    if-eqz v10, :cond_b

    .line 18
    iget-boolean v11, p0, Lcom/shabakaty/downloader/tf1$a;->C:Z

    .line 19
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ua4;->j()Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_8

    const/4 v13, 0x1

    goto :goto_1

    :cond_8
    const/4 v13, 0x0

    .line 20
    :goto_1
    invoke-virtual {p0, v11, v13, v0, v2}, Lcom/shabakaty/downloader/tf1$a;->i(ZZLcom/shabakaty/downloader/ef4;Lcom/shabakaty/downloader/ua4;)Z

    move-result v11

    if-eqz v11, :cond_9

    goto :goto_3

    :cond_9
    if-eqz v13, :cond_a

    goto :goto_2

    .line 21
    :cond_a
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ua4;->j()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    .line 22
    :try_start_0
    iget-object v11, p0, Lcom/shabakaty/downloader/tf1$a;->s:Lcom/shabakaty/downloader/in1;

    invoke-interface {v11, v10}, Lcom/shabakaty/downloader/in1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const-string v11, "The combiner returned a null value"

    .line 23
    invoke-static {v10, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-interface {v0, v10}, Lcom/shabakaty/downloader/ef4;->e(Ljava/lang/Object;)V

    .line 25
    check-cast v12, Lcom/shabakaty/downloader/tf1$b;

    invoke-virtual {v12}, Lcom/shabakaty/downloader/tf1$b;->c()V

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 26
    invoke-static {v1}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 27
    invoke-virtual {p0}, Lcom/shabakaty/downloader/tf1$a;->h()V

    .line 28
    iget-object v2, p0, Lcom/shabakaty/downloader/tf1$a;->D:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/d61;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 29
    iget-object v1, p0, Lcom/shabakaty/downloader/tf1$a;->D:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1}, Lcom/shabakaty/downloader/d61;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v1

    .line 30
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_b
    :goto_2
    if-nez v10, :cond_c

    .line 31
    iget-boolean v10, p0, Lcom/shabakaty/downloader/tf1$a;->C:Z

    invoke-virtual {v2}, Lcom/shabakaty/downloader/ua4;->isEmpty()Z

    move-result v11

    invoke-virtual {p0, v10, v11, v0, v2}, Lcom/shabakaty/downloader/tf1$a;->i(ZZLcom/shabakaty/downloader/ef4;Lcom/shabakaty/downloader/ua4;)Z

    move-result v10

    if-eqz v10, :cond_c

    goto :goto_3

    :cond_c
    cmp-long v10, v8, v6

    if-eqz v10, :cond_d

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v10, v4, v6

    if-eqz v10, :cond_d

    .line 32
    iget-object v4, p0, Lcom/shabakaty/downloader/tf1$a;->B:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v5, v8

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_d
    neg-int v3, v3

    .line 33
    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_7

    :goto_3
    return-void
.end method

.method public l(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/tf1$a;->v:[Ljava/lang/Object;

    .line 3
    aget-object p1, v0, p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 4
    iget p1, p0, Lcom/shabakaty/downloader/tf1$a;->z:I

    add-int/2addr p1, v1

    .line 5
    array-length v0, v0

    if-ne p1, v0, :cond_0

    .line 6
    iput-boolean v1, p0, Lcom/shabakaty/downloader/tf1$a;->C:Z

    goto :goto_0

    .line 7
    :cond_0
    iput p1, p0, Lcom/shabakaty/downloader/tf1$a;->z:I

    .line 8
    monitor-exit p0

    return-void

    .line 9
    :cond_1
    iput-boolean v1, p0, Lcom/shabakaty/downloader/tf1$a;->C:Z

    .line 10
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {p0}, Lcom/shabakaty/downloader/tf1$a;->k()V

    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public u(J)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/pf4;->E(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/tf1$a;->B:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lcom/shabakaty/downloader/nl6;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/tf1$a;->k()V

    :cond_0
    return-void
.end method
