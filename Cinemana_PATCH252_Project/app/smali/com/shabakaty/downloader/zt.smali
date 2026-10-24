.class public Lcom/shabakaty/downloader/zt;
.super Ljava/lang/Object;
.source "CameraManagerCompatBaseImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/wt$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/zt$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/hardware/camera2/CameraManager;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "camera"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcom/shabakaty/downloader/zt;->a:Landroid/hardware/camera2/CameraManager;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/zt;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .locals 3

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 1
    iget-object v1, p0, Lcom/shabakaty/downloader/zt;->b:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/zt$a;

    if-eqz p2, :cond_1

    .line 2
    iget-object v2, v1, Lcom/shabakaty/downloader/zt$a;->a:Ljava/util/Map;

    monitor-enter v2

    .line 3
    :try_start_0
    iget-object v0, v1, Lcom/shabakaty/downloader/zt$a;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/wt$a;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/wt$a;

    invoke-direct {v0, p1, p2}, Lcom/shabakaty/downloader/wt$a;-><init>(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    .line 5
    iget-object p1, v1, Lcom/shabakaty/downloader/zt$a;->a:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/zt;->a:Landroid/hardware/camera2/CameraManager;

    iget-object p2, v1, Lcom/shabakaty/downloader/zt$a;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0, p2}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    return-void

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "executor was null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zt;->b:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/zt$a;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/zt$a;->a:Ljava/util/Map;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, v0, Lcom/shabakaty/downloader/zt$a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/wt$a;

    .line 4
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 5
    iget-object v0, p1, Lcom/shabakaty/downloader/wt$a;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 6
    :try_start_1
    iput-boolean v1, p1, Lcom/shabakaty/downloader/wt$a;->d:Z

    .line 7
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 8
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/zt;->a:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    return-void
.end method

.method public c(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/zt;->a:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/ns;->s:Ljava/util/Set;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/ns;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/ns;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    .line 4
    throw v0
.end method

.method public d(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/ft$b;

    invoke-direct {v0, p2, p3}, Lcom/shabakaty/downloader/ft$b;-><init>(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V

    .line 4
    iget-object p2, p0, Lcom/shabakaty/downloader/zt;->b:Ljava/lang/Object;

    check-cast p2, Lcom/shabakaty/downloader/zt$a;

    .line 5
    :try_start_0
    iget-object p3, p0, Lcom/shabakaty/downloader/zt;->a:Landroid/hardware/camera2/CameraManager;

    iget-object p2, p2, Lcom/shabakaty/downloader/zt$a;->b:Landroid/os/Handler;

    invoke-virtual {p3, p1, v0, p2}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    sget-object p2, Lcom/shabakaty/downloader/ns;->s:Ljava/util/Set;

    .line 7
    new-instance p2, Lcom/shabakaty/downloader/ns;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/ns;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    .line 8
    throw p2
.end method
