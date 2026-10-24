.class public Lcom/shabakaty/downloader/yt;
.super Lcom/shabakaty/downloader/xt;
.source "CameraManagerCompatApi29Impl.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/xt;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
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
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/zt;->a:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/ns;->s:Ljava/util/Set;

    .line 3
    new-instance p2, Lcom/shabakaty/downloader/ns;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/ns;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    .line 4
    throw p2
.end method
