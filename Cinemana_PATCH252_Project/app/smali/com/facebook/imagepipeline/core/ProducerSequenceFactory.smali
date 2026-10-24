.class public Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;
.super Ljava/lang/Object;
.source "ProducerSequenceFactory.java"


# instance fields
.field public final a:Landroid/content/ContentResolver;

.field public final b:Lcom/facebook/imagepipeline/core/ProducerFactory;

.field public final c:Lcom/facebook/imagepipeline/producers/NetworkFetcher;

.field public final d:Z

.field public final e:Z

.field public final f:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

.field public final k:Z

.field public final l:Z

.field public final m:Z

.field public n:Lcom/facebook/imagepipeline/producers/Producer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation
.end field

.field public o:Lcom/facebook/imagepipeline/producers/Producer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lcom/facebook/imagepipeline/producers/Producer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation
.end field

.field public q:Lcom/facebook/imagepipeline/producers/Producer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation
.end field

.field public r:Lcom/facebook/imagepipeline/producers/Producer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation
.end field

.field public s:Lcom/facebook/imagepipeline/producers/Producer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation
.end field

.field public t:Lcom/facebook/imagepipeline/producers/Producer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation
.end field

.field public u:Lcom/facebook/imagepipeline/producers/Producer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation
.end field

.field public v:Lcom/facebook/imagepipeline/producers/Producer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation
.end field

.field public w:Lcom/facebook/imagepipeline/producers/Producer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation
.end field

.field public x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcom/facebook/imagepipeline/core/ProducerFactory;Lcom/facebook/imagepipeline/producers/NetworkFetcher;ZZLcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;ZZZZLcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;ZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->a:Landroid/content/ContentResolver;

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->b:Lcom/facebook/imagepipeline/core/ProducerFactory;

    .line 4
    iput-object p3, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->c:Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    .line 5
    iput-boolean p4, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->d:Z

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->x:Ljava/util/Map;

    .line 7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 8
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->y:Ljava/util/Map;

    .line 9
    iput-object p6, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->f:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;

    .line 10
    iput-boolean p7, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->g:Z

    .line 11
    iput-boolean p8, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->h:Z

    .line 12
    iput-boolean p9, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->e:Z

    .line 13
    iput-boolean p10, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->i:Z

    .line 14
    iput-object p11, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->j:Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

    .line 15
    iput-boolean p12, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->k:Z

    .line 16
    iput-boolean p13, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->l:Z

    .line 17
    iput-boolean p14, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->m:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/facebook/imagepipeline/producers/Producer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->o:Lcom/facebook/imagepipeline/producers/Producer;

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 4
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->b:Lcom/facebook/imagepipeline/core/ProducerFactory;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->c:Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    .line 5
    new-instance v2, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;

    iget-object v3, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->k:Lcom/facebook/common/memory/PooledByteBufferFactory;

    iget-object v0, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->d:Lcom/facebook/common/memory/ByteArrayPool;

    invoke-direct {v2, v3, v0, v1}, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;-><init>(Lcom/facebook/common/memory/PooledByteBufferFactory;Lcom/facebook/common/memory/ByteArrayPool;Lcom/facebook/imagepipeline/producers/NetworkFetcher;)V

    .line 6
    invoke-virtual {p0, v2}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->m(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/facebook/imagepipeline/producers/AddImageTransformMetaDataProducer;

    invoke-direct {v1, v0}, Lcom/facebook/imagepipeline/producers/AddImageTransformMetaDataProducer;-><init>(Lcom/facebook/imagepipeline/producers/Producer;)V

    .line 8
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->o:Lcom/facebook/imagepipeline/producers/Producer;

    .line 9
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->b:Lcom/facebook/imagepipeline/core/ProducerFactory;

    iget-boolean v2, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->d:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->g:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->j:Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

    .line 10
    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/core/ProducerFactory;->a(Lcom/facebook/imagepipeline/producers/Producer;ZLcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;)Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->o:Lcom/facebook/imagepipeline/producers/Producer;

    .line 11
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 12
    :cond_1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 13
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->o:Lcom/facebook/imagepipeline/producers/Producer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Lcom/facebook/imagepipeline/producers/Producer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->u:Lcom/facebook/imagepipeline/producers/Producer;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->b:Lcom/facebook/imagepipeline/core/ProducerFactory;

    .line 3
    new-instance v1, Lcom/facebook/imagepipeline/producers/DataFetchProducer;

    iget-object v0, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->k:Lcom/facebook/common/memory/PooledByteBufferFactory;

    invoke-direct {v1, v0}, Lcom/facebook/imagepipeline/producers/DataFetchProducer;-><init>(Lcom/facebook/common/memory/PooledByteBufferFactory;)V

    .line 4
    sget-object v0, Lcom/facebook/common/webp/WebpSupportStatus;->a:Lcom/facebook/common/webp/WebpBitmapFactory;

    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->b:Lcom/facebook/imagepipeline/core/ProducerFactory;

    .line 6
    new-instance v2, Lcom/facebook/imagepipeline/producers/AddImageTransformMetaDataProducer;

    invoke-direct {v2, v1}, Lcom/facebook/imagepipeline/producers/AddImageTransformMetaDataProducer;-><init>(Lcom/facebook/imagepipeline/producers/Producer;)V

    const/4 v1, 0x1

    .line 7
    iget-object v3, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->j:Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

    .line 8
    invoke-virtual {v0, v2, v1, v3}, Lcom/facebook/imagepipeline/core/ProducerFactory;->a(Lcom/facebook/imagepipeline/producers/Producer;ZLcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;)Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;

    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->j(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->u:Lcom/facebook/imagepipeline/producers/Producer;

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->u:Lcom/facebook/imagepipeline/producers/Producer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/Producer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            ")",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 2
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Landroid/net/Uri;

    const-string v1, "Uri is null."

    .line 5
    invoke-static {v0, v1}, Lcom/facebook/common/internal/Preconditions;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget v1, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->c:I

    if-eqz v1, :cond_6

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    goto/16 :goto_1

    .line 8
    :pswitch_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->h()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v0

    goto/16 :goto_0

    .line 9
    :pswitch_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->b()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v0

    goto/16 :goto_0

    .line 10
    :pswitch_2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->f()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v0

    goto/16 :goto_0

    .line 11
    :pswitch_3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->d()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v0

    goto/16 :goto_0

    .line 12
    :pswitch_4
    iget-boolean v1, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->g:Z

    if-eqz v1, :cond_1

    .line 13
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v1, v3, :cond_1

    .line 14
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 15
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->v:Lcom/facebook/imagepipeline/producers/Producer;

    if-nez v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->b:Lcom/facebook/imagepipeline/core/ProducerFactory;

    .line 17
    new-instance v1, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapProducer;

    iget-object v2, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->j:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    .line 18
    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/ExecutorSupplier;->c()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v0, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->a:Landroid/content/ContentResolver;

    invoke-direct {v1, v2, v0}, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapProducer;-><init>(Ljava/util/concurrent/Executor;Landroid/content/ContentResolver;)V

    .line 19
    invoke-virtual {p0, v1}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->i(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->v:Lcom/facebook/imagepipeline/producers/Producer;

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->v:Lcom/facebook/imagepipeline/producers/Producer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 21
    :cond_1
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->a:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/facebook/common/media/MediaUtils;->a:Ljava/util/Map;

    if-eqz v0, :cond_2

    const-string v1, "video/"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_3

    .line 23
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->g()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v0

    goto :goto_0

    .line 24
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->e()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v0

    goto :goto_0

    .line 25
    :pswitch_5
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 26
    :try_start_3
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->p:Lcom/facebook/imagepipeline/producers/Producer;

    if-nez v0, :cond_4

    .line 27
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->b:Lcom/facebook/imagepipeline/core/ProducerFactory;

    .line 28
    new-instance v1, Lcom/facebook/imagepipeline/producers/LocalFileFetchProducer;

    iget-object v2, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->j:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    .line 29
    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/ExecutorSupplier;->e()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v0, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->k:Lcom/facebook/common/memory/PooledByteBufferFactory;

    invoke-direct {v1, v2, v0}, Lcom/facebook/imagepipeline/producers/LocalFileFetchProducer;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/PooledByteBufferFactory;)V

    .line 30
    invoke-virtual {p0, v1}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->k(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->p:Lcom/facebook/imagepipeline/producers/Producer;

    .line 31
    :cond_4
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->p:Lcom/facebook/imagepipeline/producers/Producer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    .line 32
    :pswitch_6
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->g()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 33
    :goto_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    goto :goto_2

    .line 34
    :goto_1
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported uri scheme! Uri is: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x1e

    if-le v3, v4, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    :cond_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_6
    monitor-enter p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 39
    :try_start_6
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 40
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->n:Lcom/facebook/imagepipeline/producers/Producer;

    if-nez v0, :cond_7

    .line 41
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 42
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->a()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->j(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->n:Lcom/facebook/imagepipeline/producers/Producer;

    .line 43
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 44
    :cond_7
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 45
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->n:Lcom/facebook/imagepipeline/producers/Producer;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto :goto_0

    .line 46
    :goto_2
    iget-object v1, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->q:Lcom/facebook/imagepipeline/request/Postprocessor;

    if-eqz v1, :cond_9

    .line 47
    monitor-enter p0

    .line 48
    :try_start_8
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->x:Ljava/util/Map;

    .line 49
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/producers/Producer;

    if-nez v1, :cond_8

    .line 50
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->b:Lcom/facebook/imagepipeline/core/ProducerFactory;

    .line 51
    new-instance v2, Lcom/facebook/imagepipeline/producers/PostprocessorProducer;

    iget-object v3, v1, Lcom/facebook/imagepipeline/core/ProducerFactory;->s:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    iget-object v1, v1, Lcom/facebook/imagepipeline/core/ProducerFactory;->j:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    .line 52
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/ExecutorSupplier;->c()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v2, v0, v3, v1}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer;-><init>(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;Ljava/util/concurrent/Executor;)V

    .line 53
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->b:Lcom/facebook/imagepipeline/core/ProducerFactory;

    .line 54
    new-instance v3, Lcom/facebook/imagepipeline/producers/PostprocessedBitmapMemoryCacheProducer;

    iget-object v4, v1, Lcom/facebook/imagepipeline/core/ProducerFactory;->o:Lcom/facebook/imagepipeline/cache/MemoryCache;

    iget-object v1, v1, Lcom/facebook/imagepipeline/core/ProducerFactory;->p:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    invoke-direct {v3, v4, v1, v2}, Lcom/facebook/imagepipeline/producers/PostprocessedBitmapMemoryCacheProducer;-><init>(Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/imagepipeline/cache/CacheKeyFactory;Lcom/facebook/imagepipeline/producers/Producer;)V

    .line 55
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->x:Ljava/util/Map;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object v0, v3

    goto :goto_3

    :cond_8
    move-object v0, v1

    .line 56
    :goto_3
    monitor-exit p0

    goto :goto_4

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1

    .line 57
    :cond_9
    :goto_4
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->h:Z

    if-eqz v1, :cond_b

    .line 58
    monitor-enter p0

    .line 59
    :try_start_9
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->y:Ljava/util/Map;

    .line 60
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/producers/Producer;

    if-nez v1, :cond_a

    .line 61
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->b:Lcom/facebook/imagepipeline/core/ProducerFactory;

    .line 62
    new-instance v2, Lcom/facebook/imagepipeline/producers/BitmapPrepareProducer;

    iget v3, v1, Lcom/facebook/imagepipeline/core/ProducerFactory;->t:I

    iget v4, v1, Lcom/facebook/imagepipeline/core/ProducerFactory;->u:I

    iget-boolean v1, v1, Lcom/facebook/imagepipeline/core/ProducerFactory;->v:Z

    invoke-direct {v2, v0, v3, v4, v1}, Lcom/facebook/imagepipeline/producers/BitmapPrepareProducer;-><init>(Lcom/facebook/imagepipeline/producers/Producer;IIZ)V

    .line 63
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->y:Ljava/util/Map;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object v0, v2

    goto :goto_5

    :cond_a
    move-object v0, v1

    .line 64
    :goto_5
    monitor-exit p0

    goto :goto_6

    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1

    .line 65
    :cond_b
    :goto_6
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->m:Z

    if-eqz v1, :cond_c

    .line 66
    iget p1, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->s:I

    if-lez p1, :cond_c

    .line 67
    monitor-enter p0

    .line 68
    :try_start_a
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->b:Lcom/facebook/imagepipeline/core/ProducerFactory;

    .line 69
    new-instance v1, Lcom/facebook/imagepipeline/producers/DelayProducer;

    iget-object p1, p1, Lcom/facebook/imagepipeline/core/ProducerFactory;->j:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    .line 70
    invoke-interface {p1}, Lcom/facebook/imagepipeline/core/ExecutorSupplier;->g()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/facebook/imagepipeline/producers/DelayProducer;-><init>(Lcom/facebook/imagepipeline/producers/Producer;Ljava/util/concurrent/ScheduledExecutorService;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 71
    monitor-exit p0

    move-object v0, v1

    goto :goto_7

    :catchall_4
    move-exception p1

    monitor-exit p0

    throw p1

    .line 72
    :cond_c
    :goto_7
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    return-object v0

    :catchall_5
    move-exception p1

    .line 73
    :try_start_b
    monitor-exit p0

    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :catchall_6
    move-exception p1

    .line 74
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 75
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized d()Lcom/facebook/imagepipeline/producers/Producer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->t:Lcom/facebook/imagepipeline/producers/Producer;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->b:Lcom/facebook/imagepipeline/core/ProducerFactory;

    .line 3
    new-instance v1, Lcom/facebook/imagepipeline/producers/LocalAssetFetchProducer;

    iget-object v2, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->j:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    .line 4
    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/ExecutorSupplier;->e()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->k:Lcom/facebook/common/memory/PooledByteBufferFactory;

    iget-object v0, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->c:Landroid/content/res/AssetManager;

    invoke-direct {v1, v2, v3, v0}, Lcom/facebook/imagepipeline/producers/LocalAssetFetchProducer;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/PooledByteBufferFactory;Landroid/content/res/AssetManager;)V

    .line 5
    invoke-virtual {p0, v1}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->k(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->t:Lcom/facebook/imagepipeline/producers/Producer;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->t:Lcom/facebook/imagepipeline/producers/Producer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Lcom/facebook/imagepipeline/producers/Producer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->r:Lcom/facebook/imagepipeline/producers/Producer;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->b:Lcom/facebook/imagepipeline/core/ProducerFactory;

    .line 3
    new-instance v1, Lcom/facebook/imagepipeline/producers/LocalContentUriFetchProducer;

    iget-object v2, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->j:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    .line 4
    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/ExecutorSupplier;->e()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->k:Lcom/facebook/common/memory/PooledByteBufferFactory;

    iget-object v0, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->a:Landroid/content/ContentResolver;

    invoke-direct {v1, v2, v3, v0}, Lcom/facebook/imagepipeline/producers/LocalContentUriFetchProducer;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/PooledByteBufferFactory;Landroid/content/ContentResolver;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/imagepipeline/producers/ThumbnailProducer;

    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->b:Lcom/facebook/imagepipeline/core/ProducerFactory;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v4, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;

    iget-object v5, v3, Lcom/facebook/imagepipeline/core/ProducerFactory;->j:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    .line 7
    invoke-interface {v5}, Lcom/facebook/imagepipeline/core/ExecutorSupplier;->e()Ljava/util/concurrent/Executor;

    move-result-object v5

    iget-object v6, v3, Lcom/facebook/imagepipeline/core/ProducerFactory;->k:Lcom/facebook/common/memory/PooledByteBufferFactory;

    iget-object v3, v3, Lcom/facebook/imagepipeline/core/ProducerFactory;->a:Landroid/content/ContentResolver;

    invoke-direct {v4, v5, v6, v3}, Lcom/facebook/imagepipeline/producers/LocalContentUriThumbnailFetchProducer;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/PooledByteBufferFactory;Landroid/content/ContentResolver;)V

    aput-object v4, v0, v2

    const/4 v2, 0x1

    .line 8
    iget-object v3, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->b:Lcom/facebook/imagepipeline/core/ProducerFactory;

    .line 9
    new-instance v4, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;

    iget-object v5, v3, Lcom/facebook/imagepipeline/core/ProducerFactory;->j:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    .line 10
    invoke-interface {v5}, Lcom/facebook/imagepipeline/core/ExecutorSupplier;->f()Ljava/util/concurrent/Executor;

    move-result-object v5

    iget-object v6, v3, Lcom/facebook/imagepipeline/core/ProducerFactory;->k:Lcom/facebook/common/memory/PooledByteBufferFactory;

    iget-object v3, v3, Lcom/facebook/imagepipeline/core/ProducerFactory;->a:Landroid/content/ContentResolver;

    invoke-direct {v4, v5, v6, v3}, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/PooledByteBufferFactory;Landroid/content/ContentResolver;)V

    aput-object v4, v0, v2

    .line 11
    invoke-virtual {p0, v1, v0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->l(Lcom/facebook/imagepipeline/producers/Producer;[Lcom/facebook/imagepipeline/producers/ThumbnailProducer;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->r:Lcom/facebook/imagepipeline/producers/Producer;

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->r:Lcom/facebook/imagepipeline/producers/Producer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()Lcom/facebook/imagepipeline/producers/Producer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->s:Lcom/facebook/imagepipeline/producers/Producer;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->b:Lcom/facebook/imagepipeline/core/ProducerFactory;

    .line 3
    new-instance v1, Lcom/facebook/imagepipeline/producers/LocalResourceFetchProducer;

    iget-object v2, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->j:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    .line 4
    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/ExecutorSupplier;->e()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->k:Lcom/facebook/common/memory/PooledByteBufferFactory;

    iget-object v0, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->b:Landroid/content/res/Resources;

    invoke-direct {v1, v2, v3, v0}, Lcom/facebook/imagepipeline/producers/LocalResourceFetchProducer;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/PooledByteBufferFactory;Landroid/content/res/Resources;)V

    .line 5
    invoke-virtual {p0, v1}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->k(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->s:Lcom/facebook/imagepipeline/producers/Producer;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->s:Lcom/facebook/imagepipeline/producers/Producer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()Lcom/facebook/imagepipeline/producers/Producer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->q:Lcom/facebook/imagepipeline/producers/Producer;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->b:Lcom/facebook/imagepipeline/core/ProducerFactory;

    .line 3
    new-instance v1, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;

    iget-object v2, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->j:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    .line 4
    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/ExecutorSupplier;->e()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v0, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->a:Landroid/content/ContentResolver;

    invoke-direct {v1, v2, v0}, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;-><init>(Ljava/util/concurrent/Executor;Landroid/content/ContentResolver;)V

    .line 5
    invoke-virtual {p0, v1}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->i(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->q:Lcom/facebook/imagepipeline/producers/Producer;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->q:Lcom/facebook/imagepipeline/producers/Producer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h()Lcom/facebook/imagepipeline/producers/Producer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->w:Lcom/facebook/imagepipeline/producers/Producer;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->b:Lcom/facebook/imagepipeline/core/ProducerFactory;

    .line 3
    new-instance v1, Lcom/facebook/imagepipeline/producers/QualifiedResourceFetchProducer;

    iget-object v2, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->j:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    .line 4
    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/ExecutorSupplier;->e()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->k:Lcom/facebook/common/memory/PooledByteBufferFactory;

    iget-object v0, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->a:Landroid/content/ContentResolver;

    invoke-direct {v1, v2, v3, v0}, Lcom/facebook/imagepipeline/producers/QualifiedResourceFetchProducer;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/PooledByteBufferFactory;Landroid/content/ContentResolver;)V

    .line 5
    invoke-virtual {p0, v1}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->k(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->w:Lcom/facebook/imagepipeline/producers/Producer;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->w:Lcom/facebook/imagepipeline/producers/Producer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final i(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->b:Lcom/facebook/imagepipeline/core/ProducerFactory;

    .line 2
    new-instance v1, Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheProducer;

    iget-object v2, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->o:Lcom/facebook/imagepipeline/cache/MemoryCache;

    iget-object v0, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->p:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    invoke-direct {v1, v2, v0, p1}, Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheProducer;-><init>(Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/imagepipeline/cache/CacheKeyFactory;Lcom/facebook/imagepipeline/producers/Producer;)V

    .line 3
    new-instance p1, Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheKeyMultiplexProducer;

    invoke-direct {p1, v0, v1}, Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheKeyMultiplexProducer;-><init>(Lcom/facebook/imagepipeline/cache/CacheKeyFactory;Lcom/facebook/imagepipeline/producers/Producer;)V

    .line 4
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->b:Lcom/facebook/imagepipeline/core/ProducerFactory;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->f:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v0, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;

    invoke-direct {v0, p1, v1}, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;-><init>(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;)V

    .line 7
    iget-boolean p1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->k:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->l:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->b:Lcom/facebook/imagepipeline/core/ProducerFactory;

    .line 9
    new-instance v1, Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheGetProducer;

    iget-object v2, p1, Lcom/facebook/imagepipeline/core/ProducerFactory;->o:Lcom/facebook/imagepipeline/cache/MemoryCache;

    iget-object p1, p1, Lcom/facebook/imagepipeline/core/ProducerFactory;->p:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    invoke-direct {v1, v2, p1, v0}, Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheGetProducer;-><init>(Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/imagepipeline/cache/CacheKeyFactory;Lcom/facebook/imagepipeline/producers/Producer;)V

    return-object v1

    .line 10
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->b:Lcom/facebook/imagepipeline/core/ProducerFactory;

    .line 11
    new-instance v8, Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheGetProducer;

    iget-object v1, p1, Lcom/facebook/imagepipeline/core/ProducerFactory;->o:Lcom/facebook/imagepipeline/cache/MemoryCache;

    iget-object v5, p1, Lcom/facebook/imagepipeline/core/ProducerFactory;->p:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    invoke-direct {v8, v1, v5, v0}, Lcom/facebook/imagepipeline/producers/BitmapMemoryCacheGetProducer;-><init>(Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/imagepipeline/cache/CacheKeyFactory;Lcom/facebook/imagepipeline/producers/Producer;)V

    .line 12
    new-instance v0, Lcom/facebook/imagepipeline/producers/BitmapProbeProducer;

    iget-object v2, p1, Lcom/facebook/imagepipeline/core/ProducerFactory;->n:Lcom/facebook/imagepipeline/cache/MemoryCache;

    iget-object v3, p1, Lcom/facebook/imagepipeline/core/ProducerFactory;->l:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    iget-object v4, p1, Lcom/facebook/imagepipeline/core/ProducerFactory;->m:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    iget-object v6, p1, Lcom/facebook/imagepipeline/core/ProducerFactory;->q:Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;

    iget-object v7, p1, Lcom/facebook/imagepipeline/core/ProducerFactory;->r:Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/facebook/imagepipeline/producers/BitmapProbeProducer;-><init>(Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/cache/CacheKeyFactory;Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;Lcom/facebook/imagepipeline/producers/Producer;)V

    return-object v0
.end method

.method public final j(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 2
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->b:Lcom/facebook/imagepipeline/core/ProducerFactory;

    .line 3
    new-instance v15, Lcom/facebook/imagepipeline/producers/DecodeProducer;

    iget-object v3, v1, Lcom/facebook/imagepipeline/core/ProducerFactory;->d:Lcom/facebook/common/memory/ByteArrayPool;

    iget-object v2, v1, Lcom/facebook/imagepipeline/core/ProducerFactory;->j:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    .line 4
    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/ExecutorSupplier;->a()Ljava/util/concurrent/Executor;

    move-result-object v4

    iget-object v5, v1, Lcom/facebook/imagepipeline/core/ProducerFactory;->e:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    iget-object v6, v1, Lcom/facebook/imagepipeline/core/ProducerFactory;->f:Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

    iget-boolean v7, v1, Lcom/facebook/imagepipeline/core/ProducerFactory;->g:Z

    iget-boolean v8, v1, Lcom/facebook/imagepipeline/core/ProducerFactory;->h:Z

    iget-boolean v9, v1, Lcom/facebook/imagepipeline/core/ProducerFactory;->i:Z

    iget v11, v1, Lcom/facebook/imagepipeline/core/ProducerFactory;->x:I

    iget-object v12, v1, Lcom/facebook/imagepipeline/core/ProducerFactory;->w:Lcom/facebook/imagepipeline/core/CloseableReferenceFactory;

    sget-object v14, Lcom/facebook/common/internal/Suppliers;->a:Lcom/facebook/common/internal/Supplier;

    const/4 v13, 0x0

    move-object v2, v15

    move-object/from16 v10, p1

    invoke-direct/range {v2 .. v14}, Lcom/facebook/imagepipeline/producers/DecodeProducer;-><init>(Lcom/facebook/common/memory/ByteArrayPool;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/decoder/ImageDecoder;Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;ZZZLcom/facebook/imagepipeline/producers/Producer;ILcom/facebook/imagepipeline/core/CloseableReferenceFactory;Ljava/lang/Runnable;Lcom/facebook/common/internal/Supplier;)V

    .line 5
    invoke-virtual {v0, v15}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->i(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v1

    .line 6
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    return-object v1
.end method

.method public final k(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/imagepipeline/producers/ThumbnailProducer;

    .line 1
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->b:Lcom/facebook/imagepipeline/core/ProducerFactory;

    .line 2
    new-instance v2, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;

    iget-object v3, v1, Lcom/facebook/imagepipeline/core/ProducerFactory;->j:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    .line 3
    invoke-interface {v3}, Lcom/facebook/imagepipeline/core/ExecutorSupplier;->f()Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object v4, v1, Lcom/facebook/imagepipeline/core/ProducerFactory;->k:Lcom/facebook/common/memory/PooledByteBufferFactory;

    iget-object v1, v1, Lcom/facebook/imagepipeline/core/ProducerFactory;->a:Landroid/content/ContentResolver;

    invoke-direct {v2, v3, v4, v1}, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/PooledByteBufferFactory;Landroid/content/ContentResolver;)V

    const/4 v1, 0x0

    aput-object v2, v0, v1

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->l(Lcom/facebook/imagepipeline/producers/Producer;[Lcom/facebook/imagepipeline/producers/ThumbnailProducer;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lcom/facebook/imagepipeline/producers/Producer;[Lcom/facebook/imagepipeline/producers/ThumbnailProducer;)Lcom/facebook/imagepipeline/producers/Producer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;[",
            "Lcom/facebook/imagepipeline/producers/ThumbnailProducer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->m(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/facebook/imagepipeline/producers/AddImageTransformMetaDataProducer;

    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/producers/AddImageTransformMetaDataProducer;-><init>(Lcom/facebook/imagepipeline/producers/Producer;)V

    .line 3
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->b:Lcom/facebook/imagepipeline/core/ProducerFactory;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->j:Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

    const/4 v2, 0x1

    .line 4
    invoke-virtual {p1, v0, v2, v1}, Lcom/facebook/imagepipeline/core/ProducerFactory;->a(Lcom/facebook/imagepipeline/producers/Producer;ZLcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;)Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->b:Lcom/facebook/imagepipeline/core/ProducerFactory;

    .line 6
    new-instance v1, Lcom/facebook/imagepipeline/producers/ThrottlingProducer;

    iget-object v0, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->j:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    .line 7
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/ExecutorSupplier;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v3, 0x5

    invoke-direct {v1, v3, v0, p1}, Lcom/facebook/imagepipeline/producers/ThrottlingProducer;-><init>(ILjava/util/concurrent/Executor;Lcom/facebook/imagepipeline/producers/Producer;)V

    .line 8
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->b:Lcom/facebook/imagepipeline/core/ProducerFactory;

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance p1, Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer;

    invoke-direct {p1, p2}, Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer;-><init>([Lcom/facebook/imagepipeline/producers/ThumbnailProducer;)V

    .line 11
    iget-object p2, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->b:Lcom/facebook/imagepipeline/core/ProducerFactory;

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->j:Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

    invoke-virtual {p2, p1, v2, v0}, Lcom/facebook/imagepipeline/core/ProducerFactory;->a(Lcom/facebook/imagepipeline/producers/Producer;ZLcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;)Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;

    move-result-object p1

    .line 12
    new-instance p2, Lcom/facebook/imagepipeline/producers/BranchOnSeparateImagesProducer;

    invoke-direct {p2, p1, v1}, Lcom/facebook/imagepipeline/producers/BranchOnSeparateImagesProducer;-><init>(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/producers/Producer;)V

    .line 13
    invoke-virtual {p0, p2}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->j(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object p1

    return-object p1
.end method

.method public final m(Lcom/facebook/imagepipeline/producers/Producer;)Lcom/facebook/imagepipeline/producers/Producer;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;)",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/common/webp/WebpSupportStatus;->a:Lcom/facebook/common/webp/WebpBitmapFactory;

    .line 2
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->i:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 4
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->e:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->b:Lcom/facebook/imagepipeline/core/ProducerFactory;

    .line 6
    new-instance v7, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer;

    iget-object v8, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->l:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    iget-object v9, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->p:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    iget-object v4, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->k:Lcom/facebook/common/memory/PooledByteBufferFactory;

    iget-object v5, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->d:Lcom/facebook/common/memory/ByteArrayPool;

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer;-><init>(Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/cache/CacheKeyFactory;Lcom/facebook/common/memory/PooledByteBufferFactory;Lcom/facebook/common/memory/ByteArrayPool;Lcom/facebook/imagepipeline/producers/Producer;)V

    .line 7
    new-instance p1, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer;

    iget-object v0, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->m:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    invoke-direct {p1, v8, v0, v9, v7}, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer;-><init>(Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/cache/CacheKeyFactory;Lcom/facebook/imagepipeline/producers/Producer;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->b:Lcom/facebook/imagepipeline/core/ProducerFactory;

    .line 9
    new-instance v1, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer;

    iget-object v2, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->l:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    iget-object v3, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->m:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    iget-object v0, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->p:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    invoke-direct {v1, v2, v3, v0, p1}, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer;-><init>(Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/cache/CacheKeyFactory;Lcom/facebook/imagepipeline/producers/Producer;)V

    move-object p1, v1

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->b:Lcom/facebook/imagepipeline/core/ProducerFactory;

    .line 11
    new-instance v1, Lcom/facebook/imagepipeline/producers/DiskCacheReadProducer;

    iget-object v2, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->l:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    iget-object v3, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->m:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    iget-object v0, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->p:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    invoke-direct {v1, v2, v3, v0, p1}, Lcom/facebook/imagepipeline/producers/DiskCacheReadProducer;-><init>(Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/cache/CacheKeyFactory;Lcom/facebook/imagepipeline/producers/Producer;)V

    .line 12
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    move-object p1, v1

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->b:Lcom/facebook/imagepipeline/core/ProducerFactory;

    .line 14
    new-instance v7, Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer;

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->n:Lcom/facebook/imagepipeline/cache/MemoryCache;

    iget-object v8, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->p:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    invoke-direct {v7, v1, v8, p1}, Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer;-><init>(Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/imagepipeline/cache/CacheKeyFactory;Lcom/facebook/imagepipeline/producers/Producer;)V

    .line 15
    iget-boolean p1, p0, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->l:Z

    if-eqz p1, :cond_2

    .line 16
    new-instance p1, Lcom/facebook/imagepipeline/producers/EncodedProbeProducer;

    iget-object v2, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->l:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    iget-object v3, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->m:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    iget-object v5, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->q:Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;

    iget-object v6, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->r:Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;

    move-object v1, p1

    move-object v4, v8

    invoke-direct/range {v1 .. v7}, Lcom/facebook/imagepipeline/producers/EncodedProbeProducer;-><init>(Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/cache/CacheKeyFactory;Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;Lcom/facebook/imagepipeline/producers/Producer;)V

    .line 17
    new-instance v1, Lcom/facebook/imagepipeline/producers/EncodedCacheKeyMultiplexProducer;

    iget-boolean v0, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->y:Z

    invoke-direct {v1, v8, v0, p1}, Lcom/facebook/imagepipeline/producers/EncodedCacheKeyMultiplexProducer;-><init>(Lcom/facebook/imagepipeline/cache/CacheKeyFactory;ZLcom/facebook/imagepipeline/producers/Producer;)V

    return-object v1

    .line 18
    :cond_2
    new-instance p1, Lcom/facebook/imagepipeline/producers/EncodedCacheKeyMultiplexProducer;

    iget-boolean v0, v0, Lcom/facebook/imagepipeline/core/ProducerFactory;->y:Z

    invoke-direct {p1, v8, v0, v7}, Lcom/facebook/imagepipeline/producers/EncodedCacheKeyMultiplexProducer;-><init>(Lcom/facebook/imagepipeline/cache/CacheKeyFactory;ZLcom/facebook/imagepipeline/producers/Producer;)V

    return-object p1
.end method
