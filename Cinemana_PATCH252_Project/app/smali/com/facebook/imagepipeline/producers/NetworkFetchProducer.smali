.class public Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;
.super Ljava/lang/Object;
.source "NetworkFetchProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/Producer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/Producer<",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/facebook/common/memory/PooledByteBufferFactory;

.field public final b:Lcom/facebook/common/memory/ByteArrayPool;

.field public final c:Lcom/facebook/imagepipeline/producers/NetworkFetcher;


# direct methods
.method public constructor <init>(Lcom/facebook/common/memory/PooledByteBufferFactory;Lcom/facebook/common/memory/ByteArrayPool;Lcom/facebook/imagepipeline/producers/NetworkFetcher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->a:Lcom/facebook/common/memory/PooledByteBufferFactory;

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->b:Lcom/facebook/common/memory/ByteArrayPool;

    .line 4
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->c:Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    return-void
.end method

.method public static d(Lcom/facebook/common/memory/PooledByteBufferOutputStream;ILcom/facebook/imagepipeline/common/BytesRange;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/memory/PooledByteBufferOutputStream;",
            "I",
            "Lcom/facebook/imagepipeline/common/BytesRange;",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")V"
        }
    .end annotation

    .line 1
    check-cast p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;

    .line 2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->b()Lcom/facebook/imagepipeline/memory/MemoryPooledByteBuffer;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/facebook/common/references/CloseableReference;->k(Ljava/io/Closeable;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p0

    const/4 p2, 0x0

    .line 4
    :try_start_0
    new-instance v0, Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/image/EncodedImage;-><init>(Lcom/facebook/common/references/CloseableReference;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    iput-object p2, v0, Lcom/facebook/imagepipeline/image/EncodedImage;->A:Lcom/facebook/imagepipeline/common/BytesRange;

    .line 6
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/image/EncodedImage;->j()V

    .line 7
    sget-object p2, Lcom/facebook/imagepipeline/image/EncodedImageOrigin;->s:Lcom/facebook/imagepipeline/image/EncodedImageOrigin;

    invoke-interface {p4, p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->g(Lcom/facebook/imagepipeline/image/EncodedImageOrigin;)V

    .line 8
    invoke-interface {p3, v0, p1}, Lcom/facebook/imagepipeline/producers/Consumer;->c(Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/image/EncodedImage;->close()V

    .line 10
    invoke-virtual {p0}, Lcom/facebook/common/references/CloseableReference;->close()V

    return-void

    :catchall_0
    move-exception p1

    move-object p2, v0

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz p2, :cond_0

    .line 11
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->close()V

    :cond_0
    if-eqz p0, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/facebook/common/references/CloseableReference;->close()V

    .line 13
    :cond_1
    throw p1
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->n()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v0

    const-string v1, "NetworkFetchProducer"

    invoke-interface {v0, p2, v1}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->e(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->c:Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    check-cast v0, Lcom/facebook/imagepipeline/producers/HttpUrlConnectionNetworkFetcher;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/facebook/imagepipeline/producers/HttpUrlConnectionNetworkFetcher$HttpUrlConnectionNetworkFetchState;

    invoke-direct {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/HttpUrlConnectionNetworkFetcher$HttpUrlConnectionNetworkFetchState;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 4
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->c:Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    new-instance v1, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer$1;

    invoke-direct {v1, p0, v0}, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer$1;-><init>(Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;Lcom/facebook/imagepipeline/producers/FetchState;)V

    check-cast p1, Lcom/facebook/imagepipeline/producers/HttpUrlConnectionNetworkFetcher;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v2, p1, Lcom/facebook/imagepipeline/producers/HttpUrlConnectionNetworkFetcher;->c:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v2}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v2

    .line 6
    iput-wide v2, v0, Lcom/facebook/imagepipeline/producers/HttpUrlConnectionNetworkFetcher$HttpUrlConnectionNetworkFetchState;->d:J

    .line 7
    iget-object v2, p1, Lcom/facebook/imagepipeline/producers/HttpUrlConnectionNetworkFetcher;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/facebook/imagepipeline/producers/HttpUrlConnectionNetworkFetcher$1;

    invoke-direct {v3, p1, v0, v1}, Lcom/facebook/imagepipeline/producers/HttpUrlConnectionNetworkFetcher$1;-><init>(Lcom/facebook/imagepipeline/producers/HttpUrlConnectionNetworkFetcher;Lcom/facebook/imagepipeline/producers/HttpUrlConnectionNetworkFetcher$HttpUrlConnectionNetworkFetchState;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;)V

    .line 8
    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 9
    new-instance v2, Lcom/facebook/imagepipeline/producers/HttpUrlConnectionNetworkFetcher$2;

    invoke-direct {v2, p1, v0, v1}, Lcom/facebook/imagepipeline/producers/HttpUrlConnectionNetworkFetcher$2;-><init>(Lcom/facebook/imagepipeline/producers/HttpUrlConnectionNetworkFetcher;Ljava/util/concurrent/Future;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;)V

    .line 10
    invoke-interface {p2, v2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->d(Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;)V

    return-void
.end method

.method public b(Lcom/facebook/common/memory/PooledByteBufferOutputStream;Lcom/facebook/imagepipeline/producers/FetchState;)V
    .locals 9

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;

    .line 2
    iget v0, v0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->t:I

    .line 3
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/FetchState;->a()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v1

    .line 4
    iget-object v2, p2, Lcom/facebook/imagepipeline/producers/FetchState;->b:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v3, "NetworkFetchProducer"

    .line 5
    invoke-interface {v1, v2, v3}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->g(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v4, v2

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->c:Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    check-cast v1, Lcom/facebook/imagepipeline/producers/HttpUrlConnectionNetworkFetcher;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-object v1, p2

    check-cast v1, Lcom/facebook/imagepipeline/producers/HttpUrlConnectionNetworkFetcher$HttpUrlConnectionNetworkFetchState;

    .line 8
    new-instance v4, Ljava/util/HashMap;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 9
    iget-wide v5, v1, Lcom/facebook/imagepipeline/producers/HttpUrlConnectionNetworkFetcher$HttpUrlConnectionNetworkFetchState;->e:J

    .line 10
    iget-wide v7, v1, Lcom/facebook/imagepipeline/producers/HttpUrlConnectionNetworkFetcher$HttpUrlConnectionNetworkFetchState;->d:J

    sub-long/2addr v5, v7

    .line 11
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "queue_time"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-wide v5, v1, Lcom/facebook/imagepipeline/producers/HttpUrlConnectionNetworkFetcher$HttpUrlConnectionNetworkFetchState;->f:J

    .line 13
    iget-wide v7, v1, Lcom/facebook/imagepipeline/producers/HttpUrlConnectionNetworkFetcher$HttpUrlConnectionNetworkFetchState;->e:J

    sub-long/2addr v5, v7

    .line 14
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "fetch_time"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-wide v5, v1, Lcom/facebook/imagepipeline/producers/HttpUrlConnectionNetworkFetcher$HttpUrlConnectionNetworkFetchState;->f:J

    .line 16
    iget-wide v7, v1, Lcom/facebook/imagepipeline/producers/HttpUrlConnectionNetworkFetcher$HttpUrlConnectionNetworkFetchState;->d:J

    sub-long/2addr v5, v7

    .line 17
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v5, "total_time"

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "image_size"

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :goto_0
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/FetchState;->a()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v0

    .line 20
    iget-object v1, p2, Lcom/facebook/imagepipeline/producers/FetchState;->b:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 21
    invoke-interface {v0, v1, v3, v4}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->j(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V

    .line 22
    iget-object v1, p2, Lcom/facebook/imagepipeline/producers/FetchState;->b:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const/4 v4, 0x1

    .line 23
    invoke-interface {v0, v1, v3, v4}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->c(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Z)V

    .line 24
    iget-object v0, p2, Lcom/facebook/imagepipeline/producers/FetchState;->b:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v1, "network"

    .line 25
    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->m(Ljava/lang/String;)V

    .line 26
    iget-object v0, p2, Lcom/facebook/imagepipeline/producers/FetchState;->a:Lcom/facebook/imagepipeline/producers/Consumer;

    .line 27
    iget-object p2, p2, Lcom/facebook/imagepipeline/producers/FetchState;->b:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 28
    invoke-static {p1, v4, v2, v0, p2}, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->d(Lcom/facebook/common/memory/PooledByteBufferOutputStream;ILcom/facebook/imagepipeline/common/BytesRange;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    return-void
.end method

.method public c(Lcom/facebook/common/memory/PooledByteBufferOutputStream;Lcom/facebook/imagepipeline/producers/FetchState;)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2
    iget-object v2, p2, Lcom/facebook/imagepipeline/producers/FetchState;->b:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 3
    invoke-interface {v2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->o()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->c:Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_1

    .line 5
    iget-wide v4, p2, Lcom/facebook/imagepipeline/producers/FetchState;->c:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x64

    cmp-long v2, v4, v6

    if-ltz v2, :cond_1

    .line 6
    iput-wide v0, p2, Lcom/facebook/imagepipeline/producers/FetchState;->c:J

    .line 7
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/FetchState;->a()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v0

    .line 8
    iget-object v1, p2, Lcom/facebook/imagepipeline/producers/FetchState;->b:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v2, "NetworkFetchProducer"

    const-string v4, "intermediate_result"

    .line 9
    invoke-interface {v0, v1, v2, v4}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->a(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 10
    iget-object v1, p2, Lcom/facebook/imagepipeline/producers/FetchState;->a:Lcom/facebook/imagepipeline/producers/Consumer;

    .line 11
    iget-object p2, p2, Lcom/facebook/imagepipeline/producers/FetchState;->b:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 12
    invoke-static {p1, v3, v0, v1, p2}, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->d(Lcom/facebook/common/memory/PooledByteBufferOutputStream;ILcom/facebook/imagepipeline/common/BytesRange;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    :cond_1
    return-void
.end method
