.class public Lcom/facebook/imagepipeline/core/ImagePipelineFactory;
.super Ljava/lang/Object;
.source "ImagePipelineFactory.java"


# static fields
.field public static t:Lcom/facebook/imagepipeline/core/ImagePipelineFactory;


# instance fields
.field public final a:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;

.field public final b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

.field public final c:Lcom/facebook/imagepipeline/core/CloseableReferenceFactory;

.field public d:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

.field public i:Lcom/facebook/cache/disk/FileCache;

.field public j:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

.field public k:Lcom/facebook/imagepipeline/core/ImagePipeline;

.field public l:Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

.field public m:Lcom/facebook/imagepipeline/core/ProducerFactory;

.field public n:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;

.field public o:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

.field public p:Lcom/facebook/cache/disk/FileCache;

.field public q:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

.field public r:Lcom/facebook/imagepipeline/platform/PlatformDecoder;

.field public s:Lcom/facebook/imagepipeline/animated/factory/AnimatedFactory;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 5
    invoke-interface {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->D()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v0, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueueImpl;

    .line 7
    invoke-interface {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->F()Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/ExecutorSupplier;->b()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueueImpl;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->a:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;

    .line 8
    invoke-interface {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->D()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 9
    sput v0, Lcom/facebook/common/references/CloseableReference;->w:I

    .line 10
    new-instance v0, Lcom/facebook/imagepipeline/core/CloseableReferenceFactory;

    .line 11
    invoke-interface {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->g()Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/core/CloseableReferenceFactory;-><init>(Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->c:Lcom/facebook/imagepipeline/core/CloseableReferenceFactory;

    .line 12
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    return-void
.end method

.method public static declared-synchronized j(Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;)V
    .locals 2

    const-class v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->t:Lcom/facebook/imagepipeline/core/ImagePipelineFactory;

    if-eqz v1, :cond_0

    const-string v1, "ImagePipelineFactory has already been initialized! `ImagePipelineFactory.initialize(...)` should only be called once to avoid unexpected behavior."

    .line 2
    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->l(Ljava/lang/Class;Ljava/lang/String;)V

    .line 3
    :cond_0
    new-instance v1, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;

    invoke-direct {v1, p0}, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;)V

    sput-object v1, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->t:Lcom/facebook/imagepipeline/core/ImagePipelineFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a()Lcom/facebook/imagepipeline/core/ImagePipeline;
    .locals 49

    move-object/from16 v0, p0

    .line 1
    new-instance v16, Lcom/facebook/imagepipeline/core/ImagePipeline;

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 3
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->D()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/16 v25, 0x0

    .line 4
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->n:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;

    if-nez v1, :cond_7

    .line 5
    new-instance v1, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;

    iget-object v2, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 6
    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 7
    iget-object v2, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->m:Lcom/facebook/imagepipeline/core/ProducerFactory;

    if-nez v2, :cond_4

    .line 8
    iget-object v2, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 9
    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->D()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v2

    .line 10
    iget-object v2, v2, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->b:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$ProducerFactoryMethod;

    .line 11
    iget-object v3, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 12
    invoke-interface {v3}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->a()Landroid/content/Context;

    move-result-object v27

    iget-object v3, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 13
    invoke-interface {v3}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->b()Lcom/facebook/imagepipeline/memory/PoolFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/PoolFactory;->e()Lcom/facebook/common/memory/ByteArrayPool;

    move-result-object v28

    .line 14
    iget-object v3, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->j:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    if-nez v3, :cond_3

    .line 15
    iget-object v3, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    invoke-interface {v3}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->C()Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 16
    iget-object v3, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    invoke-interface {v3}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->C()Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    move-result-object v3

    iput-object v3, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->j:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b()Lcom/facebook/imagepipeline/animated/factory/AnimatedFactory;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 18
    invoke-interface {v3}, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactory;->b()Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    move-result-object v4

    .line 19
    invoke-interface {v3}, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactory;->c()Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v4

    .line 20
    :goto_0
    iget-object v5, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    invoke-interface {v5}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->y()Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;

    .line 21
    new-instance v5, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->h()Lcom/facebook/imagepipeline/platform/PlatformDecoder;

    move-result-object v6

    invoke-direct {v5, v4, v3, v6}, Lcom/facebook/imagepipeline/decoder/DefaultImageDecoder;-><init>(Lcom/facebook/imagepipeline/decoder/ImageDecoder;Lcom/facebook/imagepipeline/decoder/ImageDecoder;Lcom/facebook/imagepipeline/platform/PlatformDecoder;)V

    iput-object v5, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->j:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    .line 22
    :cond_3
    :goto_1
    iget-object v3, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->j:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    move-object/from16 v29, v3

    .line 23
    iget-object v3, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 24
    invoke-interface {v3}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->p()Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

    move-result-object v30

    iget-object v3, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 25
    invoke-interface {v3}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->t()Z

    move-result v31

    iget-object v3, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 26
    invoke-interface {v3}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->n()Z

    move-result v32

    iget-object v3, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 27
    invoke-interface {v3}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->D()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 28
    invoke-interface {v3}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->F()Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    move-result-object v34

    iget-object v3, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 29
    invoke-interface {v3}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->b()Lcom/facebook/imagepipeline/memory/PoolFactory;

    move-result-object v3

    iget-object v4, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    invoke-interface {v4}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->d()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/facebook/imagepipeline/memory/PoolFactory;->c(I)Lcom/facebook/common/memory/PooledByteBufferFactory;

    move-result-object v35

    iget-object v3, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 30
    invoke-interface {v3}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->b()Lcom/facebook/imagepipeline/memory/PoolFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/PoolFactory;->d()Lcom/facebook/common/memory/PooledByteStreams;

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->d()Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCache;

    move-result-object v36

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->e()Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCache;

    move-result-object v37

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->f()Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    move-result-object v38

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->i()Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    move-result-object v39

    iget-object v3, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 35
    invoke-interface {v3}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->m()Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    move-result-object v40

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->g()Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    move-result-object v41

    iget-object v3, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 37
    invoke-interface {v3}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->D()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v42, 0x0

    iget-object v3, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 38
    invoke-interface {v3}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->D()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v43, 0x0

    iget-object v3, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 39
    invoke-interface {v3}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->D()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v44, 0x0

    iget-object v3, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 40
    invoke-interface {v3}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->D()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v3

    .line 41
    iget v3, v3, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->a:I

    move/from16 v45, v3

    .line 42
    iget-object v3, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->c:Lcom/facebook/imagepipeline/core/CloseableReferenceFactory;

    move-object/from16 v46, v3

    .line 43
    iget-object v3, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 44
    invoke-interface {v3}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->D()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v47, 0x0

    iget-object v3, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 45
    invoke-interface {v3}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->D()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v3

    .line 46
    iget v3, v3, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->f:I

    move/from16 v48, v3

    .line 47
    check-cast v2, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$DefaultProducerFactoryMethod;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    new-instance v2, Lcom/facebook/imagepipeline/core/ProducerFactory;

    move-object/from16 v26, v2

    const/16 v33, 0x0

    invoke-direct/range {v26 .. v48}, Lcom/facebook/imagepipeline/core/ProducerFactory;-><init>(Landroid/content/Context;Lcom/facebook/common/memory/ByteArrayPool;Lcom/facebook/imagepipeline/decoder/ImageDecoder;Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;ZZZLcom/facebook/imagepipeline/core/ExecutorSupplier;Lcom/facebook/common/memory/PooledByteBufferFactory;Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/cache/CacheKeyFactory;Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;IIZILcom/facebook/imagepipeline/core/CloseableReferenceFactory;ZI)V

    .line 49
    iput-object v2, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->m:Lcom/facebook/imagepipeline/core/ProducerFactory;

    .line 50
    :cond_4
    iget-object v2, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->m:Lcom/facebook/imagepipeline/core/ProducerFactory;

    .line 51
    iget-object v3, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 52
    invoke-interface {v3}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->i()Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    move-result-object v20

    iget-object v3, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 53
    invoke-interface {v3}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->n()Z

    move-result v21

    iget-object v3, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 54
    invoke-interface {v3}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->D()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v22, 0x0

    iget-object v3, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->a:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;

    iget-object v4, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 55
    invoke-interface {v4}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->t()Z

    move-result v24

    iget-object v4, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 56
    invoke-interface {v4}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->D()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v26, 0x0

    iget-object v4, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 57
    invoke-interface {v4}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->z()Z

    move-result v27

    .line 58
    iget-object v4, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->l:Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

    if-nez v4, :cond_6

    .line 59
    iget-object v4, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    invoke-interface {v4}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->w()Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

    move-result-object v4

    if-nez v4, :cond_5

    iget-object v4, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 60
    invoke-interface {v4}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->v()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_5

    iget-object v4, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 61
    invoke-interface {v4}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->D()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_5
    new-instance v4, Lcom/facebook/imagepipeline/transcoder/MultiImageTranscoderFactory;

    iget-object v5, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 63
    invoke-interface {v5}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->D()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v5

    .line 64
    iget v6, v5, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->a:I

    .line 65
    iget-object v5, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 66
    invoke-interface {v5}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->D()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v5, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 67
    invoke-interface {v5}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->w()Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

    move-result-object v8

    iget-object v5, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 68
    invoke-interface {v5}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->v()Ljava/lang/Integer;

    move-result-object v9

    iget-object v5, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 69
    invoke-interface {v5}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->D()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v5

    .line 70
    iget-boolean v10, v5, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->e:Z

    move-object v5, v4

    .line 71
    invoke-direct/range {v5 .. v10}, Lcom/facebook/imagepipeline/transcoder/MultiImageTranscoderFactory;-><init>(IZLcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;Ljava/lang/Integer;Z)V

    iput-object v4, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->l:Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

    .line 72
    :cond_6
    iget-object v4, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->l:Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

    .line 73
    iget-object v5, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 74
    invoke-interface {v5}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->D()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v29, 0x0

    iget-object v5, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 75
    invoke-interface {v5}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->D()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v30, 0x0

    iget-object v5, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 76
    invoke-interface {v5}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->D()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v31, 0x0

    move-object/from16 v17, v1

    move-object/from16 v19, v2

    move-object/from16 v23, v3

    move-object/from16 v28, v4

    invoke-direct/range {v17 .. v31}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;-><init>(Landroid/content/ContentResolver;Lcom/facebook/imagepipeline/core/ProducerFactory;Lcom/facebook/imagepipeline/producers/NetworkFetcher;ZZLcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;ZZZZLcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;ZZZ)V

    iput-object v1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->n:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;

    .line 77
    :cond_7
    iget-object v2, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->n:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;

    .line 78
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 79
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->l()Ljava/util/Set;

    move-result-object v3

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 80
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->c()Ljava/util/Set;

    move-result-object v4

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 81
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->e()Lcom/facebook/common/internal/Supplier;

    move-result-object v5

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->d()Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCache;

    move-result-object v6

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->e()Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCache;

    move-result-object v7

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->f()Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    move-result-object v8

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->i()Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    move-result-object v9

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 86
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->m()Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    move-result-object v10

    iget-object v11, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->a:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 87
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->D()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v1

    .line 88
    iget-object v12, v1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->c:Lcom/facebook/common/internal/Supplier;

    .line 89
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 90
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->D()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 91
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->A()Lcom/facebook/callercontext/CallerContextVerifier;

    move-result-object v14

    iget-object v15, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Lcom/facebook/imagepipeline/core/ImagePipeline;-><init>(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;Ljava/util/Set;Ljava/util/Set;Lcom/facebook/common/internal/Supplier;Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/cache/CacheKeyFactory;Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;Lcom/facebook/common/internal/Supplier;Lcom/facebook/common/internal/Supplier;Lcom/facebook/callercontext/CallerContextVerifier;Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;)V

    return-object v16
.end method

.method public final b()Lcom/facebook/imagepipeline/animated/factory/AnimatedFactory;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->s:Lcom/facebook/imagepipeline/animated/factory/AnimatedFactory;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->g()Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 3
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->F()Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->c()Lcom/facebook/imagepipeline/cache/CountingMemoryCache;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 5
    invoke-interface {v3}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->D()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 6
    invoke-interface {v3}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->u()Lcom/facebook/common/executors/SerialExecutorService;

    move-result-object v3

    .line 7
    sget-boolean v4, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryProvider;->a:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :try_start_0
    const-string v5, "com.facebook.fresco.animation.factory.AnimatedFactoryV2Impl"

    .line 8
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x5

    new-array v7, v6, [Ljava/lang/Class;

    .line 9
    const-class v8, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-class v8, Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    aput-object v8, v7, v4

    const-class v8, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;

    const/4 v10, 0x2

    aput-object v8, v7, v10

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x3

    aput-object v8, v7, v11

    const-class v8, Lcom/facebook/common/executors/SerialExecutorService;

    const/4 v12, 0x4

    aput-object v8, v7, v12

    .line 10
    invoke-virtual {v5, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v9

    aput-object v1, v6, v4

    aput-object v2, v6, v10

    .line 11
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v0, v6, v11

    aput-object v3, v6, v12

    .line 12
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactory;

    sput-object v0, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryProvider;->b:Lcom/facebook/imagepipeline/animated/factory/AnimatedFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 13
    :goto_0
    sget-object v0, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryProvider;->b:Lcom/facebook/imagepipeline/animated/factory/AnimatedFactory;

    if-eqz v0, :cond_0

    .line 14
    sput-boolean v4, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryProvider;->a:Z

    .line 15
    :cond_0
    sget-object v0, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryProvider;->b:Lcom/facebook/imagepipeline/animated/factory/AnimatedFactory;

    .line 16
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->s:Lcom/facebook/imagepipeline/animated/factory/AnimatedFactory;

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->s:Lcom/facebook/imagepipeline/animated/factory/AnimatedFactory;

    return-object v0
.end method

.method public c()Lcom/facebook/imagepipeline/cache/CountingMemoryCache;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->d:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 3
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->h()Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 4
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->B()Lcom/facebook/common/internal/Supplier;

    move-result-object v5

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 5
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->x()Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 6
    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->o()Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

    move-result-object v4

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 7
    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->D()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 8
    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->D()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 9
    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->s()Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    move-result-object v6

    .line 10
    check-cast v0, Lcom/facebook/imagepipeline/cache/CountingLruBitmapMemoryCacheFactory;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v3, Lcom/facebook/imagepipeline/cache/CountingLruBitmapMemoryCacheFactory$1;

    invoke-direct {v3, v0}, Lcom/facebook/imagepipeline/cache/CountingLruBitmapMemoryCacheFactory$1;-><init>(Lcom/facebook/imagepipeline/cache/CountingLruBitmapMemoryCacheFactory;)V

    .line 12
    new-instance v0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;-><init>(Lcom/facebook/imagepipeline/cache/ValueDescriptor;Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;Lcom/facebook/common/internal/Supplier;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;ZZ)V

    .line 13
    invoke-interface {v1, v0}, Lcom/facebook/common/memory/MemoryTrimmableRegistry;->a(Lcom/facebook/common/memory/MemoryTrimmable;)V

    .line 14
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->d:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->d:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;

    return-object v0
.end method

.method public d()Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCache;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->e:Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCache;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->c()Lcom/facebook/imagepipeline/cache/CountingMemoryCache;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 4
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->r()Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    move-result-object v1

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v2, Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCacheBitmapMemoryCacheFactory$1;

    invoke-direct {v2, v1}, Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCacheBitmapMemoryCacheFactory$1;-><init>(Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;)V

    .line 7
    new-instance v1, Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCache;

    invoke-direct {v1, v0, v2}, Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCache;-><init>(Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/imagepipeline/cache/MemoryCacheTracker;)V

    .line 8
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->e:Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCache;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->e:Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCache;

    return-object v0
.end method

.method public e()Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCache;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->g:Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCache;

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 3
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->j()Lcom/facebook/imagepipeline/cache/MemoryCache;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 4
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->j()Lcom/facebook/imagepipeline/cache/MemoryCache;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->f:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 7
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->E()Lcom/facebook/common/internal/Supplier;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->x()Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    move-result-object v0

    .line 8
    new-instance v2, Lcom/facebook/imagepipeline/cache/EncodedCountingMemoryCacheFactory$1;

    invoke-direct {v2}, Lcom/facebook/imagepipeline/cache/EncodedCountingMemoryCacheFactory$1;-><init>()V

    .line 9
    new-instance v3, Lcom/facebook/imagepipeline/cache/NativeMemoryCacheTrimStrategy;

    invoke-direct {v3}, Lcom/facebook/imagepipeline/cache/NativeMemoryCacheTrimStrategy;-><init>()V

    .line 10
    new-instance v8, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;-><init>(Lcom/facebook/imagepipeline/cache/ValueDescriptor;Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;Lcom/facebook/common/internal/Supplier;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;ZZ)V

    .line 11
    invoke-interface {v0, v8}, Lcom/facebook/common/memory/MemoryTrimmableRegistry;->a(Lcom/facebook/common/memory/MemoryTrimmable;)V

    .line 12
    iput-object v8, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->f:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->f:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;

    .line 14
    :goto_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 15
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->r()Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    move-result-object v1

    .line 16
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v2, Lcom/facebook/imagepipeline/cache/EncodedMemoryCacheFactory$1;

    invoke-direct {v2, v1}, Lcom/facebook/imagepipeline/cache/EncodedMemoryCacheFactory$1;-><init>(Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;)V

    .line 18
    new-instance v1, Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCache;

    invoke-direct {v1, v0, v2}, Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCache;-><init>(Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/imagepipeline/cache/MemoryCacheTracker;)V

    .line 19
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->g:Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCache;

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->g:Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCache;

    return-object v0
.end method

.method public f()Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->h:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->i:Lcom/facebook/cache/disk/FileCache;

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->k()Lcom/facebook/cache/disk/DiskCacheConfig;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->f()Lcom/facebook/imagepipeline/core/FileCacheFactory;

    move-result-object v2

    check-cast v2, Lcom/facebook/imagepipeline/core/DiskStorageCacheFactory;

    invoke-virtual {v2, v1}, Lcom/facebook/imagepipeline/core/DiskStorageCacheFactory;->a(Lcom/facebook/cache/disk/DiskCacheConfig;)Lcom/facebook/cache/disk/FileCache;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->i:Lcom/facebook/cache/disk/FileCache;

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->i:Lcom/facebook/cache/disk/FileCache;

    .line 7
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 8
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->b()Lcom/facebook/imagepipeline/memory/PoolFactory;

    move-result-object v1

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    invoke-interface {v3}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->d()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/facebook/imagepipeline/memory/PoolFactory;->c(I)Lcom/facebook/common/memory/PooledByteBufferFactory;

    move-result-object v3

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 9
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->b()Lcom/facebook/imagepipeline/memory/PoolFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/PoolFactory;->d()Lcom/facebook/common/memory/PooledByteStreams;

    move-result-object v4

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 10
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->F()Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/ExecutorSupplier;->e()Ljava/util/concurrent/Executor;

    move-result-object v5

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 11
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->F()Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/ExecutorSupplier;->d()Ljava/util/concurrent/Executor;

    move-result-object v6

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 12
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->r()Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;-><init>(Lcom/facebook/cache/disk/FileCache;Lcom/facebook/common/memory/PooledByteBufferFactory;Lcom/facebook/common/memory/PooledByteStreams;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->h:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->h:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    return-object v0
.end method

.method public g()Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->q:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 3
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->b()Lcom/facebook/imagepipeline/memory/PoolFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->h()Lcom/facebook/imagepipeline/platform/PlatformDecoder;

    .line 4
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->c:Lcom/facebook/imagepipeline/core/CloseableReferenceFactory;

    .line 5
    new-instance v2, Lcom/facebook/imagepipeline/bitmaps/ArtBitmapFactory;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/PoolFactory;->a()Lcom/facebook/imagepipeline/memory/BitmapPool;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/facebook/imagepipeline/bitmaps/ArtBitmapFactory;-><init>(Lcom/facebook/imagepipeline/memory/BitmapPool;Lcom/facebook/imagepipeline/core/CloseableReferenceFactory;)V

    .line 6
    iput-object v2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->q:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->q:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    return-object v0
.end method

.method public h()Lcom/facebook/imagepipeline/platform/PlatformDecoder;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->r:Lcom/facebook/imagepipeline/platform/PlatformDecoder;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 3
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->b()Lcom/facebook/imagepipeline/memory/PoolFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->D()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/PoolFactory;->b()I

    move-result v1

    .line 6
    new-instance v2, Lcom/facebook/imagepipeline/platform/OreoDecoder;

    .line 7
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/PoolFactory;->a()Lcom/facebook/imagepipeline/memory/BitmapPool;

    move-result-object v0

    new-instance v3, Lcom/shabakaty/downloader/ce3;

    invoke-direct {v3, v1}, Lcom/shabakaty/downloader/ce3;-><init>(I)V

    invoke-direct {v2, v0, v1, v3}, Lcom/facebook/imagepipeline/platform/OreoDecoder;-><init>(Lcom/facebook/imagepipeline/memory/BitmapPool;ILcom/shabakaty/downloader/ce3;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/PoolFactory;->b()I

    move-result v1

    .line 9
    new-instance v2, Lcom/facebook/imagepipeline/platform/ArtDecoder;

    .line 10
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/PoolFactory;->a()Lcom/facebook/imagepipeline/memory/BitmapPool;

    move-result-object v0

    new-instance v3, Lcom/shabakaty/downloader/ce3;

    invoke-direct {v3, v1}, Lcom/shabakaty/downloader/ce3;-><init>(I)V

    invoke-direct {v2, v0, v1, v3}, Lcom/facebook/imagepipeline/platform/ArtDecoder;-><init>(Lcom/facebook/imagepipeline/memory/BitmapPool;ILcom/shabakaty/downloader/ce3;)V

    .line 11
    :goto_0
    iput-object v2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->r:Lcom/facebook/imagepipeline/platform/PlatformDecoder;

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->r:Lcom/facebook/imagepipeline/platform/PlatformDecoder;

    return-object v0
.end method

.method public final i()Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->o:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->p:Lcom/facebook/cache/disk/FileCache;

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->q()Lcom/facebook/cache/disk/DiskCacheConfig;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->f()Lcom/facebook/imagepipeline/core/FileCacheFactory;

    move-result-object v2

    check-cast v2, Lcom/facebook/imagepipeline/core/DiskStorageCacheFactory;

    invoke-virtual {v2, v1}, Lcom/facebook/imagepipeline/core/DiskStorageCacheFactory;->a(Lcom/facebook/cache/disk/DiskCacheConfig;)Lcom/facebook/cache/disk/FileCache;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->p:Lcom/facebook/cache/disk/FileCache;

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->p:Lcom/facebook/cache/disk/FileCache;

    .line 7
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 8
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->b()Lcom/facebook/imagepipeline/memory/PoolFactory;

    move-result-object v1

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    invoke-interface {v3}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->d()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/facebook/imagepipeline/memory/PoolFactory;->c(I)Lcom/facebook/common/memory/PooledByteBufferFactory;

    move-result-object v3

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 9
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->b()Lcom/facebook/imagepipeline/memory/PoolFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/PoolFactory;->d()Lcom/facebook/common/memory/PooledByteStreams;

    move-result-object v4

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 10
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->F()Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/ExecutorSupplier;->e()Ljava/util/concurrent/Executor;

    move-result-object v5

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 11
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->F()Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/ExecutorSupplier;->d()Ljava/util/concurrent/Executor;

    move-result-object v6

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 12
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->r()Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;-><init>(Lcom/facebook/cache/disk/FileCache;Lcom/facebook/common/memory/PooledByteBufferFactory;Lcom/facebook/common/memory/PooledByteStreams;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->o:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->o:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    return-object v0
.end method
