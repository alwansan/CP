.class public final Lcom/shabakaty/downloader/z43$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableFlatMapMaybe.java"

# interfaces
.implements Lcom/shabakaty/downloader/q53;
.implements Lcom/shabakaty/downloader/mu0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/z43;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/z43$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lcom/shabakaty/downloader/q53<",
        "TT;>;",
        "Lcom/shabakaty/downloader/mu0;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/q53;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/q53<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final s:Z

.field public final t:Lcom/shabakaty/downloader/c90;

.field public final u:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final v:Lcom/shabakaty/downloader/fe;

.field public final w:Lcom/shabakaty/downloader/in1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/in1<",
            "-TT;+",
            "Lcom/shabakaty/downloader/fo2<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final x:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/shabakaty/downloader/ua4<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field public y:Lcom/shabakaty/downloader/mu0;

.field public volatile z:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/q53;Lcom/shabakaty/downloader/in1;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/q53<",
            "-TR;>;",
            "Lcom/shabakaty/downloader/in1<",
            "-TT;+",
            "Lcom/shabakaty/downloader/fo2<",
            "+TR;>;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/z43$a;->r:Lcom/shabakaty/downloader/q53;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/z43$a;->w:Lcom/shabakaty/downloader/in1;

    .line 4
    iput-boolean p3, p0, Lcom/shabakaty/downloader/z43$a;->s:Z

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/c90;

    invoke-direct {p1}, Lcom/shabakaty/downloader/c90;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/z43$a;->t:Lcom/shabakaty/downloader/c90;

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/fe;

    invoke-direct {p1}, Lcom/shabakaty/downloader/fe;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/z43$a;->v:Lcom/shabakaty/downloader/fe;

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/z43$a;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/z43$a;->x:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/z43$a;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/z43$a;->d()V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/z43$a;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/z43$a;->v:Lcom/shabakaty/downloader/fe;

    .line 3
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/d61;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-boolean p1, p0, Lcom/shabakaty/downloader/z43$a;->s:Z

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/z43$a;->t:Lcom/shabakaty/downloader/c90;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/c90;->h()V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/z43$a;->d()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public c(Lcom/shabakaty/downloader/mu0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/z43$a;->y:Lcom/shabakaty/downloader/mu0;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/pu0;->G(Lcom/shabakaty/downloader/mu0;Lcom/shabakaty/downloader/mu0;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/z43$a;->y:Lcom/shabakaty/downloader/mu0;

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/z43$a;->r:Lcom/shabakaty/downloader/q53;

    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/q53;->c(Lcom/shabakaty/downloader/mu0;)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/z43$a;->f()V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/z43$a;->w:Lcom/shabakaty/downloader/in1;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/in1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null MaybeSource"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    check-cast p1, Lcom/shabakaty/downloader/fo2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/z43$a;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/z43$a$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/z43$a$a;-><init>(Lcom/shabakaty/downloader/z43$a;)V

    .line 6
    iget-boolean v1, p0, Lcom/shabakaty/downloader/z43$a;->z:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/shabakaty/downloader/z43$a;->t:Lcom/shabakaty/downloader/c90;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/c90;->b(Lcom/shabakaty/downloader/mu0;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/fo2;->a(Lcom/shabakaty/downloader/do2;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/z43$a;->y:Lcom/shabakaty/downloader/mu0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/mu0;->h()V

    .line 10
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/z43$a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public f()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/z43$a;->r:Lcom/shabakaty/downloader/q53;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/z43$a;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/z43$a;->x:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 4
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/shabakaty/downloader/z43$a;->z:Z

    if-eqz v5, :cond_2

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/z43$a;->x:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ua4;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ua4;->clear()V

    :cond_1
    return-void

    .line 7
    :cond_2
    iget-boolean v5, p0, Lcom/shabakaty/downloader/z43$a;->s:Z

    if-nez v5, :cond_4

    .line 8
    iget-object v5, p0, Lcom/shabakaty/downloader/z43$a;->v:Lcom/shabakaty/downloader/fe;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_4

    .line 9
    iget-object v1, p0, Lcom/shabakaty/downloader/z43$a;->v:Lcom/shabakaty/downloader/fe;

    .line 10
    invoke-static {v1}, Lcom/shabakaty/downloader/d61;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/shabakaty/downloader/z43$a;->x:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/ua4;

    if-eqz v2, :cond_3

    .line 12
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ua4;->clear()V

    .line 13
    :cond_3
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/q53;->b(Ljava/lang/Throwable;)V

    return-void

    .line 14
    :cond_4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_5

    const/4 v5, 0x1

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    .line 15
    :goto_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/ua4;

    if-eqz v7, :cond_6

    .line 16
    invoke-virtual {v7}, Lcom/shabakaty/downloader/ua4;->j()Ljava/lang/Object;

    move-result-object v7

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    :goto_2
    if-nez v7, :cond_7

    const/4 v6, 0x1

    :cond_7
    if-eqz v5, :cond_9

    if-eqz v6, :cond_9

    .line 17
    iget-object v1, p0, Lcom/shabakaty/downloader/z43$a;->v:Lcom/shabakaty/downloader/fe;

    .line 18
    invoke-static {v1}, Lcom/shabakaty/downloader/d61;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 19
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/q53;->b(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 20
    :cond_8
    invoke-interface {v0}, Lcom/shabakaty/downloader/q53;->a()V

    :goto_3
    return-void

    :cond_9
    if-eqz v6, :cond_a

    neg-int v4, v4

    .line 21
    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 22
    :cond_a
    invoke-interface {v0, v7}, Lcom/shabakaty/downloader/q53;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/z43$a;->z:Z

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/z43$a;->y:Lcom/shabakaty/downloader/mu0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/mu0;->h()V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/z43$a;->t:Lcom/shabakaty/downloader/c90;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/c90;->h()V

    return-void
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/z43$a;->z:Z

    return v0
.end method
