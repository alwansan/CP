.class public final Lcom/shabakaty/downloader/cf2;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "LambdaSubscriber.java"

# interfaces
.implements Lcom/shabakaty/downloader/wg1;
.implements Lcom/shabakaty/downloader/lf4;
.implements Lcom/shabakaty/downloader/mu0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lcom/shabakaty/downloader/lf4;",
        ">;",
        "Lcom/shabakaty/downloader/wg1<",
        "TT;>;",
        "Lcom/shabakaty/downloader/lf4;",
        "Lcom/shabakaty/downloader/mu0;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/xc0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xc0<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final s:Lcom/shabakaty/downloader/xc0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xc0<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Lcom/shabakaty/downloader/j2;

.field public final u:Lcom/shabakaty/downloader/xc0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xc0<",
            "-",
            "Lcom/shabakaty/downloader/lf4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/xc0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/xc0<",
            "-TT;>;",
            "Lcom/shabakaty/downloader/xc0<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lcom/shabakaty/downloader/j2;",
            "Lcom/shabakaty/downloader/xc0<",
            "-",
            "Lcom/shabakaty/downloader/lf4;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/cf2;->r:Lcom/shabakaty/downloader/xc0;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/cf2;->s:Lcom/shabakaty/downloader/xc0;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/cf2;->t:Lcom/shabakaty/downloader/j2;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/cf2;->u:Lcom/shabakaty/downloader/xc0;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/pf4;->r:Lcom/shabakaty/downloader/pf4;

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/cf2;->t:Lcom/shabakaty/downloader/j2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/j2;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-static {v0}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 5
    invoke-static {v0}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/pf4;->r:Lcom/shabakaty/downloader/pf4;

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/cf2;->s:Lcom/shabakaty/downloader/xc0;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/xc0;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-static {v0}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/d90;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/d90;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/pf4;->f(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public d(Lcom/shabakaty/downloader/lf4;)V
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/pf4;->D(Ljava/util/concurrent/atomic/AtomicReference;Lcom/shabakaty/downloader/lf4;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/cf2;->u:Lcom/shabakaty/downloader/xc0;

    invoke-interface {v0, p0}, Lcom/shabakaty/downloader/xc0;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 4
    invoke-interface {p1}, Lcom/shabakaty/downloader/lf4;->cancel()V

    .line 5
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/cf2;->b(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
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
    invoke-virtual {p0}, Lcom/shabakaty/downloader/cf2;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/cf2;->r:Lcom/shabakaty/downloader/xc0;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/xc0;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/lf4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/lf4;->cancel()V

    .line 5
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/cf2;->b(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
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

.method public u(J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/lf4;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/lf4;->u(J)V

    return-void
.end method
