.class public final Lcom/shabakaty/downloader/sl;
.super Lcom/shabakaty/downloader/ze4;
.source "BehaviorSubject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/sl$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/ze4<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final x:[Ljava/lang/Object;

.field public static final y:[Lcom/shabakaty/downloader/sl$a;

.field public static final z:[Lcom/shabakaty/downloader/sl$a;


# instance fields
.field public final r:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/subjects/BehaviorSubject$BehaviorDisposable<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final t:Ljava/util/concurrent/locks/Lock;

.field public final u:Ljava/util/concurrent/locks/Lock;

.field public final v:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public w:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    sput-object v1, Lcom/shabakaty/downloader/sl;->x:[Ljava/lang/Object;

    new-array v1, v0, [Lcom/shabakaty/downloader/sl$a;

    .line 2
    sput-object v1, Lcom/shabakaty/downloader/sl;->y:[Lcom/shabakaty/downloader/sl$a;

    new-array v0, v0, [Lcom/shabakaty/downloader/sl$a;

    .line 3
    sput-object v0, Lcom/shabakaty/downloader/sl;->z:[Lcom/shabakaty/downloader/sl$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/ze4;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/sl;->t:Ljava/util/concurrent/locks/Lock;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/sl;->u:Ljava/util/concurrent/locks/Lock;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/shabakaty/downloader/sl;->y:[Lcom/shabakaty/downloader/sl$a;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/sl;->s:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/sl;->r:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/sl;->v:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static m(Ljava/lang/Object;)Lcom/shabakaty/downloader/sl;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/shabakaty/downloader/sl<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/sl;

    .line 2
    invoke-direct {v0}, Lcom/shabakaty/downloader/sl;-><init>()V

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/sl;->r:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v2, "defaultValue is null"

    .line 4
    invoke-static {p0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sl;->v:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/shabakaty/downloader/d61;->a:Ljava/lang/Throwable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/w03;->r:Lcom/shabakaty/downloader/w03;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/sl;->s:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/shabakaty/downloader/sl;->z:[Lcom/shabakaty/downloader/sl$a;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/shabakaty/downloader/sl$a;

    if-eq v1, v2, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/sl;->o(Ljava/lang/Object;)V

    .line 5
    :cond_1
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 6
    iget-wide v5, p0, Lcom/shabakaty/downloader/sl;->w:J

    invoke-virtual {v4, v0, v5, v6}, Lcom/shabakaty/downloader/sl$a;->b(Ljava/lang/Object;J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 6

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/sl;->v:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/w03$a;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/w03$a;-><init>(Ljava/lang/Throwable;)V

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/sl;->s:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/shabakaty/downloader/sl;->z:[Lcom/shabakaty/downloader/sl$a;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/shabakaty/downloader/sl$a;

    if-eq p1, v1, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/sl;->o(Ljava/lang/Object;)V

    .line 7
    :cond_1
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 8
    iget-wide v4, p0, Lcom/shabakaty/downloader/sl;->w:J

    invoke-virtual {v3, v0, v4, v5}, Lcom/shabakaty/downloader/sl$a;->b(Ljava/lang/Object;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public c(Lcom/shabakaty/downloader/mu0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sl;->v:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/mu0;->h()V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/sl;->v:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/sl;->o(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/sl;->s:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/sl$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 5
    iget-wide v4, p0, Lcom/shabakaty/downloader/sl;->w:J

    invoke-virtual {v3, p1, v4, v5}, Lcom/shabakaty/downloader/sl$a;->b(Ljava/lang/Object;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public j(Lcom/shabakaty/downloader/q53;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/q53<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/sl$a;

    invoke-direct {v0, p1, p0}, Lcom/shabakaty/downloader/sl$a;-><init>(Lcom/shabakaty/downloader/q53;Lcom/shabakaty/downloader/sl;)V

    .line 2
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/q53;->c(Lcom/shabakaty/downloader/mu0;)V

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/sl;->s:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/shabakaty/downloader/sl$a;

    .line 4
    sget-object v2, Lcom/shabakaty/downloader/sl;->z:[Lcom/shabakaty/downloader/sl$a;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 5
    :cond_1
    array-length v2, v1

    add-int/lit8 v5, v2, 0x1

    .line 6
    new-array v5, v5, [Lcom/shabakaty/downloader/sl$a;

    .line 7
    invoke-static {v1, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    aput-object v0, v5, v2

    .line 9
    iget-object v2, p0, Lcom/shabakaty/downloader/sl;->s:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_d

    .line 10
    iget-boolean p1, v0, Lcom/shabakaty/downloader/sl$a;->x:Z

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/sl;->n(Lcom/shabakaty/downloader/sl$a;)V

    goto/16 :goto_6

    .line 12
    :cond_2
    iget-boolean p1, v0, Lcom/shabakaty/downloader/sl$a;->x:Z

    if-eqz p1, :cond_3

    goto/16 :goto_6

    .line 13
    :cond_3
    monitor-enter v0

    .line 14
    :try_start_0
    iget-boolean p1, v0, Lcom/shabakaty/downloader/sl$a;->x:Z

    if-eqz p1, :cond_4

    .line 15
    monitor-exit v0

    goto/16 :goto_6

    .line 16
    :cond_4
    iget-boolean p1, v0, Lcom/shabakaty/downloader/sl$a;->t:Z

    if-eqz p1, :cond_5

    .line 17
    monitor-exit v0

    goto/16 :goto_6

    .line 18
    :cond_5
    iget-object p1, v0, Lcom/shabakaty/downloader/sl$a;->s:Lcom/shabakaty/downloader/sl;

    .line 19
    iget-object v1, p1, Lcom/shabakaty/downloader/sl;->t:Ljava/util/concurrent/locks/Lock;

    .line 20
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 21
    iget-wide v5, p1, Lcom/shabakaty/downloader/sl;->w:J

    iput-wide v5, v0, Lcom/shabakaty/downloader/sl$a;->y:J

    .line 22
    iget-object p1, p1, Lcom/shabakaty/downloader/sl;->r:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    .line 23
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    .line 24
    :goto_1
    iput-boolean v1, v0, Lcom/shabakaty/downloader/sl$a;->u:Z

    .line 25
    iput-boolean v4, v0, Lcom/shabakaty/downloader/sl$a;->t:Z

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_f

    .line 27
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/sl$a;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_6

    .line 28
    :cond_7
    :goto_2
    iget-boolean p1, v0, Lcom/shabakaty/downloader/sl$a;->x:Z

    if-eqz p1, :cond_8

    goto :goto_6

    .line 29
    :cond_8
    monitor-enter v0

    .line 30
    :try_start_1
    iget-object p1, v0, Lcom/shabakaty/downloader/sl$a;->v:Lcom/shabakaty/downloader/wb;

    if-nez p1, :cond_9

    .line 31
    iput-boolean v3, v0, Lcom/shabakaty/downloader/sl$a;->u:Z

    .line 32
    monitor-exit v0

    goto :goto_6

    :cond_9
    const/4 v1, 0x0

    .line 33
    iput-object v1, v0, Lcom/shabakaty/downloader/sl$a;->v:Lcom/shabakaty/downloader/wb;

    .line 34
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    iget-object p1, p1, Lcom/shabakaty/downloader/wb;->a:[Ljava/lang/Object;

    const/4 v1, 0x4

    :goto_3
    if-eqz p1, :cond_7

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_c

    .line 36
    aget-object v4, p1, v2

    if-nez v4, :cond_a

    goto :goto_5

    .line 37
    :cond_a
    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/sl$a;->a(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_2

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 38
    :cond_c
    :goto_5
    aget-object p1, p1, v1

    check-cast p1, [Ljava/lang/Object;

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 39
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 40
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 41
    :cond_d
    iget-object v0, p0, Lcom/shabakaty/downloader/sl;->v:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 42
    sget-object v1, Lcom/shabakaty/downloader/d61;->a:Ljava/lang/Throwable;

    if-ne v0, v1, :cond_e

    .line 43
    invoke-interface {p1}, Lcom/shabakaty/downloader/q53;->a()V

    goto :goto_6

    .line 44
    :cond_e
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/q53;->b(Ljava/lang/Throwable;)V

    :cond_f
    :goto_6
    return-void
.end method

.method public n(Lcom/shabakaty/downloader/sl$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/sl$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/sl;->s:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/sl$a;

    .line 2
    array-length v1, v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 3
    aget-object v4, v0, v3

    if-ne v4, p1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, -0x1

    :goto_1
    if-gez v3, :cond_4

    return-void

    :cond_4
    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/sl;->y:[Lcom/shabakaty/downloader/sl$a;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 5
    new-array v5, v5, [Lcom/shabakaty/downloader/sl$a;

    .line 6
    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v3, 0x1

    sub-int/2addr v1, v3

    sub-int/2addr v1, v4

    .line 7
    invoke-static {v0, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 8
    :goto_2
    iget-object v2, p0, Lcom/shabakaty/downloader/sl;->s:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public o(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sl;->u:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    iget-wide v0, p0, Lcom/shabakaty/downloader/sl;->w:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/sl;->w:J

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/sl;->r:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/sl;->u:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method
