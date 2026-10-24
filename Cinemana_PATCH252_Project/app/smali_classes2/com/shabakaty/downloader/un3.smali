.class public final Lcom/shabakaty/downloader/un3;
.super Ljava/lang/Object;
.source "RealConnectionPool.kt"


# instance fields
.field public final a:J

.field public final b:Lcom/shabakaty/downloader/gl4;

.field public final c:Lcom/shabakaty/downloader/un3$a;

.field public final d:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/shabakaty/downloader/tn3;",
            ">;"
        }
    .end annotation
.end field

.field public final e:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/il4;IJLjava/util/concurrent/TimeUnit;)V
    .locals 2

    const-string v0, "taskRunner"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/shabakaty/downloader/un3;->e:I

    .line 2
    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shabakaty/downloader/un3;->a:J

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/il4;->f()Lcom/shabakaty/downloader/gl4;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/un3;->b:Lcom/shabakaty/downloader/gl4;

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/un3$a;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p5, Lcom/shabakaty/downloader/ry4;->g:Ljava/lang/String;

    const-string v0, " ConnectionPool"

    invoke-static {p2, p5, v0}, Lcom/shabakaty/downloader/ni4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/shabakaty/downloader/un3$a;-><init>(Lcom/shabakaty/downloader/un3;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/un3;->c:Lcom/shabakaty/downloader/un3$a;

    .line 5
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/un3;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const-wide/16 p1, 0x0

    cmp-long p5, p3, p1

    if-lez p5, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-void

    :cond_1
    const-string p1, "keepAliveDuration <= 0: "

    .line 6
    invoke-static {p1, p3, p4}, Lcom/shabakaty/downloader/kp0;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/p4;Lcom/shabakaty/downloader/pn3;Ljava/util/List;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/p4;",
            "Lcom/shabakaty/downloader/pn3;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ju3;",
            ">;Z)Z"
        }
    .end annotation

    const-string v0, "address"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/un3;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/tn3;

    const-string v2, "connection"

    .line 2
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v1

    if-eqz p4, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {v1}, Lcom/shabakaty/downloader/tn3;->k()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {v1, p1, p3}, Lcom/shabakaty/downloader/tn3;->i(Lcom/shabakaty/downloader/p4;Ljava/util/List;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 5
    :goto_1
    monitor-exit v1

    goto :goto_0

    .line 6
    :cond_1
    :try_start_1
    invoke-virtual {p2, v1}, Lcom/shabakaty/downloader/pn3;->b(Lcom/shabakaty/downloader/tn3;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 7
    monitor-exit v1

    return p1

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v1

    throw p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/shabakaty/downloader/tn3;J)I
    .locals 6

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ry4;->a:[B

    .line 2
    iget-object v0, p1, Lcom/shabakaty/downloader/tn3;->o:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/Reference;

    .line 5
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    check-cast v3, Lcom/shabakaty/downloader/pn3$b;

    const-string v4, "A connection to "

    .line 7
    invoke-static {v4}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8
    iget-object v5, p1, Lcom/shabakaty/downloader/tn3;->q:Lcom/shabakaty/downloader/ju3;

    .line 9
    iget-object v5, v5, Lcom/shabakaty/downloader/ju3;->a:Lcom/shabakaty/downloader/p4;

    .line 10
    iget-object v5, v5, Lcom/shabakaty/downloader/p4;->a:Lcom/shabakaty/downloader/qw1;

    .line 11
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " was leaked. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Did you forget to close a response body?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 12
    sget-object v5, Lcom/shabakaty/downloader/lc3;->c:Lcom/shabakaty/downloader/lc3$a;

    .line 13
    sget-object v5, Lcom/shabakaty/downloader/lc3;->a:Lcom/shabakaty/downloader/lc3;

    .line 14
    iget-object v3, v3, Lcom/shabakaty/downloader/pn3$b;->a:Ljava/lang/Object;

    .line 15
    invoke-virtual {v5, v4, v3}, Lcom/shabakaty/downloader/lc3;->k(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v3, 0x1

    .line 17
    iput-boolean v3, p1, Lcom/shabakaty/downloader/tn3;->i:Z

    .line 18
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 19
    iget-wide v2, p0, Lcom/shabakaty/downloader/un3;->a:J

    sub-long/2addr p2, v2

    .line 20
    iput-wide p2, p1, Lcom/shabakaty/downloader/tn3;->p:J

    return v1

    .line 21
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method
