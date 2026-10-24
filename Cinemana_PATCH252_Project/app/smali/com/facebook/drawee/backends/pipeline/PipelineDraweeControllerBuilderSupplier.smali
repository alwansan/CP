.class public Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilderSupplier;
.super Ljava/lang/Object;
.source "PipelineDraweeControllerBuilderSupplier.java"

# interfaces
.implements Lcom/facebook/common/internal/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/internal/Supplier<",
        "Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/facebook/imagepipeline/core/ImagePipeline;

.field public final c:Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->t:Lcom/facebook/imagepipeline/core/ImagePipelineFactory;

    const-string v1, "ImagePipelineFactory was not initialized!"

    invoke-static {v0, v1}, Lcom/facebook/common/internal/Preconditions;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilderSupplier;->a:Landroid/content/Context;

    .line 4
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->k:Lcom/facebook/imagepipeline/core/ImagePipeline;

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->a()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->k:Lcom/facebook/imagepipeline/core/ImagePipeline;

    .line 6
    :cond_0
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->k:Lcom/facebook/imagepipeline/core/ImagePipeline;

    .line 7
    iput-object v1, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilderSupplier;->b:Lcom/facebook/imagepipeline/core/ImagePipeline;

    .line 8
    new-instance v2, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerFactory;

    invoke-direct {v2}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerFactory;-><init>()V

    iput-object v2, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilderSupplier;->c:Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerFactory;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 10
    const-class v4, Lcom/facebook/drawee/components/DeferredReleaser;

    monitor-enter v4

    .line 11
    :try_start_0
    sget-object v5, Lcom/facebook/drawee/components/DeferredReleaser;->a:Lcom/facebook/drawee/components/DeferredReleaser;

    if-nez v5, :cond_1

    .line 12
    new-instance v5, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;

    invoke-direct {v5}, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;-><init>()V

    sput-object v5, Lcom/facebook/drawee/components/DeferredReleaser;->a:Lcom/facebook/drawee/components/DeferredReleaser;

    .line 13
    :cond_1
    sget-object v5, Lcom/facebook/drawee/components/DeferredReleaser;->a:Lcom/facebook/drawee/components/DeferredReleaser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 14
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->b()Lcom/facebook/imagepipeline/animated/factory/AnimatedFactory;

    move-result-object v0

    const/4 v4, 0x0

    if-nez v0, :cond_2

    move-object p1, v4

    goto :goto_0

    .line 15
    :cond_2
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactory;->a(Landroid/content/Context;)Lcom/facebook/imagepipeline/drawable/DrawableFactory;

    move-result-object p1

    .line 16
    :goto_0
    sget-object v0, Lcom/facebook/common/executors/UiThreadImmediateExecutorService;->s:Lcom/facebook/common/executors/UiThreadImmediateExecutorService;

    if-nez v0, :cond_3

    .line 17
    new-instance v0, Lcom/facebook/common/executors/UiThreadImmediateExecutorService;

    invoke-direct {v0}, Lcom/facebook/common/executors/UiThreadImmediateExecutorService;-><init>()V

    sput-object v0, Lcom/facebook/common/executors/UiThreadImmediateExecutorService;->s:Lcom/facebook/common/executors/UiThreadImmediateExecutorService;

    .line 18
    :cond_3
    sget-object v0, Lcom/facebook/common/executors/UiThreadImmediateExecutorService;->s:Lcom/facebook/common/executors/UiThreadImmediateExecutorService;

    .line 19
    iget-object v1, v1, Lcom/facebook/imagepipeline/core/ImagePipeline;->e:Lcom/facebook/imagepipeline/cache/MemoryCache;

    .line 20
    iput-object v3, v2, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerFactory;->a:Landroid/content/res/Resources;

    .line 21
    iput-object v5, v2, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerFactory;->b:Lcom/facebook/drawee/components/DeferredReleaser;

    .line 22
    iput-object p1, v2, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerFactory;->c:Lcom/facebook/imagepipeline/drawable/DrawableFactory;

    .line 23
    iput-object v0, v2, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerFactory;->d:Ljava/util/concurrent/Executor;

    .line 24
    iput-object v1, v2, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerFactory;->e:Lcom/facebook/imagepipeline/cache/MemoryCache;

    .line 25
    iput-object v4, v2, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerFactory;->f:Lcom/facebook/common/internal/ImmutableList;

    .line 26
    iput-object v4, v2, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerFactory;->g:Lcom/facebook/common/internal/Supplier;

    return-void

    :catchall_0
    move-exception p1

    .line 27
    monitor-exit v4

    throw p1
.end method


# virtual methods
.method public a()Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;
    .locals 7

    .line 1
    new-instance v6, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilderSupplier;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilderSupplier;->c:Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerFactory;

    iget-object v3, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilderSupplier;->b:Lcom/facebook/imagepipeline/core/ImagePipeline;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;-><init>(Landroid/content/Context;Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerFactory;Lcom/facebook/imagepipeline/core/ImagePipeline;Ljava/util/Set;Ljava/util/Set;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, v6, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->m:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfDataListener;

    return-object v6
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilderSupplier;->a()Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v0

    return-object v0
.end method
