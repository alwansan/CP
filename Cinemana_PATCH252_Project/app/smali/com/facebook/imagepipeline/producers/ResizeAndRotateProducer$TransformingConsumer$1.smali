.class public Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer$1;
.super Ljava/lang/Object;
.source "ResizeAndRotateProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/JobScheduler$JobRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;-><init>(Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;ZLcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer$1;->a:Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/image/EncodedImage;I)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer$1;->a:Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;

    .line 2
    iget-object v1, v0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->d:Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

    .line 3
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->r()V

    .line 4
    iget-object v2, p1, Lcom/facebook/imagepipeline/image/EncodedImage;->t:Lcom/facebook/imageformat/ImageFormat;

    .line 5
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer$1;->a:Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;

    .line 6
    iget-boolean v3, v3, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->c:Z

    .line 7
    invoke-interface {v1, v2, v3}, Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;->createImageTranscoder(Lcom/facebook/imageformat/ImageFormat;Z)Lcom/facebook/imagepipeline/transcoder/ImageTranscoder;

    move-result-object v1

    .line 8
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v2, v0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->e:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->n()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v2

    iget-object v3, v0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->e:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v11, "ResizeAndRotateProducer"

    invoke-interface {v2, v3, v11}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->e(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V

    .line 10
    iget-object v2, v0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->e:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->c()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v2

    .line 11
    iget-object v3, v0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->h:Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;

    .line 12
    iget-object v3, v3, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;->b:Lcom/facebook/common/memory/PooledByteBufferFactory;

    .line 13
    invoke-interface {v3}, Lcom/facebook/common/memory/PooledByteBufferFactory;->a()Lcom/facebook/common/memory/PooledByteBufferOutputStream;

    move-result-object v3

    const/4 v12, 0x0

    .line 14
    :try_start_0
    iget-object v7, v2, Lcom/facebook/imagepipeline/request/ImageRequest;->i:Lcom/facebook/imagepipeline/common/RotationOptions;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v2, 0x55

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object v4, v1

    move-object v5, p1

    move-object v6, v3

    .line 16
    invoke-interface/range {v4 .. v10}, Lcom/facebook/imagepipeline/transcoder/ImageTranscoder;->c(Lcom/facebook/imagepipeline/image/EncodedImage;Ljava/io/OutputStream;Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/ResizeOptions;Lcom/facebook/imageformat/ImageFormat;Ljava/lang/Integer;)Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;

    move-result-object v2

    .line 17
    iget v4, v2, Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;->a:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    .line 18
    invoke-interface {v1}, Lcom/facebook/imagepipeline/transcoder/ImageTranscoder;->a()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {v0, p1, v12, v2, v1}, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->n(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/common/ResizeOptions;Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v12

    .line 20
    move-object p1, v3

    check-cast p1, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;

    .line 21
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->b()Lcom/facebook/imagepipeline/memory/MemoryPooledByteBuffer;

    move-result-object p1

    .line 22
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->k(Ljava/io/Closeable;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 23
    :try_start_1
    new-instance v1, Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-direct {v1, p1}, Lcom/facebook/imagepipeline/image/EncodedImage;-><init>(Lcom/facebook/common/references/CloseableReference;)V

    .line 24
    sget-object v4, Lcom/facebook/imageformat/DefaultImageFormats;->a:Lcom/facebook/imageformat/ImageFormat;

    .line 25
    iput-object v4, v1, Lcom/facebook/imagepipeline/image/EncodedImage;->t:Lcom/facebook/imageformat/ImageFormat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    :try_start_2
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/image/EncodedImage;->j()V

    .line 27
    iget-object v4, v0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->e:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 28
    invoke-interface {v4}, Lcom/facebook/imagepipeline/producers/ProducerContext;->n()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v4

    iget-object v5, v0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->e:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 29
    invoke-interface {v4, v5, v11, v12}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->j(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V

    .line 30
    iget v2, v2, Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;->a:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    or-int/lit8 p2, p2, 0x10

    .line 31
    :cond_0
    iget-object v2, v0, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;->b:Lcom/facebook/imagepipeline/producers/Consumer;

    .line 32
    invoke-interface {v2, v1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->c(Ljava/lang/Object;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    :try_start_3
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/image/EncodedImage;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 34
    :try_start_4
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 35
    :try_start_5
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/image/EncodedImage;->close()V

    .line 36
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_1

    .line 37
    :try_start_6
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->close()V

    .line 38
    :cond_1
    throw v1

    .line 39
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v1, "Error while transcoding the image"

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 40
    :try_start_7
    iget-object v1, v0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->e:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 41
    invoke-interface {v1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->n()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v1

    iget-object v2, v0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;->e:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 42
    invoke-interface {v1, v2, v11, p1, v12}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->k(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 43
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->e(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 44
    iget-object p2, v0, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;->b:Lcom/facebook/imagepipeline/producers/Consumer;

    .line 45
    invoke-interface {p2, p1}, Lcom/facebook/imagepipeline/producers/Consumer;->a(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 46
    :cond_3
    :goto_0
    invoke-virtual {v3}, Lcom/facebook/common/memory/PooledByteBufferOutputStream;->close()V

    return-void

    :goto_1
    invoke-virtual {v3}, Lcom/facebook/common/memory/PooledByteBufferOutputStream;->close()V

    .line 47
    throw p1
.end method
