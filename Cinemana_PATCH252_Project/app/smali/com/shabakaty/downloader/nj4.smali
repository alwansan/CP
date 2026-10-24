.class public Lcom/shabakaty/downloader/nj4;
.super Lcom/shabakaty/downloader/kj4;
.source "SynchronizedCaptureSessionImpl.java"


# instance fields
.field public final m:Ljava/lang/Object;

.field public final n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Lcom/shabakaty/downloader/pi2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/pi2<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lcom/shabakaty/downloader/ar$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ar$a<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Lcom/shabakaty/downloader/pi2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/pi2<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public r:Lcom/shabakaty/downloader/ar$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ar$a<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/hp0;",
            ">;"
        }
    .end annotation
.end field

.field public t:Lcom/shabakaty/downloader/pi2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/pi2<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public u:Lcom/shabakaty/downloader/pi2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/pi2<",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;>;"
        }
    .end annotation
.end field

.field public v:Z

.field public final w:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lcom/shabakaty/downloader/wv;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/shabakaty/downloader/wv;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/shabakaty/downloader/kj4;-><init>(Lcom/shabakaty/downloader/wv;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Landroid/os/Handler;)V

    .line 2
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/shabakaty/downloader/nj4;->m:Ljava/lang/Object;

    .line 3
    new-instance p2, Lcom/shabakaty/downloader/nj4$a;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/nj4$a;-><init>(Lcom/shabakaty/downloader/nj4;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/nj4;->w:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/nj4;->n:Ljava/util/Set;

    const-string p2, "wait_for_request"

    .line 5
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 6
    new-instance p2, Lcom/shabakaty/downloader/mj4;

    const/4 p4, 0x0

    invoke-direct {p2, p0, p4}, Lcom/shabakaty/downloader/mj4;-><init>(Lcom/shabakaty/downloader/nj4;I)V

    invoke-static {p2}, Lcom/shabakaty/downloader/ar;->a(Lcom/shabakaty/downloader/ar$c;)Lcom/shabakaty/downloader/pi2;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/nj4;->o:Lcom/shabakaty/downloader/pi2;

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p3}, Lcom/shabakaty/downloader/ko1;->c(Ljava/lang/Object;)Lcom/shabakaty/downloader/pi2;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/nj4;->o:Lcom/shabakaty/downloader/pi2;

    :goto_0
    const-string p2, "deferrableSurface_close"

    .line 8
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    new-instance p1, Lcom/shabakaty/downloader/mj4;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/shabakaty/downloader/mj4;-><init>(Lcom/shabakaty/downloader/nj4;I)V

    invoke-static {p1}, Lcom/shabakaty/downloader/ar;->a(Lcom/shabakaty/downloader/ar$c;)Lcom/shabakaty/downloader/pi2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/nj4;->q:Lcom/shabakaty/downloader/pi2;

    goto :goto_1

    .line 10
    :cond_1
    invoke-static {p3}, Lcom/shabakaty/downloader/ko1;->c(Ljava/lang/Object;)Lcom/shabakaty/downloader/pi2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/nj4;->q:Lcom/shabakaty/downloader/pi2;

    :goto_1
    return-void
.end method

.method public static synthetic s(Lcom/shabakaty/downloader/nj4;)V
    .locals 1

    const-string v0, "Session call super.close()"

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/nj4;->w(Ljava/lang/String;)V

    .line 2
    invoke-super {p0}, Lcom/shabakaty/downloader/kj4;->close()V

    return-void
.end method

.method public static synthetic t(Lcom/shabakaty/downloader/nj4;Ljava/util/List;JLjava/util/List;)Lcom/shabakaty/downloader/pi2;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/shabakaty/downloader/kj4;->h(Ljava/util/List;J)Lcom/shabakaty/downloader/pi2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Lcom/shabakaty/downloader/nj4;Landroid/hardware/camera2/CameraDevice;Lcom/shabakaty/downloader/v14;Ljava/util/List;)Lcom/shabakaty/downloader/pi2;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/kj4;->j(Landroid/hardware/camera2/CameraDevice;Lcom/shabakaty/downloader/v14;)Lcom/shabakaty/downloader/pi2;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 3

    const-string v0, "Session call close()"

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/nj4;->w(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/nj4;->n:Ljava/util/Set;

    const-string v1, "wait_for_request"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/nj4;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/shabakaty/downloader/nj4;->v:Z

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/nj4;->o:Lcom/shabakaty/downloader/pi2;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/nj4;->o:Lcom/shabakaty/downloader/pi2;

    new-instance v1, Lcom/shabakaty/downloader/rr;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/rr;-><init>(Lcom/shabakaty/downloader/nj4;)V

    .line 8
    iget-object v2, p0, Lcom/shabakaty/downloader/kj4;->d:Ljava/util/concurrent/Executor;

    .line 9
    invoke-interface {v0, v1, v2}, Lcom/shabakaty/downloader/pi2;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public f(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/nj4;->n:Ljava/util/Set;

    const-string v1, "wait_for_request"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/nj4;->m:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    iput-boolean v1, p0, Lcom/shabakaty/downloader/nj4;->v:Z

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    const/4 v3, 0x0

    .line 4
    iget-object v4, p0, Lcom/shabakaty/downloader/nj4;->w:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    aput-object v4, v2, v3

    aput-object p2, v2, v1

    .line 5
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 6
    new-instance v1, Lcom/shabakaty/downloader/as;

    invoke-direct {v1, p2}, Lcom/shabakaty/downloader/as;-><init>(Ljava/util/List;)V

    .line 7
    invoke-super {p0, p1, v1}, Lcom/shabakaty/downloader/kj4;->f(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 9
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/kj4;->f(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I

    move-result p1

    return p1
.end method

.method public h(Ljava/util/List;J)Lcom/shabakaty/downloader/pi2;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/hp0;",
            ">;J)",
            "Lcom/shabakaty/downloader/pi2<",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/nj4;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/shabakaty/downloader/nj4;->s:Ljava/util/List;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/nj4;->n:Ljava/util/Set;

    const-string v3, "force_close"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/kj4;->b:Lcom/shabakaty/downloader/wv;

    .line 6
    iget-object v2, v1, Lcom/shabakaty/downloader/wv;->b:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-object v3, v1, Lcom/shabakaty/downloader/wv;->f:Ljava/util/Map;

    invoke-interface {v3, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v3, Ljava/util/HashMap;

    iget-object v1, v1, Lcom/shabakaty/downloader/wv;->f:Ljava/util/Map;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-eq v4, p0, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    iget-object v5, p0, Lcom/shabakaty/downloader/nj4;->s:Ljava/util/List;

    invoke-static {v4, v5}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 12
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/gj4;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v2, "deferrableSurface_close"

    .line 13
    invoke-virtual {p0, v2, v1}, Lcom/shabakaty/downloader/nj4;->x(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 14
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 15
    :cond_2
    :goto_1
    invoke-static {v1}, Lcom/shabakaty/downloader/ko1;->g(Ljava/util/Collection;)Lcom/shabakaty/downloader/pi2;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/io1;->a(Lcom/shabakaty/downloader/pi2;)Lcom/shabakaty/downloader/io1;

    move-result-object v1

    new-instance v2, Lcom/shabakaty/downloader/lj4;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/shabakaty/downloader/lj4;-><init>(Lcom/shabakaty/downloader/nj4;Ljava/util/List;J)V

    .line 16
    iget-object p1, p0, Lcom/shabakaty/downloader/kj4;->d:Ljava/util/concurrent/Executor;

    .line 17
    invoke-virtual {v1, v2, p1}, Lcom/shabakaty/downloader/io1;->c(Lcom/shabakaty/downloader/od;Ljava/util/concurrent/Executor;)Lcom/shabakaty/downloader/io1;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/nj4;->u:Lcom/shabakaty/downloader/pi2;

    .line 18
    invoke-static {p1}, Lcom/shabakaty/downloader/ko1;->d(Lcom/shabakaty/downloader/pi2;)Lcom/shabakaty/downloader/pi2;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_1
    move-exception p1

    .line 19
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public i(Ljava/lang/String;)Lcom/shabakaty/downloader/pi2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/pi2<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "wait_for_request"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "deferrableSurface_close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/ko1;->c(Ljava/lang/Object;)Lcom/shabakaty/downloader/pi2;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/nj4;->q:Lcom/shabakaty/downloader/pi2;

    invoke-static {p1}, Lcom/shabakaty/downloader/ko1;->d(Lcom/shabakaty/downloader/pi2;)Lcom/shabakaty/downloader/pi2;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/nj4;->o:Lcom/shabakaty/downloader/pi2;

    invoke-static {p1}, Lcom/shabakaty/downloader/ko1;->d(Lcom/shabakaty/downloader/pi2;)Lcom/shabakaty/downloader/pi2;

    move-result-object p1

    return-object p1
.end method

.method public j(Landroid/hardware/camera2/CameraDevice;Lcom/shabakaty/downloader/v14;)Lcom/shabakaty/downloader/pi2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraDevice;",
            "Lcom/shabakaty/downloader/v14;",
            ")",
            "Lcom/shabakaty/downloader/pi2<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/nj4;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "wait_for_request"

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/kj4;->b:Lcom/shabakaty/downloader/wv;

    .line 3
    iget-object v3, v2, Lcom/shabakaty/downloader/wv;->b:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/shabakaty/downloader/wv;->d:Ljava/util/Set;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    invoke-virtual {p0, v1, v4}, Lcom/shabakaty/downloader/nj4;->x(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 6
    invoke-static {v1}, Lcom/shabakaty/downloader/ko1;->g(Ljava/util/Collection;)Lcom/shabakaty/downloader/pi2;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/io1;->a(Lcom/shabakaty/downloader/pi2;)Lcom/shabakaty/downloader/io1;

    move-result-object v1

    new-instance v2, Lcom/shabakaty/downloader/tv;

    invoke-direct {v2, p0, p1, p2}, Lcom/shabakaty/downloader/tv;-><init>(Lcom/shabakaty/downloader/nj4;Landroid/hardware/camera2/CameraDevice;Lcom/shabakaty/downloader/v14;)V

    .line 7
    invoke-static {}, Lcom/shabakaty/downloader/jl3;->a()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 8
    invoke-virtual {v1, v2, p1}, Lcom/shabakaty/downloader/io1;->c(Lcom/shabakaty/downloader/od;Ljava/util/concurrent/Executor;)Lcom/shabakaty/downloader/io1;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/nj4;->t:Lcom/shabakaty/downloader/pi2;

    .line 9
    invoke-static {p1}, Lcom/shabakaty/downloader/ko1;->d(Lcom/shabakaty/downloader/pi2;)Lcom/shabakaty/downloader/pi2;

    move-result-object p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p1

    :catchall_0
    move-exception p1

    .line 10
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public m(Lcom/shabakaty/downloader/gj4;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/nj4;->v()V

    const-string v0, "onClosed()"

    .line 2
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/nj4;->w(Ljava/lang/String;)V

    .line 3
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/kj4;->m(Lcom/shabakaty/downloader/gj4;)V

    return-void
.end method

.method public o(Lcom/shabakaty/downloader/gj4;)V
    .locals 4

    const-string v0, "Session onConfigured()"

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/nj4;->w(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/nj4;->n:Ljava/util/Set;

    const-string v1, "force_close"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/kj4;->b:Lcom/shabakaty/downloader/wv;

    .line 5
    iget-object v2, v1, Lcom/shabakaty/downloader/wv;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 6
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v1, v1, Lcom/shabakaty/downloader/wv;->e:Ljava/util/Set;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/gj4;

    if-ne v2, p1, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/gj4;

    .line 10
    invoke-interface {v1}, Lcom/shabakaty/downloader/gj4;->b()Lcom/shabakaty/downloader/gj4$a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/gj4$a;->n(Lcom/shabakaty/downloader/gj4;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 12
    :cond_2
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/kj4;->o(Lcom/shabakaty/downloader/gj4;)V

    .line 13
    iget-object v0, p0, Lcom/shabakaty/downloader/nj4;->n:Ljava/util/Set;

    const-string v1, "force_close"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 15
    iget-object v1, p0, Lcom/shabakaty/downloader/kj4;->b:Lcom/shabakaty/downloader/wv;

    .line 16
    iget-object v2, v1, Lcom/shabakaty/downloader/wv;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 17
    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    iget-object v1, v1, Lcom/shabakaty/downloader/wv;->c:Ljava/util/Set;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 18
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/gj4;

    if-ne v2, p1, :cond_3

    goto :goto_4

    .line 19
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 20
    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/gj4;

    .line 21
    invoke-interface {v0}, Lcom/shabakaty/downloader/gj4;->b()Lcom/shabakaty/downloader/gj4$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/gj4$a;->m(Lcom/shabakaty/downloader/gj4;)V

    goto :goto_5

    :catchall_1
    move-exception p1

    .line 22
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_5
    return-void
.end method

.method public stop()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/nj4;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/kj4;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/nj4;->v()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/nj4;->t:Lcom/shabakaty/downloader/pi2;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/nj4;->u:Lcom/shabakaty/downloader/pi2;

    if-eqz v1, :cond_2

    .line 7
    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/nj4;->y()V

    .line 9
    :goto_0
    invoke-super {p0}, Lcom/shabakaty/downloader/kj4;->stop()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public v()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/nj4;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/nj4;->s:Ljava/util/List;

    if-nez v1, :cond_0

    const-string v1, "deferrableSurface == null, maybe forceClose, skip close"

    .line 3
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/nj4;->w(Ljava/lang/String;)V

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/nj4;->n:Ljava/util/Set;

    const-string v2, "deferrableSurface_close"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/nj4;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/hp0;

    .line 7
    invoke-virtual {v2}, Lcom/shabakaty/downloader/hp0;->a()V

    goto :goto_0

    :cond_1
    const-string v1, "deferrableSurface closed"

    .line 8
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/nj4;->w(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/nj4;->y()V

    .line 10
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public w(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SyncCaptureSessionImpl"

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, p1, v1}, Lcom/shabakaty/downloader/vk2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final x(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/gj4;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/pi2<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/gj4;

    .line 3
    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/gj4;->i(Ljava/lang/String;)Lcom/shabakaty/downloader/pi2;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public y()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/nj4;->n:Ljava/util/Set;

    const-string v1, "deferrableSurface_close"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/kj4;->b:Lcom/shabakaty/downloader/wv;

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/wv;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v0, v0, Lcom/shabakaty/downloader/wv;->f:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/nj4;->r:Lcom/shabakaty/downloader/ar$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ar$a;->a(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method
