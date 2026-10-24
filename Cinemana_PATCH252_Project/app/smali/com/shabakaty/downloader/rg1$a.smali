.class public final Lcom/shabakaty/downloader/rg1$a;
.super Lcom/shabakaty/downloader/c84;
.source "FlowableOnErrorReturn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/rg1;
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
        "Lcom/shabakaty/downloader/c84<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final v:Lcom/shabakaty/downloader/in1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/in1<",
            "-",
            "Ljava/lang/Throwable;",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ef4;Lcom/shabakaty/downloader/in1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ef4<",
            "-TT;>;",
            "Lcom/shabakaty/downloader/in1<",
            "-",
            "Ljava/lang/Throwable;",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/c84;-><init>(Lcom/shabakaty/downloader/ef4;)V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/rg1$a;->v:Lcom/shabakaty/downloader/in1;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/c84;->r:Lcom/shabakaty/downloader/ef4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/ef4;->a()V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/rg1$a;->v:Lcom/shabakaty/downloader/in1;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/in1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The valueSupplier returned a null value"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-wide v1, p0, Lcom/shabakaty/downloader/c84;->u:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_0

    .line 4
    invoke-static {p0, v1, v2}, Lcom/shabakaty/downloader/nl6;->n(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 5
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    const-wide/high16 v5, -0x8000000000000000L

    and-long v7, v1, v5

    cmp-long p1, v7, v3

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-wide v7, 0x7fffffffffffffffL

    and-long/2addr v1, v7

    cmp-long p1, v1, v3

    if-eqz p1, :cond_2

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/c84;->r:Lcom/shabakaty/downloader/ef4;

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/ef4;->e(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/c84;->r:Lcom/shabakaty/downloader/ef4;

    invoke-interface {p1}, Lcom/shabakaty/downloader/ef4;->a()V

    goto :goto_1

    .line 9
    :cond_2
    iput-object v0, p0, Lcom/shabakaty/downloader/c84;->t:Ljava/lang/Object;

    .line 10
    invoke-virtual {p0, v3, v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_1
    return-void

    :cond_3
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/shabakaty/downloader/c84;->t:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 12
    invoke-static {v0}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 13
    iget-object v1, p0, Lcom/shabakaty/downloader/c84;->r:Lcom/shabakaty/downloader/ef4;

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

.method public e(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/c84;->u:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/c84;->u:J

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/c84;->r:Lcom/shabakaty/downloader/ef4;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/ef4;->e(Ljava/lang/Object;)V

    return-void
.end method
