.class public Lcom/shabakaty/downloader/ws;
.super Ljava/lang/Object;
.source "CameraCaptureSessionCompatBaseImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/us$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ws$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/hardware/camera2/CameraCaptureSession;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraCaptureSession;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/ws;->a:Landroid/hardware/camera2/CameraCaptureSession;

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/ws;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/us$b;

    invoke-direct {v0, p2, p3}, Lcom/shabakaty/downloader/us$b;-><init>(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V

    .line 2
    iget-object p2, p0, Lcom/shabakaty/downloader/ws;->b:Ljava/lang/Object;

    check-cast p2, Lcom/shabakaty/downloader/ws$a;

    .line 3
    iget-object p3, p0, Lcom/shabakaty/downloader/ws;->a:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object p2, p2, Lcom/shabakaty/downloader/ws$a;->a:Landroid/os/Handler;

    invoke-virtual {p3, p1, v0, p2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result p1

    return p1
.end method

.method public b(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            ")I"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/us$b;

    invoke-direct {v0, p2, p3}, Lcom/shabakaty/downloader/us$b;-><init>(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V

    .line 2
    iget-object p2, p0, Lcom/shabakaty/downloader/ws;->b:Ljava/lang/Object;

    check-cast p2, Lcom/shabakaty/downloader/ws$a;

    .line 3
    iget-object p3, p0, Lcom/shabakaty/downloader/ws;->a:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object p2, p2, Lcom/shabakaty/downloader/ws$a;->a:Landroid/os/Handler;

    invoke-virtual {p3, p1, v0, p2}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result p1

    return p1
.end method
