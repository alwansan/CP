.class public Lcom/shabakaty/downloader/l92;
.super Ljava/lang/Object;
.source "JobSupport.kt"

# interfaces
.implements Lcom/shabakaty/downloader/e92;
.implements Lcom/shabakaty/downloader/tz;
.implements Lcom/shabakaty/downloader/ga3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/l92$c;,
        Lcom/shabakaty/downloader/l92$b;,
        Lcom/shabakaty/downloader/l92$a;
    }
.end annotation


# static fields
.field public static final synthetic r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _parentHandle:Ljava/lang/Object;

.field private volatile synthetic _state:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/shabakaty/downloader/l92;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/l92;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/m92;->g:Lcom/shabakaty/downloader/o21;

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/m92;->f:Lcom/shabakaty/downloader/o21;

    .line 4
    :goto_0
    iput-object p1, p0, Lcom/shabakaty/downloader/l92;->_state:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/l92;->_parentHandle:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic j0(Lcom/shabakaty/downloader/l92;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;
    .locals 0

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/l92;->i0(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Lcom/shabakaty/downloader/tz2;Lcom/shabakaty/downloader/k92;)Z
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/l92$d;

    invoke-direct {v0, p3, p3, p0, p1}, Lcom/shabakaty/downloader/l92$d;-><init>(Lcom/shabakaty/downloader/ck2;Lcom/shabakaty/downloader/ck2;Lcom/shabakaty/downloader/l92;Ljava/lang/Object;)V

    .line 2
    :goto_0
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ck2;->q()Lcom/shabakaty/downloader/ck2;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p3, p2, v0}, Lcom/shabakaty/downloader/ck2;->v(Lcom/shabakaty/downloader/ck2;Lcom/shabakaty/downloader/ck2;Lcom/shabakaty/downloader/ck2$a;)I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return v1
.end method

.method public C(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final E(Ljava/lang/Object;)Z
    .locals 8

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/m92;->a:Lcom/shabakaty/downloader/j61;

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/l92;->Q()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/l92;->T()Ljava/lang/Object;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lcom/shabakaty/downloader/g02;

    if-eqz v1, :cond_2

    instance-of v1, v0, Lcom/shabakaty/downloader/l92$c;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/shabakaty/downloader/l92$c;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/l92$c;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v1, Lcom/shabakaty/downloader/i80;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/l92;->N(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v1, v5, v3, v2}, Lcom/shabakaty/downloader/i80;-><init>(Ljava/lang/Throwable;ZI)V

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/l92;->k0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    sget-object v1, Lcom/shabakaty/downloader/m92;->c:Lcom/shabakaty/downloader/j61;

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    sget-object v0, Lcom/shabakaty/downloader/m92;->a:Lcom/shabakaty/downloader/j61;

    .line 9
    :goto_1
    sget-object v1, Lcom/shabakaty/downloader/m92;->b:Lcom/shabakaty/downloader/j61;

    if-ne v0, v1, :cond_3

    return v4

    .line 10
    :cond_3
    sget-object v1, Lcom/shabakaty/downloader/m92;->a:Lcom/shabakaty/downloader/j61;

    if-ne v0, v1, :cond_13

    const/4 v0, 0x0

    move-object v1, v0

    .line 11
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/l92;->T()Ljava/lang/Object;

    move-result-object v4

    .line 12
    instance-of v5, v4, Lcom/shabakaty/downloader/l92$c;

    if-eqz v5, :cond_b

    .line 13
    monitor-enter v4

    .line 14
    :try_start_0
    move-object v2, v4

    check-cast v2, Lcom/shabakaty/downloader/l92$c;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/l92$c;->h()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 15
    sget-object p1, Lcom/shabakaty/downloader/m92;->d:Lcom/shabakaty/downloader/j61;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit v4

    goto/16 :goto_7

    .line 17
    :cond_5
    :try_start_1
    move-object v2, v4

    check-cast v2, Lcom/shabakaty/downloader/l92$c;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/l92$c;->f()Z

    move-result v2

    if-nez p1, :cond_6

    if-nez v2, :cond_8

    :cond_6
    if-eqz v1, :cond_7

    goto :goto_3

    .line 18
    :cond_7
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/l92;->N(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 19
    :goto_3
    move-object p1, v4

    check-cast p1, Lcom/shabakaty/downloader/l92$c;

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/l92$c;->a(Ljava/lang/Throwable;)V

    .line 20
    :cond_8
    move-object p1, v4

    check-cast p1, Lcom/shabakaty/downloader/l92$c;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/l92$c;->d()Ljava/lang/Throwable;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/lit8 v1, v2, 0x1

    if-eqz v1, :cond_9

    move-object v0, p1

    :cond_9
    monitor-exit v4

    if-eqz v0, :cond_a

    .line 21
    check-cast v4, Lcom/shabakaty/downloader/l92$c;

    .line 22
    iget-object p1, v4, Lcom/shabakaty/downloader/l92$c;->r:Lcom/shabakaty/downloader/tz2;

    .line 23
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/l92;->c0(Lcom/shabakaty/downloader/tz2;Ljava/lang/Throwable;)V

    .line 24
    :cond_a
    sget-object p1, Lcom/shabakaty/downloader/m92;->a:Lcom/shabakaty/downloader/j61;

    goto :goto_7

    :catchall_0
    move-exception p1

    .line 25
    monitor-exit v4

    throw p1

    .line 26
    :cond_b
    instance-of v5, v4, Lcom/shabakaty/downloader/g02;

    if-eqz v5, :cond_12

    if-eqz v1, :cond_c

    goto :goto_4

    .line 27
    :cond_c
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/l92;->N(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 28
    :goto_4
    move-object v5, v4

    check-cast v5, Lcom/shabakaty/downloader/g02;

    invoke-interface {v5}, Lcom/shabakaty/downloader/g02;->c()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 29
    invoke-virtual {p0, v5}, Lcom/shabakaty/downloader/l92;->R(Lcom/shabakaty/downloader/g02;)Lcom/shabakaty/downloader/tz2;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 30
    new-instance v6, Lcom/shabakaty/downloader/l92$c;

    invoke-direct {v6, v4, v3, v1}, Lcom/shabakaty/downloader/l92$c;-><init>(Lcom/shabakaty/downloader/tz2;ZLjava/lang/Throwable;)V

    .line 31
    sget-object v7, Lcom/shabakaty/downloader/l92;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v7, p0, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_5

    .line 32
    :cond_d
    invoke-virtual {p0, v4, v1}, Lcom/shabakaty/downloader/l92;->c0(Lcom/shabakaty/downloader/tz2;Ljava/lang/Throwable;)V

    const/4 v4, 0x1

    goto :goto_6

    :cond_e
    :goto_5
    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_4

    .line 33
    sget-object p1, Lcom/shabakaty/downloader/m92;->a:Lcom/shabakaty/downloader/j61;

    goto :goto_7

    .line 34
    :cond_f
    new-instance v5, Lcom/shabakaty/downloader/i80;

    invoke-direct {v5, v1, v3, v2}, Lcom/shabakaty/downloader/i80;-><init>(Ljava/lang/Throwable;ZI)V

    invoke-virtual {p0, v4, v5}, Lcom/shabakaty/downloader/l92;->k0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 35
    sget-object v6, Lcom/shabakaty/downloader/m92;->a:Lcom/shabakaty/downloader/j61;

    if-eq v5, v6, :cond_11

    .line 36
    sget-object v4, Lcom/shabakaty/downloader/m92;->c:Lcom/shabakaty/downloader/j61;

    if-ne v5, v4, :cond_10

    goto/16 :goto_2

    :cond_10
    move-object v0, v5

    goto :goto_8

    :cond_11
    const-string p1, "Cannot happen in "

    .line 37
    invoke-static {p1, v4}, Lcom/shabakaty/downloader/c50;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_12
    sget-object p1, Lcom/shabakaty/downloader/m92;->d:Lcom/shabakaty/downloader/j61;

    :goto_7
    move-object v0, p1

    .line 39
    :cond_13
    :goto_8
    sget-object p1, Lcom/shabakaty/downloader/m92;->a:Lcom/shabakaty/downloader/j61;

    if-ne v0, p1, :cond_14

    goto :goto_9

    .line 40
    :cond_14
    sget-object p1, Lcom/shabakaty/downloader/m92;->b:Lcom/shabakaty/downloader/j61;

    if-ne v0, p1, :cond_15

    goto :goto_9

    .line 41
    :cond_15
    sget-object p1, Lcom/shabakaty/downloader/m92;->d:Lcom/shabakaty/downloader/j61;

    if-ne v0, p1, :cond_16

    goto :goto_a

    .line 42
    :cond_16
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/l92;->C(Ljava/lang/Object;)V

    :goto_9
    const/4 v3, 0x1

    :goto_a
    return v3
.end method

.method public F(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/l92;->E(Ljava/lang/Object;)Z

    return-void
.end method

.method public final G(Ljava/lang/Throwable;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/l92;->X()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/l92;->_parentHandle:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/qz;

    if-eqz v2, :cond_4

    .line 4
    sget-object v3, Lcom/shabakaty/downloader/wz2;->r:Lcom/shabakaty/downloader/wz2;

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-interface {v2, p1}, Lcom/shabakaty/downloader/qz;->n(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    return v0
.end method

.method public H()Ljava/lang/String;
    .locals 1

    const-string v0, "Job was cancelled"

    return-object v0
.end method

.method public I(Ljava/lang/Throwable;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/l92;->E(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/l92;->P()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public K()Ljava/util/concurrent/CancellationException;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/l92;->T()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/shabakaty/downloader/l92$c;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/shabakaty/downloader/l92$c;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/l92$c;->d()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    .line 3
    :cond_0
    instance-of v1, v0, Lcom/shabakaty/downloader/i80;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/shabakaty/downloader/i80;

    iget-object v1, v1, Lcom/shabakaty/downloader/i80;->a:Ljava/lang/Throwable;

    goto :goto_0

    .line 4
    :cond_1
    instance-of v1, v0, Lcom/shabakaty/downloader/g02;

    if-nez v1, :cond_4

    move-object v1, v2

    .line 5
    :goto_0
    instance-of v3, v1, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    check-cast v2, Ljava/util/concurrent/CancellationException;

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance v2, Lcom/shabakaty/downloader/f92;

    const-string v3, "Parent job is "

    invoke-static {v3}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/l92;->h0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1, p0}, Lcom/shabakaty/downloader/f92;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/shabakaty/downloader/e92;)V

    :goto_2
    return-object v2

    :cond_4
    const-string v1, "Cannot be cancelling child in this state: "

    .line 6
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/c50;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final L()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/l92;->T()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/shabakaty/downloader/g02;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final M(Lcom/shabakaty/downloader/g02;Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/l92;->_parentHandle:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/qz;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/shabakaty/downloader/ou0;->h()V

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/wz2;->r:Lcom/shabakaty/downloader/wz2;

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/l92;->_parentHandle:Ljava/lang/Object;

    .line 5
    :cond_0
    instance-of v0, p2, Lcom/shabakaty/downloader/i80;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object p2, v1

    :cond_1
    check-cast p2, Lcom/shabakaty/downloader/i80;

    if-eqz p2, :cond_2

    iget-object p2, p2, Lcom/shabakaty/downloader/i80;->a:Ljava/lang/Throwable;

    goto :goto_0

    :cond_2
    move-object p2, v1

    .line 6
    :goto_0
    instance-of v0, p1, Lcom/shabakaty/downloader/k92;

    const-string v2, " for "

    const-string v3, "Exception in completion handler "

    if-eqz v0, :cond_3

    .line 7
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/k92;

    invoke-virtual {v0, p2}, Lcom/shabakaty/downloader/k80;->w(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p2

    .line 8
    new-instance v0, Lcom/shabakaty/downloader/l80;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/shabakaty/downloader/l80;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/l92;->V(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 9
    :cond_3
    invoke-interface {p1}, Lcom/shabakaty/downloader/g02;->e()Lcom/shabakaty/downloader/tz2;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 10
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ck2;->l()Ljava/lang/Object;

    move-result-object v0

    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ck2;

    .line 11
    :goto_1
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_6

    .line 12
    instance-of v4, v0, Lcom/shabakaty/downloader/k92;

    if-eqz v4, :cond_5

    move-object v4, v0

    check-cast v4, Lcom/shabakaty/downloader/k92;

    .line 13
    :try_start_1
    invoke-virtual {v4, p2}, Lcom/shabakaty/downloader/k80;->w(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v5

    if-eqz v1, :cond_4

    .line 14
    invoke-static {v1, v5}, Lcom/shabakaty/downloader/kf5;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 15
    :cond_4
    new-instance v1, Lcom/shabakaty/downloader/l80;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v5}, Lcom/shabakaty/downloader/l80;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    :cond_5
    :goto_2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ck2;->m()Lcom/shabakaty/downloader/ck2;

    move-result-object v0

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_7

    .line 17
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/l92;->V(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public final N(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    instance-of v0, p1, Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Throwable;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/f92;

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/l92;->H()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-direct {v0, v1, p1, p0}, Lcom/shabakaty/downloader/f92;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/shabakaty/downloader/e92;)V

    move-object p1, v0

    goto :goto_1

    :cond_2
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob"

    .line 5
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/ga3;

    invoke-interface {p1}, Lcom/shabakaty/downloader/ga3;->K()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final O(Lcom/shabakaty/downloader/l92$c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p2, Lcom/shabakaty/downloader/i80;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    check-cast v0, Lcom/shabakaty/downloader/i80;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/shabakaty/downloader/i80;->a:Ljava/lang/Throwable;

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 2
    :goto_1
    monitor-enter p1

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/l92$c;->f()Z

    .line 4
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/l92$c;->i(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v2

    .line 5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/l92$c;->f()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 7
    new-instance v3, Lcom/shabakaty/downloader/f92;

    .line 8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/l92;->H()Ljava/lang/String;

    move-result-object v6

    .line 9
    invoke-direct {v3, v6, v1, p0}, Lcom/shabakaty/downloader/f92;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/shabakaty/downloader/e92;)V

    move-object v1, v3

    goto :goto_2

    .line 10
    :cond_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/Throwable;

    .line 11
    instance-of v7, v7, Ljava/util/concurrent/CancellationException;

    xor-int/2addr v7, v4

    if-eqz v7, :cond_3

    move-object v1, v6

    :cond_4
    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_5

    goto :goto_2

    .line 12
    :cond_5
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    :cond_6
    :goto_2
    if-eqz v1, :cond_9

    .line 13
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v4, :cond_7

    goto :goto_4

    .line 14
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 15
    new-instance v6, Ljava/util/IdentityHashMap;

    invoke-direct {v6, v3}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-static {v6}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v3

    .line 16
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Throwable;

    if-eq v6, v1, :cond_8

    if-eq v6, v1, :cond_8

    .line 17
    instance-of v7, v6, Ljava/util/concurrent/CancellationException;

    if-nez v7, :cond_8

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 18
    invoke-static {v1, v6}, Lcom/shabakaty/downloader/kf5;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 19
    :cond_9
    :goto_4
    monitor-exit p1

    if-nez v1, :cond_a

    goto :goto_5

    :cond_a
    if-ne v1, v0, :cond_b

    goto :goto_5

    .line 20
    :cond_b
    new-instance p2, Lcom/shabakaty/downloader/i80;

    const/4 v0, 0x2

    invoke-direct {p2, v1, v5, v0}, Lcom/shabakaty/downloader/i80;-><init>(Ljava/lang/Throwable;ZI)V

    :goto_5
    if-eqz v1, :cond_e

    .line 21
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/l92;->G(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/l92;->U(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_6

    :cond_c
    const/4 v0, 0x0

    goto :goto_7

    :cond_d
    :goto_6
    const/4 v0, 0x1

    :goto_7
    if-eqz v0, :cond_e

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally"

    .line 22
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/i80;

    .line 23
    sget-object v1, Lcom/shabakaty/downloader/i80;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, v0, v5, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 24
    :cond_e
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/l92;->d0(Ljava/lang/Object;)V

    .line 25
    sget-object v0, Lcom/shabakaty/downloader/l92;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 26
    instance-of v1, p2, Lcom/shabakaty/downloader/g02;

    if-eqz v1, :cond_f

    new-instance v1, Lcom/shabakaty/downloader/k02;

    move-object v2, p2

    check-cast v2, Lcom/shabakaty/downloader/g02;

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/k02;-><init>(Lcom/shabakaty/downloader/g02;)V

    goto :goto_8

    :cond_f
    move-object v1, p2

    .line 27
    :goto_8
    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/l92;->M(Lcom/shabakaty/downloader/g02;Ljava/lang/Object;)V

    return-object p2

    :catchall_0
    move-exception p2

    .line 29
    monitor-exit p1

    throw p2
.end method

.method public P()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public Q()Z
    .locals 0

    instance-of p0, p0, Lcom/shabakaty/downloader/u70;

    return p0
.end method

.method public final R(Lcom/shabakaty/downloader/g02;)Lcom/shabakaty/downloader/tz2;
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/g02;->e()Lcom/shabakaty/downloader/tz2;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p1, Lcom/shabakaty/downloader/o21;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/shabakaty/downloader/tz2;

    invoke-direct {v0}, Lcom/shabakaty/downloader/tz2;-><init>()V

    goto :goto_0

    .line 3
    :cond_1
    instance-of v0, p1, Lcom/shabakaty/downloader/k92;

    if-eqz v0, :cond_2

    .line 4
    check-cast p1, Lcom/shabakaty/downloader/k92;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/l92;->f0(Lcom/shabakaty/downloader/k92;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State should have list: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final S()Lcom/shabakaty/downloader/qz;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/l92;->_parentHandle:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/qz;

    return-object v0
.end method

.method public final T()Ljava/lang/Object;
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/l92;->_state:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lcom/shabakaty/downloader/u73;

    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    check-cast v0, Lcom/shabakaty/downloader/u73;

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/u73;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public U(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public V(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    throw p1
.end method

.method public final W(Lcom/shabakaty/downloader/e92;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/wz2;->r:Lcom/shabakaty/downloader/wz2;

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/l92;->_parentHandle:Ljava/lang/Object;

    return-void

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/e92;->start()Z

    .line 4
    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/e92;->t(Lcom/shabakaty/downloader/tz;)Lcom/shabakaty/downloader/qz;

    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/l92;->_parentHandle:Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/l92;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {p1}, Lcom/shabakaty/downloader/ou0;->h()V

    .line 8
    sget-object p1, Lcom/shabakaty/downloader/wz2;->r:Lcom/shabakaty/downloader/wz2;

    .line 9
    iput-object p1, p0, Lcom/shabakaty/downloader/l92;->_parentHandle:Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public X()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final Y(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/l92;->T()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/l92;->k0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/m92;->a:Lcom/shabakaty/downloader/j61;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    sget-object v1, Lcom/shabakaty/downloader/m92;->b:Lcom/shabakaty/downloader/j61;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    return v2

    .line 5
    :cond_1
    sget-object v1, Lcom/shabakaty/downloader/m92;->c:Lcom/shabakaty/downloader/j61;

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    return v2
.end method

.method public final Z(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/l92;->T()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/l92;->k0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/m92;->a:Lcom/shabakaty/downloader/j61;

    if-ne v0, v1, :cond_2

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Job "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already complete or completing, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "but is being completed with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    instance-of v2, p1, Lcom/shabakaty/downloader/i80;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object p1, v3

    :cond_0
    check-cast p1, Lcom/shabakaty/downloader/i80;

    if-eqz p1, :cond_1

    iget-object v3, p1, Lcom/shabakaty/downloader/i80;->a:Ljava/lang/Throwable;

    .line 8
    :cond_1
    invoke-direct {v0, v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 9
    :cond_2
    sget-object v1, Lcom/shabakaty/downloader/m92;->c:Lcom/shabakaty/downloader/j61;

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public a0()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/f92;

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/l92;->H()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-direct {v0, v1, p1, p0}, Lcom/shabakaty/downloader/f92;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/shabakaty/downloader/e92;)V

    move-object p1, v0

    .line 4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/l92;->F(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b0(Lcom/shabakaty/downloader/ck2;)Lcom/shabakaty/downloader/rz;
    .locals 1

    .line 1
    :goto_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ck2;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ck2;->q()Lcom/shabakaty/downloader/ck2;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ck2;->m()Lcom/shabakaty/downloader/ck2;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ck2;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    instance-of v0, p1, Lcom/shabakaty/downloader/rz;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/shabakaty/downloader/rz;

    return-object p1

    .line 5
    :cond_2
    instance-of v0, p1, Lcom/shabakaty/downloader/tz2;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1
.end method

.method public c()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/l92;->T()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/shabakaty/downloader/g02;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/shabakaty/downloader/g02;

    invoke-interface {v0}, Lcom/shabakaty/downloader/g02;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c0(Lcom/shabakaty/downloader/tz2;Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ck2;->l()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ck2;

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 3
    instance-of v2, v0, Lcom/shabakaty/downloader/g92;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/shabakaty/downloader/k92;

    .line 4
    :try_start_0
    invoke-virtual {v2, p2}, Lcom/shabakaty/downloader/k80;->w(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_0

    .line 5
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/kf5;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 6
    :cond_0
    new-instance v1, Lcom/shabakaty/downloader/l80;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in completion handler "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/shabakaty/downloader/l80;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ck2;->m()Lcom/shabakaty/downloader/ck2;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/l92;->V(Ljava/lang/Throwable;)V

    .line 9
    :cond_3
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/l92;->G(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final d(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/l92;->T()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/shabakaty/downloader/g02;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/l92;->g0(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    .line 4
    check-cast p1, Lcom/shabakaty/downloader/xd0;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/xd0;->s:Lcom/shabakaty/downloader/me0;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 6
    invoke-static {p1}, Lcom/shabakaty/downloader/bp;->f(Lcom/shabakaty/downloader/me0;)V

    .line 7
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1

    .line 8
    :cond_2
    new-instance v0, Lcom/shabakaty/downloader/gv;

    invoke-static {p1}, Lcom/shabakaty/downloader/he0;->q(Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;

    move-result-object p1

    invoke-direct {v0, p1, v3}, Lcom/shabakaty/downloader/gv;-><init>(Lcom/shabakaty/downloader/ud0;I)V

    .line 9
    invoke-virtual {v0}, Lcom/shabakaty/downloader/gv;->F()V

    .line 10
    new-instance p1, Lcom/shabakaty/downloader/y32;

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/y32;-><init>(Lcom/shabakaty/downloader/ud0;)V

    .line 11
    invoke-virtual {p0, v2, v3, p1}, Lcom/shabakaty/downloader/l92;->x(ZZLcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/ou0;

    move-result-object p1

    .line 12
    new-instance v1, Lcom/shabakaty/downloader/wu;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/wu;-><init>(Lcom/shabakaty/downloader/ou0;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/gv;->q(Lcom/shabakaty/downloader/tm1;)V

    .line 13
    invoke-virtual {v0}, Lcom/shabakaty/downloader/gv;->x()Ljava/lang/Object;

    move-result-object p1

    .line 14
    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    if-ne p1, v0, :cond_3

    return-object p1

    .line 15
    :cond_3
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method

.method public d0(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public e0()V
    .locals 0

    return-void
.end method

.method public final f0(Lcom/shabakaty/downloader/k92;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/tz2;

    invoke-direct {v0}, Lcom/shabakaty/downloader/tz2;-><init>()V

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/ck2;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/ck2;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ck2;->l()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    sget-object v1, Lcom/shabakaty/downloader/ck2;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ck2;->j(Lcom/shabakaty/downloader/ck2;)V

    .line 7
    :goto_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ck2;->m()Lcom/shabakaty/downloader/ck2;

    move-result-object v0

    .line 8
    sget-object v1, Lcom/shabakaty/downloader/l92;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public fold(Ljava/lang/Object;Lcom/shabakaty/downloader/hn1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lcom/shabakaty/downloader/hn1<",
            "-TR;-",
            "Lcom/shabakaty/downloader/me0$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/me0$b$a;->a(Lcom/shabakaty/downloader/me0$b;Ljava/lang/Object;Lcom/shabakaty/downloader/hn1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final g0(Ljava/lang/Object;)I
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/o21;

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/o21;

    .line 3
    iget-boolean v0, v0, Lcom/shabakaty/downloader/o21;->r:Z

    if-eqz v0, :cond_0

    return v3

    .line 4
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/l92;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 5
    sget-object v3, Lcom/shabakaty/downloader/m92;->g:Lcom/shabakaty/downloader/o21;

    .line 6
    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/l92;->e0()V

    return v2

    .line 8
    :cond_2
    instance-of v0, p1, Lcom/shabakaty/downloader/e02;

    if-eqz v0, :cond_4

    .line 9
    sget-object v0, Lcom/shabakaty/downloader/l92;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-object v3, p1

    check-cast v3, Lcom/shabakaty/downloader/e02;

    .line 10
    iget-object v3, v3, Lcom/shabakaty/downloader/e02;->r:Lcom/shabakaty/downloader/tz2;

    .line 11
    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    .line 12
    :cond_3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/l92;->e0()V

    return v2

    :cond_4
    return v3
.end method

.method public get(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/shabakaty/downloader/me0$b;",
            ">(",
            "Lcom/shabakaty/downloader/me0$c<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/me0$b$a;->b(Lcom/shabakaty/downloader/me0$b;Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0$b;

    move-result-object p1

    return-object p1
.end method

.method public final getKey()Lcom/shabakaty/downloader/me0$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/me0$c<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/e92;->h:Lcom/shabakaty/downloader/e92$b;

    return-object v0
.end method

.method public final h0(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/l92$c;

    const-string v1, "Active"

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/shabakaty/downloader/l92$c;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/l92$c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "Cancelling"

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/l92$c;->g()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string v1, "Completing"

    goto :goto_0

    .line 4
    :cond_1
    instance-of v0, p1, Lcom/shabakaty/downloader/g02;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/shabakaty/downloader/g02;

    invoke-interface {p1}, Lcom/shabakaty/downloader/g02;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "New"

    goto :goto_0

    .line 5
    :cond_3
    instance-of p1, p1, Lcom/shabakaty/downloader/i80;

    if-eqz p1, :cond_4

    const-string v1, "Cancelled"

    goto :goto_0

    :cond_4
    const-string v1, "Completed"

    :cond_5
    :goto_0
    return-object v1
.end method

.method public final i0(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/f92;

    if-eqz p2, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/l92;->H()Ljava/lang/String;

    move-result-object p2

    .line 4
    :goto_1
    invoke-direct {v0, p2, p1, p0}, Lcom/shabakaty/downloader/f92;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/shabakaty/downloader/e92;)V

    :goto_2
    return-object v0
.end method

.method public final isCancelled()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/l92;->T()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/shabakaty/downloader/i80;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/shabakaty/downloader/l92$c;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/shabakaty/downloader/l92$c;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/l92$c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final k(Lcom/shabakaty/downloader/ga3;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/l92;->E(Ljava/lang/Object;)Z

    return-void
.end method

.method public final k0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/g02;

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/m92;->a:Lcom/shabakaty/downloader/j61;

    return-object p1

    .line 3
    :cond_0
    instance-of v0, p1, Lcom/shabakaty/downloader/o21;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/shabakaty/downloader/k92;

    if-eqz v0, :cond_5

    :cond_1
    instance-of v0, p1, Lcom/shabakaty/downloader/rz;

    if-nez v0, :cond_5

    instance-of v0, p2, Lcom/shabakaty/downloader/i80;

    if-nez v0, :cond_5

    .line 4
    check-cast p1, Lcom/shabakaty/downloader/g02;

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/l92;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v3, Lcom/shabakaty/downloader/m92;->a:Lcom/shabakaty/downloader/j61;

    .line 6
    instance-of v3, p2, Lcom/shabakaty/downloader/g02;

    if-eqz v3, :cond_2

    new-instance v3, Lcom/shabakaty/downloader/k02;

    move-object v4, p2

    check-cast v4, Lcom/shabakaty/downloader/g02;

    invoke-direct {v3, v4}, Lcom/shabakaty/downloader/k02;-><init>(Lcom/shabakaty/downloader/g02;)V

    goto :goto_0

    :cond_2
    move-object v3, p2

    .line 7
    :goto_0
    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    .line 8
    :cond_3
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/l92;->d0(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/l92;->M(Lcom/shabakaty/downloader/g02;Ljava/lang/Object;)V

    :goto_1
    if-eqz v1, :cond_4

    return-object p2

    .line 10
    :cond_4
    sget-object p1, Lcom/shabakaty/downloader/m92;->c:Lcom/shabakaty/downloader/j61;

    return-object p1

    .line 11
    :cond_5
    check-cast p1, Lcom/shabakaty/downloader/g02;

    .line 12
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/l92;->R(Lcom/shabakaty/downloader/g02;)Lcom/shabakaty/downloader/tz2;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 13
    instance-of v3, p1, Lcom/shabakaty/downloader/l92$c;

    const/4 v4, 0x0

    if-nez v3, :cond_6

    move-object v3, v4

    goto :goto_2

    :cond_6
    move-object v3, p1

    :goto_2
    check-cast v3, Lcom/shabakaty/downloader/l92$c;

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    new-instance v3, Lcom/shabakaty/downloader/l92$c;

    invoke-direct {v3, v0, v2, v4}, Lcom/shabakaty/downloader/l92$c;-><init>(Lcom/shabakaty/downloader/tz2;ZLjava/lang/Throwable;)V

    .line 14
    :goto_3
    monitor-enter v3

    .line 15
    :try_start_0
    invoke-virtual {v3}, Lcom/shabakaty/downloader/l92$c;->g()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 16
    sget-object p1, Lcom/shabakaty/downloader/m92;->a:Lcom/shabakaty/downloader/j61;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit v3

    goto/16 :goto_8

    .line 18
    :cond_8
    :try_start_1
    invoke-virtual {v3, v1}, Lcom/shabakaty/downloader/l92$c;->j(Z)V

    if-eq v3, p1, :cond_9

    .line 19
    sget-object v2, Lcom/shabakaty/downloader/l92;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 20
    sget-object p1, Lcom/shabakaty/downloader/m92;->c:Lcom/shabakaty/downloader/j61;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    monitor-exit v3

    goto :goto_8

    .line 22
    :cond_9
    :try_start_2
    invoke-virtual {v3}, Lcom/shabakaty/downloader/l92$c;->f()Z

    move-result v2

    .line 23
    instance-of v5, p2, Lcom/shabakaty/downloader/i80;

    if-nez v5, :cond_a

    move-object v5, v4

    goto :goto_4

    :cond_a
    move-object v5, p2

    :goto_4
    check-cast v5, Lcom/shabakaty/downloader/i80;

    if-eqz v5, :cond_b

    iget-object v5, v5, Lcom/shabakaty/downloader/i80;->a:Ljava/lang/Throwable;

    invoke-virtual {v3, v5}, Lcom/shabakaty/downloader/l92$c;->a(Ljava/lang/Throwable;)V

    .line 24
    :cond_b
    invoke-virtual {v3}, Lcom/shabakaty/downloader/l92$c;->d()Ljava/lang/Throwable;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    xor-int/2addr v1, v2

    if-eqz v1, :cond_c

    goto :goto_5

    :cond_c
    move-object v5, v4

    .line 25
    :goto_5
    monitor-exit v3

    if-eqz v5, :cond_d

    .line 26
    invoke-virtual {p0, v0, v5}, Lcom/shabakaty/downloader/l92;->c0(Lcom/shabakaty/downloader/tz2;Ljava/lang/Throwable;)V

    .line 27
    :cond_d
    instance-of v0, p1, Lcom/shabakaty/downloader/rz;

    if-nez v0, :cond_e

    move-object v0, v4

    goto :goto_6

    :cond_e
    move-object v0, p1

    :goto_6
    check-cast v0, Lcom/shabakaty/downloader/rz;

    if-eqz v0, :cond_f

    move-object v4, v0

    goto :goto_7

    :cond_f
    invoke-interface {p1}, Lcom/shabakaty/downloader/g02;->e()Lcom/shabakaty/downloader/tz2;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/l92;->b0(Lcom/shabakaty/downloader/ck2;)Lcom/shabakaty/downloader/rz;

    move-result-object v4

    :cond_10
    :goto_7
    if-eqz v4, :cond_11

    .line 28
    invoke-virtual {p0, v3, v4, p2}, Lcom/shabakaty/downloader/l92;->l0(Lcom/shabakaty/downloader/l92$c;Lcom/shabakaty/downloader/rz;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 29
    sget-object p1, Lcom/shabakaty/downloader/m92;->b:Lcom/shabakaty/downloader/j61;

    goto :goto_8

    .line 30
    :cond_11
    invoke-virtual {p0, v3, p2}, Lcom/shabakaty/downloader/l92;->O(Lcom/shabakaty/downloader/l92$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_8

    :catchall_0
    move-exception p1

    .line 31
    monitor-exit v3

    throw p1

    .line 32
    :cond_12
    sget-object p1, Lcom/shabakaty/downloader/m92;->c:Lcom/shabakaty/downloader/j61;

    :goto_8
    return-object p1
.end method

.method public final l0(Lcom/shabakaty/downloader/l92$c;Lcom/shabakaty/downloader/rz;Ljava/lang/Object;)Z
    .locals 6

    .line 1
    :goto_0
    iget-object v0, p2, Lcom/shabakaty/downloader/rz;->v:Lcom/shabakaty/downloader/tz;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    new-instance v3, Lcom/shabakaty/downloader/l92$b;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/shabakaty/downloader/l92$b;-><init>(Lcom/shabakaty/downloader/l92;Lcom/shabakaty/downloader/l92$c;Lcom/shabakaty/downloader/rz;Ljava/lang/Object;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3
    invoke-static/range {v0 .. v5}, Lcom/shabakaty/downloader/e92$a;->b(Lcom/shabakaty/downloader/e92;ZZLcom/shabakaty/downloader/tm1;ILjava/lang/Object;)Lcom/shabakaty/downloader/ou0;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/wz2;->r:Lcom/shabakaty/downloader/wz2;

    if-eq v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_0
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/l92;->b0(Lcom/shabakaty/downloader/ck2;)Lcom/shabakaty/downloader/rz;

    move-result-object p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public minusKey(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/me0$c<",
            "*>;)",
            "Lcom/shabakaty/downloader/me0;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/me0$b$a;->c(Lcom/shabakaty/downloader/me0$b;Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0;

    move-result-object p1

    return-object p1
.end method

.method public final p()Lcom/shabakaty/downloader/l04;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/l04<",
            "Lcom/shabakaty/downloader/e92;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/l92$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/l92$e;-><init>(Lcom/shabakaty/downloader/l92;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/p04;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/p04;-><init>(Lcom/shabakaty/downloader/hn1;)V

    return-object v1
.end method

.method public plus(Lcom/shabakaty/downloader/me0;)Lcom/shabakaty/downloader/me0;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/me0$b$a;->d(Lcom/shabakaty/downloader/me0$b;Lcom/shabakaty/downloader/me0;)Lcom/shabakaty/downloader/me0;

    move-result-object p1

    return-object p1
.end method

.method public final start()Z
    .locals 2

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/l92;->T()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/l92;->g0(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final t(Lcom/shabakaty/downloader/tz;)Lcom/shabakaty/downloader/qz;
    .locals 6

    .line 1
    new-instance v3, Lcom/shabakaty/downloader/rz;

    invoke-direct {v3, p1}, Lcom/shabakaty/downloader/rz;-><init>(Lcom/shabakaty/downloader/tz;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/shabakaty/downloader/e92$a;->b(Lcom/shabakaty/downloader/e92;ZZLcom/shabakaty/downloader/tm1;ILjava/lang/Object;)Lcom/shabakaty/downloader/ou0;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ChildHandle"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/qz;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/shabakaty/downloader/l92;->a0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/l92;->T()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/l92;->h0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/shabakaty/downloader/he0;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v()Ljava/util/concurrent/CancellationException;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/l92;->T()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/shabakaty/downloader/l92$c;

    const-string v2, "Job is still new or active: "

    if-eqz v1, :cond_1

    check-cast v0, Lcom/shabakaty/downloader/l92$c;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/l92$c;->d()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is cancelling"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/l92;->i0(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6
    :cond_1
    instance-of v1, v0, Lcom/shabakaty/downloader/g02;

    if-nez v1, :cond_3

    .line 7
    instance-of v1, v0, Lcom/shabakaty/downloader/i80;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast v0, Lcom/shabakaty/downloader/i80;

    iget-object v0, v0, Lcom/shabakaty/downloader/i80;->a:Ljava/lang/Throwable;

    const/4 v1, 0x1

    invoke-static {p0, v0, v2, v1, v2}, Lcom/shabakaty/downloader/l92;->j0(Lcom/shabakaty/downloader/l92;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_2
    new-instance v0, Lcom/shabakaty/downloader/f92;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has completed normally"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, p0}, Lcom/shabakaty/downloader/f92;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/shabakaty/downloader/e92;)V

    :goto_0
    return-object v0

    .line 11
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final x(ZZLcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/ou0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Lcom/shabakaty/downloader/ou0;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    instance-of v1, p3, Lcom/shabakaty/downloader/g92;

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p3

    :goto_0
    check-cast v1, Lcom/shabakaty/downloader/g92;

    if-eqz v1, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    new-instance v1, Lcom/shabakaty/downloader/x32;

    invoke-direct {v1, p3}, Lcom/shabakaty/downloader/x32;-><init>(Lcom/shabakaty/downloader/tm1;)V

    goto :goto_2

    .line 3
    :cond_2
    instance-of v1, p3, Lcom/shabakaty/downloader/k92;

    if-nez v1, :cond_3

    move-object v1, v0

    goto :goto_1

    :cond_3
    move-object v1, p3

    :goto_1
    check-cast v1, Lcom/shabakaty/downloader/k92;

    if-eqz v1, :cond_4

    goto :goto_2

    .line 4
    :cond_4
    new-instance v1, Lcom/shabakaty/downloader/y32;

    invoke-direct {v1, p3}, Lcom/shabakaty/downloader/y32;-><init>(Lcom/shabakaty/downloader/tm1;)V

    .line 5
    :goto_2
    iput-object p0, v1, Lcom/shabakaty/downloader/k92;->u:Lcom/shabakaty/downloader/l92;

    .line 6
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/l92;->T()Ljava/lang/Object;

    move-result-object v2

    .line 7
    instance-of v3, v2, Lcom/shabakaty/downloader/o21;

    if-eqz v3, :cond_8

    .line 8
    move-object v3, v2

    check-cast v3, Lcom/shabakaty/downloader/o21;

    .line 9
    iget-boolean v4, v3, Lcom/shabakaty/downloader/o21;->r:Z

    if-eqz v4, :cond_6

    .line 10
    sget-object v3, Lcom/shabakaty/downloader/l92;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-object v1

    .line 11
    :cond_6
    new-instance v2, Lcom/shabakaty/downloader/tz2;

    invoke-direct {v2}, Lcom/shabakaty/downloader/tz2;-><init>()V

    .line 12
    iget-boolean v4, v3, Lcom/shabakaty/downloader/o21;->r:Z

    if-eqz v4, :cond_7

    goto :goto_4

    .line 13
    :cond_7
    new-instance v4, Lcom/shabakaty/downloader/e02;

    invoke-direct {v4, v2}, Lcom/shabakaty/downloader/e02;-><init>(Lcom/shabakaty/downloader/tz2;)V

    move-object v2, v4

    .line 14
    :goto_4
    sget-object v4, Lcom/shabakaty/downloader/l92;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0, v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_3

    .line 15
    :cond_8
    instance-of v3, v2, Lcom/shabakaty/downloader/g02;

    if-eqz v3, :cond_11

    .line 16
    move-object v3, v2

    check-cast v3, Lcom/shabakaty/downloader/g02;

    invoke-interface {v3}, Lcom/shabakaty/downloader/g02;->e()Lcom/shabakaty/downloader/tz2;

    move-result-object v3

    if-nez v3, :cond_9

    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.JobNode"

    .line 17
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/k92;

    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/l92;->f0(Lcom/shabakaty/downloader/k92;)V

    goto :goto_3

    .line 18
    :cond_9
    sget-object v4, Lcom/shabakaty/downloader/wz2;->r:Lcom/shabakaty/downloader/wz2;

    if-eqz p1, :cond_e

    .line 19
    instance-of v5, v2, Lcom/shabakaty/downloader/l92$c;

    if-eqz v5, :cond_e

    .line 20
    monitor-enter v2

    .line 21
    :try_start_0
    move-object v5, v2

    check-cast v5, Lcom/shabakaty/downloader/l92$c;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/l92$c;->d()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 22
    instance-of v6, p3, Lcom/shabakaty/downloader/rz;

    if-eqz v6, :cond_d

    .line 23
    move-object v6, v2

    check-cast v6, Lcom/shabakaty/downloader/l92$c;

    invoke-virtual {v6}, Lcom/shabakaty/downloader/l92$c;->g()Z

    move-result v6

    if-nez v6, :cond_d

    .line 24
    :cond_a
    invoke-virtual {p0, v2, v3, v1}, Lcom/shabakaty/downloader/l92;->A(Ljava/lang/Object;Lcom/shabakaty/downloader/tz2;Lcom/shabakaty/downloader/k92;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_b

    monitor-exit v2

    goto :goto_3

    :cond_b
    if-nez v5, :cond_c

    .line 25
    monitor-exit v2

    return-object v1

    :cond_c
    move-object v4, v1

    .line 26
    :cond_d
    monitor-exit v2

    goto :goto_5

    :catchall_0
    move-exception p1

    monitor-exit v2

    throw p1

    :cond_e
    move-object v5, v0

    :goto_5
    if-eqz v5, :cond_10

    if-eqz p2, :cond_f

    .line 27
    invoke-interface {p3, v5}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-object v4

    .line 28
    :cond_10
    invoke-virtual {p0, v2, v3, v1}, Lcom/shabakaty/downloader/l92;->A(Ljava/lang/Object;Lcom/shabakaty/downloader/tz2;Lcom/shabakaty/downloader/k92;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-object v1

    :cond_11
    if-eqz p2, :cond_14

    .line 29
    instance-of p1, v2, Lcom/shabakaty/downloader/i80;

    if-nez p1, :cond_12

    move-object v2, v0

    :cond_12
    check-cast v2, Lcom/shabakaty/downloader/i80;

    if-eqz v2, :cond_13

    iget-object v0, v2, Lcom/shabakaty/downloader/i80;->a:Ljava/lang/Throwable;

    .line 30
    :cond_13
    invoke-interface {p3, v0}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_14
    sget-object p1, Lcom/shabakaty/downloader/wz2;->r:Lcom/shabakaty/downloader/wz2;

    return-object p1
.end method
