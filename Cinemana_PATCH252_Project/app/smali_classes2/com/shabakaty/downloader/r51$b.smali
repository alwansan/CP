.class public abstract Lcom/shabakaty/downloader/r51$b;
.super Ljava/lang/Object;
.source "EventLoop.common.kt"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Lcom/shabakaty/downloader/ou0;
.implements Lcom/shabakaty/downloader/dn4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/r51;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lcom/shabakaty/downloader/r51$b;",
        ">;",
        "Lcom/shabakaty/downloader/ou0;",
        "Lcom/shabakaty/downloader/dn4;"
    }
.end annotation


# instance fields
.field public r:Ljava/lang/Object;

.field public s:I

.field public t:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/shabakaty/downloader/r51$b;->t:J

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/r51$b;->s:I

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/r51$b;

    .line 2
    iget-wide v0, p0, Lcom/shabakaty/downloader/r51$b;->t:J

    iget-wide v2, p1, Lcom/shabakaty/downloader/r51$b;->t:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shabakaty/downloader/r51$b;->s:I

    return-void
.end method

.method public final declared-synchronized h()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/r51$b;->r:Ljava/lang/Object;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/t51;->a:Lcom/shabakaty/downloader/j61;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v0, v1, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    instance-of v2, v0, Lcom/shabakaty/downloader/r51$c;

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    check-cast v0, Lcom/shabakaty/downloader/r51$c;

    if-eqz v0, :cond_3

    .line 5
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :try_start_2
    invoke-interface {p0}, Lcom/shabakaty/downloader/dn4;->u()Lcom/shabakaty/downloader/cn4;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-interface {p0}, Lcom/shabakaty/downloader/dn4;->j()I

    move-result v2

    .line 8
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/cn4;->d(I)Lcom/shabakaty/downloader/dn4;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    :goto_0
    :try_start_3
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 10
    :cond_3
    :goto_1
    iput-object v1, p0, Lcom/shabakaty/downloader/r51$b;->r:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 11
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/r51$b;->s:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Delayed[nanos="

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/shabakaty/downloader/r51$b;->t:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lcom/shabakaty/downloader/cn4;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/cn4<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/r51$b;->r:Ljava/lang/Object;

    instance-of v1, v0, Lcom/shabakaty/downloader/cn4;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/shabakaty/downloader/cn4;

    return-object v0
.end method

.method public y(Lcom/shabakaty/downloader/cn4;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/cn4<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/r51$b;->r:Ljava/lang/Object;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/t51;->a:Lcom/shabakaty/downloader/j61;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/r51$b;->r:Ljava/lang/Object;

    return-void

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
