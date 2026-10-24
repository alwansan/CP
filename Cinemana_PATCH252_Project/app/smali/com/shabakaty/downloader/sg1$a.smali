.class public final Lcom/shabakaty/downloader/sg1$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableRetryPredicate.java"

# interfaces
.implements Lcom/shabakaty/downloader/wg1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/sg1;
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
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lcom/shabakaty/downloader/wg1<",
        "TT;>;"
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

.field public final s:Lcom/shabakaty/downloader/of4;

.field public final t:Lcom/shabakaty/downloader/wj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/wj3<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final u:Lcom/shabakaty/downloader/ye3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ye3<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public v:J

.field public w:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ef4;JLcom/shabakaty/downloader/ye3;Lcom/shabakaty/downloader/of4;Lcom/shabakaty/downloader/wj3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ef4<",
            "-TT;>;J",
            "Lcom/shabakaty/downloader/ye3<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lcom/shabakaty/downloader/of4;",
            "Lcom/shabakaty/downloader/wj3<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/sg1$a;->r:Lcom/shabakaty/downloader/ef4;

    .line 3
    iput-object p5, p0, Lcom/shabakaty/downloader/sg1$a;->s:Lcom/shabakaty/downloader/of4;

    .line 4
    iput-object p6, p0, Lcom/shabakaty/downloader/sg1$a;->t:Lcom/shabakaty/downloader/wj3;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/sg1$a;->u:Lcom/shabakaty/downloader/ye3;

    .line 6
    iput-wide p2, p0, Lcom/shabakaty/downloader/sg1$a;->v:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sg1$a;->r:Lcom/shabakaty/downloader/ef4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/ef4;->a()V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/sg1$a;->v:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    .line 2
    iput-wide v2, p0, Lcom/shabakaty/downloader/sg1$a;->v:J

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/sg1$a;->r:Lcom/shabakaty/downloader/ef4;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/sg1$a;->u:Lcom/shabakaty/downloader/ye3;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/ye3;->a(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/sg1$a;->r:Lcom/shabakaty/downloader/ef4;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    return-void

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/sg1$a;->c()V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 7
    invoke-static {v0}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/sg1$a;->r:Lcom/shabakaty/downloader/ef4;

    new-instance v2, Lcom/shabakaty/downloader/d90;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v0, v3, p1

    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/d90;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/sg1$a;->s:Lcom/shabakaty/downloader/of4;

    .line 3
    iget-boolean v1, v1, Lcom/shabakaty/downloader/of4;->x:Z

    if-eqz v1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-wide v1, p0, Lcom/shabakaty/downloader/sg1$a;->w:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 5
    iput-wide v3, p0, Lcom/shabakaty/downloader/sg1$a;->w:J

    .line 6
    iget-object v3, p0, Lcom/shabakaty/downloader/sg1$a;->s:Lcom/shabakaty/downloader/of4;

    invoke-virtual {v3, v1, v2}, Lcom/shabakaty/downloader/of4;->h(J)V

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/sg1$a;->t:Lcom/shabakaty/downloader/wj3;

    invoke-interface {v1, p0}, Lcom/shabakaty/downloader/wj3;->a(Lcom/shabakaty/downloader/ef4;)V

    neg-int v0, v0

    .line 8
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    return-void
.end method

.method public d(Lcom/shabakaty/downloader/lf4;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sg1$a;->s:Lcom/shabakaty/downloader/of4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/of4;->i(Lcom/shabakaty/downloader/lf4;)V

    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/sg1$a;->w:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/sg1$a;->w:J

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/sg1$a;->r:Lcom/shabakaty/downloader/ef4;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/ef4;->e(Ljava/lang/Object;)V

    return-void
.end method
