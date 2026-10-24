.class public final Lcom/shabakaty/downloader/au0;
.super Lcom/shabakaty/downloader/du0;
.source "DispatchedContinuation.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ue0;
.implements Lcom/shabakaty/downloader/ud0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/du0<",
        "TT;>;",
        "Lcom/shabakaty/downloader/ue0;",
        "Lcom/shabakaty/downloader/ud0<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final synthetic y:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _reusableCancellableContinuation:Ljava/lang/Object;

.field public u:Ljava/lang/Object;

.field public final v:Ljava/lang/Object;

.field public final w:Lcom/shabakaty/downloader/pe0;

.field public final x:Lcom/shabakaty/downloader/ud0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ud0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/shabakaty/downloader/au0;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_reusableCancellableContinuation"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/au0;->y:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/pe0;Lcom/shabakaty/downloader/ud0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/pe0;",
            "Lcom/shabakaty/downloader/ud0<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/du0;-><init>(I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/au0;->w:Lcom/shabakaty/downloader/pe0;

    iput-object p2, p0, Lcom/shabakaty/downloader/au0;->x:Lcom/shabakaty/downloader/ud0;

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/bu0;->a:Lcom/shabakaty/downloader/j61;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/au0;->u:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/au0;->a()Lcom/shabakaty/downloader/me0;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/zm4;->b(Lcom/shabakaty/downloader/me0;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/au0;->v:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/au0;->_reusableCancellableContinuation:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/me0;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/au0;->x:Lcom/shabakaty/downloader/ud0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/ud0;->a()Lcom/shabakaty/downloader/me0;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/j80;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/shabakaty/downloader/j80;

    iget-object p1, p1, Lcom/shabakaty/downloader/j80;->b:Lcom/shabakaty/downloader/tm1;

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public c()Lcom/shabakaty/downloader/ud0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/ud0<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method

.method public h()Lcom/shabakaty/downloader/ue0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/au0;->x:Lcom/shabakaty/downloader/ud0;

    instance-of v1, v0, Lcom/shabakaty/downloader/ue0;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/shabakaty/downloader/ue0;

    return-object v0
.end method

.method public i(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/au0;->x:Lcom/shabakaty/downloader/ud0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/ud0;->a()Lcom/shabakaty/downloader/me0;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/z02;->D(Ljava/lang/Object;Lcom/shabakaty/downloader/tm1;)Ljava/lang/Object;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lcom/shabakaty/downloader/au0;->w:Lcom/shabakaty/downloader/pe0;

    invoke-virtual {v3, v0}, Lcom/shabakaty/downloader/pe0;->B(Lcom/shabakaty/downloader/me0;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 4
    iput-object v2, p0, Lcom/shabakaty/downloader/au0;->u:Ljava/lang/Object;

    .line 5
    iput v4, p0, Lcom/shabakaty/downloader/du0;->t:I

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/au0;->w:Lcom/shabakaty/downloader/pe0;

    invoke-virtual {p1, v0, p0}, Lcom/shabakaty/downloader/pe0;->g(Lcom/shabakaty/downloader/me0;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 7
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/an4;->b:Lcom/shabakaty/downloader/an4;

    invoke-static {}, Lcom/shabakaty/downloader/an4;->a()Lcom/shabakaty/downloader/q51;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/q51;->Y()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    iput-object v2, p0, Lcom/shabakaty/downloader/au0;->u:Ljava/lang/Object;

    .line 10
    iput v4, p0, Lcom/shabakaty/downloader/du0;->t:I

    .line 11
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/q51;->S(Lcom/shabakaty/downloader/du0;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/q51;->V(Z)V

    .line 13
    :try_start_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/au0;->a()Lcom/shabakaty/downloader/me0;

    move-result-object v3

    iget-object v4, p0, Lcom/shabakaty/downloader/au0;->v:Ljava/lang/Object;

    .line 14
    invoke-static {v3, v4}, Lcom/shabakaty/downloader/zm4;->c(Lcom/shabakaty/downloader/me0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    :try_start_1
    iget-object v5, p0, Lcom/shabakaty/downloader/au0;->x:Lcom/shabakaty/downloader/ud0;

    invoke-interface {v5, p1}, Lcom/shabakaty/downloader/ud0;->i(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :try_start_2
    invoke-static {v3, v4}, Lcom/shabakaty/downloader/zm4;->a(Lcom/shabakaty/downloader/me0;Ljava/lang/Object;)V

    .line 17
    :cond_2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/q51;->Z()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 18
    invoke-static {v3, v4}, Lcom/shabakaty/downloader/zm4;->a(Lcom/shabakaty/downloader/me0;Ljava/lang/Object;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 19
    :try_start_3
    invoke-virtual {p0, p1, v1}, Lcom/shabakaty/downloader/du0;->j(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 20
    :goto_0
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/q51;->M(Z)V

    :goto_1
    return-void

    :catchall_2
    move-exception p1

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/q51;->M(Z)V

    throw p1
.end method

.method public k()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/au0;->u:Ljava/lang/Object;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/bu0;->a:Lcom/shabakaty/downloader/j61;

    .line 3
    iput-object v1, p0, Lcom/shabakaty/downloader/au0;->u:Ljava/lang/Object;

    return-object v0
.end method

.method public final m(Lcom/shabakaty/downloader/fv;)Ljava/lang/Throwable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/fv<",
            "*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/au0;->_reusableCancellableContinuation:Ljava/lang/Object;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/bu0;->b:Lcom/shabakaty/downloader/j61;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/au0;->y:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v2

    :cond_1
    if-nez v0, :cond_2

    return-object v2

    .line 4
    :cond_2
    instance-of p1, v0, Ljava/lang/Throwable;

    if-eqz p1, :cond_4

    .line 5
    sget-object p1, Lcom/shabakaty/downloader/au0;->y:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    check-cast v0, Ljava/lang/Throwable;

    return-object v0

    .line 7
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string p1, "Inconsistent state "

    .line 8
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/c50;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final o()Lcom/shabakaty/downloader/gv;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/gv<",
            "TT;>;"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/au0;->_reusableCancellableContinuation:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/bu0;->b:Lcom/shabakaty/downloader/j61;

    iput-object v0, p0, Lcom/shabakaty/downloader/au0;->_reusableCancellableContinuation:Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_1
    instance-of v1, v0, Lcom/shabakaty/downloader/gv;

    if-eqz v1, :cond_2

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/au0;->y:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v2, Lcom/shabakaty/downloader/bu0;->b:Lcom/shabakaty/downloader/j61;

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Lcom/shabakaty/downloader/gv;

    return-object v0

    :cond_2
    const-string v1, "Inconsistent state "

    .line 6
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/c50;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final p()Lcom/shabakaty/downloader/gv;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/gv<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/au0;->_reusableCancellableContinuation:Ljava/lang/Object;

    instance-of v1, v0, Lcom/shabakaty/downloader/gv;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/shabakaty/downloader/gv;

    return-object v0
.end method

.method public final r(Lcom/shabakaty/downloader/gv;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/gv<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/au0;->_reusableCancellableContinuation:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    instance-of v2, v0, Lcom/shabakaty/downloader/gv;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v3

    :cond_2
    return v1
.end method

.method public final s(Ljava/lang/Throwable;)Z
    .locals 4

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/au0;->_reusableCancellableContinuation:Ljava/lang/Object;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/bu0;->b:Lcom/shabakaty/downloader/j61;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/au0;->y:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    .line 4
    :cond_1
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    return v3

    .line 5
    :cond_2
    sget-object v1, Lcom/shabakaty/downloader/au0;->y:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "DispatchedContinuation["

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/au0;->w:Lcom/shabakaty/downloader/pe0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/au0;->x:Lcom/shabakaty/downloader/ud0;

    invoke-static {v1}, Lcom/shabakaty/downloader/he0;->t(Lcom/shabakaty/downloader/ud0;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
