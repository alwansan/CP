.class public Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;
.super Ljava/lang/Object;
.source "ImagePerfMonitor.java"

# interfaces
.implements Lcom/facebook/drawee/backends/pipeline/info/ImagePerfNotifier;


# instance fields
.field public final a:Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;

.field public final b:Lcom/facebook/common/time/MonotonicClock;

.field public final c:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;

.field public final d:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/facebook/drawee/backends/pipeline/info/ImageOriginRequestListener;

.field public f:Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;

.field public g:Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfRequestListener;

.field public h:Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;

.field public i:Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/drawee/backends/pipeline/info/ImagePerfDataListener;",
            ">;"
        }
    .end annotation
.end field

.field public k:Z


# direct methods
.method public constructor <init>(Lcom/facebook/common/time/MonotonicClock;Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;Lcom/facebook/common/internal/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/time/MonotonicClock;",
            "Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->b:Lcom/facebook/common/time/MonotonicClock;

    .line 3
    iput-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->a:Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;

    .line 4
    new-instance p1, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;

    invoke-direct {p1}, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;-><init>()V

    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->c:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;

    .line 5
    iput-object p3, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->d:Lcom/facebook/common/internal/Supplier;

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->k:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->j:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->c()Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfDataListener;

    .line 4
    invoke-interface {v1, p1, p2}, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfDataListener;->b(Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;I)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public b(Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;I)V
    .locals 3

    .line 1
    iput p2, p1, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->v:I

    .line 2
    iget-boolean v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->j:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->a:Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;

    .line 4
    iget-object v0, v0, Lcom/facebook/drawee/controller/AbstractDraweeController;->h:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/facebook/drawee/interfaces/DraweeHierarchy;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v0}, Lcom/facebook/drawee/interfaces/DraweeHierarchy;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->c:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 8
    iput v2, v1, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->s:I

    .line 9
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->c:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 10
    iput v0, v1, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->t:I

    .line 11
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->c()Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;

    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfDataListener;

    .line 13
    invoke-interface {v1, p1, p2}, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfDataListener;->a(Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;I)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public c(Z)V
    .locals 6

    .line 1
    iput-boolean p1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->k:Z

    if-eqz p1, :cond_7

    .line 2
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->h:Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->b:Lcom/facebook/common/time/MonotonicClock;

    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->c:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;

    iget-object v4, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->d:Lcom/facebook/common/internal/Supplier;

    sget-object v5, Lcom/facebook/common/internal/Suppliers;->a:Lcom/facebook/common/internal/Supplier;

    move-object v0, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;-><init>(Lcom/facebook/common/time/MonotonicClock;Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;Lcom/facebook/drawee/backends/pipeline/info/ImagePerfNotifier;Lcom/facebook/common/internal/Supplier;Lcom/facebook/common/internal/Supplier;)V

    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->h:Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->g:Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfRequestListener;

    if-nez p1, :cond_1

    .line 5
    new-instance p1, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfRequestListener;

    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->b:Lcom/facebook/common/time/MonotonicClock;

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->c:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;

    invoke-direct {p1, v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfRequestListener;-><init>(Lcom/facebook/common/time/MonotonicClock;Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;)V

    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->g:Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfRequestListener;

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->f:Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;

    if-nez p1, :cond_2

    .line 7
    new-instance p1, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfImageOriginListener;

    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->c:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;

    invoke-direct {p1, v0, p0}, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfImageOriginListener;-><init>(Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;)V

    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->f:Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->e:Lcom/facebook/drawee/backends/pipeline/info/ImageOriginRequestListener;

    if-nez p1, :cond_3

    .line 9
    new-instance p1, Lcom/facebook/drawee/backends/pipeline/info/ImageOriginRequestListener;

    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->a:Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;

    .line 10
    iget-object v0, v0, Lcom/facebook/drawee/controller/AbstractDraweeController;->j:Ljava/lang/String;

    .line 11
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->f:Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;

    invoke-direct {p1, v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/ImageOriginRequestListener;-><init>(Ljava/lang/String;Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;)V

    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->e:Lcom/facebook/drawee/backends/pipeline/info/ImageOriginRequestListener;

    goto :goto_0

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->a:Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;

    .line 13
    iget-object v0, v0, Lcom/facebook/drawee/controller/AbstractDraweeController;->j:Ljava/lang/String;

    .line 14
    iput-object v0, p1, Lcom/facebook/drawee/backends/pipeline/info/ImageOriginRequestListener;->a:Ljava/lang/String;

    .line 15
    :goto_0
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->i:Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;

    if-nez p1, :cond_4

    .line 16
    new-instance p1, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/imagepipeline/listener/RequestListener;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->g:Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfRequestListener;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->e:Lcom/facebook/drawee/backends/pipeline/info/ImageOriginRequestListener;

    aput-object v2, v0, v1

    invoke-direct {p1, v0}, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;-><init>([Lcom/facebook/imagepipeline/listener/RequestListener;)V

    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->i:Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;

    .line 17
    :cond_4
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->f:Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;

    if-eqz p1, :cond_5

    .line 18
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->a:Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->F(Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;)V

    .line 19
    :cond_5
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->h:Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;

    if-eqz p1, :cond_6

    .line 20
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->a:Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;

    .line 21
    iget-object v0, v0, Lcom/facebook/drawee/controller/AbstractDraweeController;->g:Lcom/facebook/fresco/ui/common/ForwardingControllerListener2;

    .line 22
    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v1, v0, Lcom/facebook/fresco/ui/common/ForwardingControllerListener2;->r:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 25
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->i:Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;

    if-eqz p1, :cond_d

    .line 26
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->a:Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->G(Lcom/facebook/imagepipeline/listener/RequestListener;)V

    goto :goto_4

    .line 27
    :cond_7
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->f:Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;

    if-eqz p1, :cond_a

    .line 28
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->a:Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;

    .line 29
    monitor-enter v0

    .line 30
    :try_start_1
    iget-object v1, v0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->G:Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;

    instance-of v2, v1, Lcom/facebook/drawee/backends/pipeline/info/ForwardingImageOriginListener;

    if-eqz v2, :cond_8

    .line 31
    check-cast v1, Lcom/facebook/drawee/backends/pipeline/info/ForwardingImageOriginListener;

    .line 32
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 33
    :try_start_2
    iget-object v2, v1, Lcom/facebook/drawee/backends/pipeline/info/ForwardingImageOriginListener;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 34
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 35
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 36
    :try_start_4
    monitor-exit v1

    throw p1

    :cond_8
    if-ne v1, p1, :cond_9

    const/4 p1, 0x0

    .line 37
    iput-object p1, v0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->G:Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 38
    :cond_9
    monitor-exit v0

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit v0

    throw p1

    .line 39
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->h:Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;

    if-eqz p1, :cond_c

    .line 40
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->a:Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;

    .line 41
    iget-object v0, v0, Lcom/facebook/drawee/controller/AbstractDraweeController;->g:Lcom/facebook/fresco/ui/common/ForwardingControllerListener2;

    .line 42
    monitor-enter v0

    .line 43
    :try_start_5
    iget-object v1, v0, Lcom/facebook/fresco/ui/common/ForwardingControllerListener2;->r:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_b

    .line 44
    iget-object v1, v0, Lcom/facebook/fresco/ui/common/ForwardingControllerListener2;->r:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 45
    :cond_b
    monitor-exit v0

    goto :goto_3

    :catchall_3
    move-exception p1

    monitor-exit v0

    throw p1

    .line 46
    :cond_c
    :goto_3
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->i:Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;

    if-eqz p1, :cond_d

    .line 47
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->a:Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeController;->L(Lcom/facebook/imagepipeline/listener/RequestListener;)V

    :cond_d
    :goto_4
    return-void
.end method
