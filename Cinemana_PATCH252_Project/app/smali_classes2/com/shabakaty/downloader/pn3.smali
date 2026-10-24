.class public final Lcom/shabakaty/downloader/pn3;
.super Ljava/lang/Object;
.source "RealCall.kt"

# interfaces
.implements Lcom/shabakaty/downloader/mq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/pn3$a;,
        Lcom/shabakaty/downloader/pn3$b;
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public volatile D:Z

.field public volatile E:Lcom/shabakaty/downloader/e61;

.field public volatile F:Lcom/shabakaty/downloader/tn3;

.field public final G:Lcom/shabakaty/downloader/a63;

.field public final H:Lcom/shabakaty/downloader/vr3;

.field public final I:Z

.field public final r:Lcom/shabakaty/downloader/un3;

.field public final s:Lcom/shabakaty/downloader/o51;

.field public final t:Lcom/shabakaty/downloader/pn3$c;

.field public final u:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public v:Ljava/lang/Object;

.field public w:Lcom/shabakaty/downloader/g61;

.field public x:Lcom/shabakaty/downloader/tn3;

.field public y:Z

.field public z:Lcom/shabakaty/downloader/e61;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/a63;Lcom/shabakaty/downloader/vr3;Z)V
    .locals 2

    const-string v0, "client"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originalRequest"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/pn3;->G:Lcom/shabakaty/downloader/a63;

    iput-object p2, p0, Lcom/shabakaty/downloader/pn3;->H:Lcom/shabakaty/downloader/vr3;

    iput-boolean p3, p0, Lcom/shabakaty/downloader/pn3;->I:Z

    .line 2
    iget-object p2, p1, Lcom/shabakaty/downloader/a63;->s:Lcom/shabakaty/downloader/yo;

    .line 3
    iget-object p2, p2, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    check-cast p2, Lcom/shabakaty/downloader/un3;

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/pn3;->r:Lcom/shabakaty/downloader/un3;

    .line 5
    iget-object p2, p1, Lcom/shabakaty/downloader/a63;->v:Lcom/shabakaty/downloader/o51$b;

    .line 6
    invoke-interface {p2, p0}, Lcom/shabakaty/downloader/o51$b;->a(Lcom/shabakaty/downloader/mq;)Lcom/shabakaty/downloader/o51;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/pn3;->s:Lcom/shabakaty/downloader/o51;

    .line 7
    new-instance p2, Lcom/shabakaty/downloader/pn3$c;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/pn3$c;-><init>(Lcom/shabakaty/downloader/pn3;)V

    .line 8
    iget p1, p1, Lcom/shabakaty/downloader/a63;->O:I

    int-to-long v0, p1

    .line 9
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, p1}, Lcom/shabakaty/downloader/on4;->g(JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/on4;

    .line 10
    iput-object p2, p0, Lcom/shabakaty/downloader/pn3;->t:Lcom/shabakaty/downloader/pn3$c;

    .line 11
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/pn3;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/shabakaty/downloader/pn3;->C:Z

    return-void
.end method

.method public static final a(Lcom/shabakaty/downloader/pn3;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-boolean v1, p0, Lcom/shabakaty/downloader/pn3;->D:Z

    if-eqz v1, :cond_0

    const-string v1, "canceled "

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 3
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-boolean v1, p0, Lcom/shabakaty/downloader/pn3;->I:Z

    if-eqz v1, :cond_1

    const-string v1, "web socket"

    goto :goto_1

    :cond_1
    const-string v1, "call"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object p0, p0, Lcom/shabakaty/downloader/pn3;->H:Lcom/shabakaty/downloader/vr3;

    .line 6
    iget-object p0, p0, Lcom/shabakaty/downloader/vr3;->b:Lcom/shabakaty/downloader/qw1;

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qw1;->i()Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Lcom/shabakaty/downloader/tn3;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ry4;->a:[B

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/pn3;->x:Lcom/shabakaty/downloader/tn3;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/pn3;->x:Lcom/shabakaty/downloader/tn3;

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/tn3;->o:Ljava/util/List;

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/pn3$b;

    iget-object v1, p0, Lcom/shabakaty/downloader/pn3;->v:Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/pn3$b;-><init>(Lcom/shabakaty/downloader/pn3;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/io/IOException;",
            ">(TE;)TE;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ry4;->a:[B

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/pn3;->x:Lcom/shabakaty/downloader/tn3;

    if-eqz v0, :cond_4

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pn3;->j()Ljava/net/Socket;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v0

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/pn3;->x:Lcom/shabakaty/downloader/tn3;

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    .line 7
    invoke-static {v1}, Lcom/shabakaty/downloader/ry4;->e(Ljava/net/Socket;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/pn3;->s:Lcom/shabakaty/downloader/o51;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const-string p1, "Check failed."

    .line 9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p1

    .line 10
    monitor-exit v0

    throw p1

    .line 11
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/pn3;->y:Z

    if-eqz v0, :cond_5

    goto :goto_2

    .line 12
    :cond_5
    iget-object v0, p0, Lcom/shabakaty/downloader/pn3;->t:Lcom/shabakaty/downloader/pn3$c;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qd;->i()Z

    move-result v0

    if-nez v0, :cond_6

    :goto_2
    move-object v0, p1

    goto :goto_3

    .line 13
    :cond_6
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_7

    .line 14
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_7
    :goto_3
    if-eqz p1, :cond_8

    .line 15
    iget-object p1, p0, Lcom/shabakaty/downloader/pn3;->s:Lcom/shabakaty/downloader/o51;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 16
    :cond_8
    iget-object p1, p0, Lcom/shabakaty/downloader/pn3;->s:Lcom/shabakaty/downloader/o51;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    return-object v0
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/pn3;->D:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/pn3;->D:Z

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/pn3;->E:Lcom/shabakaty/downloader/e61;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/e61;->f:Lcom/shabakaty/downloader/f61;

    invoke-interface {v0}, Lcom/shabakaty/downloader/f61;->cancel()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/pn3;->F:Lcom/shabakaty/downloader/tn3;

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/tn3;->b:Ljava/net/Socket;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/shabakaty/downloader/ry4;->e(Ljava/net/Socket;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/pn3;->s:Lcom/shabakaty/downloader/o51;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pn3;

    iget-object v1, p0, Lcom/shabakaty/downloader/pn3;->G:Lcom/shabakaty/downloader/a63;

    iget-object v2, p0, Lcom/shabakaty/downloader/pn3;->H:Lcom/shabakaty/downloader/vr3;

    iget-boolean v3, p0, Lcom/shabakaty/downloader/pn3;->I:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/shabakaty/downloader/pn3;-><init>(Lcom/shabakaty/downloader/a63;Lcom/shabakaty/downloader/vr3;Z)V

    return-object v0
.end method

.method public d()Lcom/shabakaty/downloader/vr3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/pn3;->H:Lcom/shabakaty/downloader/vr3;

    return-object v0
.end method

.method public final e()V
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/lc3;->c:Lcom/shabakaty/downloader/lc3$a;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/lc3;->a:Lcom/shabakaty/downloader/lc3;

    const-string v1, "response.body().close()"

    .line 3
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/lc3;->g(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/pn3;->v:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/pn3;->s:Lcom/shabakaty/downloader/o51;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "call"

    .line 5
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public execute()Lcom/shabakaty/downloader/ws3;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/pn3;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/pn3;->t:Lcom/shabakaty/downloader/pn3$c;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qd;->h()V

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pn3;->e()V

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/pn3;->G:Lcom/shabakaty/downloader/a63;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/a63;->r:Lcom/shabakaty/downloader/fu0;

    .line 6
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-object v1, v0, Lcom/shabakaty/downloader/fu0;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    monitor-exit v0

    .line 9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pn3;->g()Lcom/shabakaty/downloader/ws3;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/pn3;->G:Lcom/shabakaty/downloader/a63;

    .line 11
    iget-object v1, v1, Lcom/shabakaty/downloader/a63;->r:Lcom/shabakaty/downloader/fu0;

    .line 12
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v2, v1, Lcom/shabakaty/downloader/fu0;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v2, p0}, Lcom/shabakaty/downloader/fu0;->a(Ljava/util/Deque;Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v1

    .line 14
    :try_start_3
    monitor-exit v0

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 15
    iget-object v1, p0, Lcom/shabakaty/downloader/pn3;->G:Lcom/shabakaty/downloader/a63;

    .line 16
    iget-object v1, v1, Lcom/shabakaty/downloader/a63;->r:Lcom/shabakaty/downloader/fu0;

    .line 17
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v2, v1, Lcom/shabakaty/downloader/fu0;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v2, p0}, Lcom/shabakaty/downloader/fu0;->a(Ljava/util/Deque;Ljava/lang/Object;)V

    .line 19
    throw v0

    :cond_0
    const-string v0, "Already Executed"

    .line 20
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final f(Z)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/shabakaty/downloader/pn3;->C:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 3
    monitor-exit p0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/pn3;->E:Lcom/shabakaty/downloader/e61;

    if-eqz p1, :cond_0

    .line 5
    iget-object v1, p1, Lcom/shabakaty/downloader/e61;->f:Lcom/shabakaty/downloader/f61;

    invoke-interface {v1}, Lcom/shabakaty/downloader/f61;->cancel()V

    .line 6
    iget-object v1, p1, Lcom/shabakaty/downloader/e61;->c:Lcom/shabakaty/downloader/pn3;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, v2, v0}, Lcom/shabakaty/downloader/pn3;->h(Lcom/shabakaty/downloader/e61;ZZLjava/io/IOException;)Ljava/io/IOException;

    .line 7
    :cond_0
    iput-object v0, p0, Lcom/shabakaty/downloader/pn3;->z:Lcom/shabakaty/downloader/e61;

    return-void

    :cond_1
    :try_start_1
    const-string p1, "released"

    .line 8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p0

    throw p1
.end method

.method public final g()Lcom/shabakaty/downloader/ws3;
    .locals 10

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/pn3;->G:Lcom/shabakaty/downloader/a63;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/a63;->t:Ljava/util/List;

    .line 4
    invoke-static {v2, v0}, Lcom/shabakaty/downloader/k50;->R(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/nt3;

    iget-object v1, p0, Lcom/shabakaty/downloader/pn3;->G:Lcom/shabakaty/downloader/a63;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/nt3;-><init>(Lcom/shabakaty/downloader/a63;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/wn;

    iget-object v1, p0, Lcom/shabakaty/downloader/pn3;->G:Lcom/shabakaty/downloader/a63;

    .line 7
    iget-object v1, v1, Lcom/shabakaty/downloader/a63;->A:Lcom/shabakaty/downloader/ge0;

    .line 8
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/wn;-><init>(Lcom/shabakaty/downloader/ge0;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v0, Lcom/shabakaty/downloader/zp;

    iget-object v1, p0, Lcom/shabakaty/downloader/pn3;->G:Lcom/shabakaty/downloader/a63;

    .line 10
    iget-object v1, v1, Lcom/shabakaty/downloader/a63;->B:Lcom/shabakaty/downloader/op;

    .line 11
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/zp;-><init>(Lcom/shabakaty/downloader/op;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object v0, Lcom/shabakaty/downloader/ya0;->a:Lcom/shabakaty/downloader/ya0;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-boolean v0, p0, Lcom/shabakaty/downloader/pn3;->I:Z

    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/shabakaty/downloader/pn3;->G:Lcom/shabakaty/downloader/a63;

    .line 15
    iget-object v0, v0, Lcom/shabakaty/downloader/a63;->u:Ljava/util/List;

    .line 16
    invoke-static {v2, v0}, Lcom/shabakaty/downloader/k50;->R(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 17
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/qq;

    iget-boolean v1, p0, Lcom/shabakaty/downloader/pn3;->I:Z

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/qq;-><init>(Z)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v9, Lcom/shabakaty/downloader/vn3;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 19
    iget-object v5, p0, Lcom/shabakaty/downloader/pn3;->H:Lcom/shabakaty/downloader/vr3;

    .line 20
    iget-object v0, p0, Lcom/shabakaty/downloader/pn3;->G:Lcom/shabakaty/downloader/a63;

    .line 21
    iget v6, v0, Lcom/shabakaty/downloader/a63;->P:I

    .line 22
    iget v7, v0, Lcom/shabakaty/downloader/a63;->Q:I

    .line 23
    iget v8, v0, Lcom/shabakaty/downloader/a63;->R:I

    move-object v0, v9

    move-object v1, p0

    .line 24
    invoke-direct/range {v0 .. v8}, Lcom/shabakaty/downloader/vn3;-><init>(Lcom/shabakaty/downloader/pn3;Ljava/util/List;ILcom/shabakaty/downloader/e61;Lcom/shabakaty/downloader/vr3;III)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 25
    :try_start_0
    iget-object v2, p0, Lcom/shabakaty/downloader/pn3;->H:Lcom/shabakaty/downloader/vr3;

    invoke-virtual {v9, v2}, Lcom/shabakaty/downloader/vn3;->a(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/ws3;

    move-result-object v2

    .line 26
    iget-boolean v3, p0, Lcom/shabakaty/downloader/pn3;->D:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 27
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/pn3;->i(Ljava/io/IOException;)Ljava/io/IOException;

    return-object v2

    .line 28
    :cond_1
    :try_start_1
    invoke-static {v2}, Lcom/shabakaty/downloader/ry4;->d(Ljava/io/Closeable;)V

    .line 29
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 30
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/pn3;->i(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type kotlin.Throwable"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_3

    .line 31
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/pn3;->i(Ljava/io/IOException;)Ljava/io/IOException;

    :cond_3
    throw v2
.end method

.method public final h(Lcom/shabakaty/downloader/e61;ZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/io/IOException;",
            ">(",
            "Lcom/shabakaty/downloader/e61;",
            "ZZTE;)TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/pn3;->E:Lcom/shabakaty/downloader/e61;

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_0

    return-object p4

    .line 2
    :cond_0
    monitor-enter p0

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lcom/shabakaty/downloader/pn3;->A:Z

    if-nez v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz p3, :cond_7

    iget-boolean v1, p0, Lcom/shabakaty/downloader/pn3;->B:Z

    if-eqz v1, :cond_7

    :cond_2
    if-eqz p2, :cond_3

    .line 4
    iput-boolean p1, p0, Lcom/shabakaty/downloader/pn3;->A:Z

    :cond_3
    if-eqz p3, :cond_4

    .line 5
    iput-boolean p1, p0, Lcom/shabakaty/downloader/pn3;->B:Z

    .line 6
    :cond_4
    iget-boolean p2, p0, Lcom/shabakaty/downloader/pn3;->A:Z

    if-nez p2, :cond_5

    iget-boolean p3, p0, Lcom/shabakaty/downloader/pn3;->B:Z

    if-nez p3, :cond_5

    const/4 p3, 0x1

    goto :goto_1

    :cond_5
    const/4 p3, 0x0

    :goto_1
    if-nez p2, :cond_6

    .line 7
    iget-boolean p2, p0, Lcom/shabakaty/downloader/pn3;->B:Z

    if-nez p2, :cond_6

    iget-boolean p2, p0, Lcom/shabakaty/downloader/pn3;->C:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_6

    const/4 p1, 0x1

    :cond_6
    move p2, p1

    move p1, p3

    goto :goto_3

    .line 8
    :goto_2
    monitor-exit p0

    throw p1

    :cond_7
    const/4 p2, 0x0

    :goto_3
    monitor-exit p0

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/shabakaty/downloader/pn3;->E:Lcom/shabakaty/downloader/e61;

    .line 10
    iget-object p1, p0, Lcom/shabakaty/downloader/pn3;->x:Lcom/shabakaty/downloader/tn3;

    if-eqz p1, :cond_8

    .line 11
    monitor-enter p1

    .line 12
    :try_start_1
    iget p3, p1, Lcom/shabakaty/downloader/tn3;->l:I

    add-int/2addr p3, v0

    iput p3, p1, Lcom/shabakaty/downloader/tn3;->l:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    monitor-exit p1

    goto :goto_4

    :catchall_1
    move-exception p2

    monitor-exit p1

    throw p2

    :cond_8
    :goto_4
    if-eqz p2, :cond_9

    .line 14
    invoke-virtual {p0, p4}, Lcom/shabakaty/downloader/pn3;->c(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1

    :cond_9
    return-object p4
.end method

.method public final i(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/shabakaty/downloader/pn3;->C:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iput-boolean v1, p0, Lcom/shabakaty/downloader/pn3;->C:Z

    .line 4
    iget-boolean v0, p0, Lcom/shabakaty/downloader/pn3;->A:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/shabakaty/downloader/pn3;->B:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 5
    :cond_0
    monitor-exit p0

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/pn3;->c(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0

    throw p1
.end method

.method public final j()Ljava/net/Socket;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/pn3;->x:Lcom/shabakaty/downloader/tn3;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/ry4;->a:[B

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/tn3;->o:Ljava/util/List;

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 5
    check-cast v5, Ljava/lang/ref/Reference;

    .line 6
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/pn3;

    invoke-static {v5, p0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    :goto_1
    const/4 v2, 0x1

    if-eq v4, v6, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_7

    .line 7
    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v4, 0x0

    .line 8
    iput-object v4, p0, Lcom/shabakaty/downloader/pn3;->x:Lcom/shabakaty/downloader/tn3;

    .line 9
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 10
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 11
    iput-wide v5, v0, Lcom/shabakaty/downloader/tn3;->p:J

    .line 12
    iget-object v1, p0, Lcom/shabakaty/downloader/pn3;->r:Lcom/shabakaty/downloader/un3;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v5, Lcom/shabakaty/downloader/ry4;->a:[B

    .line 14
    iget-boolean v5, v0, Lcom/shabakaty/downloader/tn3;->i:Z

    if-nez v5, :cond_4

    .line 15
    iget v5, v1, Lcom/shabakaty/downloader/un3;->e:I

    if-nez v5, :cond_3

    goto :goto_3

    .line 16
    :cond_3
    iget-object v2, v1, Lcom/shabakaty/downloader/un3;->b:Lcom/shabakaty/downloader/gl4;

    iget-object v1, v1, Lcom/shabakaty/downloader/un3;->c:Lcom/shabakaty/downloader/un3$a;

    const-wide/16 v5, 0x0

    const/4 v7, 0x2

    invoke-static {v2, v1, v5, v6, v7}, Lcom/shabakaty/downloader/gl4;->d(Lcom/shabakaty/downloader/gl4;Lcom/shabakaty/downloader/wk4;JI)V

    goto :goto_4

    .line 17
    :cond_4
    :goto_3
    iput-boolean v2, v0, Lcom/shabakaty/downloader/tn3;->i:Z

    .line 18
    iget-object v2, v1, Lcom/shabakaty/downloader/un3;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 19
    iget-object v2, v1, Lcom/shabakaty/downloader/un3;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v1, v1, Lcom/shabakaty/downloader/un3;->b:Lcom/shabakaty/downloader/gl4;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/gl4;->a()V

    :cond_5
    const/4 v3, 0x1

    :goto_4
    if-eqz v3, :cond_6

    .line 20
    iget-object v0, v0, Lcom/shabakaty/downloader/tn3;->c:Ljava/net/Socket;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    return-object v0

    :cond_6
    return-object v4

    .line 21
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l0(Lcom/shabakaty/downloader/wq;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/pn3;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pn3;->e()V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/pn3;->G:Lcom/shabakaty/downloader/a63;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/a63;->r:Lcom/shabakaty/downloader/fu0;

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/pn3$a;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/pn3$a;-><init>(Lcom/shabakaty/downloader/pn3;Lcom/shabakaty/downloader/wq;)V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p1, v0, Lcom/shabakaty/downloader/fu0;->c:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, v1, Lcom/shabakaty/downloader/pn3$a;->t:Lcom/shabakaty/downloader/pn3;

    .line 9
    iget-boolean p1, p1, Lcom/shabakaty/downloader/pn3;->I:Z

    if-nez p1, :cond_4

    .line 10
    invoke-virtual {v1}, Lcom/shabakaty/downloader/pn3$a;->a()Ljava/lang/String;

    move-result-object p1

    .line 11
    iget-object v2, v0, Lcom/shabakaty/downloader/fu0;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/pn3$a;

    .line 12
    invoke-virtual {v3}, Lcom/shabakaty/downloader/pn3$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 13
    :cond_1
    iget-object v2, v0, Lcom/shabakaty/downloader/fu0;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/pn3$a;

    .line 14
    invoke-virtual {v3}, Lcom/shabakaty/downloader/pn3$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    .line 15
    iget-object p1, v3, Lcom/shabakaty/downloader/pn3$a;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, v1, Lcom/shabakaty/downloader/pn3$a;->r:Ljava/util/concurrent/atomic/AtomicInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :cond_4
    monitor-exit v0

    .line 17
    invoke-virtual {v0}, Lcom/shabakaty/downloader/fu0;->c()Z

    return-void

    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v0

    throw p1

    :cond_5
    const-string p1, "Already Executed"

    .line 19
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/pn3;->D:Z

    return v0
.end method
