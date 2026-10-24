.class public final Lcom/shabakaty/downloader/mv;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CaptureCallbackAdapter.java"


# instance fields
.field public final a:Lcom/shabakaty/downloader/ps;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ps;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    const-string v0, "cameraCaptureCallback is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/mv;->a:Lcom/shabakaty/downloader/ps;

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 2
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    instance-of p2, p1, Lcom/shabakaty/downloader/lk4;

    const-string v0, "The tagBundle object from the CaptureResult is not a TagBundle object."

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/fl3;->e(ZLjava/lang/Object;)V

    .line 4
    check-cast p1, Lcom/shabakaty/downloader/lk4;

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/lk4;->b:Lcom/shabakaty/downloader/lk4;

    .line 6
    :goto_0
    iget-object p2, p0, Lcom/shabakaty/downloader/mv;->a:Lcom/shabakaty/downloader/ps;

    new-instance v0, Lcom/shabakaty/downloader/hr;

    invoke-direct {v0, p1, p3}, Lcom/shabakaty/downloader/hr;-><init>(Lcom/shabakaty/downloader/lk4;Landroid/hardware/camera2/CaptureResult;)V

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/ps;->b(Lcom/shabakaty/downloader/ss;)V

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/rs;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/rs;-><init>(I)V

    .line 3
    iget-object p2, p0, Lcom/shabakaty/downloader/mv;->a:Lcom/shabakaty/downloader/ps;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/ps;->c(Lcom/shabakaty/downloader/rs;)V

    return-void
.end method
