.class public Lcom/shabakaty/downloader/it;
.super Lcom/shabakaty/downloader/ht;
.source "CameraDeviceCompatApi28Impl.java"


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/ht;-><init>(Landroid/hardware/camera2/CameraDevice;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/v14;)V
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/shabakaty/downloader/v14;->a:Lcom/shabakaty/downloader/v14$c;

    invoke-interface {p1}, Lcom/shabakaty/downloader/v14$c;->c()Ljava/lang/Object;

    move-result-object p1

    .line 2
    check-cast p1, Landroid/hardware/camera2/params/SessionConfiguration;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/jt;->a:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V

    return-void
.end method
