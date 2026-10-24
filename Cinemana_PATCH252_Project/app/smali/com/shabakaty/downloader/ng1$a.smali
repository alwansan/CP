.class public final Lcom/shabakaty/downloader/ng1$a;
.super Lcom/shabakaty/downloader/gl;
.source "FlowableOnBackpressureBuffer.java"

# interfaces
.implements Lcom/shabakaty/downloader/wg1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ng1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/gl<",
        "TT;>;",
        "Lcom/shabakaty/downloader/wg1<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public A:Z

.field public final r:Lcom/shabakaty/downloader/ef4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ef4<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final s:Lcom/shabakaty/downloader/x64;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/x64<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final t:Z

.field public final u:Lcom/shabakaty/downloader/j2;

.field public v:Lcom/shabakaty/downloader/lf4;

.field public volatile w:Z

.field public volatile x:Z

.field public y:Ljava/lang/Throwable;

.field public final z:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ef4;IZZLcom/shabakaty/downloader/j2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ef4<",
            "-TT;>;IZZ",
            "Lcom/shabakaty/downloader/j2;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/gl;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/ng1$a;->z:Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/ng1$a;->r:Lcom/shabakaty/downloader/ef4;

    .line 4
    iput-object p5, p0, Lcom/shabakaty/downloader/ng1$a;->u:Lcom/shabakaty/downloader/j2;

    .line 5
    iput-boolean p4, p0, Lcom/shabakaty/downloader/ng1$a;->t:Z

    if-eqz p3, :cond_0

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/ua4;

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/ua4;-><init>(I)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lcom/shabakaty/downloader/ta4;

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/ta4;-><init>(I)V

    .line 8
    :goto_0
    iput-object p1, p0, Lcom/shabakaty/downloader/ng1$a;->s:Lcom/shabakaty/downloader/x64;

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
    iput-boolean p1, p0, Lcom/shabakaty/downloader/ng1$a;->A:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ng1$a;->x:Z

    .line 2
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ng1$a;->A:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ng1$a;->r:Lcom/shabakaty/downloader/ef4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/ef4;->a()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ng1$a;->i()V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ng1$a;->y:Ljava/lang/Throwable;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ng1$a;->x:Z

    .line 3
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ng1$a;->A:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/ng1$a;->r:Lcom/shabakaty/downloader/ef4;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ng1$a;->i()V

    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ng1$a;->w:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ng1$a;->w:Z

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ng1$a;->v:Lcom/shabakaty/downloader/lf4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/lf4;->cancel()V

    .line 4
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ng1$a;->A:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/ng1$a;->s:Lcom/shabakaty/downloader/x64;

    invoke-interface {v0}, Lcom/shabakaty/downloader/y64;->clear()V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ng1$a;->s:Lcom/shabakaty/downloader/x64;

    invoke-interface {v0}, Lcom/shabakaty/downloader/y64;->clear()V

    return-void
.end method

.method public d(Lcom/shabakaty/downloader/lf4;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ng1$a;->v:Lcom/shabakaty/downloader/lf4;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/pf4;->F(Lcom/shabakaty/downloader/lf4;Lcom/shabakaty/downloader/lf4;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ng1$a;->v:Lcom/shabakaty/downloader/lf4;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ng1$a;->r:Lcom/shabakaty/downloader/ef4;

    invoke-interface {v0, p0}, Lcom/shabakaty/downloader/ef4;->d(Lcom/shabakaty/downloader/lf4;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 4
    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/lf4;->u(J)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ng1$a;->s:Lcom/shabakaty/downloader/x64;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/y64;->f(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/ng1$a;->v:Lcom/shabakaty/downloader/lf4;

    invoke-interface {p1}, Lcom/shabakaty/downloader/lf4;->cancel()V

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/xt2;

    const-string v0, "Buffer is full"

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/xt2;-><init>(Ljava/lang/String;)V

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ng1$a;->u:Lcom/shabakaty/downloader/j2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/j2;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {v0}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 7
    :goto_0
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ng1$a;->b(Ljava/lang/Throwable;)V

    return-void

    .line 8
    :cond_0
    iget-boolean p1, p0, Lcom/shabakaty/downloader/ng1$a;->A:Z

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/shabakaty/downloader/ng1$a;->r:Lcom/shabakaty/downloader/ef4;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/ef4;->e(Ljava/lang/Object;)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ng1$a;->i()V

    :goto_1
    return-void
.end method

.method public h(ZZLcom/shabakaty/downloader/ef4;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lcom/shabakaty/downloader/ef4<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ng1$a;->w:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/ng1$a;->s:Lcom/shabakaty/downloader/x64;

    invoke-interface {p1}, Lcom/shabakaty/downloader/y64;->clear()V

    return v1

    :cond_0
    if-eqz p1, :cond_4

    .line 3
    iget-boolean p1, p0, Lcom/shabakaty/downloader/ng1$a;->t:Z

    if-eqz p1, :cond_2

    if-eqz p2, :cond_4

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/ng1$a;->y:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p3, p1}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p3}, Lcom/shabakaty/downloader/ef4;->a()V

    :goto_0
    return v1

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/ng1$a;->y:Ljava/lang/Throwable;

    if-eqz p1, :cond_3

    .line 8
    iget-object p2, p0, Lcom/shabakaty/downloader/ng1$a;->s:Lcom/shabakaty/downloader/x64;

    invoke-interface {p2}, Lcom/shabakaty/downloader/y64;->clear()V

    .line 9
    invoke-interface {p3, p1}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    return v1

    :cond_3
    if-eqz p2, :cond_4

    .line 10
    invoke-interface {p3}, Lcom/shabakaty/downloader/ef4;->a()V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public i()V
    .locals 14

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_8

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ng1$a;->s:Lcom/shabakaty/downloader/x64;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/ng1$a;->r:Lcom/shabakaty/downloader/ef4;

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 4
    :cond_0
    iget-boolean v4, p0, Lcom/shabakaty/downloader/ng1$a;->x:Z

    invoke-interface {v0}, Lcom/shabakaty/downloader/y64;->isEmpty()Z

    move-result v5

    invoke-virtual {p0, v4, v5, v1}, Lcom/shabakaty/downloader/ng1$a;->h(ZZLcom/shabakaty/downloader/ef4;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v4, p0, Lcom/shabakaty/downloader/ng1$a;->z:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-wide v8, v6

    :goto_0
    cmp-long v10, v8, v4

    if-eqz v10, :cond_5

    .line 6
    iget-boolean v11, p0, Lcom/shabakaty/downloader/ng1$a;->x:Z

    .line 7
    invoke-interface {v0}, Lcom/shabakaty/downloader/x64;->j()Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_2

    const/4 v13, 0x1

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    .line 8
    :goto_1
    invoke-virtual {p0, v11, v13, v1}, Lcom/shabakaty/downloader/ng1$a;->h(ZZLcom/shabakaty/downloader/ef4;)Z

    move-result v11

    if-eqz v11, :cond_3

    return-void

    :cond_3
    if-eqz v13, :cond_4

    goto :goto_2

    .line 9
    :cond_4
    invoke-interface {v1, v12}, Lcom/shabakaty/downloader/ef4;->e(Ljava/lang/Object;)V

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    goto :goto_0

    :cond_5
    :goto_2
    if-nez v10, :cond_6

    .line 10
    iget-boolean v10, p0, Lcom/shabakaty/downloader/ng1$a;->x:Z

    .line 11
    invoke-interface {v0}, Lcom/shabakaty/downloader/y64;->isEmpty()Z

    move-result v11

    .line 12
    invoke-virtual {p0, v10, v11, v1}, Lcom/shabakaty/downloader/ng1$a;->h(ZZLcom/shabakaty/downloader/ef4;)Z

    move-result v10

    if-eqz v10, :cond_6

    return-void

    :cond_6
    cmp-long v10, v8, v6

    if-eqz v10, :cond_7

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v10, v4, v6

    if-eqz v10, :cond_7

    .line 13
    iget-object v4, p0, Lcom/shabakaty/downloader/ng1$a;->z:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v5, v8

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_7
    neg-int v3, v3

    .line 14
    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_0

    :cond_8
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ng1$a;->s:Lcom/shabakaty/downloader/x64;

    invoke-interface {v0}, Lcom/shabakaty/downloader/y64;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public j()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ng1$a;->s:Lcom/shabakaty/downloader/x64;

    invoke-interface {v0}, Lcom/shabakaty/downloader/x64;->j()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public u(J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ng1$a;->A:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/pf4;->E(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ng1$a;->z:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lcom/shabakaty/downloader/nl6;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ng1$a;->i()V

    :cond_0
    return-void
.end method
