.class public abstract Lcom/shabakaty/downloader/r51;
.super Lcom/shabakaty/downloader/s51;
.source "EventLoop.common.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tp0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/r51$b;,
        Lcom/shabakaty/downloader/r51$a;,
        Lcom/shabakaty/downloader/r51$c;
    }
.end annotation


# static fields
.field public static final synthetic v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic w:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _delayed:Ljava/lang/Object;

.field private volatile synthetic _isCompleted:I

.field private volatile synthetic _queue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-class v1, Lcom/shabakaty/downloader/r51;

    const-string v2, "_queue"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Lcom/shabakaty/downloader/r51;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "_delayed"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/r51;->w:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/s51;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/r51;->_queue:Ljava/lang/Object;

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/r51;->_delayed:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/shabakaty/downloader/r51;->_isCompleted:I

    return-void
.end method


# virtual methods
.method public final d0(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/r51;->l0(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s51;->c0()Ljava/lang/Thread;

    move-result-object p1

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 4
    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/yn0;->y:Lcom/shabakaty/downloader/yn0;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/r51;->d0(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public f(JLcom/shabakaty/downloader/fv;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/shabakaty/downloader/fv<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/t51;->a:Lcom/shabakaty/downloader/j61;

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide v0, 0x8637bd05af6L

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    const-wide/32 v0, 0xf4240

    mul-long v0, v0, p1

    :goto_0
    const-wide p1, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v2, v0, p1

    if-gez v2, :cond_2

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/r51$a;

    add-long/2addr v0, p1

    invoke-direct {v2, p0, v0, v1, p3}, Lcom/shabakaty/downloader/r51$a;-><init>(Lcom/shabakaty/downloader/r51;JLcom/shabakaty/downloader/fv;)V

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/wu;

    invoke-direct {v0, v2}, Lcom/shabakaty/downloader/wu;-><init>(Lcom/shabakaty/downloader/ou0;)V

    invoke-interface {p3, v0}, Lcom/shabakaty/downloader/fv;->q(Lcom/shabakaty/downloader/tm1;)V

    .line 5
    invoke-virtual {p0, p1, p2, v2}, Lcom/shabakaty/downloader/r51;->u0(JLcom/shabakaty/downloader/r51$b;)V

    :cond_2
    return-void
.end method

.method public final g(Lcom/shabakaty/downloader/me0;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/r51;->d0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final l0(Ljava/lang/Runnable;)Z
    .locals 5

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/r51;->_queue:Ljava/lang/Object;

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/r51;->_isCompleted:I

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/r51;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 4
    :cond_2
    instance-of v3, v0, Lcom/shabakaty/downloader/ek2;

    if-eqz v3, :cond_6

    .line 5
    move-object v3, v0

    check-cast v3, Lcom/shabakaty/downloader/ek2;

    invoke-virtual {v3, p1}, Lcom/shabakaty/downloader/ek2;->a(Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_5

    if-eq v4, v1, :cond_4

    const/4 v0, 0x2

    if-eq v4, v0, :cond_3

    goto :goto_0

    :cond_3
    return v2

    .line 6
    :cond_4
    sget-object v1, Lcom/shabakaty/downloader/r51;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/ek2;->e()Lcom/shabakaty/downloader/ek2;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return v1

    .line 7
    :cond_6
    sget-object v3, Lcom/shabakaty/downloader/t51;->b:Lcom/shabakaty/downloader/j61;

    if-ne v0, v3, :cond_7

    return v2

    .line 8
    :cond_7
    new-instance v2, Lcom/shabakaty/downloader/ek2;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v1}, Lcom/shabakaty/downloader/ek2;-><init>(IZ)V

    .line 9
    move-object v3, v0

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/ek2;->a(Ljava/lang/Object;)I

    .line 10
    invoke-virtual {v2, p1}, Lcom/shabakaty/downloader/ek2;->a(Ljava/lang/Object;)I

    .line 11
    sget-object v3, Lcom/shabakaty/downloader/r51;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1
.end method

.method public o0()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/q51;->u:Lcom/shabakaty/downloader/yu0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget v3, v0, Lcom/shabakaty/downloader/yu0;->b:I

    iget v0, v0, Lcom/shabakaty/downloader/yu0;->c:I

    if-ne v3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    return v2

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/r51;->_delayed:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/r51$c;

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cn4;->c()Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/r51;->_queue:Ljava/lang/Object;

    if-nez v0, :cond_4

    goto :goto_2

    .line 6
    :cond_4
    instance-of v3, v0, Lcom/shabakaty/downloader/ek2;

    if-eqz v3, :cond_5

    check-cast v0, Lcom/shabakaty/downloader/ek2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ek2;->d()Z

    move-result v1

    goto :goto_2

    .line 7
    :cond_5
    sget-object v3, Lcom/shabakaty/downloader/t51;->b:Lcom/shabakaty/downloader/j61;

    if-ne v0, v3, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public p0()J
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/q51;->Z()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/r51;->_delayed:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/r51$c;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_5

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cn4;->c()Z

    move-result v6

    if-nez v6, :cond_5

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 5
    :goto_0
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cn4;->b()Lcom/shabakaty/downloader/dn4;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 7
    check-cast v8, Lcom/shabakaty/downloader/r51$b;

    .line 8
    iget-wide v9, v8, Lcom/shabakaty/downloader/r51$b;->t:J

    sub-long v9, v6, v9

    cmp-long v11, v9, v1

    if-ltz v11, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_2

    .line 9
    invoke-virtual {p0, v8}, Lcom/shabakaty/downloader/r51;->l0(Ljava/lang/Runnable;)Z

    move-result v8

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_3

    .line 10
    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/cn4;->d(I)Lcom/shabakaty/downloader/dn4;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_3
    move-object v8, v4

    .line 11
    :goto_3
    monitor-exit v0

    goto :goto_4

    .line 12
    :cond_4
    monitor-exit v0

    move-object v8, v4

    .line 13
    :goto_4
    check-cast v8, Lcom/shabakaty/downloader/r51$b;

    if-eqz v8, :cond_5

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0

    throw v1

    .line 15
    :cond_5
    :goto_5
    iget-object v0, p0, Lcom/shabakaty/downloader/r51;->_queue:Ljava/lang/Object;

    if-nez v0, :cond_6

    goto :goto_6

    .line 16
    :cond_6
    instance-of v6, v0, Lcom/shabakaty/downloader/ek2;

    if-eqz v6, :cond_8

    .line 17
    move-object v6, v0

    check-cast v6, Lcom/shabakaty/downloader/ek2;

    invoke-virtual {v6}, Lcom/shabakaty/downloader/ek2;->f()Ljava/lang/Object;

    move-result-object v7

    .line 18
    sget-object v8, Lcom/shabakaty/downloader/ek2;->g:Lcom/shabakaty/downloader/j61;

    if-eq v7, v8, :cond_7

    move-object v4, v7

    check-cast v4, Ljava/lang/Runnable;

    goto :goto_6

    .line 19
    :cond_7
    sget-object v7, Lcom/shabakaty/downloader/r51;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v6}, Lcom/shabakaty/downloader/ek2;->e()Lcom/shabakaty/downloader/ek2;

    move-result-object v6

    invoke-virtual {v7, p0, v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_5

    .line 20
    :cond_8
    sget-object v6, Lcom/shabakaty/downloader/t51;->b:Lcom/shabakaty/downloader/j61;

    if-ne v0, v6, :cond_9

    goto :goto_6

    .line 21
    :cond_9
    sget-object v6, Lcom/shabakaty/downloader/r51;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v6, p0, v0, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v4, v0

    check-cast v4, Ljava/lang/Runnable;

    :goto_6
    if-eqz v4, :cond_a

    .line 22
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    return-wide v1

    .line 23
    :cond_a
    iget-object v0, p0, Lcom/shabakaty/downloader/q51;->u:Lcom/shabakaty/downloader/yu0;

    const-wide v6, 0x7fffffffffffffffL

    if-eqz v0, :cond_d

    .line 24
    iget v4, v0, Lcom/shabakaty/downloader/yu0;->b:I

    iget v0, v0, Lcom/shabakaty/downloader/yu0;->c:I

    if-ne v4, v0, :cond_b

    goto :goto_7

    :cond_b
    const/4 v3, 0x0

    :goto_7
    if-eqz v3, :cond_c

    goto :goto_8

    :cond_c
    move-wide v3, v1

    goto :goto_9

    :cond_d
    :goto_8
    move-wide v3, v6

    :goto_9
    cmp-long v0, v3, v1

    if-nez v0, :cond_e

    goto :goto_b

    .line 25
    :cond_e
    iget-object v0, p0, Lcom/shabakaty/downloader/r51;->_queue:Ljava/lang/Object;

    if-nez v0, :cond_f

    goto :goto_a

    .line 26
    :cond_f
    instance-of v3, v0, Lcom/shabakaty/downloader/ek2;

    if-eqz v3, :cond_12

    check-cast v0, Lcom/shabakaty/downloader/ek2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ek2;->d()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_b

    .line 27
    :cond_10
    :goto_a
    iget-object v0, p0, Lcom/shabakaty/downloader/r51;->_delayed:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/r51$c;

    if-eqz v0, :cond_13

    .line 28
    monitor-enter v0

    .line 29
    :try_start_1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cn4;->b()Lcom/shabakaty/downloader/dn4;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    .line 30
    check-cast v3, Lcom/shabakaty/downloader/r51$b;

    if-eqz v3, :cond_13

    .line 31
    iget-wide v3, v3, Lcom/shabakaty/downloader/r51$b;->t:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-gez v0, :cond_11

    goto :goto_b

    :cond_11
    move-wide v1, v3

    goto :goto_b

    :catchall_1
    move-exception v1

    .line 32
    monitor-exit v0

    throw v1

    .line 33
    :cond_12
    sget-object v3, Lcom/shabakaty/downloader/t51;->b:Lcom/shabakaty/downloader/j61;

    if-ne v0, v3, :cond_14

    :cond_13
    move-wide v1, v6

    :cond_14
    :goto_b
    return-wide v1
.end method

.method public final q0()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/shabakaty/downloader/r51;->_queue:Ljava/lang/Object;

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/r51;->_delayed:Ljava/lang/Object;

    return-void
.end method

.method public shutdown()V
    .locals 5

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/an4;->b:Lcom/shabakaty/downloader/an4;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/an4;->a:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/r51;->_isCompleted:I

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/shabakaty/downloader/r51;->_queue:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 5
    sget-object v2, Lcom/shabakaty/downloader/r51;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 6
    sget-object v3, Lcom/shabakaty/downloader/t51;->b:Lcom/shabakaty/downloader/j61;

    .line 7
    invoke-virtual {v2, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 8
    :cond_1
    instance-of v3, v2, Lcom/shabakaty/downloader/ek2;

    if-eqz v3, :cond_2

    .line 9
    check-cast v2, Lcom/shabakaty/downloader/ek2;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/ek2;->b()Z

    goto :goto_0

    .line 10
    :cond_2
    sget-object v3, Lcom/shabakaty/downloader/t51;->b:Lcom/shabakaty/downloader/j61;

    if-ne v2, v3, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    new-instance v3, Lcom/shabakaty/downloader/ek2;

    const/16 v4, 0x8

    invoke-direct {v3, v4, v0}, Lcom/shabakaty/downloader/ek2;-><init>(IZ)V

    .line 12
    move-object v4, v2

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/ek2;->a(Ljava/lang/Object;)I

    .line 13
    sget-object v4, Lcom/shabakaty/downloader/r51;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14
    :goto_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/r51;->p0()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_4

    goto :goto_0

    .line 15
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 16
    :goto_1
    iget-object v2, p0, Lcom/shabakaty/downloader/r51;->_delayed:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/r51$c;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/shabakaty/downloader/cn4;->e()Lcom/shabakaty/downloader/dn4;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/r51$b;

    if-eqz v2, :cond_5

    .line 17
    sget-object v3, Lcom/shabakaty/downloader/yn0;->y:Lcom/shabakaty/downloader/yn0;

    invoke-virtual {v3, v0, v1, v2}, Lcom/shabakaty/downloader/r51;->u0(JLcom/shabakaty/downloader/r51$b;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final u0(JLcom/shabakaty/downloader/r51$b;)V
    .locals 12

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/r51;->_isCompleted:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/r51;->_delayed:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/r51$c;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Lcom/shabakaty/downloader/r51;->w:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v5, Lcom/shabakaty/downloader/r51$c;

    invoke-direct {v5, p1, p2}, Lcom/shabakaty/downloader/r51$c;-><init>(J)V

    invoke-virtual {v0, p0, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/r51;->_delayed:Ljava/lang/Object;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    check-cast v0, Lcom/shabakaty/downloader/r51$c;

    .line 5
    :goto_0
    monitor-enter p3

    .line 6
    :try_start_0
    iget-object v5, p3, Lcom/shabakaty/downloader/r51$b;->r:Ljava/lang/Object;

    .line 7
    sget-object v6, Lcom/shabakaty/downloader/t51;->a:Lcom/shabakaty/downloader/j61;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-ne v5, v6, :cond_2

    .line 8
    monitor-exit p3

    const/4 v0, 0x2

    goto :goto_3

    .line 9
    :cond_2
    :try_start_1
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 10
    :try_start_2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cn4;->b()Lcom/shabakaty/downloader/dn4;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/r51$b;

    .line 11
    iget v6, p0, Lcom/shabakaty/downloader/r51;->_isCompleted:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v6, :cond_3

    .line 12
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p3

    :goto_1
    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const-wide/16 v6, 0x0

    if-nez v5, :cond_4

    .line 13
    :try_start_4
    iput-wide p1, v0, Lcom/shabakaty/downloader/r51$c;->b:J

    goto :goto_2

    .line 14
    :cond_4
    iget-wide v8, v5, Lcom/shabakaty/downloader/r51$b;->t:J

    sub-long v10, v8, p1

    cmp-long v5, v10, v6

    if-ltz v5, :cond_5

    move-wide v8, p1

    .line 15
    :cond_5
    iget-wide v10, v0, Lcom/shabakaty/downloader/r51$c;->b:J

    sub-long v10, v8, v10

    cmp-long v5, v10, v6

    if-lez v5, :cond_6

    iput-wide v8, v0, Lcom/shabakaty/downloader/r51$c;->b:J

    .line 16
    :cond_6
    :goto_2
    iget-wide v8, p3, Lcom/shabakaty/downloader/r51$b;->t:J

    iget-wide v10, v0, Lcom/shabakaty/downloader/r51$c;->b:J

    sub-long/2addr v8, v10

    cmp-long v5, v8, v6

    if-gez v5, :cond_7

    iput-wide v10, p3, Lcom/shabakaty/downloader/r51$b;->t:J

    .line 17
    :cond_7
    invoke-virtual {v0, p3}, Lcom/shabakaty/downloader/cn4;->a(Lcom/shabakaty/downloader/dn4;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 18
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 19
    monitor-exit p3

    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_a

    if-eq v0, v3, :cond_9

    if-ne v0, v1, :cond_8

    goto :goto_5

    :cond_8
    const-string p1, "unexpected result"

    .line 20
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 21
    :cond_9
    sget-object v0, Lcom/shabakaty/downloader/yn0;->y:Lcom/shabakaty/downloader/yn0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shabakaty/downloader/r51;->u0(JLcom/shabakaty/downloader/r51$b;)V

    goto :goto_5

    .line 22
    :cond_a
    iget-object p1, p0, Lcom/shabakaty/downloader/r51;->_delayed:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/r51$c;

    if-eqz p1, :cond_b

    .line 23
    monitor-enter p1

    .line 24
    :try_start_6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/cn4;->b()Lcom/shabakaty/downloader/dn4;

    move-result-object p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p1

    .line 25
    move-object v4, p2

    check-cast v4, Lcom/shabakaty/downloader/r51$b;

    goto :goto_4

    :catchall_0
    move-exception p2

    .line 26
    monitor-exit p1

    throw p2

    :cond_b
    :goto_4
    if-ne v4, p3, :cond_c

    const/4 v2, 0x1

    :cond_c
    if-eqz v2, :cond_d

    .line 27
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s51;->c0()Ljava/lang/Thread;

    move-result-object p1

    .line 28
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    if-eq p2, p1, :cond_d

    .line 29
    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_d
    :goto_5
    return-void

    :catchall_1
    move-exception p1

    .line 30
    :try_start_7
    monitor-exit v0

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p3

    throw p1
.end method
