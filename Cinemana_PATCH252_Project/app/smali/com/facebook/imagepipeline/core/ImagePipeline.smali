.class public Lcom/facebook/imagepipeline/core/ImagePipeline;
.super Ljava/lang/Object;
.source "ImagePipeline.java"


# instance fields
.field public final a:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;

.field public final b:Lcom/facebook/imagepipeline/listener/RequestListener;

.field public final c:Lcom/facebook/imagepipeline/listener/RequestListener2;

.field public final d:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/facebook/imagepipeline/cache/MemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lcom/facebook/imagepipeline/cache/MemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

.field public final h:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/concurrent/atomic/AtomicLong;

.field public final j:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lcom/facebook/callercontext/CallerContextVerifier;

.field public final l:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Prefetching is not enabled"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;Ljava/util/Set;Ljava/util/Set;Lcom/facebook/common/internal/Supplier;Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/cache/CacheKeyFactory;Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;Lcom/facebook/common/internal/Supplier;Lcom/facebook/common/internal/Supplier;Lcom/facebook/callercontext/CallerContextVerifier;Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;",
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/listener/RequestListener2;",
            ">;",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/BufferedDiskCache;",
            "Lcom/facebook/imagepipeline/cache/BufferedDiskCache;",
            "Lcom/facebook/imagepipeline/cache/CacheKeyFactory;",
            "Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/callercontext/CallerContextVerifier;",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p7, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p7}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p7, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->a:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;

    .line 4
    new-instance p1, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;

    invoke-direct {p1, p2}, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;-><init>(Ljava/util/Set;)V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->b:Lcom/facebook/imagepipeline/listener/RequestListener;

    .line 5
    new-instance p1, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;

    invoke-direct {p1, p3}, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;-><init>(Ljava/util/Set;)V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->c:Lcom/facebook/imagepipeline/listener/RequestListener2;

    .line 6
    iput-object p4, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->d:Lcom/facebook/common/internal/Supplier;

    .line 7
    iput-object p5, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->e:Lcom/facebook/imagepipeline/cache/MemoryCache;

    .line 8
    iput-object p6, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->f:Lcom/facebook/imagepipeline/cache/MemoryCache;

    .line 9
    iput-object p9, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->g:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    .line 10
    iput-object p11, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->h:Lcom/facebook/common/internal/Supplier;

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->j:Lcom/facebook/common/internal/Supplier;

    .line 12
    iput-object p13, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->k:Lcom/facebook/callercontext/CallerContextVerifier;

    .line 13
    iput-object p14, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->l:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/listener/RequestListener;Ljava/lang/String;)Lcom/facebook/datasource/DataSource;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->a:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;

    .line 2
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->c(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    .line 3
    invoke-virtual/range {v1 .. v7}, Lcom/facebook/imagepipeline/core/ImagePipeline;->b(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/listener/RequestListener;Ljava/lang/String;)Lcom/facebook/datasource/DataSource;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/facebook/datasource/DataSources;->a(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/listener/RequestListener;Ljava/lang/String;)Lcom/facebook/datasource/DataSource;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;>;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;>;"
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v0, p2

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 2
    new-instance v13, Lcom/facebook/imagepipeline/producers/InternalRequestListener;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-nez p5, :cond_1

    .line 3
    iget-object v5, v0, Lcom/facebook/imagepipeline/request/ImageRequest;->r:Lcom/facebook/imagepipeline/listener/RequestListener;

    if-nez v5, :cond_0

    .line 4
    iget-object v4, v1, Lcom/facebook/imagepipeline/core/ImagePipeline;->b:Lcom/facebook/imagepipeline/listener/RequestListener;

    goto :goto_1

    .line 5
    :cond_0
    new-instance v6, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;

    new-array v4, v4, [Lcom/facebook/imagepipeline/listener/RequestListener;

    iget-object v7, v1, Lcom/facebook/imagepipeline/core/ImagePipeline;->b:Lcom/facebook/imagepipeline/listener/RequestListener;

    aput-object v7, v4, v2

    aput-object v5, v4, v3

    invoke-direct {v6, v4}, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;-><init>([Lcom/facebook/imagepipeline/listener/RequestListener;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v5, v0, Lcom/facebook/imagepipeline/request/ImageRequest;->r:Lcom/facebook/imagepipeline/listener/RequestListener;

    if-nez v5, :cond_2

    .line 7
    new-instance v5, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;

    new-array v4, v4, [Lcom/facebook/imagepipeline/listener/RequestListener;

    iget-object v6, v1, Lcom/facebook/imagepipeline/core/ImagePipeline;->b:Lcom/facebook/imagepipeline/listener/RequestListener;

    aput-object v6, v4, v2

    aput-object p5, v4, v3

    invoke-direct {v5, v4}, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;-><init>([Lcom/facebook/imagepipeline/listener/RequestListener;)V

    move-object v4, v5

    goto :goto_1

    .line 8
    :cond_2
    new-instance v6, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;

    const/4 v7, 0x3

    new-array v7, v7, [Lcom/facebook/imagepipeline/listener/RequestListener;

    iget-object v8, v1, Lcom/facebook/imagepipeline/core/ImagePipeline;->b:Lcom/facebook/imagepipeline/listener/RequestListener;

    aput-object v8, v7, v2

    aput-object p5, v7, v3

    aput-object v5, v7, v4

    .line 9
    invoke-direct {v6, v7}, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;-><init>([Lcom/facebook/imagepipeline/listener/RequestListener;)V

    :goto_0
    move-object v4, v6

    .line 10
    :goto_1
    iget-object v5, v1, Lcom/facebook/imagepipeline/core/ImagePipeline;->c:Lcom/facebook/imagepipeline/listener/RequestListener2;

    invoke-direct {v13, v4, v5}, Lcom/facebook/imagepipeline/producers/InternalRequestListener;-><init>(Lcom/facebook/imagepipeline/listener/RequestListener;Lcom/facebook/imagepipeline/listener/RequestListener2;)V

    .line 11
    iget-object v4, v1, Lcom/facebook/imagepipeline/core/ImagePipeline;->k:Lcom/facebook/callercontext/CallerContextVerifier;

    move-object/from16 v7, p4

    if-eqz v4, :cond_3

    .line 12
    invoke-interface {v4, v7, v2}, Lcom/facebook/callercontext/CallerContextVerifier;->a(Ljava/lang/Object;Z)V

    .line 13
    :cond_3
    :try_start_0
    iget-object v4, v0, Lcom/facebook/imagepipeline/request/ImageRequest;->l:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 14
    iget v5, v4, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->r:I

    move-object/from16 v6, p3

    iget v8, v6, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->r:I

    if-le v5, v8, :cond_4

    move-object v8, v4

    goto :goto_2

    :cond_4
    move-object v8, v6

    .line 15
    :goto_2
    new-instance v14, Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    .line 16
    iget-object v4, v1, Lcom/facebook/imagepipeline/core/ImagePipeline;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    .line 17
    iget-boolean v5, v0, Lcom/facebook/imagepipeline/request/ImageRequest;->e:Z

    if-nez v5, :cond_6

    .line 18
    iget-object v5, v0, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Landroid/net/Uri;

    .line 19
    invoke-static {v5}, Lcom/facebook/common/util/UriUtil;->e(Landroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v10, 0x1

    .line 20
    :goto_4
    iget-object v11, v0, Lcom/facebook/imagepipeline/request/ImageRequest;->k:Lcom/facebook/imagepipeline/common/Priority;

    .line 21
    iget-object v12, v1, Lcom/facebook/imagepipeline/core/ImagePipeline;->l:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    move-object v2, v14

    move-object/from16 v3, p2

    move-object/from16 v5, p6

    move-object v6, v13

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v12}, Lcom/facebook/imagepipeline/producers/SettableProducerContext;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/ProducerListener2;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;)V

    .line 22
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 23
    new-instance v0, Lcom/facebook/imagepipeline/datasource/CloseableProducerToDataSourceAdapter;

    move-object/from16 v2, p1

    invoke-direct {v0, v2, v14, v13}, Lcom/facebook/imagepipeline/datasource/CloseableProducerToDataSourceAdapter;-><init>(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/producers/SettableProducerContext;Lcom/facebook/imagepipeline/listener/RequestListener2;)V

    .line 24
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 26
    :try_start_1
    invoke-static {v0}, Lcom/facebook/datasource/DataSources;->a(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    return-object v0

    :goto_5
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 28
    throw v0
.end method
