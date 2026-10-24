.class public final Lcom/shabakaty/downloader/e53$a;
.super Lcom/shabakaty/downloader/fl;
.source "ObservableObserveOn.java"

# interfaces
.implements Lcom/shabakaty/downloader/q53;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/e53;
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
        "Lcom/shabakaty/downloader/fl<",
        "TT;>;",
        "Lcom/shabakaty/downloader/q53<",
        "TT;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public A:I

.field public B:Z

.field public final r:Lcom/shabakaty/downloader/q53;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/q53<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final s:Lcom/shabakaty/downloader/wx3$c;

.field public final t:Z

.field public final u:I

.field public v:Lcom/shabakaty/downloader/y64;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/y64<",
            "TT;>;"
        }
    .end annotation
.end field

.field public w:Lcom/shabakaty/downloader/mu0;

.field public x:Ljava/lang/Throwable;

.field public volatile y:Z

.field public volatile z:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/q53;Lcom/shabakaty/downloader/wx3$c;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/q53<",
            "-TT;>;",
            "Lcom/shabakaty/downloader/wx3$c;",
            "ZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/fl;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/e53$a;->r:Lcom/shabakaty/downloader/q53;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/e53$a;->s:Lcom/shabakaty/downloader/wx3$c;

    .line 4
    iput-boolean p3, p0, Lcom/shabakaty/downloader/e53$a;->t:Z

    .line 5
    iput p4, p0, Lcom/shabakaty/downloader/e53$a;->u:I

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
    iput-boolean p1, p0, Lcom/shabakaty/downloader/e53$a;->B:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/e53$a;->y:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/e53$a;->y:Z

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/e53$a;->g()V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/e53$a;->y:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/e53$a;->x:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/shabakaty/downloader/e53$a;->y:Z

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/e53$a;->g()V

    return-void
.end method

.method public c(Lcom/shabakaty/downloader/mu0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/e53$a;->w:Lcom/shabakaty/downloader/mu0;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/pu0;->G(Lcom/shabakaty/downloader/mu0;Lcom/shabakaty/downloader/mu0;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/e53$a;->w:Lcom/shabakaty/downloader/mu0;

    .line 3
    instance-of v0, p1, Lcom/shabakaty/downloader/uk3;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lcom/shabakaty/downloader/uk3;

    const/4 v0, 0x7

    .line 5
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/xk3;->D(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6
    iput v0, p0, Lcom/shabakaty/downloader/e53$a;->A:I

    .line 7
    iput-object p1, p0, Lcom/shabakaty/downloader/e53$a;->v:Lcom/shabakaty/downloader/y64;

    .line 8
    iput-boolean v1, p0, Lcom/shabakaty/downloader/e53$a;->y:Z

    .line 9
    iget-object p1, p0, Lcom/shabakaty/downloader/e53$a;->r:Lcom/shabakaty/downloader/q53;

    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/q53;->c(Lcom/shabakaty/downloader/mu0;)V

    .line 10
    invoke-virtual {p0}, Lcom/shabakaty/downloader/e53$a;->g()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 11
    iput v0, p0, Lcom/shabakaty/downloader/e53$a;->A:I

    .line 12
    iput-object p1, p0, Lcom/shabakaty/downloader/e53$a;->v:Lcom/shabakaty/downloader/y64;

    .line 13
    iget-object p1, p0, Lcom/shabakaty/downloader/e53$a;->r:Lcom/shabakaty/downloader/q53;

    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/q53;->c(Lcom/shabakaty/downloader/mu0;)V

    return-void

    .line 14
    :cond_1
    new-instance p1, Lcom/shabakaty/downloader/ua4;

    iget v0, p0, Lcom/shabakaty/downloader/e53$a;->u:I

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/ua4;-><init>(I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/e53$a;->v:Lcom/shabakaty/downloader/y64;

    .line 15
    iget-object p1, p0, Lcom/shabakaty/downloader/e53$a;->r:Lcom/shabakaty/downloader/q53;

    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/q53;->c(Lcom/shabakaty/downloader/mu0;)V

    :cond_2
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/e53$a;->v:Lcom/shabakaty/downloader/y64;

    invoke-interface {v0}, Lcom/shabakaty/downloader/y64;->clear()V

    return-void
.end method

.method public d(ZZLcom/shabakaty/downloader/q53;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lcom/shabakaty/downloader/q53<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/e53$a;->z:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/e53$a;->v:Lcom/shabakaty/downloader/y64;

    invoke-interface {p1}, Lcom/shabakaty/downloader/y64;->clear()V

    return v1

    :cond_0
    if-eqz p1, :cond_4

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/e53$a;->x:Ljava/lang/Throwable;

    .line 4
    iget-boolean v0, p0, Lcom/shabakaty/downloader/e53$a;->t:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_4

    .line 5
    iput-boolean v1, p0, Lcom/shabakaty/downloader/e53$a;->z:Z

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p3, p1}, Lcom/shabakaty/downloader/q53;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {p3}, Lcom/shabakaty/downloader/q53;->a()V

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/e53$a;->s:Lcom/shabakaty/downloader/wx3$c;

    invoke-interface {p1}, Lcom/shabakaty/downloader/mu0;->h()V

    return v1

    :cond_2
    if-eqz p1, :cond_3

    .line 9
    iput-boolean v1, p0, Lcom/shabakaty/downloader/e53$a;->z:Z

    .line 10
    iget-object p2, p0, Lcom/shabakaty/downloader/e53$a;->v:Lcom/shabakaty/downloader/y64;

    invoke-interface {p2}, Lcom/shabakaty/downloader/y64;->clear()V

    .line 11
    invoke-interface {p3, p1}, Lcom/shabakaty/downloader/q53;->b(Ljava/lang/Throwable;)V

    .line 12
    iget-object p1, p0, Lcom/shabakaty/downloader/e53$a;->s:Lcom/shabakaty/downloader/wx3$c;

    invoke-interface {p1}, Lcom/shabakaty/downloader/mu0;->h()V

    return v1

    :cond_3
    if-eqz p2, :cond_4

    .line 13
    iput-boolean v1, p0, Lcom/shabakaty/downloader/e53$a;->z:Z

    .line 14
    invoke-interface {p3}, Lcom/shabakaty/downloader/q53;->a()V

    .line 15
    iget-object p1, p0, Lcom/shabakaty/downloader/e53$a;->s:Lcom/shabakaty/downloader/wx3$c;

    invoke-interface {p1}, Lcom/shabakaty/downloader/mu0;->h()V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public e(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/e53$a;->y:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/e53$a;->A:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/e53$a;->v:Lcom/shabakaty/downloader/y64;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/y64;->f(Ljava/lang/Object;)Z

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/e53$a;->g()V

    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/e53$a;->s:Lcom/shabakaty/downloader/wx3$c;

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/wx3$c;->b(Ljava/lang/Runnable;)Lcom/shabakaty/downloader/mu0;

    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/e53$a;->z:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/e53$a;->z:Z

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/e53$a;->w:Lcom/shabakaty/downloader/mu0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/mu0;->h()V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/e53$a;->s:Lcom/shabakaty/downloader/wx3$c;

    invoke-interface {v0}, Lcom/shabakaty/downloader/mu0;->h()V

    .line 5
    iget-boolean v0, p0, Lcom/shabakaty/downloader/e53$a;->B:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/e53$a;->v:Lcom/shabakaty/downloader/y64;

    invoke-interface {v0}, Lcom/shabakaty/downloader/y64;->clear()V

    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/e53$a;->v:Lcom/shabakaty/downloader/y64;

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
    iget-object v0, p0, Lcom/shabakaty/downloader/e53$a;->v:Lcom/shabakaty/downloader/y64;

    invoke-interface {v0}, Lcom/shabakaty/downloader/y64;->j()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/e53$a;->z:Z

    return v0
.end method

.method public run()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/e53$a;->B:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 2
    :cond_0
    iget-boolean v2, p0, Lcom/shabakaty/downloader/e53$a;->z:Z

    if-eqz v2, :cond_1

    goto/16 :goto_3

    .line 3
    :cond_1
    iget-boolean v2, p0, Lcom/shabakaty/downloader/e53$a;->y:Z

    .line 4
    iget-object v3, p0, Lcom/shabakaty/downloader/e53$a;->x:Ljava/lang/Throwable;

    .line 5
    iget-boolean v4, p0, Lcom/shabakaty/downloader/e53$a;->t:Z

    if-nez v4, :cond_2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 6
    iput-boolean v1, p0, Lcom/shabakaty/downloader/e53$a;->z:Z

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/e53$a;->r:Lcom/shabakaty/downloader/q53;

    iget-object v1, p0, Lcom/shabakaty/downloader/e53$a;->x:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/q53;->b(Ljava/lang/Throwable;)V

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/e53$a;->s:Lcom/shabakaty/downloader/wx3$c;

    invoke-interface {v0}, Lcom/shabakaty/downloader/mu0;->h()V

    goto/16 :goto_3

    .line 9
    :cond_2
    iget-object v3, p0, Lcom/shabakaty/downloader/e53$a;->r:Lcom/shabakaty/downloader/q53;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/shabakaty/downloader/q53;->e(Ljava/lang/Object;)V

    if-eqz v2, :cond_4

    .line 10
    iput-boolean v1, p0, Lcom/shabakaty/downloader/e53$a;->z:Z

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/e53$a;->x:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 12
    iget-object v1, p0, Lcom/shabakaty/downloader/e53$a;->r:Lcom/shabakaty/downloader/q53;

    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/q53;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/e53$a;->r:Lcom/shabakaty/downloader/q53;

    invoke-interface {v0}, Lcom/shabakaty/downloader/q53;->a()V

    .line 14
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/e53$a;->s:Lcom/shabakaty/downloader/wx3$c;

    invoke-interface {v0}, Lcom/shabakaty/downloader/mu0;->h()V

    goto :goto_3

    :cond_4
    neg-int v0, v0

    .line 15
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 16
    :cond_5
    iget-object v0, p0, Lcom/shabakaty/downloader/e53$a;->v:Lcom/shabakaty/downloader/y64;

    .line 17
    iget-object v2, p0, Lcom/shabakaty/downloader/e53$a;->r:Lcom/shabakaty/downloader/q53;

    const/4 v3, 0x1

    .line 18
    :cond_6
    iget-boolean v4, p0, Lcom/shabakaty/downloader/e53$a;->y:Z

    invoke-interface {v0}, Lcom/shabakaty/downloader/y64;->isEmpty()Z

    move-result v5

    invoke-virtual {p0, v4, v5, v2}, Lcom/shabakaty/downloader/e53$a;->d(ZZLcom/shabakaty/downloader/q53;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_3

    .line 19
    :cond_7
    :goto_1
    iget-boolean v4, p0, Lcom/shabakaty/downloader/e53$a;->y:Z

    .line 20
    :try_start_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/y64;->j()Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_8

    const/4 v6, 0x1

    goto :goto_2

    :cond_8
    const/4 v6, 0x0

    .line 21
    :goto_2
    invoke-virtual {p0, v4, v6, v2}, Lcom/shabakaty/downloader/e53$a;->d(ZZLcom/shabakaty/downloader/q53;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_3

    :cond_9
    if-eqz v6, :cond_a

    neg-int v3, v3

    .line 22
    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_6

    goto :goto_3

    .line 23
    :cond_a
    invoke-interface {v2, v5}, Lcom/shabakaty/downloader/q53;->e(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 24
    invoke-static {v3}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 25
    iput-boolean v1, p0, Lcom/shabakaty/downloader/e53$a;->z:Z

    .line 26
    iget-object v1, p0, Lcom/shabakaty/downloader/e53$a;->w:Lcom/shabakaty/downloader/mu0;

    invoke-interface {v1}, Lcom/shabakaty/downloader/mu0;->h()V

    .line 27
    invoke-interface {v0}, Lcom/shabakaty/downloader/y64;->clear()V

    .line 28
    invoke-interface {v2, v3}, Lcom/shabakaty/downloader/q53;->b(Ljava/lang/Throwable;)V

    .line 29
    iget-object v0, p0, Lcom/shabakaty/downloader/e53$a;->s:Lcom/shabakaty/downloader/wx3$c;

    invoke-interface {v0}, Lcom/shabakaty/downloader/mu0;->h()V

    :goto_3
    return-void
.end method
