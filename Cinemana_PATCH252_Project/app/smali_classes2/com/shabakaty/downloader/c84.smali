.class public abstract Lcom/shabakaty/downloader/c84;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SinglePostCompleteSubscriber.java"

# interfaces
.implements Lcom/shabakaty/downloader/wg1;
.implements Lcom/shabakaty/downloader/lf4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
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
            "-TR;>;"
        }
    .end annotation
.end field

.field public s:Lcom/shabakaty/downloader/lf4;

.field public t:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field public u:J


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
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/c84;->r:Lcom/shabakaty/downloader/ef4;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/c84;->s:Lcom/shabakaty/downloader/lf4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/lf4;->cancel()V

    return-void
.end method

.method public d(Lcom/shabakaty/downloader/lf4;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/c84;->s:Lcom/shabakaty/downloader/lf4;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/pf4;->F(Lcom/shabakaty/downloader/lf4;Lcom/shabakaty/downloader/lf4;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/c84;->s:Lcom/shabakaty/downloader/lf4;

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/c84;->r:Lcom/shabakaty/downloader/ef4;

    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/ef4;->d(Lcom/shabakaty/downloader/lf4;)V

    :cond_0
    return-void
.end method

.method public final u(J)V
    .locals 9

    .line 1
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/pf4;->E(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    invoke-virtual {p0, v2, v3, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/c84;->r:Lcom/shabakaty/downloader/ef4;

    iget-object p2, p0, Lcom/shabakaty/downloader/c84;->t:Ljava/lang/Object;

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/ef4;->e(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/c84;->r:Lcom/shabakaty/downloader/ef4;

    invoke-interface {p1}, Lcom/shabakaty/downloader/ef4;->a()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v0, v1, p1, p2}, Lcom/shabakaty/downloader/nl6;->b(JJ)J

    move-result-wide v2

    .line 7
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/c84;->s:Lcom/shabakaty/downloader/lf4;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/lf4;->u(J)V

    :cond_2
    :goto_0
    return-void
.end method
