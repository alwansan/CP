.class public final Lcom/shabakaty/downloader/nv;
.super Lcom/shabakaty/downloader/ps;
.source "CaptureCallbackContainer.java"


# instance fields
.field public final a:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/ps;-><init>()V

    const-string v0, "captureCallback is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/nv;->a:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-void
.end method
