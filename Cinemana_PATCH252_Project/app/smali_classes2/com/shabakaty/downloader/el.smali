.class public abstract Lcom/shabakaty/downloader/el;
.super Ljava/lang/Object;
.source "BasicFuseableSubscriber.java"

# interfaces
.implements Lcom/shabakaty/downloader/wg1;
.implements Lcom/shabakaty/downloader/yk3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/wg1<",
        "TT;>;",
        "Lcom/shabakaty/downloader/yk3<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/ef4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ef4<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public s:Lcom/shabakaty/downloader/lf4;

.field public t:Lcom/shabakaty/downloader/yk3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/yk3<",
            "TT;>;"
        }
    .end annotation
.end field

.field public u:Z

.field public v:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ef4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ef4<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/el;->r:Lcom/shabakaty/downloader/ef4;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/el;->u:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/el;->u:Z

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/el;->r:Lcom/shabakaty/downloader/ef4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/ef4;->a()V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/el;->u:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/el;->u:Z

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/el;->r:Lcom/shabakaty/downloader/ef4;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/el;->s:Lcom/shabakaty/downloader/lf4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/lf4;->cancel()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/el;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/el;->s:Lcom/shabakaty/downloader/lf4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/lf4;->cancel()V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/el;->t:Lcom/shabakaty/downloader/yk3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/y64;->clear()V

    return-void
.end method

.method public final d(Lcom/shabakaty/downloader/lf4;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/el;->s:Lcom/shabakaty/downloader/lf4;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/pf4;->F(Lcom/shabakaty/downloader/lf4;Lcom/shabakaty/downloader/lf4;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/el;->s:Lcom/shabakaty/downloader/lf4;

    .line 3
    instance-of v0, p1, Lcom/shabakaty/downloader/yk3;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lcom/shabakaty/downloader/yk3;

    iput-object p1, p0, Lcom/shabakaty/downloader/el;->t:Lcom/shabakaty/downloader/yk3;

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/el;->r:Lcom/shabakaty/downloader/ef4;

    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/ef4;->d(Lcom/shabakaty/downloader/lf4;)V

    :cond_1
    return-void
.end method

.method public final f(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)Z"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Should not be called!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/el;->t:Lcom/shabakaty/downloader/yk3;

    if-eqz v0, :cond_1

    and-int/lit8 v1, p1, 0x4

    if-nez v1, :cond_1

    .line 2
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/xk3;->D(I)I

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iput p1, p0, Lcom/shabakaty/downloader/el;->v:I

    :cond_0
    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/el;->t:Lcom/shabakaty/downloader/yk3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/y64;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public u(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/el;->s:Lcom/shabakaty/downloader/lf4;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/lf4;->u(J)V

    return-void
.end method
