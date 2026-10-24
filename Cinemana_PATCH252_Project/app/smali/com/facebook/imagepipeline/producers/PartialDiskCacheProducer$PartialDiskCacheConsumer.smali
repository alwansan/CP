.class public Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;
.super Lcom/facebook/imagepipeline/producers/DelegatingConsumer;
.source "PartialDiskCacheProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PartialDiskCacheConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/DelegatingConsumer<",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

.field public final d:Lcom/facebook/cache/common/CacheKey;

.field public final e:Lcom/facebook/common/memory/PooledByteBufferFactory;

.field public final f:Lcom/facebook/common/memory/ByteArrayPool;

.field public final g:Lcom/facebook/imagepipeline/image/EncodedImage;

.field public final h:Z


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;Lcom/facebook/common/memory/PooledByteBufferFactory;Lcom/facebook/common/memory/ByteArrayPool;Lcom/facebook/imagepipeline/image/EncodedImage;ZLcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    .line 2
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->c:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 3
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->d:Lcom/facebook/cache/common/CacheKey;

    .line 4
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->e:Lcom/facebook/common/memory/PooledByteBufferFactory;

    .line 5
    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->f:Lcom/facebook/common/memory/ByteArrayPool;

    .line 6
    iput-object p6, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->g:Lcom/facebook/imagepipeline/image/EncodedImage;

    .line 7
    iput-boolean p7, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->h:Z

    return-void
.end method


# virtual methods
.method public i(Ljava/lang/Object;I)V
    .locals 3

    .line 1
    check-cast p1, Lcom/facebook/imagepipeline/image/EncodedImage;

    .line 2
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->g:Lcom/facebook/imagepipeline/image/EncodedImage;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 4
    iget-object v1, p1, Lcom/facebook/imagepipeline/image/EncodedImage;->A:Lcom/facebook/imagepipeline/common/BytesRange;

    if-eqz v1, :cond_1

    .line 5
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->o(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/image/EncodedImage;)Lcom/facebook/common/memory/PooledByteBufferOutputStream;

    move-result-object p2

    .line 6
    invoke-virtual {p0, p2}, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->p(Lcom/facebook/common/memory/PooledByteBufferOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_1
    const-string v0, "PartialDiskCacheProducer"

    const-string v1, "Error while merging image data"

    .line 7
    invoke-static {v0, v1, p2}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;->b:Lcom/facebook/imagepipeline/producers/Consumer;

    .line 9
    invoke-interface {v0, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->close()V

    .line 11
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->g:Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->close()V

    .line 12
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->c:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->d:Lcom/facebook/cache/common/CacheKey;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p1, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->f:Lcom/facebook/imagepipeline/cache/StagingArea;

    invoke-virtual {v0, p2}, Lcom/facebook/imagepipeline/cache/StagingArea;->c(Lcom/facebook/cache/common/CacheKey;)Z

    const/4 v0, 0x0

    .line 15
    :try_start_2
    new-instance v1, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$5;

    invoke-direct {v1, p1, v0, p2}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache$5;-><init>(Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Ljava/lang/Object;Lcom/facebook/cache/common/CacheKey;)V

    iget-object p1, p1, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->e:Ljava/util/concurrent/Executor;

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/xk4;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/shabakaty/downloader/xk4;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 16
    const-class v0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p2}, Lcom/facebook/cache/common/CacheKey;->b()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    const-string p2, "Failed to schedule disk-cache remove for %s"

    invoke-static {v0, p1, p2, v1}, Lcom/facebook/common/logging/FLog;->n(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    sget-object p2, Lcom/shabakaty/downloader/xk4;->h:Ljava/util/concurrent/ExecutorService;

    .line 18
    new-instance p2, Lcom/shabakaty/downloader/fq1;

    const/4 v0, 0x3

    invoke-direct {p2, v0}, Lcom/shabakaty/downloader/fq1;-><init>(I)V

    .line 19
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/fq1;->g1(Ljava/lang/Exception;)V

    .line 20
    iget-object p1, p2, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/xk4;

    goto :goto_2

    .line 21
    :goto_1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->close()V

    .line 22
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->g:Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->close()V

    .line 23
    throw p2

    .line 24
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->h:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    .line 25
    invoke-static {p2, v0}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->m(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->e(I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 27
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 28
    iget-object v0, p1, Lcom/facebook/imagepipeline/image/EncodedImage;->t:Lcom/facebook/imageformat/ImageFormat;

    .line 29
    sget-object v1, Lcom/facebook/imageformat/ImageFormat;->b:Lcom/facebook/imageformat/ImageFormat;

    if-eq v0, v1, :cond_2

    .line 30
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->c:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->d:Lcom/facebook/cache/common/CacheKey;

    invoke-virtual {v0, v1, p1}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->g(Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)V

    .line 31
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;->b:Lcom/facebook/imagepipeline/producers/Consumer;

    .line 32
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->c(Ljava/lang/Object;I)V

    goto :goto_2

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;->b:Lcom/facebook/imagepipeline/producers/Consumer;

    .line 34
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->c(Ljava/lang/Object;I)V

    :goto_2
    return-void
.end method

.method public final n(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->f:Lcom/facebook/common/memory/ByteArrayPool;

    const/16 v1, 0x4000

    invoke-interface {v0, v1}, Lcom/facebook/common/memory/Pool;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move v2, p3

    :cond_0
    :goto_0
    const/4 v3, 0x0

    if-lez v2, :cond_1

    .line 2
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p1, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ltz v4, :cond_1

    if-lez v4, :cond_0

    .line 3
    invoke-virtual {p2, v0, v3, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->f:Lcom/facebook/common/memory/ByteArrayPool;

    invoke-interface {p2, v0}, Lcom/facebook/common/memory/Pool;->a(Ljava/lang/Object;)V

    .line 5
    throw p1

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->f:Lcom/facebook/common/memory/ByteArrayPool;

    invoke-interface {p1, v0}, Lcom/facebook/common/memory/Pool;->a(Ljava/lang/Object;)V

    if-gtz v2, :cond_2

    return-void

    .line 7
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const/4 p2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 8
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v3

    const/4 p3, 0x1

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p3

    const-string p3, "Failed to read %d bytes - finished %d short"

    .line 10
    invoke-static {p2, p3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final o(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/image/EncodedImage;)Lcom/facebook/common/memory/PooledByteBufferOutputStream;
    .locals 3

    .line 1
    iget-object v0, p2, Lcom/facebook/imagepipeline/image/EncodedImage;->A:Lcom/facebook/imagepipeline/common/BytesRange;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, v0, Lcom/facebook/imagepipeline/common/BytesRange;->a:I

    .line 4
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->g()I

    move-result v1

    add-int/2addr v1, v0

    .line 5
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->e:Lcom/facebook/common/memory/PooledByteBufferFactory;

    .line 6
    invoke-interface {v2, v1}, Lcom/facebook/common/memory/PooledByteBufferFactory;->e(I)Lcom/facebook/common/memory/PooledByteBufferOutputStream;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->f()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->n(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 8
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->f()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->g()I

    move-result p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->n(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    return-object v1
.end method

.method public final p(Lcom/facebook/common/memory/PooledByteBufferOutputStream;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;

    .line 2
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->b()Lcom/facebook/imagepipeline/memory/MemoryPooledByteBuffer;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->k(Ljava/io/Closeable;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    :try_start_0
    new-instance v1, Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-direct {v1, p1}, Lcom/facebook/imagepipeline/image/EncodedImage;-><init>(Lcom/facebook/common/references/CloseableReference;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/image/EncodedImage;->j()V

    .line 6
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;->b:Lcom/facebook/imagepipeline/producers/Consumer;

    const/4 v2, 0x1

    .line 7
    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/Consumer;->c(Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/image/EncodedImage;->close()V

    .line 9
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->close()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/image/EncodedImage;->close()V

    :cond_0
    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->close()V

    .line 12
    :cond_1
    throw v0
.end method
