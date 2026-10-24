.class public final Lcom/shabakaty/downloader/yg1$a;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "FlowableTake.java"

# interfaces
.implements Lcom/shabakaty/downloader/wg1;
.implements Lcom/shabakaty/downloader/lf4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/yg1;
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
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lcom/shabakaty/downloader/wg1<",
        "TT;>;",
        "Lcom/shabakaty/downloader/lf4;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/ef4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ef4<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final s:J

.field public t:Z

.field public u:Lcom/shabakaty/downloader/lf4;

.field public v:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ef4;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ef4<",
            "-TT;>;J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/yg1$a;->r:Lcom/shabakaty/downloader/ef4;

    .line 3
    iput-wide p2, p0, Lcom/shabakaty/downloader/yg1$a;->s:J

    .line 4
    iput-wide p2, p0, Lcom/shabakaty/downloader/yg1$a;->v:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/yg1$a;->t:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/yg1$a;->t:Z

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/yg1$a;->r:Lcom/shabakaty/downloader/ef4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/ef4;->a()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/yg1$a;->t:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/yg1$a;->t:Z

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/yg1$a;->u:Lcom/shabakaty/downloader/lf4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/lf4;->cancel()V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/yg1$a;->r:Lcom/shabakaty/downloader/ef4;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yg1$a;->u:Lcom/shabakaty/downloader/lf4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/lf4;->cancel()V

    return-void
.end method

.method public d(Lcom/shabakaty/downloader/lf4;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yg1$a;->u:Lcom/shabakaty/downloader/lf4;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/pf4;->F(Lcom/shabakaty/downloader/lf4;Lcom/shabakaty/downloader/lf4;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/yg1$a;->u:Lcom/shabakaty/downloader/lf4;

    .line 3
    iget-wide v0, p0, Lcom/shabakaty/downloader/yg1$a;->s:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/shabakaty/downloader/lf4;->cancel()V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/shabakaty/downloader/yg1$a;->t:Z

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/yg1$a;->r:Lcom/shabakaty/downloader/ef4;

    invoke-static {p1}, Lcom/shabakaty/downloader/e31;->h(Lcom/shabakaty/downloader/ef4;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/yg1$a;->r:Lcom/shabakaty/downloader/ef4;

    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/ef4;->d(Lcom/shabakaty/downloader/lf4;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/yg1$a;->t:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/shabakaty/downloader/yg1$a;->v:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/shabakaty/downloader/yg1$a;->v:J

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/yg1$a;->r:Lcom/shabakaty/downloader/ef4;

    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/ef4;->e(Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/yg1$a;->u:Lcom/shabakaty/downloader/lf4;

    invoke-interface {p1}, Lcom/shabakaty/downloader/lf4;->cancel()V

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/yg1$a;->a()V

    :cond_1
    return-void
.end method

.method public u(J)V
    .locals 3

    .line 1
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/pf4;->E(J)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-wide v0, p0, Lcom/shabakaty/downloader/yg1$a;->s:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/yg1$a;->u:Lcom/shabakaty/downloader/lf4;

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/lf4;->u(J)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/yg1$a;->u:Lcom/shabakaty/downloader/lf4;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/lf4;->u(J)V

    return-void
.end method
