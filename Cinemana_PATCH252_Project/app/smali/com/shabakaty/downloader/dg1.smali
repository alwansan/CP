.class public final Lcom/shabakaty/downloader/dg1;
.super Lcom/shabakaty/downloader/a0;
.source "FlowableFlattenIterable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/dg1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/a0<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final t:Lcom/shabakaty/downloader/in1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/in1<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final u:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qf1;Lcom/shabakaty/downloader/in1;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qf1<",
            "TT;>;",
            "Lcom/shabakaty/downloader/in1<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/a0;-><init>(Lcom/shabakaty/downloader/qf1;)V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/dg1;->t:Lcom/shabakaty/downloader/in1;

    .line 3
    iput p3, p0, Lcom/shabakaty/downloader/dg1;->u:I

    return-void
.end method


# virtual methods
.method public i(Lcom/shabakaty/downloader/ef4;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ef4<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/e31;->r:Lcom/shabakaty/downloader/e31;

    iget-object v1, p0, Lcom/shabakaty/downloader/a0;->s:Lcom/shabakaty/downloader/qf1;

    instance-of v2, v1, Ljava/util/concurrent/Callable;

    if-eqz v2, :cond_3

    .line 2
    :try_start_0
    check-cast v1, Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_0

    .line 3
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/ef4;->d(Lcom/shabakaty/downloader/lf4;)V

    .line 4
    invoke-interface {p1}, Lcom/shabakaty/downloader/ef4;->a()V

    return-void

    .line 5
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/shabakaty/downloader/dg1;->t:Lcom/shabakaty/downloader/in1;

    invoke-interface {v2, v1}, Lcom/shabakaty/downloader/in1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 6
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_1

    .line 8
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/ef4;->d(Lcom/shabakaty/downloader/lf4;)V

    .line 9
    invoke-interface {p1}, Lcom/shabakaty/downloader/ef4;->a()V

    goto :goto_0

    .line 10
    :cond_1
    instance-of v0, p1, Lcom/shabakaty/downloader/m90;

    if-eqz v0, :cond_2

    .line 11
    new-instance v0, Lcom/shabakaty/downloader/gg1;

    move-object v2, p1

    check-cast v2, Lcom/shabakaty/downloader/m90;

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/gg1;-><init>(Lcom/shabakaty/downloader/m90;Ljava/util/Iterator;)V

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/ef4;->d(Lcom/shabakaty/downloader/lf4;)V

    goto :goto_0

    .line 12
    :cond_2
    new-instance v0, Lcom/shabakaty/downloader/hg1;

    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/hg1;-><init>(Lcom/shabakaty/downloader/ef4;Ljava/util/Iterator;)V

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/ef4;->d(Lcom/shabakaty/downloader/lf4;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 13
    invoke-static {v1}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 14
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/ef4;->d(Lcom/shabakaty/downloader/lf4;)V

    .line 15
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :catchall_1
    move-exception v1

    .line 16
    invoke-static {v1}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 17
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/ef4;->d(Lcom/shabakaty/downloader/lf4;)V

    .line 18
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    return-void

    :catchall_2
    move-exception v1

    .line 19
    invoke-static {v1}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 20
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/ef4;->d(Lcom/shabakaty/downloader/lf4;)V

    .line 21
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    return-void

    .line 22
    :cond_3
    new-instance v0, Lcom/shabakaty/downloader/dg1$a;

    iget-object v2, p0, Lcom/shabakaty/downloader/dg1;->t:Lcom/shabakaty/downloader/in1;

    iget v3, p0, Lcom/shabakaty/downloader/dg1;->u:I

    invoke-direct {v0, p1, v2, v3}, Lcom/shabakaty/downloader/dg1$a;-><init>(Lcom/shabakaty/downloader/ef4;Lcom/shabakaty/downloader/in1;I)V

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/qf1;->h(Lcom/shabakaty/downloader/wg1;)V

    return-void
.end method
