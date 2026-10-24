.class public Lcom/shabakaty/downloader/kj4;
.super Lcom/shabakaty/downloader/gj4$a;
.source "SynchronizedCaptureSessionBaseImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/gj4;
.implements Lcom/shabakaty/downloader/oj4$b;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lcom/shabakaty/downloader/wv;

.field public final c:Landroid/os/Handler;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Ljava/util/concurrent/ScheduledExecutorService;

.field public f:Lcom/shabakaty/downloader/gj4$a;

.field public g:Lcom/shabakaty/downloader/us;

.field public h:Lcom/shabakaty/downloader/pi2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/pi2<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lcom/shabakaty/downloader/ar$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ar$a<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lcom/shabakaty/downloader/pi2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/pi2<",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;>;"
        }
    .end annotation
.end field

.field public k:Z

.field public l:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wv;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/gj4$a;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/kj4;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/kj4;->k:Z

    .line 4
    iput-boolean v0, p0, Lcom/shabakaty/downloader/kj4;->l:Z

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/kj4;->b:Lcom/shabakaty/downloader/wv;

    .line 6
    iput-object p4, p0, Lcom/shabakaty/downloader/kj4;->c:Landroid/os/Handler;

    .line 7
    iput-object p2, p0, Lcom/shabakaty/downloader/kj4;->d:Ljava/util/concurrent/Executor;

    .line 8
    iput-object p3, p0, Lcom/shabakaty/downloader/kj4;->e:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            ")I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kj4;->g:Lcom/shabakaty/downloader/us;

    const-string v1, "Need to call openCaptureSession before using this API."

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/fl3;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/kj4;->g:Lcom/shabakaty/downloader/us;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/kj4;->d:Ljava/util/concurrent/Executor;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/us;->a:Lcom/shabakaty/downloader/us$a;

    invoke-interface {v0, p1, v1, p2}, Lcom/shabakaty/downloader/us$a;->b(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I

    move-result p1

    return p1
.end method

.method public b()Lcom/shabakaty/downloader/gj4$a;
    .locals 0

    return-object p0
.end method

.method public c()Lcom/shabakaty/downloader/us;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kj4;->g:Lcom/shabakaty/downloader/us;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/kj4;->g:Lcom/shabakaty/downloader/us;

    return-object v0
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kj4;->g:Lcom/shabakaty/downloader/us;

    const-string v1, "Need to call openCaptureSession before using this API."

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/fl3;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/kj4;->b:Lcom/shabakaty/downloader/wv;

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/wv;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v0, v0, Lcom/shabakaty/downloader/wv;->d:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/kj4;->g:Lcom/shabakaty/downloader/us;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/us;->a()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kj4;->g:Lcom/shabakaty/downloader/us;

    const-string v1, "Need to call openCaptureSession before using this API."

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/fl3;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/kj4;->g:Lcom/shabakaty/downloader/us;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/us;->a()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    return-void
.end method

.method public e()Landroid/hardware/camera2/CameraDevice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kj4;->g:Lcom/shabakaty/downloader/us;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/kj4;->g:Lcom/shabakaty/downloader/us;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/us;->a()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    return-object v0
.end method

.method public f(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kj4;->g:Lcom/shabakaty/downloader/us;

    const-string v1, "Need to call openCaptureSession before using this API."

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/fl3;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/kj4;->g:Lcom/shabakaty/downloader/us;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/kj4;->d:Ljava/util/concurrent/Executor;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/us;->a:Lcom/shabakaty/downloader/us$a;

    invoke-interface {v0, p1, v1, p2}, Lcom/shabakaty/downloader/us$a;->a(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I

    move-result p1

    return p1
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kj4;->g:Lcom/shabakaty/downloader/us;

    const-string v1, "Need to call openCaptureSession before using this API."

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/fl3;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/kj4;->g:Lcom/shabakaty/downloader/us;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/us;->a()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    return-void
.end method

.method public h(Ljava/util/List;J)Lcom/shabakaty/downloader/pi2;
    .locals 9
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
    iget-object v0, p0, Lcom/shabakaty/downloader/kj4;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/shabakaty/downloader/kj4;->l:Z

    if-eqz v1, :cond_0

    .line 3
    new-instance p1, Ljava/util/concurrent/CancellationException;

    const-string p2, "Opener is disabled"

    invoke-direct {p1, p2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance p2, Lcom/shabakaty/downloader/vz1$a;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/vz1$a;-><init>(Ljava/lang/Throwable;)V

    .line 5
    monitor-exit v0

    return-object p2

    :cond_0
    const/4 v7, 0x0

    .line 6
    iget-object v4, p0, Lcom/shabakaty/downloader/kj4;->d:Ljava/util/concurrent/Executor;

    .line 7
    iget-object v3, p0, Lcom/shabakaty/downloader/kj4;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/hp0;

    .line 10
    invoke-virtual {v5}, Lcom/shabakaty/downloader/hp0;->c()Lcom/shabakaty/downloader/pi2;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_1
    new-instance v8, Lcom/shabakaty/downloader/ip0;

    move-object v1, v8

    move-wide v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/shabakaty/downloader/ip0;-><init>(Ljava/util/List;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;JZ)V

    invoke-static {v8}, Lcom/shabakaty/downloader/ar;->a(Lcom/shabakaty/downloader/ar$c;)Lcom/shabakaty/downloader/pi2;

    move-result-object p2

    .line 12
    invoke-static {p2}, Lcom/shabakaty/downloader/io1;->a(Lcom/shabakaty/downloader/pi2;)Lcom/shabakaty/downloader/io1;

    move-result-object p2

    new-instance p3, Lcom/shabakaty/downloader/hj4;

    invoke-direct {p3, p0, p1}, Lcom/shabakaty/downloader/hj4;-><init>(Lcom/shabakaty/downloader/kj4;Ljava/util/List;)V

    .line 13
    iget-object p1, p0, Lcom/shabakaty/downloader/kj4;->d:Ljava/util/concurrent/Executor;

    .line 14
    invoke-virtual {p2, p3, p1}, Lcom/shabakaty/downloader/io1;->c(Lcom/shabakaty/downloader/od;Ljava/util/concurrent/Executor;)Lcom/shabakaty/downloader/io1;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/kj4;->j:Lcom/shabakaty/downloader/pi2;

    .line 15
    invoke-static {p1}, Lcom/shabakaty/downloader/ko1;->d(Lcom/shabakaty/downloader/pi2;)Lcom/shabakaty/downloader/pi2;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public i(Ljava/lang/String;)Lcom/shabakaty/downloader/pi2;
    .locals 0
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

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/ko1;->c(Ljava/lang/Object;)Lcom/shabakaty/downloader/pi2;

    move-result-object p1

    return-object p1
.end method

.method public j(Landroid/hardware/camera2/CameraDevice;Lcom/shabakaty/downloader/v14;)Lcom/shabakaty/downloader/pi2;
    .locals 3
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
    iget-object v0, p0, Lcom/shabakaty/downloader/kj4;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/shabakaty/downloader/kj4;->l:Z

    if-eqz v1, :cond_0

    .line 3
    new-instance p1, Ljava/util/concurrent/CancellationException;

    const-string p2, "Opener is disabled"

    invoke-direct {p1, p2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance p2, Lcom/shabakaty/downloader/vz1$a;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/vz1$a;-><init>(Ljava/lang/Throwable;)V

    .line 5
    monitor-exit v0

    return-object p2

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/kj4;->b:Lcom/shabakaty/downloader/wv;

    .line 7
    iget-object v2, v1, Lcom/shabakaty/downloader/wv;->b:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    iget-object v1, v1, Lcom/shabakaty/downloader/wv;->e:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    iget-object v1, p0, Lcom/shabakaty/downloader/kj4;->c:Landroid/os/Handler;

    .line 11
    new-instance v2, Lcom/shabakaty/downloader/ft;

    invoke-direct {v2, p1, v1}, Lcom/shabakaty/downloader/ft;-><init>(Landroid/hardware/camera2/CameraDevice;Landroid/os/Handler;)V

    .line 12
    new-instance p1, Lcom/shabakaty/downloader/ij4;

    invoke-direct {p1, p0, v2, p2}, Lcom/shabakaty/downloader/ij4;-><init>(Lcom/shabakaty/downloader/kj4;Lcom/shabakaty/downloader/ft;Lcom/shabakaty/downloader/v14;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/ar;->a(Lcom/shabakaty/downloader/ar$c;)Lcom/shabakaty/downloader/pi2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/kj4;->h:Lcom/shabakaty/downloader/pi2;

    .line 13
    invoke-static {p1}, Lcom/shabakaty/downloader/ko1;->d(Lcom/shabakaty/downloader/pi2;)Lcom/shabakaty/downloader/pi2;

    move-result-object p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p1

    :catchall_0
    move-exception p1

    .line 14
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 15
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public k(Lcom/shabakaty/downloader/gj4;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kj4;->f:Lcom/shabakaty/downloader/gj4$a;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/gj4$a;->k(Lcom/shabakaty/downloader/gj4;)V

    return-void
.end method

.method public l(Lcom/shabakaty/downloader/gj4;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kj4;->f:Lcom/shabakaty/downloader/gj4$a;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/gj4$a;->l(Lcom/shabakaty/downloader/gj4;)V

    return-void
.end method

.method public m(Lcom/shabakaty/downloader/gj4;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kj4;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/shabakaty/downloader/kj4;->k:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/shabakaty/downloader/kj4;->k:Z

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/kj4;->h:Lcom/shabakaty/downloader/pi2;

    const-string v2, "Need to call openCaptureSession before using this API."

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/fl3;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/kj4;->h:Lcom/shabakaty/downloader/pi2;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/or;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/or;-><init>(Lcom/shabakaty/downloader/kj4;Lcom/shabakaty/downloader/gj4;)V

    .line 8
    invoke-static {}, Lcom/shabakaty/downloader/jl3;->a()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 9
    invoke-interface {v1, v0, p1}, Lcom/shabakaty/downloader/pi2;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public n(Lcom/shabakaty/downloader/gj4;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kj4;->b:Lcom/shabakaty/downloader/wv;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/wv;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, v0, Lcom/shabakaty/downloader/wv;->e:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/kj4;->f:Lcom/shabakaty/downloader/gj4$a;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/gj4$a;->n(Lcom/shabakaty/downloader/gj4;)V

    return-void

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public o(Lcom/shabakaty/downloader/gj4;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kj4;->b:Lcom/shabakaty/downloader/wv;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/wv;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, v0, Lcom/shabakaty/downloader/wv;->c:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/wv;->e:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/kj4;->f:Lcom/shabakaty/downloader/gj4$a;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/gj4$a;->o(Lcom/shabakaty/downloader/gj4;)V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public p(Lcom/shabakaty/downloader/gj4;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kj4;->f:Lcom/shabakaty/downloader/gj4$a;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/gj4$a;->p(Lcom/shabakaty/downloader/gj4;)V

    return-void
.end method

.method public q(Lcom/shabakaty/downloader/gj4;Landroid/view/Surface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kj4;->f:Lcom/shabakaty/downloader/gj4$a;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/gj4$a;->q(Lcom/shabakaty/downloader/gj4;Landroid/view/Surface;)V

    return-void
.end method

.method public r()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kj4;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/kj4;->h:Lcom/shabakaty/downloader/pi2;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stop()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/shabakaty/downloader/kj4;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-boolean v3, p0, Lcom/shabakaty/downloader/kj4;->l:Z

    if-nez v3, :cond_1

    .line 3
    iget-object v3, p0, Lcom/shabakaty/downloader/kj4;->j:Lcom/shabakaty/downloader/pi2;

    if-eqz v3, :cond_0

    move-object v1, v3

    .line 4
    :cond_0
    iput-boolean v0, p0, Lcom/shabakaty/downloader/kj4;->l:Z

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/kj4;->r()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 6
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_3
    return v3

    :catchall_0
    move-exception v3

    .line 7
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v1, :cond_4

    .line 8
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 9
    :cond_4
    throw v2
.end method
