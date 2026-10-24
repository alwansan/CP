.class public Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;
.super Lcom/facebook/drawee/controller/AbstractDraweeController;
.source "PipelineDraweeController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/drawee/controller/AbstractDraweeController<",
        "Lcom/facebook/common/references/CloseableReference<",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        ">;",
        "Lcom/facebook/imagepipeline/image/ImageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public A:Lcom/facebook/cache/common/CacheKey;

.field public B:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public C:Z

.field public D:Lcom/facebook/common/internal/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lcom/facebook/imagepipeline/drawable/DrawableFactory;",
            ">;"
        }
    .end annotation
.end field

.field public E:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;

.field public F:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ">;"
        }
    .end annotation
.end field

.field public G:Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;

.field public H:Lcom/facebook/drawee/backends/pipeline/debug/DebugOverlayImageOriginListener;

.field public I:Lcom/facebook/imagepipeline/request/ImageRequest;

.field public J:Lcom/facebook/imagepipeline/request/ImageRequest;

.field public final x:Lcom/facebook/imagepipeline/drawable/DrawableFactory;

.field public final y:Lcom/facebook/common/internal/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lcom/facebook/imagepipeline/drawable/DrawableFactory;",
            ">;"
        }
    .end annotation
.end field

.field public final z:Lcom/facebook/imagepipeline/cache/MemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/facebook/drawee/components/DeferredReleaser;Lcom/facebook/imagepipeline/drawable/DrawableFactory;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/common/internal/ImmutableList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/facebook/drawee/components/DeferredReleaser;",
            "Lcom/facebook/imagepipeline/drawable/DrawableFactory;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;",
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lcom/facebook/imagepipeline/drawable/DrawableFactory;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p2, p4, v0, v0}, Lcom/facebook/drawee/controller/AbstractDraweeController;-><init>(Lcom/facebook/drawee/components/DeferredReleaser;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    new-instance p2, Lcom/facebook/drawee/backends/pipeline/DefaultDrawableFactory;

    invoke-direct {p2, p1, p3}, Lcom/facebook/drawee/backends/pipeline/DefaultDrawableFactory;-><init>(Landroid/content/res/Resources;Lcom/facebook/imagepipeline/drawable/DrawableFactory;)V

    iput-object p2, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->x:Lcom/facebook/imagepipeline/drawable/DrawableFactory;

    .line 3
    iput-object p6, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->y:Lcom/facebook/common/internal/ImmutableList;

    .line 4
    iput-object p5, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->z:Lcom/facebook/imagepipeline/cache/MemoryCache;

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/facebook/common/references/CloseableReference;

    .line 2
    sget-object v0, Lcom/facebook/common/references/CloseableReference;->v:Ljava/lang/Class;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->close()V

    :cond_0
    return-void
.end method

.method public declared-synchronized F(Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->G:Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;

    instance-of v1, v0, Lcom/facebook/drawee/backends/pipeline/info/ForwardingImageOriginListener;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/facebook/drawee/backends/pipeline/info/ForwardingImageOriginListener;

    .line 3
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    iget-object v1, v0, Lcom/facebook/drawee/backends/pipeline/info/ForwardingImageOriginListener;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_0
    if-eqz v0, :cond_1

    .line 6
    new-instance v1, Lcom/facebook/drawee/backends/pipeline/info/ForwardingImageOriginListener;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-direct {v1, v2}, Lcom/facebook/drawee/backends/pipeline/info/ForwardingImageOriginListener;-><init>([Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;)V

    iput-object v1, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->G:Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;

    goto :goto_0

    .line 7
    :cond_1
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->G:Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized G(Lcom/facebook/imagepipeline/listener/RequestListener;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->F:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->F:Ljava/util/Set;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->F:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public H(Lcom/facebook/common/internal/Supplier;Ljava/lang/String;Lcom/facebook/cache/common/CacheKey;Ljava/lang/Object;Lcom/facebook/common/internal/ImmutableList;Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;>;",
            "Ljava/lang/String;",
            "Lcom/facebook/cache/common/CacheKey;",
            "Ljava/lang/Object;",
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lcom/facebook/imagepipeline/drawable/DrawableFactory;",
            ">;",
            "Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 2
    invoke-virtual {p0, p2, p4}, Lcom/facebook/drawee/controller/AbstractDraweeController;->o(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->s:Z

    .line 4
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->B:Lcom/facebook/common/internal/Supplier;

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->K(Lcom/facebook/imagepipeline/image/CloseableImage;)V

    .line 6
    iput-object p3, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->A:Lcom/facebook/cache/common/CacheKey;

    .line 7
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->D:Lcom/facebook/common/internal/ImmutableList;

    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->G:Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->K(Lcom/facebook/imagepipeline/image/CloseableImage;)V

    .line 12
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->F(Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;)V

    .line 13
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized I(Lcom/facebook/drawee/backends/pipeline/info/ImagePerfDataListener;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;Lcom/facebook/common/internal/Supplier;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/backends/pipeline/info/ImagePerfDataListener;",
            "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<",
            "Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;",
            "Lcom/facebook/imagepipeline/image/ImageInfo;",
            ">;",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->E:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->j:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_0
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->c(Z)V

    .line 5
    iget-object v0, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->c:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;

    invoke-virtual {v0}, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->a()V

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 6
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->E:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;

    if-nez v1, :cond_2

    .line 7
    new-instance v1, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;

    invoke-static {}, Lcom/facebook/common/time/AwakeTimeSinceBootClock;->get()Lcom/facebook/common/time/AwakeTimeSinceBootClock;

    move-result-object v2

    invoke-direct {v1, v2, p0, p3}, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;-><init>(Lcom/facebook/common/time/MonotonicClock;Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;Lcom/facebook/common/internal/Supplier;)V

    iput-object v1, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->E:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;

    .line 8
    :cond_2
    iget-object p3, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->E:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v1, p3, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->j:Ljava/util/List;

    if-nez v1, :cond_3

    .line 10
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p3, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->j:Ljava/util/List;

    .line 11
    :cond_3
    iget-object p3, p3, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->j:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->E:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->c(Z)V

    .line 13
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->E:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;

    .line 14
    iget-object p1, p1, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->c:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;

    .line 15
    iget-object p3, p2, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->e:Ljava/lang/Object;

    .line 16
    check-cast p3, Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 17
    iget-object v1, p2, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->f:Ljava/lang/Object;

    .line 18
    check-cast v1, Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 19
    iput-object p3, p1, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->f:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 20
    iput-object v1, p1, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->g:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 21
    iput-object v0, p1, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->h:[Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 22
    :cond_4
    iget-object p1, p2, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->e:Ljava/lang/Object;

    .line 23
    check-cast p1, Lcom/facebook/imagepipeline/request/ImageRequest;

    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->I:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 24
    iget-object p1, p2, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->f:Ljava/lang/Object;

    .line 25
    check-cast p1, Lcom/facebook/imagepipeline/request/ImageRequest;

    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->J:Lcom/facebook/imagepipeline/request/ImageRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final J(Lcom/facebook/common/internal/ImmutableList;Lcom/facebook/imagepipeline/image/CloseableImage;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lcom/facebook/imagepipeline/drawable/DrawableFactory;",
            ">;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ")",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/drawable/DrawableFactory;

    .line 2
    invoke-interface {v1, p2}, Lcom/facebook/imagepipeline/drawable/DrawableFactory;->a(Lcom/facebook/imagepipeline/image/CloseableImage;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    invoke-interface {v1, p2}, Lcom/facebook/imagepipeline/drawable/DrawableFactory;->b(Lcom/facebook/imagepipeline/image/CloseableImage;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method public final K(Lcom/facebook/imagepipeline/image/CloseableImage;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->C:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->i:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;

    invoke-direct {v0}, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;-><init>()V

    .line 4
    new-instance v1, Lcom/facebook/drawee/debug/listener/ImageLoadingTimeControllerListener;

    invoke-direct {v1, v0}, Lcom/facebook/drawee/debug/listener/ImageLoadingTimeControllerListener;-><init>(Lcom/facebook/drawee/debug/listener/ImageLoadingTimeListener;)V

    .line 5
    new-instance v2, Lcom/facebook/drawee/backends/pipeline/debug/DebugOverlayImageOriginListener;

    invoke-direct {v2}, Lcom/facebook/drawee/backends/pipeline/debug/DebugOverlayImageOriginListener;-><init>()V

    iput-object v2, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->H:Lcom/facebook/drawee/backends/pipeline/debug/DebugOverlayImageOriginListener;

    .line 6
    invoke-virtual {p0, v1}, Lcom/facebook/drawee/controller/AbstractDraweeController;->g(Lcom/facebook/drawee/controller/ControllerListener;)V

    .line 7
    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->i:Landroid/graphics/drawable/Drawable;

    .line 8
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->h:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    if-eqz v1, :cond_1

    .line 9
    invoke-interface {v1, v0}, Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;->b(Landroid/graphics/drawable/Drawable;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->G:Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;

    if-nez v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->H:Lcom/facebook/drawee/backends/pipeline/debug/DebugOverlayImageOriginListener;

    invoke-virtual {p0, v0}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->F(Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;)V

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->i:Landroid/graphics/drawable/Drawable;

    .line 13
    instance-of v1, v0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;

    if-eqz v1, :cond_e

    .line 14
    check-cast v0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;

    .line 15
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->j:Ljava/lang/String;

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const-string v1, "none"

    .line 16
    :goto_0
    iput-object v1, v0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->r:Ljava/lang/String;

    .line 17
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 18
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->h:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 19
    invoke-interface {v1}, Lcom/facebook/drawee/interfaces/DraweeHierarchy;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/drawee/drawable/ScalingUtils;->a(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/drawable/ScaleTypeDrawable;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 20
    iget-object v2, v1, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->u:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 21
    :cond_4
    iput-object v2, v0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->v:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 22
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->H:Lcom/facebook/drawee/backends/pipeline/debug/DebugOverlayImageOriginListener;

    .line 23
    iget v1, v1, Lcom/facebook/drawee/backends/pipeline/debug/DebugOverlayImageOriginListener;->a:I

    packed-switch v1, :pswitch_data_0

    const-string v2, "unknown"

    goto :goto_1

    :pswitch_0
    const-string v2, "local"

    goto :goto_1

    :pswitch_1
    const-string v2, "memory_bitmap_shortcut"

    goto :goto_1

    :pswitch_2
    const-string v2, "memory_bitmap"

    goto :goto_1

    :pswitch_3
    const-string v2, "memory_encoded"

    goto :goto_1

    :pswitch_4
    const-string v2, "disk"

    goto :goto_1

    :pswitch_5
    const-string v2, "network"

    .line 24
    :goto_1
    sget-object v3, Lcom/facebook/drawee/backends/pipeline/debug/DebugOverlayImageOriginColor;->a:Landroid/util/SparseIntArray;

    const/4 v4, -0x1

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 25
    iput-object v2, v0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->K:Ljava/lang/String;

    .line 26
    iput v1, v0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->L:I

    .line 27
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    if-eqz p1, :cond_d

    .line 28
    move-object v1, p1

    check-cast v1, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    .line 29
    iget v2, v1, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->w:I

    rem-int/lit16 v2, v2, 0xb4

    const/4 v3, 0x7

    const/4 v4, 0x5

    const/4 v5, 0x0

    if-nez v2, :cond_7

    iget v2, v1, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->x:I

    if-eq v2, v4, :cond_7

    if-ne v2, v3, :cond_5

    goto :goto_2

    .line 30
    :cond_5
    iget-object v2, v1, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->u:Landroid/graphics/Bitmap;

    if-nez v2, :cond_6

    goto :goto_3

    .line 31
    :cond_6
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    goto :goto_4

    .line 32
    :cond_7
    :goto_2
    iget-object v2, v1, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->u:Landroid/graphics/Bitmap;

    if-nez v2, :cond_8

    :goto_3
    const/4 v2, 0x0

    goto :goto_4

    .line 33
    :cond_8
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 34
    :goto_4
    iget v6, v1, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->w:I

    rem-int/lit16 v6, v6, 0xb4

    if-nez v6, :cond_b

    iget v6, v1, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->x:I

    if-eq v6, v4, :cond_b

    if-ne v6, v3, :cond_9

    goto :goto_5

    .line 35
    :cond_9
    iget-object v1, v1, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->u:Landroid/graphics/Bitmap;

    if-nez v1, :cond_a

    goto :goto_6

    .line 36
    :cond_a
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    goto :goto_6

    .line 37
    :cond_b
    :goto_5
    iget-object v1, v1, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->u:Landroid/graphics/Bitmap;

    if-nez v1, :cond_c

    goto :goto_6

    .line 38
    :cond_c
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 39
    :goto_6
    iput v2, v0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->s:I

    .line 40
    iput v5, v0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->t:I

    .line 41
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 42
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/CloseableImage;->b()I

    move-result p1

    .line 43
    iput p1, v0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->u:I

    goto :goto_7

    .line 44
    :cond_d
    invoke-virtual {v0}, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->c()V

    :cond_e
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized L(Lcom/facebook/imagepipeline/listener/RequestListener;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->F:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public f(Lcom/facebook/drawee/interfaces/DraweeHierarchy;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/facebook/drawee/controller/AbstractDraweeController;->f(Lcom/facebook/drawee/interfaces/DraweeHierarchy;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->K(Lcom/facebook/imagepipeline/image/CloseableImage;)V

    return-void
.end method

.method public h(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    check-cast p1, Lcom/facebook/common/references/CloseableReference;

    .line 2
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 3
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->j(Lcom/facebook/common/references/CloseableReference;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->d(Z)V

    .line 4
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/image/CloseableImage;

    .line 5
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->K(Lcom/facebook/imagepipeline/image/CloseableImage;)V

    .line 6
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->D:Lcom/facebook/common/internal/ImmutableList;

    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->J(Lcom/facebook/common/internal/ImmutableList;Lcom/facebook/imagepipeline/image/CloseableImage;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 8
    :goto_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    goto :goto_1

    .line 9
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->y:Lcom/facebook/common/internal/ImmutableList;

    invoke-virtual {p0, v0, p1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->J(Lcom/facebook/common/internal/ImmutableList;Lcom/facebook/imagepipeline/image/CloseableImage;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->x:Lcom/facebook/imagepipeline/drawable/DrawableFactory;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/drawable/DrawableFactory;->b(Lcom/facebook/imagepipeline/image/CloseableImage;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    :goto_1
    return-object v0

    .line 11
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized image class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 12
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 13
    throw p1
.end method

.method public i()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->z:Lcom/facebook/imagepipeline/cache/MemoryCache;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->A:Lcom/facebook/cache/common/CacheKey;

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0, v2}, Lcom/facebook/imagepipeline/cache/MemoryCache;->get(Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/imagepipeline/image/CloseableImage;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/image/CloseableImage;->a()Lcom/facebook/imagepipeline/image/QualityInfo;

    move-result-object v2

    check-cast v2, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;

    .line 5
    iget-boolean v2, v2, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;->c:Z

    if-nez v2, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    move-object v1, v0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    :goto_1
    return-object v1

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 8
    throw v0
.end method

.method public k()Lcom/facebook/datasource/DataSource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    const-class v0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "controller %x: getDataSource"

    invoke-static {v0, v2, v1}, Lcom/facebook/common/logging/FLog;->h(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->B:Lcom/facebook/common/internal/Supplier;

    invoke-interface {v0}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/datasource/DataSource;

    .line 5
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    return-object v0
.end method

.method public l(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lcom/facebook/common/references/CloseableReference;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p1, Lcom/facebook/common/references/CloseableReference;->s:Lcom/facebook/common/references/SharedReference;

    invoke-virtual {p1}, Lcom/facebook/common/references/SharedReference;->c()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public m(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/facebook/common/references/CloseableReference;

    .line 2
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->j(Lcom/facebook/common/references/CloseableReference;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->d(Z)V

    .line 3
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/image/ImageInfo;

    return-object p1
.end method

.method public n()Landroid/net/Uri;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->I:Lcom/facebook/imagepipeline/request/ImageRequest;

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->J:Lcom/facebook/imagepipeline/request/ImageRequest;

    sget-object v2, Lcom/facebook/imagepipeline/request/ImageRequest;->t:Lcom/facebook/common/internal/Fn;

    if-eqz v0, :cond_0

    .line 2
    move-object v3, v2

    check-cast v3, Lcom/facebook/imagepipeline/request/ImageRequest$1;

    invoke-virtual {v3, v0}, Lcom/facebook/imagepipeline/request/ImageRequest$1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 3
    check-cast v2, Lcom/facebook/imagepipeline/request/ImageRequest$1;

    invoke-virtual {v2, v1}, Lcom/facebook/imagepipeline/request/ImageRequest$1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/facebook/common/internal/Objects;->b(Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 2
    invoke-super {p0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "super"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    .line 4
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->B:Lcom/facebook/common/internal/Supplier;

    const-string v2, "dataSourceSupplier"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    .line 6
    invoke-virtual {v0}, Lcom/facebook/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    .line 1
    check-cast p1, Lcom/facebook/imagepipeline/image/ImageInfo;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/facebook/imagepipeline/image/HasImageMetadata;->f()Ljava/util/Map;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public w(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Lcom/facebook/common/references/CloseableReference;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->G:Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;

    if-eqz p2, :cond_0

    const/4 v0, 0x6

    const/4 v1, 0x1

    const-string v2, "PipelineDraweeController"

    .line 4
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;->a(Ljava/lang/String;IZLjava/lang/String;)V

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public y(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/facebook/drawable/base/DrawableWithCaches;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/facebook/drawable/base/DrawableWithCaches;

    invoke-interface {p1}, Lcom/facebook/drawable/base/DrawableWithCaches;->a()V

    :cond_0
    return-void
.end method
