.class public final Lcom/shabakaty/downloader/ov;
.super Ljava/lang/Object;
.source "CaptureCallbackConverter.java"


# direct methods
.method public static a(Lcom/shabakaty/downloader/ps;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ps;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/shabakaty/downloader/qs;

    if-nez v0, :cond_1

    .line 2
    instance-of v0, p0, Lcom/shabakaty/downloader/nv;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lcom/shabakaty/downloader/nv;

    .line 4
    iget-object p0, p0, Lcom/shabakaty/downloader/nv;->a:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 5
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/mv;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/mv;-><init>(Lcom/shabakaty/downloader/ps;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    .line 7
    :cond_1
    check-cast p0, Lcom/shabakaty/downloader/qs;

    .line 8
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0
.end method
