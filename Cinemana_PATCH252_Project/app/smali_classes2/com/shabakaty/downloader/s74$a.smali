.class public final Lcom/shabakaty/downloader/s74$a;
.super Lcom/shabakaty/downloader/gl;
.source "SingleFlatMapIterableFlowable.java"

# interfaces
.implements Lcom/shabakaty/downloader/y74;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/s74;
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
        "TR;>;",
        "Lcom/shabakaty/downloader/y74<",
        "TT;>;"
    }
.end annotation


# instance fields
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
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final t:Ljava/util/concurrent/atomic/AtomicLong;

.field public u:Lcom/shabakaty/downloader/mu0;

.field public volatile v:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TR;>;"
        }
    .end annotation
.end field

.field public volatile w:Z

.field public x:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ef4;Lcom/shabakaty/downloader/in1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ef4<",
            "-TR;>;",
            "Lcom/shabakaty/downloader/in1<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/gl;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/s74$a;->r:Lcom/shabakaty/downloader/ef4;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/s74$a;->s:Lcom/shabakaty/downloader/in1;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/s74$a;->t:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public D(I)I
    .locals 1

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/shabakaty/downloader/s74$a;->x:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/pu0;->r:Lcom/shabakaty/downloader/pu0;

    iput-object v0, p0, Lcom/shabakaty/downloader/s74$a;->u:Lcom/shabakaty/downloader/mu0;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s74$a;->r:Lcom/shabakaty/downloader/ef4;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lcom/shabakaty/downloader/mu0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s74$a;->u:Lcom/shabakaty/downloader/mu0;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/pu0;->G(Lcom/shabakaty/downloader/mu0;Lcom/shabakaty/downloader/mu0;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/s74$a;->u:Lcom/shabakaty/downloader/mu0;

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/s74$a;->r:Lcom/shabakaty/downloader/ef4;

    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/ef4;->d(Lcom/shabakaty/downloader/lf4;)V

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/s74$a;->w:Z

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s74$a;->u:Lcom/shabakaty/downloader/mu0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/mu0;->h()V

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/pu0;->r:Lcom/shabakaty/downloader/pu0;

    iput-object v0, p0, Lcom/shabakaty/downloader/s74$a;->u:Lcom/shabakaty/downloader/mu0;

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/shabakaty/downloader/s74$a;->v:Ljava/util/Iterator;

    return-void
.end method

.method public h()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/s74$a;->r:Lcom/shabakaty/downloader/ef4;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/s74$a;->v:Ljava/util/Iterator;

    .line 4
    iget-boolean v2, p0, Lcom/shabakaty/downloader/s74$a;->x:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 5
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/ef4;->e(Ljava/lang/Object;)V

    .line 6
    invoke-interface {v0}, Lcom/shabakaty/downloader/ef4;->a()V

    return-void

    :cond_1
    const/4 v2, 0x1

    :cond_2
    :goto_0
    if-eqz v1, :cond_b

    .line 7
    iget-object v3, p0, Lcom/shabakaty/downloader/s74$a;->t:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v7, v3, v5

    if-nez v7, :cond_6

    .line 8
    :cond_3
    iget-boolean v2, p0, Lcom/shabakaty/downloader/s74$a;->w:Z

    if-eqz v2, :cond_4

    goto :goto_1

    .line 9
    :cond_4
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    invoke-interface {v0, v2}, Lcom/shabakaty/downloader/ef4;->e(Ljava/lang/Object;)V

    .line 11
    iget-boolean v2, p0, Lcom/shabakaty/downloader/s74$a;->w:Z

    if-eqz v2, :cond_5

    goto :goto_1

    .line 12
    :cond_5
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_3

    .line 13
    invoke-interface {v0}, Lcom/shabakaty/downloader/ef4;->a()V

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 14
    invoke-static {v1}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 15
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_1
    move-exception v1

    .line 16
    invoke-static {v1}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 17
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :cond_6
    const-wide/16 v5, 0x0

    move-wide v7, v5

    :cond_7
    cmp-long v9, v7, v3

    if-eqz v9, :cond_a

    .line 18
    iget-boolean v9, p0, Lcom/shabakaty/downloader/s74$a;->w:Z

    if-eqz v9, :cond_8

    return-void

    .line 19
    :cond_8
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    const-string v10, "The iterator returned a null value"

    .line 20
    invoke-static {v9, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 21
    invoke-interface {v0, v9}, Lcom/shabakaty/downloader/ef4;->e(Ljava/lang/Object;)V

    .line 22
    iget-boolean v9, p0, Lcom/shabakaty/downloader/s74$a;->w:Z

    if-eqz v9, :cond_9

    return-void

    :cond_9
    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    .line 23
    :try_start_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v9, :cond_7

    .line 24
    invoke-interface {v0}, Lcom/shabakaty/downloader/ef4;->a()V

    return-void

    :catchall_2
    move-exception v1

    .line 25
    invoke-static {v1}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 26
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    return-void

    :catchall_3
    move-exception v1

    .line 27
    invoke-static {v1}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 28
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_a
    cmp-long v3, v7, v5

    if-eqz v3, :cond_b

    .line 29
    iget-object v3, p0, Lcom/shabakaty/downloader/s74$a;->t:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v3, v7, v8}, Lcom/shabakaty/downloader/nl6;->n(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_b
    neg-int v2, v2

    .line 30
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v2

    if-nez v2, :cond_c

    return-void

    :cond_c
    if-nez v1, :cond_2

    .line 31
    iget-object v1, p0, Lcom/shabakaty/downloader/s74$a;->v:Ljava/util/Iterator;

    goto/16 :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s74$a;->v:Ljava/util/Iterator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s74$a;->v:Ljava/util/Iterator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "The iterator returned a null value"

    .line 3
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iput-object v1, p0, Lcom/shabakaty/downloader/s74$a;->v:Ljava/util/Iterator;

    :cond_0
    return-object v2

    :cond_1
    return-object v1
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/s74$a;->s:Lcom/shabakaty/downloader/in1;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/in1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/s74$a;->r:Lcom/shabakaty/downloader/ef4;

    invoke-interface {p1}, Lcom/shabakaty/downloader/ef4;->a()V

    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/s74$a;->v:Ljava/util/Iterator;

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s74$a;->h()V

    return-void

    :catchall_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/s74$a;->r:Lcom/shabakaty/downloader/ef4;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public u(J)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/pf4;->E(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s74$a;->t:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lcom/shabakaty/downloader/nl6;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s74$a;->h()V

    :cond_0
    return-void
.end method
