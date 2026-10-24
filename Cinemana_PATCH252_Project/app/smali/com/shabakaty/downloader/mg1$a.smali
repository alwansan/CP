.class public abstract Lcom/shabakaty/downloader/mg1$a;
.super Lcom/shabakaty/downloader/gl;
.source "FlowableObserveOn.java"

# interfaces
.implements Lcom/shabakaty/downloader/wg1;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/mg1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
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
        "TT;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public A:Ljava/lang/Throwable;

.field public B:I

.field public C:J

.field public D:Z

.field public final r:Lcom/shabakaty/downloader/wx3$c;

.field public final s:Z

.field public final t:I

.field public final u:I

.field public final v:Ljava/util/concurrent/atomic/AtomicLong;

.field public w:Lcom/shabakaty/downloader/lf4;

.field public x:Lcom/shabakaty/downloader/y64;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/y64<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile y:Z

.field public volatile z:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wx3$c;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/gl;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/mg1$a;->r:Lcom/shabakaty/downloader/wx3$c;

    .line 3
    iput-boolean p2, p0, Lcom/shabakaty/downloader/mg1$a;->s:Z

    .line 4
    iput p3, p0, Lcom/shabakaty/downloader/mg1$a;->t:I

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/mg1$a;->v:Ljava/util/concurrent/atomic/AtomicLong;

    shr-int/lit8 p1, p3, 0x2

    sub-int/2addr p3, p1

    .line 6
    iput p3, p0, Lcom/shabakaty/downloader/mg1$a;->u:I

    return-void
.end method


# virtual methods
.method public final D(I)I
    .locals 1

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/shabakaty/downloader/mg1$a;->D:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/mg1$a;->z:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/mg1$a;->z:Z

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/mg1$a;->m()V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/mg1$a;->z:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/mg1$a;->A:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/shabakaty/downloader/mg1$a;->z:Z

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/mg1$a;->m()V

    return-void
.end method

.method public final cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/mg1$a;->y:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/mg1$a;->y:Z

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/mg1$a;->w:Lcom/shabakaty/downloader/lf4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/lf4;->cancel()V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/mg1$a;->r:Lcom/shabakaty/downloader/wx3$c;

    invoke-interface {v0}, Lcom/shabakaty/downloader/mu0;->h()V

    .line 5
    iget-boolean v0, p0, Lcom/shabakaty/downloader/mg1$a;->D:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/mg1$a;->x:Lcom/shabakaty/downloader/y64;

    invoke-interface {v0}, Lcom/shabakaty/downloader/y64;->clear()V

    :cond_1
    return-void
.end method

.method public final clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mg1$a;->x:Lcom/shabakaty/downloader/y64;

    invoke-interface {v0}, Lcom/shabakaty/downloader/y64;->clear()V

    return-void
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/mg1$a;->z:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/mg1$a;->B:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/mg1$a;->m()V

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/mg1$a;->x:Lcom/shabakaty/downloader/y64;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/y64;->f(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/mg1$a;->w:Lcom/shabakaty/downloader/lf4;

    invoke-interface {p1}, Lcom/shabakaty/downloader/lf4;->cancel()V

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/xt2;

    const-string v0, "Queue is full?!"

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/xt2;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/mg1$a;->A:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/shabakaty/downloader/mg1$a;->z:Z

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/mg1$a;->m()V

    return-void
.end method

.method public final h(ZZLcom/shabakaty/downloader/ef4;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lcom/shabakaty/downloader/ef4<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/mg1$a;->y:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/mg1$a;->x:Lcom/shabakaty/downloader/y64;

    invoke-interface {p1}, Lcom/shabakaty/downloader/y64;->clear()V

    return v1

    :cond_0
    if-eqz p1, :cond_4

    .line 3
    iget-boolean p1, p0, Lcom/shabakaty/downloader/mg1$a;->s:Z

    if-eqz p1, :cond_2

    if-eqz p2, :cond_4

    .line 4
    iput-boolean v1, p0, Lcom/shabakaty/downloader/mg1$a;->y:Z

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/mg1$a;->A:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p3, p1}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {p3}, Lcom/shabakaty/downloader/ef4;->a()V

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/mg1$a;->r:Lcom/shabakaty/downloader/wx3$c;

    invoke-interface {p1}, Lcom/shabakaty/downloader/mu0;->h()V

    return v1

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/mg1$a;->A:Ljava/lang/Throwable;

    if-eqz p1, :cond_3

    .line 10
    iput-boolean v1, p0, Lcom/shabakaty/downloader/mg1$a;->y:Z

    .line 11
    iget-object p2, p0, Lcom/shabakaty/downloader/mg1$a;->x:Lcom/shabakaty/downloader/y64;

    invoke-interface {p2}, Lcom/shabakaty/downloader/y64;->clear()V

    .line 12
    invoke-interface {p3, p1}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    .line 13
    iget-object p1, p0, Lcom/shabakaty/downloader/mg1$a;->r:Lcom/shabakaty/downloader/wx3$c;

    invoke-interface {p1}, Lcom/shabakaty/downloader/mu0;->h()V

    return v1

    :cond_3
    if-eqz p2, :cond_4

    .line 14
    iput-boolean v1, p0, Lcom/shabakaty/downloader/mg1$a;->y:Z

    .line 15
    invoke-interface {p3}, Lcom/shabakaty/downloader/ef4;->a()V

    .line 16
    iget-object p1, p0, Lcom/shabakaty/downloader/mg1$a;->r:Lcom/shabakaty/downloader/wx3$c;

    invoke-interface {p1}, Lcom/shabakaty/downloader/mu0;->h()V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public abstract i()V
.end method

.method public final isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mg1$a;->x:Lcom/shabakaty/downloader/y64;

    invoke-interface {v0}, Lcom/shabakaty/downloader/y64;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public abstract k()V
.end method

.method public abstract l()V
.end method

.method public final m()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/mg1$a;->r:Lcom/shabakaty/downloader/wx3$c;

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/wx3$c;->b(Ljava/lang/Runnable;)Lcom/shabakaty/downloader/mu0;

    return-void
.end method

.method public final run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/mg1$a;->D:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/mg1$a;->k()V

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/mg1$a;->B:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/mg1$a;->l()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/mg1$a;->i()V

    :goto_0
    return-void
.end method

.method public final u(J)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/pf4;->E(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/mg1$a;->v:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lcom/shabakaty/downloader/nl6;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/mg1$a;->m()V

    :cond_0
    return-void
.end method
