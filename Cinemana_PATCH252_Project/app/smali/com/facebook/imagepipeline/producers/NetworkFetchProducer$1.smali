.class public Lcom/facebook/imagepipeline/producers/NetworkFetchProducer$1;
.super Ljava/lang/Object;
.source "NetworkFetchProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->a(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/facebook/imagepipeline/producers/FetchState;

.field public final synthetic b:Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;Lcom/facebook/imagepipeline/producers/FetchState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer$1;->b:Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer$1;->a:Lcom/facebook/imagepipeline/producers/FetchState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer$1;->b:Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer$1;->a:Lcom/facebook/imagepipeline/producers/FetchState;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/producers/FetchState;->a()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v0

    .line 4
    iget-object v2, v1, Lcom/facebook/imagepipeline/producers/FetchState;->b:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v3, "NetworkFetchProducer"

    const/4 v4, 0x0

    .line 5
    invoke-interface {v0, v2, v3, p1, v4}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->k(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 6
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/producers/FetchState;->a()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v0

    .line 7
    iget-object v2, v1, Lcom/facebook/imagepipeline/producers/FetchState;->b:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const/4 v4, 0x0

    .line 8
    invoke-interface {v0, v2, v3, v4}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->c(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Z)V

    .line 9
    iget-object v0, v1, Lcom/facebook/imagepipeline/producers/FetchState;->b:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v2, "network"

    .line 10
    invoke-interface {v0, v2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->m(Ljava/lang/String;)V

    .line 11
    iget-object v0, v1, Lcom/facebook/imagepipeline/producers/FetchState;->a:Lcom/facebook/imagepipeline/producers/Consumer;

    .line 12
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/Consumer;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Ljava/io/InputStream;I)V
    .locals 10

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer$1;->b:Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer$1;->a:Lcom/facebook/imagepipeline/producers/FetchState;

    if-lez p2, :cond_0

    .line 3
    iget-object v2, v0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->a:Lcom/facebook/common/memory/PooledByteBufferFactory;

    invoke-interface {v2, p2}, Lcom/facebook/common/memory/PooledByteBufferFactory;->e(I)Lcom/facebook/common/memory/PooledByteBufferOutputStream;

    move-result-object v2

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, v0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->a:Lcom/facebook/common/memory/PooledByteBufferFactory;

    invoke-interface {v2}, Lcom/facebook/common/memory/PooledByteBufferFactory;->a()Lcom/facebook/common/memory/PooledByteBufferOutputStream;

    move-result-object v2

    .line 5
    :goto_0
    iget-object v3, v0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->b:Lcom/facebook/common/memory/ByteArrayPool;

    const/16 v4, 0x4000

    invoke-interface {v3, v4}, Lcom/facebook/common/memory/Pool;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 6
    :cond_1
    :goto_1
    :try_start_0
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ltz v4, :cond_3

    if-lez v4, :cond_1

    const/4 v5, 0x0

    .line 7
    invoke-virtual {v2, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 8
    invoke-virtual {v0, v2, v1}, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->c(Lcom/facebook/common/memory/PooledByteBufferOutputStream;Lcom/facebook/imagepipeline/producers/FetchState;)V

    .line 9
    move-object v4, v2

    check-cast v4, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;

    .line 10
    iget v4, v4, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->t:I

    if-lez p2, :cond_2

    int-to-float v4, v4

    int-to-float v5, p2

    div-float/2addr v4, v5

    goto :goto_2

    :cond_2
    const/high16 v5, 0x3f800000    # 1.0f

    neg-int v4, v4

    int-to-double v6, v4

    const-wide v8, 0x40e86a0000000000L    # 50000.0

    div-double/2addr v6, v8

    .line 11
    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    double-to-float v4, v6

    sub-float v4, v5, v4

    .line 12
    :goto_2
    iget-object v5, v1, Lcom/facebook/imagepipeline/producers/FetchState;->a:Lcom/facebook/imagepipeline/producers/Consumer;

    .line 13
    invoke-interface {v5, v4}, Lcom/facebook/imagepipeline/producers/Consumer;->b(F)V

    goto :goto_1

    .line 14
    :cond_3
    iget-object p1, v0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->c:Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    move-object p2, v2

    check-cast p2, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;

    .line 15
    iget p2, p2, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->t:I

    .line 16
    check-cast p1, Lcom/facebook/imagepipeline/producers/HttpUrlConnectionNetworkFetcher;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-object p2, v1

    check-cast p2, Lcom/facebook/imagepipeline/producers/HttpUrlConnectionNetworkFetcher$HttpUrlConnectionNetworkFetchState;

    .line 18
    iget-object p1, p1, Lcom/facebook/imagepipeline/producers/HttpUrlConnectionNetworkFetcher;->c:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {p1}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v4

    .line 19
    iput-wide v4, p2, Lcom/facebook/imagepipeline/producers/HttpUrlConnectionNetworkFetcher$HttpUrlConnectionNetworkFetchState;->f:J

    .line 20
    invoke-virtual {v0, v2, v1}, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->b(Lcom/facebook/common/memory/PooledByteBufferOutputStream;Lcom/facebook/imagepipeline/producers/FetchState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    iget-object p1, v0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->b:Lcom/facebook/common/memory/ByteArrayPool;

    invoke-interface {p1, v3}, Lcom/facebook/common/memory/Pool;->a(Ljava/lang/Object;)V

    .line 22
    invoke-virtual {v2}, Lcom/facebook/common/memory/PooledByteBufferOutputStream;->close()V

    .line 23
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    return-void

    :catchall_0
    move-exception p1

    .line 24
    iget-object p2, v0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->b:Lcom/facebook/common/memory/ByteArrayPool;

    invoke-interface {p2, v3}, Lcom/facebook/common/memory/Pool;->a(Ljava/lang/Object;)V

    .line 25
    invoke-virtual {v2}, Lcom/facebook/common/memory/PooledByteBufferOutputStream;->close()V

    .line 26
    throw p1
.end method
