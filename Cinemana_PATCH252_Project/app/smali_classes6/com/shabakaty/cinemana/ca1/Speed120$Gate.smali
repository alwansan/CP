.class final Lcom/shabakaty/cinemana/ca1/Speed120$Gate;
.super Ljava/lang/Object;
.source "Speed120.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ca1/Speed120;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Gate"
.end annotation


# instance fields
.field next:J

.field final pending:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayDeque<",
            "Lcom/shabakaty/cinemana/ca1/Speed120$Request;",
            ">;>;"
        }
    .end annotation
.end field

.field rate:J


# direct methods
.method constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/Speed120$Gate;->pending:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method declared-synchronized acquire(Lcom/shabakaty/cinemana/ca1/Speed120$Limited;I)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 39
    :try_start_0
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Speed120;->poll()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x186a0

    mul-long v0, v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/cinemana/ca1/Speed120$Gate;->rate(J)V

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ca1/Speed120$Limited;->check()V

    .line 40
    new-instance v0, Lcom/shabakaty/cinemana/ca1/Speed120$Request;

    iget v1, p1, Lcom/shabakaty/cinemana/ca1/Speed120$Limited;->id:I

    invoke-direct {v0, v1, p2}, Lcom/shabakaty/cinemana/ca1/Speed120$Request;-><init>(II)V

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Speed120$Gate;->pending:Ljava/util/LinkedHashMap;

    iget v4, v0, Lcom/shabakaty/cinemana/ca1/Speed120$Request;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayDeque;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iget-object v4, p0, Lcom/shabakaty/cinemana/ca1/Speed120$Gate;->pending:Ljava/util/LinkedHashMap;

    iget v5, v0, Lcom/shabakaty/cinemana/ca1/Speed120$Request;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 41
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ca1/Speed120$Limited;->check()V

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Speed120;->poll()I

    move-result v1

    int-to-long v4, v1

    mul-long v4, v4, v2

    invoke-virtual {p0, v4, v5}, Lcom/shabakaty/cinemana/ca1/Speed120$Gate;->rate(J)V

    .line 42
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Speed120$Gate;->pending:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 43
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayDeque;

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_4

    iget-wide v6, p0, Lcom/shabakaty/cinemana/ca1/Speed120$Gate;->rate:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-eqz v10, :cond_1

    iget-wide v10, p0, Lcom/shabakaty/cinemana/ca1/Speed120$Gate;->next:J

    cmp-long v12, v4, v10

    if-ltz v12, :cond_4

    .line 44
    :cond_1
    cmp-long p1, v6, v8

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    int-to-long p1, p2

    const-wide/32 v2, 0x3b9aca00

    mul-long p1, p1, v2

    div-long/2addr p1, v6

    add-long/2addr v4, p1

    :goto_1
    iput-wide v4, p0, Lcom/shabakaty/cinemana/ca1/Speed120$Gate;->next:J

    .line 45
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Speed120$Gate;->pending:Ljava/util/LinkedHashMap;

    iget p2, v0, Lcom/shabakaty/cinemana/ca1/Speed120$Request;->id:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Speed120$Gate;->pending:Ljava/util/LinkedHashMap;

    iget p2, v0, Lcom/shabakaty/cinemana/ca1/Speed120$Request;->id:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {p1, p2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/shabakaty/cinemana/ca1/Speed120$Gate;->remove(Lcom/shabakaty/cinemana/ca1/Speed120$Request;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 45
    monitor-exit p0

    return-wide v6

    .line 47
    :cond_4
    :try_start_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    const-wide/32 v6, 0x2faf080

    if-ne v1, v0, :cond_5

    iget-wide v8, p0, Lcom/shabakaty/cinemana/ca1/Speed120$Gate;->next:J

    sub-long/2addr v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 48
    :cond_5
    :try_start_4
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p0, v6, v7}, Ljava/util/concurrent/TimeUnit;->timedWait(Ljava/lang/Object;J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 49
    goto/16 :goto_0

    .line 48
    :catch_0
    move-exception p1

    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    new-instance p1, Ljava/io/InterruptedIOException;

    const-string p2, "download interrupted"

    invoke-direct {p1, p2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 49
    :catchall_0
    move-exception p1

    :try_start_6
    invoke-virtual {p0, v0}, Lcom/shabakaty/cinemana/ca1/Speed120$Gate;->remove(Lcom/shabakaty/cinemana/ca1/Speed120$Request;)V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 38
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized pendingCount()I
    .locals 3

    monitor-enter p0

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Speed120$Gate;->pending:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    monitor-exit p0

    return v1

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized rate(J)V
    .locals 3

    monitor-enter p0

    .line 35
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/cinemana/ca1/Speed120$Gate;->rate:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    iput-wide p1, p0, Lcom/shabakaty/cinemana/ca1/Speed120$Gate;->rate:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/shabakaty/cinemana/ca1/Speed120$Gate;->next:J

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 35
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized refund(IJ)V
    .locals 8

    monitor-enter p0

    .line 51
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/cinemana/ca1/Speed120$Gate;->rate:J

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    if-lez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/shabakaty/cinemana/ca1/Speed120$Gate;->next:J

    int-to-long v4, p1

    const-wide/32 v6, 0x3b9aca00

    mul-long v4, v4, v6

    div-long/2addr v4, p2

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/shabakaty/cinemana/ca1/Speed120$Gate;->next:J

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 51
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 51
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method remove(Lcom/shabakaty/cinemana/ca1/Speed120$Request;)V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Speed120$Gate;->pending:Ljava/util/LinkedHashMap;

    iget v1, p1, Lcom/shabakaty/cinemana/ca1/Speed120$Request;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayDeque;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Speed120$Gate;->pending:Ljava/util/LinkedHashMap;

    iget p1, p1, Lcom/shabakaty/cinemana/ca1/Speed120$Request;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method
