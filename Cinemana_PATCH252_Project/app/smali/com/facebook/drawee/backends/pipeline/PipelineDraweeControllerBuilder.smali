.class public Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;
.super Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
.source "PipelineDraweeControllerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<",
        "Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;",
        "Lcom/facebook/imagepipeline/request/ImageRequest;",
        "Lcom/facebook/common/references/CloseableReference<",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        ">;",
        "Lcom/facebook/imagepipeline/image/ImageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final k:Lcom/facebook/imagepipeline/core/ImagePipeline;

.field public final l:Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerFactory;

.field public m:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfDataListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerFactory;Lcom/facebook/imagepipeline/core/ImagePipeline;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerFactory;",
            "Lcom/facebook/imagepipeline/core/ImagePipeline;",
            "Ljava/util/Set<",
            "Lcom/facebook/drawee/controller/ControllerListener;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/facebook/fresco/ui/common/ControllerListener2;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p4, p5}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;-><init>(Landroid/content/Context;Ljava/util/Set;Ljava/util/Set;)V

    .line 2
    iput-object p3, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->k:Lcom/facebook/imagepipeline/core/ImagePipeline;

    .line 3
    iput-object p2, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->l:Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerFactory;

    return-void
.end method


# virtual methods
.method public b(Lcom/facebook/drawee/interfaces/DraweeController;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lcom/facebook/datasource/DataSource;
    .locals 6

    .line 1
    move-object v1, p3

    check-cast v1, Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 2
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->k:Lcom/facebook/imagepipeline/core/ImagePipeline;

    .line 3
    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    if-eqz p3, :cond_2

    const/4 v2, 0x1

    if-eq p3, v2, :cond_1

    const/4 v2, 0x2

    if-ne p3, v2, :cond_0

    .line 4
    sget-object p3, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->u:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cache level"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "is not supported. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    sget-object p3, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->t:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    goto :goto_0

    .line 7
    :cond_2
    sget-object p3, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->s:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    :goto_0
    move-object v3, p3

    .line 8
    instance-of p3, p1, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;

    const/4 p5, 0x0

    if-eqz p3, :cond_6

    .line 9
    check-cast p1, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;

    .line 10
    monitor-enter p1

    .line 11
    :try_start_0
    iget-object p3, p1, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->G:Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;

    if-eqz p3, :cond_3

    .line 12
    new-instance p5, Lcom/facebook/drawee/backends/pipeline/info/ImageOriginRequestListener;

    .line 13
    iget-object v2, p1, Lcom/facebook/drawee/controller/AbstractDraweeController;->j:Ljava/lang/String;

    .line 14
    invoke-direct {p5, v2, p3}, Lcom/facebook/drawee/backends/pipeline/info/ImageOriginRequestListener;-><init>(Ljava/lang/String;Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;)V

    .line 15
    :cond_3
    iget-object p3, p1, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->F:Ljava/util/Set;

    if-eqz p3, :cond_5

    .line 16
    new-instance v2, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;

    invoke-direct {v2, p3}, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;-><init>(Ljava/util/Set;)V

    if-eqz p5, :cond_4

    .line 17
    iget-object p3, v2, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;->a:Ljava/util/List;

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :cond_4
    monitor-exit p1

    move-object v4, v2

    goto :goto_2

    .line 19
    :cond_5
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2

    :cond_6
    :goto_1
    move-object v4, p5

    :goto_2
    move-object v2, p4

    move-object v5, p2

    .line 20
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/imagepipeline/core/ImagePipeline;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/listener/RequestListener;Ljava/lang/String;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    return-object p1
.end method

.method public d()Lcom/facebook/drawee/controller/AbstractDraweeController;
    .locals 13

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->g:Lcom/facebook/drawee/interfaces/DraweeController;

    .line 3
    sget-object v1, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 4
    instance-of v1, v0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->l:Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerFactory;

    .line 7
    iget-object v7, v0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerFactory;->a:Landroid/content/res/Resources;

    iget-object v8, v0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerFactory;->b:Lcom/facebook/drawee/components/DeferredReleaser;

    iget-object v9, v0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerFactory;->c:Lcom/facebook/imagepipeline/drawable/DrawableFactory;

    iget-object v10, v0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerFactory;->d:Ljava/util/concurrent/Executor;

    iget-object v11, v0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerFactory;->e:Lcom/facebook/imagepipeline/cache/MemoryCache;

    iget-object v12, v0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerFactory;->f:Lcom/facebook/common/internal/ImmutableList;

    .line 8
    new-instance v1, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;-><init>(Landroid/content/res/Resources;Lcom/facebook/drawee/components/DeferredReleaser;Lcom/facebook/imagepipeline/drawable/DrawableFactory;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/common/internal/ImmutableList;)V

    .line 9
    iget-object v0, v0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerFactory;->g:Lcom/facebook/common/internal/Supplier;

    if-eqz v0, :cond_1

    .line 10
    invoke-interface {v0}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 11
    iput-boolean v0, v1, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->C:Z

    :cond_1
    move-object v0, v1

    .line 12
    :goto_0
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->e:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 13
    invoke-virtual {p0, v0, v5, v1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->c(Lcom/facebook/drawee/interfaces/DraweeController;Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Supplier;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_3

    .line 14
    iget-object v3, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->f:Ljava/lang/Object;

    if-eqz v3, :cond_3

    .line 15
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->f:Ljava/lang/Object;

    invoke-virtual {p0, v0, v5, v1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->c(Lcom/facebook/drawee/interfaces/DraweeController;Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Supplier;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 18
    new-instance v4, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;

    invoke-direct {v4, v3, v1}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;-><init>(Ljava/util/List;Z)V

    move-object v1, v4

    :cond_3
    if-nez v1, :cond_4

    .line 19
    sget-object v1, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->i:Ljava/lang/NullPointerException;

    .line 20
    new-instance v3, Lcom/facebook/datasource/DataSources$1;

    invoke-direct {v3, v1}, Lcom/facebook/datasource/DataSources$1;-><init>(Ljava/lang/Throwable;)V

    move-object v4, v3

    goto :goto_2

    :cond_4
    move-object v4, v1

    .line 21
    :goto_2
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->e:Ljava/lang/Object;

    .line 22
    check-cast v1, Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 23
    iget-object v3, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->k:Lcom/facebook/imagepipeline/core/ImagePipeline;

    .line 24
    iget-object v3, v3, Lcom/facebook/imagepipeline/core/ImagePipeline;->g:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    if-eqz v3, :cond_6

    if-eqz v1, :cond_6

    .line 25
    iget-object v2, v1, Lcom/facebook/imagepipeline/request/ImageRequest;->q:Lcom/facebook/imagepipeline/request/Postprocessor;

    if-eqz v2, :cond_5

    .line 26
    iget-object v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d:Ljava/lang/Object;

    .line 27
    check-cast v3, Lcom/facebook/imagepipeline/cache/DefaultCacheKeyFactory;

    invoke-virtual {v3, v1, v2}, Lcom/facebook/imagepipeline/cache/DefaultCacheKeyFactory;->c(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/CacheKey;

    move-result-object v1

    goto :goto_3

    .line 28
    :cond_5
    iget-object v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d:Ljava/lang/Object;

    .line 29
    check-cast v3, Lcom/facebook/imagepipeline/cache/DefaultCacheKeyFactory;

    invoke-virtual {v3, v1, v2}, Lcom/facebook/imagepipeline/cache/DefaultCacheKeyFactory;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/CacheKey;

    move-result-object v1

    :goto_3
    move-object v6, v1

    goto :goto_4

    :cond_6
    move-object v6, v2

    .line 30
    :goto_4
    iget-object v7, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d:Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v0

    .line 31
    invoke-virtual/range {v3 .. v9}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->H(Lcom/facebook/common/internal/Supplier;Ljava/lang/String;Lcom/facebook/cache/common/CacheKey;Ljava/lang/Object;Lcom/facebook/common/internal/ImmutableList;Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;)V

    .line 32
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->m:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfDataListener;

    sget-object v2, Lcom/facebook/common/internal/Suppliers;->a:Lcom/facebook/common/internal/Supplier;

    invoke-virtual {v0, v1, p0, v2}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->I(Lcom/facebook/drawee/backends/pipeline/info/ImagePerfDataListener;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;Lcom/facebook/common/internal/Supplier;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 34
    throw v0
.end method
