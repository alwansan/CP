.class public final Lcom/shabakaty/downloader/cg1$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "FlowableFlatMap.java"

# interfaces
.implements Lcom/shabakaty/downloader/wg1;
.implements Lcom/shabakaty/downloader/mu0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/cg1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lcom/shabakaty/downloader/lf4;",
        ">;",
        "Lcom/shabakaty/downloader/wg1<",
        "TU;>;",
        "Lcom/shabakaty/downloader/mu0;"
    }
.end annotation


# instance fields
.field public final r:J

.field public final s:Lcom/shabakaty/downloader/cg1$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/cg1$b<",
            "TT;TU;>;"
        }
    .end annotation
.end field

.field public final t:I

.field public final u:I

.field public volatile v:Z

.field public volatile w:Lcom/shabakaty/downloader/y64;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/y64<",
            "TU;>;"
        }
    .end annotation
.end field

.field public x:J

.field public y:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/cg1$b;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/cg1$b<",
            "TT;TU;>;J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-wide p2, p0, Lcom/shabakaty/downloader/cg1$a;->r:J

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/cg1$a;->s:Lcom/shabakaty/downloader/cg1$b;

    .line 4
    iget p1, p1, Lcom/shabakaty/downloader/cg1$b;->v:I

    iput p1, p0, Lcom/shabakaty/downloader/cg1$a;->u:I

    shr-int/lit8 p1, p1, 0x2

    .line 5
    iput p1, p0, Lcom/shabakaty/downloader/cg1$a;->t:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/cg1$a;->v:Z

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/cg1$a;->s:Lcom/shabakaty/downloader/cg1$b;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/cg1$b;->f()V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/pf4;->r:Lcom/shabakaty/downloader/pf4;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/cg1$a;->s:Lcom/shabakaty/downloader/cg1$b;

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/cg1$b;->y:Lcom/shabakaty/downloader/fe;

    .line 4
    invoke-static {v1, p1}, Lcom/shabakaty/downloader/d61;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/shabakaty/downloader/cg1$a;->v:Z

    .line 6
    iget-boolean p1, v0, Lcom/shabakaty/downloader/cg1$b;->t:Z

    if-nez p1, :cond_0

    .line 7
    iget-object p1, v0, Lcom/shabakaty/downloader/cg1$b;->C:Lcom/shabakaty/downloader/lf4;

    invoke-interface {p1}, Lcom/shabakaty/downloader/lf4;->cancel()V

    .line 8
    iget-object p1, v0, Lcom/shabakaty/downloader/cg1$b;->A:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/shabakaty/downloader/cg1$b;->J:[Lcom/shabakaty/downloader/cg1$a;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/shabakaty/downloader/cg1$a;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 9
    invoke-static {v3}, Lcom/shabakaty/downloader/pf4;->f(Ljava/util/concurrent/atomic/AtomicReference;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cg1$b;->f()V

    goto :goto_1

    .line 11
    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public c(J)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/cg1$a;->y:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 2
    iget-wide v0, p0, Lcom/shabakaty/downloader/cg1$a;->x:J

    add-long/2addr v0, p1

    .line 3
    iget p1, p0, Lcom/shabakaty/downloader/cg1$a;->t:I

    int-to-long p1, p1

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    const-wide/16 p1, 0x0

    .line 4
    iput-wide p1, p0, Lcom/shabakaty/downloader/cg1$a;->x:J

    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/lf4;

    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/lf4;->u(J)V

    goto :goto_0

    .line 6
    :cond_0
    iput-wide v0, p0, Lcom/shabakaty/downloader/cg1$a;->x:J

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Lcom/shabakaty/downloader/lf4;)V
    .locals 3

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/pf4;->D(Ljava/util/concurrent/atomic/AtomicReference;Lcom/shabakaty/downloader/lf4;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    instance-of v0, p1, Lcom/shabakaty/downloader/yk3;

    if-eqz v0, :cond_1

    .line 3
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/yk3;

    const/4 v1, 0x7

    .line 4
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/xk3;->D(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 5
    iput v1, p0, Lcom/shabakaty/downloader/cg1$a;->y:I

    .line 6
    iput-object v0, p0, Lcom/shabakaty/downloader/cg1$a;->w:Lcom/shabakaty/downloader/y64;

    .line 7
    iput-boolean v2, p0, Lcom/shabakaty/downloader/cg1$a;->v:Z

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/cg1$a;->s:Lcom/shabakaty/downloader/cg1$b;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/cg1$b;->f()V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 9
    iput v1, p0, Lcom/shabakaty/downloader/cg1$a;->y:I

    .line 10
    iput-object v0, p0, Lcom/shabakaty/downloader/cg1$a;->w:Lcom/shabakaty/downloader/y64;

    .line 11
    :cond_1
    iget v0, p0, Lcom/shabakaty/downloader/cg1$a;->u:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/lf4;->u(J)V

    :cond_2
    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/cg1$a;->y:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/cg1$a;->s:Lcom/shabakaty/downloader/cg1$b;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const-string v2, "Inner queue full?!"

    if-nez v1, :cond_5

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4
    iget-object v1, v0, Lcom/shabakaty/downloader/cg1$b;->B:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/cg1$a;->w:Lcom/shabakaty/downloader/y64;

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v1}, Lcom/shabakaty/downloader/y64;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 7
    :cond_0
    iget-object v1, v0, Lcom/shabakaty/downloader/cg1$b;->r:Lcom/shabakaty/downloader/ef4;

    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/ef4;->e(Ljava/lang/Object;)V

    const-wide v1, 0x7fffffffffffffffL

    cmp-long p1, v3, v1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, v0, Lcom/shabakaty/downloader/cg1$b;->B:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    :cond_1
    const-wide/16 v1, 0x1

    .line 9
    invoke-virtual {p0, v1, v2}, Lcom/shabakaty/downloader/cg1$a;->c(J)V

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/cg1$a;->w:Lcom/shabakaty/downloader/y64;

    if-nez v1, :cond_3

    .line 11
    new-instance v1, Lcom/shabakaty/downloader/ta4;

    iget v3, v0, Lcom/shabakaty/downloader/cg1$b;->v:I

    invoke-direct {v1, v3}, Lcom/shabakaty/downloader/ta4;-><init>(I)V

    .line 12
    iput-object v1, p0, Lcom/shabakaty/downloader/cg1$a;->w:Lcom/shabakaty/downloader/y64;

    .line 13
    :cond_3
    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/y64;->f(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 14
    new-instance p1, Lcom/shabakaty/downloader/xt2;

    invoke-direct {p1, v2}, Lcom/shabakaty/downloader/xt2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/cg1$b;->b(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 15
    :cond_4
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    .line 16
    :cond_5
    iget-object v1, p0, Lcom/shabakaty/downloader/cg1$a;->w:Lcom/shabakaty/downloader/y64;

    if-nez v1, :cond_6

    .line 17
    new-instance v1, Lcom/shabakaty/downloader/ta4;

    iget v3, v0, Lcom/shabakaty/downloader/cg1$b;->v:I

    invoke-direct {v1, v3}, Lcom/shabakaty/downloader/ta4;-><init>(I)V

    .line 18
    iput-object v1, p0, Lcom/shabakaty/downloader/cg1$a;->w:Lcom/shabakaty/downloader/y64;

    .line 19
    :cond_6
    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/y64;->f(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 20
    new-instance p1, Lcom/shabakaty/downloader/xt2;

    invoke-direct {p1, v2}, Lcom/shabakaty/downloader/xt2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/cg1$b;->b(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 21
    :cond_7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    .line 22
    :cond_8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cg1$b;->h()V

    goto :goto_1

    .line 23
    :cond_9
    iget-object p1, p0, Lcom/shabakaty/downloader/cg1$a;->s:Lcom/shabakaty/downloader/cg1$b;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/cg1$b;->f()V

    :goto_1
    return-void
.end method

.method public h()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/pf4;->f(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public n()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/pf4;->r:Lcom/shabakaty/downloader/pf4;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
