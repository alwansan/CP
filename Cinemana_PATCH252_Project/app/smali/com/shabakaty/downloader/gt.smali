.class public Lcom/shabakaty/downloader/gt;
.super Lcom/shabakaty/downloader/jt;
.source "CameraDeviceCompatApi23Impl.java"


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraDevice;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/jt;-><init>(Landroid/hardware/camera2/CameraDevice;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/v14;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/jt;->a:Landroid/hardware/camera2/CameraDevice;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/jt;->b(Landroid/hardware/camera2/CameraDevice;Lcom/shabakaty/downloader/v14;)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/us$c;

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/v14;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/v14;->e()Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/us$c;-><init>(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/v14;->c()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/jt;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/jt;->b:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/jt$a;

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v2, v2, Lcom/shabakaty/downloader/jt$a;->a:Landroid/os/Handler;

    .line 8
    invoke-virtual {p1}, Lcom/shabakaty/downloader/v14;->b()Lcom/shabakaty/downloader/f12;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 9
    iget-object p1, v3, Lcom/shabakaty/downloader/f12;->a:Lcom/shabakaty/downloader/f12$b;

    invoke-interface {p1}, Lcom/shabakaty/downloader/f12$b;->a()Ljava/lang/Object;

    move-result-object p1

    .line 10
    check-cast p1, Landroid/hardware/camera2/params/InputConfiguration;

    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v3, p0, Lcom/shabakaty/downloader/jt;->a:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v3, p1, v1, v0, v2}, Landroid/hardware/camera2/CameraDevice;->createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/v14;->d()I

    move-result p1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 14
    iget-object p1, p0, Lcom/shabakaty/downloader/jt;->a:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {p1, v1, v0, v2}, Landroid/hardware/camera2/CameraDevice;->createConstrainedHighSpeedCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/jt;->a:Landroid/hardware/camera2/CameraDevice;

    .line 16
    invoke-virtual {p1, v1, v0, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    :goto_0
    return-void
.end method
