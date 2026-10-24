.class public final Lcom/shabakaty/downloader/qv1;
.super Ljava/lang/Object;
.source "Http2Connection.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/qv1$b;,
        Lcom/shabakaty/downloader/qv1$d;,
        Lcom/shabakaty/downloader/qv1$c;
    }
.end annotation


# static fields
.field public static final T:Lcom/shabakaty/downloader/q24;

.field public static final U:Lcom/shabakaty/downloader/qv1;


# instance fields
.field public final A:Lcom/shabakaty/downloader/gl4;

.field public final B:Lcom/shabakaty/downloader/gl4;

.field public final C:Lcom/shabakaty/downloader/zj3;

.field public D:J

.field public E:J

.field public F:J

.field public G:J

.field public H:J

.field public I:J

.field public final J:Lcom/shabakaty/downloader/q24;

.field public K:Lcom/shabakaty/downloader/q24;

.field public L:J

.field public M:J

.field public N:J

.field public O:J

.field public final P:Ljava/net/Socket;

.field public final Q:Lcom/shabakaty/downloader/aw1;

.field public final R:Lcom/shabakaty/downloader/qv1$d;

.field public final S:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Z

.field public final s:Lcom/shabakaty/downloader/qv1$c;

.field public final t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/shabakaty/downloader/zv1;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Ljava/lang/String;

.field public v:I

.field public w:I

.field public x:Z

.field public final y:Lcom/shabakaty/downloader/il4;

.field public final z:Lcom/shabakaty/downloader/gl4;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/q24;

    invoke-direct {v0}, Lcom/shabakaty/downloader/q24;-><init>()V

    const/4 v1, 0x7

    const v2, 0xffff

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/q24;->c(II)Lcom/shabakaty/downloader/q24;

    const/4 v1, 0x5

    const/16 v2, 0x4000

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/q24;->c(II)Lcom/shabakaty/downloader/q24;

    .line 4
    sput-object v0, Lcom/shabakaty/downloader/qv1;->T:Lcom/shabakaty/downloader/q24;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/qv1$b;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-boolean v0, p1, Lcom/shabakaty/downloader/qv1$b;->h:Z

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/qv1;->r:Z

    .line 4
    iget-object v1, p1, Lcom/shabakaty/downloader/qv1$b;->e:Lcom/shabakaty/downloader/qv1$c;

    .line 5
    iput-object v1, p0, Lcom/shabakaty/downloader/qv1;->s:Lcom/shabakaty/downloader/qv1$c;

    .line 6
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/shabakaty/downloader/qv1;->t:Ljava/util/Map;

    .line 7
    iget-object v1, p1, Lcom/shabakaty/downloader/qv1$b;->b:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 8
    iput-object v1, p0, Lcom/shabakaty/downloader/qv1;->u:Ljava/lang/String;

    .line 9
    iget-boolean v3, p1, Lcom/shabakaty/downloader/qv1$b;->h:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    .line 10
    :goto_0
    iput v3, p0, Lcom/shabakaty/downloader/qv1;->w:I

    .line 11
    iget-object v3, p1, Lcom/shabakaty/downloader/qv1$b;->i:Lcom/shabakaty/downloader/il4;

    .line 12
    iput-object v3, p0, Lcom/shabakaty/downloader/qv1;->y:Lcom/shabakaty/downloader/il4;

    .line 13
    invoke-virtual {v3}, Lcom/shabakaty/downloader/il4;->f()Lcom/shabakaty/downloader/gl4;

    move-result-object v4

    iput-object v4, p0, Lcom/shabakaty/downloader/qv1;->z:Lcom/shabakaty/downloader/gl4;

    .line 14
    invoke-virtual {v3}, Lcom/shabakaty/downloader/il4;->f()Lcom/shabakaty/downloader/gl4;

    move-result-object v5

    iput-object v5, p0, Lcom/shabakaty/downloader/qv1;->A:Lcom/shabakaty/downloader/gl4;

    .line 15
    invoke-virtual {v3}, Lcom/shabakaty/downloader/il4;->f()Lcom/shabakaty/downloader/gl4;

    move-result-object v3

    iput-object v3, p0, Lcom/shabakaty/downloader/qv1;->B:Lcom/shabakaty/downloader/gl4;

    .line 16
    iget-object v3, p1, Lcom/shabakaty/downloader/qv1$b;->f:Lcom/shabakaty/downloader/zj3;

    .line 17
    iput-object v3, p0, Lcom/shabakaty/downloader/qv1;->C:Lcom/shabakaty/downloader/zj3;

    .line 18
    new-instance v3, Lcom/shabakaty/downloader/q24;

    invoke-direct {v3}, Lcom/shabakaty/downloader/q24;-><init>()V

    .line 19
    iget-boolean v5, p1, Lcom/shabakaty/downloader/qv1$b;->h:Z

    if-eqz v5, :cond_1

    const/4 v5, 0x7

    const/high16 v6, 0x1000000

    .line 20
    invoke-virtual {v3, v5, v6}, Lcom/shabakaty/downloader/q24;->c(II)Lcom/shabakaty/downloader/q24;

    .line 21
    :cond_1
    iput-object v3, p0, Lcom/shabakaty/downloader/qv1;->J:Lcom/shabakaty/downloader/q24;

    .line 22
    sget-object v3, Lcom/shabakaty/downloader/qv1;->T:Lcom/shabakaty/downloader/q24;

    iput-object v3, p0, Lcom/shabakaty/downloader/qv1;->K:Lcom/shabakaty/downloader/q24;

    .line 23
    invoke-virtual {v3}, Lcom/shabakaty/downloader/q24;->a()I

    move-result v3

    int-to-long v5, v3

    iput-wide v5, p0, Lcom/shabakaty/downloader/qv1;->O:J

    .line 24
    iget-object v3, p1, Lcom/shabakaty/downloader/qv1$b;->a:Ljava/net/Socket;

    if-eqz v3, :cond_5

    .line 25
    iput-object v3, p0, Lcom/shabakaty/downloader/qv1;->P:Ljava/net/Socket;

    .line 26
    new-instance v3, Lcom/shabakaty/downloader/aw1;

    .line 27
    iget-object v5, p1, Lcom/shabakaty/downloader/qv1$b;->d:Lcom/shabakaty/downloader/do;

    if-eqz v5, :cond_4

    .line 28
    invoke-direct {v3, v5, v0}, Lcom/shabakaty/downloader/aw1;-><init>(Lcom/shabakaty/downloader/do;Z)V

    iput-object v3, p0, Lcom/shabakaty/downloader/qv1;->Q:Lcom/shabakaty/downloader/aw1;

    .line 29
    new-instance v3, Lcom/shabakaty/downloader/qv1$d;

    new-instance v5, Lcom/shabakaty/downloader/yv1;

    .line 30
    iget-object v6, p1, Lcom/shabakaty/downloader/qv1$b;->c:Lcom/shabakaty/downloader/eo;

    if-eqz v6, :cond_3

    .line 31
    invoke-direct {v5, v6, v0}, Lcom/shabakaty/downloader/yv1;-><init>(Lcom/shabakaty/downloader/eo;Z)V

    invoke-direct {v3, p0, v5}, Lcom/shabakaty/downloader/qv1$d;-><init>(Lcom/shabakaty/downloader/qv1;Lcom/shabakaty/downloader/yv1;)V

    iput-object v3, p0, Lcom/shabakaty/downloader/qv1;->R:Lcom/shabakaty/downloader/qv1$d;

    .line 32
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/qv1;->S:Ljava/util/Set;

    .line 33
    iget p1, p1, Lcom/shabakaty/downloader/qv1$b;->g:I

    if-eqz p1, :cond_2

    .line 34
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    const-string p1, " ping"

    .line 35
    invoke-static {v1, p1}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 36
    new-instance p1, Lcom/shabakaty/downloader/qv1$a;

    move-object v5, p1

    move-object v6, v7

    move-object v8, p0

    move-wide v9, v2

    invoke-direct/range {v5 .. v10}, Lcom/shabakaty/downloader/qv1$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/qv1;J)V

    invoke-virtual {v4, p1, v2, v3}, Lcom/shabakaty/downloader/gl4;->c(Lcom/shabakaty/downloader/wk4;J)V

    :cond_2
    return-void

    :cond_3
    const-string p1, "source"

    .line 37
    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v2

    :cond_4
    const-string p1, "sink"

    .line 38
    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v2

    :cond_5
    const-string p1, "socket"

    .line 39
    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v2

    :cond_6
    const-string p1, "connectionName"

    .line 40
    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/s41;Lcom/shabakaty/downloader/s41;Ljava/io/IOException;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ry4;->a:[B

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/qv1;->e(Lcom/shabakaty/downloader/s41;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    .line 3
    monitor-enter p0

    .line 4
    :try_start_1
    iget-object v0, p0, Lcom/shabakaty/downloader/qv1;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/qv1;->t:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    new-array v0, v1, [Lcom/shabakaty/downloader/zv1;

    .line 6
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, [Lcom/shabakaty/downloader/zv1;

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/qv1;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :cond_1
    :goto_0
    monitor-exit p0

    if-eqz p1, :cond_2

    .line 10
    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 11
    :try_start_2
    invoke-virtual {v2, p2, p3}, Lcom/shabakaty/downloader/zv1;->c(Lcom/shabakaty/downloader/s41;Ljava/io/IOException;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 12
    :cond_2
    :try_start_3
    iget-object p1, p0, Lcom/shabakaty/downloader/qv1;->Q:Lcom/shabakaty/downloader/aw1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/aw1;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 13
    :catch_2
    :try_start_4
    iget-object p1, p0, Lcom/shabakaty/downloader/qv1;->P:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 14
    :catch_3
    iget-object p1, p0, Lcom/shabakaty/downloader/qv1;->z:Lcom/shabakaty/downloader/gl4;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/gl4;->f()V

    .line 15
    iget-object p1, p0, Lcom/shabakaty/downloader/qv1;->A:Lcom/shabakaty/downloader/gl4;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/gl4;->f()V

    .line 16
    iget-object p1, p0, Lcom/shabakaty/downloader/qv1;->B:Lcom/shabakaty/downloader/gl4;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/gl4;->f()V

    return-void

    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(I)Lcom/shabakaty/downloader/zv1;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/qv1;->t:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/zv1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public close()V
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/s41;->s:Lcom/shabakaty/downloader/s41;

    sget-object v1, Lcom/shabakaty/downloader/s41;->x:Lcom/shabakaty/downloader/s41;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/shabakaty/downloader/qv1;->a(Lcom/shabakaty/downloader/s41;Lcom/shabakaty/downloader/s41;Ljava/io/IOException;)V

    return-void
.end method

.method public final declared-synchronized d(I)Lcom/shabakaty/downloader/zv1;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/qv1;->t:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/zv1;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final e(Lcom/shabakaty/downloader/s41;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qv1;->Q:Lcom/shabakaty/downloader/aw1;

    monitor-enter v0

    .line 2
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-boolean v1, p0, Lcom/shabakaty/downloader/qv1;->x:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 4
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 5
    :try_start_3
    iput-boolean v1, p0, Lcom/shabakaty/downloader/qv1;->x:Z

    .line 6
    iget v1, p0, Lcom/shabakaty/downloader/qv1;->v:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7
    :try_start_4
    monitor-exit p0

    .line 8
    iget-object v2, p0, Lcom/shabakaty/downloader/qv1;->Q:Lcom/shabakaty/downloader/aw1;

    sget-object v3, Lcom/shabakaty/downloader/ry4;->a:[B

    invoke-virtual {v2, v1, p1, v3}, Lcom/shabakaty/downloader/aw1;->d(ILcom/shabakaty/downloader/s41;[B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_5
    monitor-exit p0

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    .line 11
    monitor-exit v0

    throw p1
.end method

.method public final declared-synchronized f(J)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/qv1;->L:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/shabakaty/downloader/qv1;->L:J

    .line 2
    iget-wide p1, p0, Lcom/shabakaty/downloader/qv1;->M:J

    sub-long/2addr v0, p1

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/qv1;->J:Lcom/shabakaty/downloader/q24;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/q24;->a()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-long p1, p1

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Lcom/shabakaty/downloader/qv1;->o(IJ)V

    .line 5
    iget-wide p1, p0, Lcom/shabakaty/downloader/qv1;->M:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/shabakaty/downloader/qv1;->M:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final g(IZLcom/shabakaty/downloader/zn;J)V
    .locals 8

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p4, v1

    if-nez v3, :cond_0

    .line 1
    iget-object p4, p0, Lcom/shabakaty/downloader/qv1;->Q:Lcom/shabakaty/downloader/aw1;

    invoke-virtual {p4, p2, p1, p3, v0}, Lcom/shabakaty/downloader/aw1;->b(ZILcom/shabakaty/downloader/zn;I)V

    return-void

    :cond_0
    :goto_0
    cmp-long v3, p4, v1

    if-lez v3, :cond_4

    .line 2
    monitor-enter p0

    .line 3
    :goto_1
    :try_start_0
    iget-wide v3, p0, Lcom/shabakaty/downloader/qv1;->N:J

    iget-wide v5, p0, Lcom/shabakaty/downloader/qv1;->O:J

    cmp-long v7, v3, v5

    if-ltz v7, :cond_2

    .line 4
    iget-object v3, p0, Lcom/shabakaty/downloader/qv1;->t:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 6
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    sub-long/2addr v5, v3

    .line 7
    :try_start_1
    invoke-static {p4, p5, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    .line 8
    iget-object v3, p0, Lcom/shabakaty/downloader/qv1;->Q:Lcom/shabakaty/downloader/aw1;

    .line 9
    iget v3, v3, Lcom/shabakaty/downloader/aw1;->s:I

    .line 10
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 11
    iget-wide v4, p0, Lcom/shabakaty/downloader/qv1;->N:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/shabakaty/downloader/qv1;->N:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    monitor-exit p0

    sub-long/2addr p4, v6

    .line 13
    iget-object v4, p0, Lcom/shabakaty/downloader/qv1;->Q:Lcom/shabakaty/downloader/aw1;

    if-eqz p2, :cond_3

    cmp-long v5, p4, v1

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4, v5, p1, p3, v3}, Lcom/shabakaty/downloader/aw1;->b(ZILcom/shabakaty/downloader/zn;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 14
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 15
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    :goto_3
    monitor-exit p0

    throw p1

    :cond_4
    return-void
.end method

.method public final j(ZII)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/qv1;->Q:Lcom/shabakaty/downloader/aw1;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shabakaty/downloader/aw1;->f(ZII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/s41;->t:Lcom/shabakaty/downloader/s41;

    invoke-virtual {p0, p2, p2, p1}, Lcom/shabakaty/downloader/qv1;->a(Lcom/shabakaty/downloader/s41;Lcom/shabakaty/downloader/s41;Ljava/io/IOException;)V

    :goto_0
    return-void
.end method

.method public final k(ILcom/shabakaty/downloader/s41;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qv1;->z:Lcom/shabakaty/downloader/gl4;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shabakaty/downloader/qv1;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] writeSynReset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/qv1$e;

    const/4 v7, 0x1

    move-object v3, v1

    move-object v4, v6

    move v5, v7

    move-object v8, p0

    move v9, p1

    move-object v10, p2

    invoke-direct/range {v3 .. v10}, Lcom/shabakaty/downloader/qv1$e;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/shabakaty/downloader/qv1;ILcom/shabakaty/downloader/s41;)V

    const-wide/16 p1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/shabakaty/downloader/gl4;->c(Lcom/shabakaty/downloader/wk4;J)V

    return-void
.end method

.method public final o(IJ)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qv1;->z:Lcom/shabakaty/downloader/gl4;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shabakaty/downloader/qv1;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] windowUpdate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/qv1$f;

    const/4 v7, 0x1

    move-object v3, v1

    move-object v4, v6

    move v5, v7

    move-object v8, p0

    move v9, p1

    move-wide v10, p2

    invoke-direct/range {v3 .. v11}, Lcom/shabakaty/downloader/qv1$f;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/shabakaty/downloader/qv1;IJ)V

    const-wide/16 p1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/shabakaty/downloader/gl4;->c(Lcom/shabakaty/downloader/wk4;J)V

    return-void
.end method
