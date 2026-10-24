.class public Lcom/shabakaty/downloader/ds;
.super Ljava/lang/Object;
.source "Camera2CaptureRequestBuilder.java"


# direct methods
.method public static a(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/shabakaty/downloader/o90;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/sv$a;->d(Lcom/shabakaty/downloader/o90;)Lcom/shabakaty/downloader/sv$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/sv$a;->a()Lcom/shabakaty/downloader/sv;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/jn3;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/o90$a;

    .line 3
    invoke-virtual {v1}, Lcom/shabakaty/downloader/o90$a;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/sv;->h()Lcom/shabakaty/downloader/o90;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/shabakaty/downloader/o90;->e(Lcom/shabakaty/downloader/o90$a;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    invoke-virtual {p0, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CaptureRequest.Key is not supported: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "CaptureRequestBuilder"

    .line 7
    invoke-static {v3, v1, v2}, Lcom/shabakaty/downloader/vk2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static b(Lcom/shabakaty/downloader/pv;Landroid/hardware/camera2/CameraDevice;Ljava/util/Map;)Landroid/hardware/camera2/CaptureRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/pv;",
            "Landroid/hardware/camera2/CameraDevice;",
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/hp0;",
            "Landroid/view/Surface;",
            ">;)",
            "Landroid/hardware/camera2/CaptureRequest;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pv;->a()Ljava/util/List;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/hp0;

    .line 4
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DeferrableSurface not in configuredSurfaceMap"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    return-object v0

    .line 8
    :cond_3
    iget p2, p0, Lcom/shabakaty/downloader/pv;->c:I

    .line 9
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    .line 10
    iget-object p2, p0, Lcom/shabakaty/downloader/pv;->b:Lcom/shabakaty/downloader/o90;

    .line 11
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/ds;->a(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/shabakaty/downloader/o90;)V

    .line 12
    iget-object p2, p0, Lcom/shabakaty/downloader/pv;->b:Lcom/shabakaty/downloader/o90;

    .line 13
    sget-object v0, Lcom/shabakaty/downloader/pv;->g:Lcom/shabakaty/downloader/o90$a;

    invoke-interface {p2, v0}, Lcom/shabakaty/downloader/o90;->d(Lcom/shabakaty/downloader/o90$a;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 14
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 15
    iget-object v1, p0, Lcom/shabakaty/downloader/pv;->b:Lcom/shabakaty/downloader/o90;

    .line 16
    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/o90;->e(Lcom/shabakaty/downloader/o90$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 17
    invoke-virtual {p1, p2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 18
    :cond_4
    iget-object p2, p0, Lcom/shabakaty/downloader/pv;->b:Lcom/shabakaty/downloader/o90;

    .line 19
    sget-object v0, Lcom/shabakaty/downloader/pv;->h:Lcom/shabakaty/downloader/o90$a;

    invoke-interface {p2, v0}, Lcom/shabakaty/downloader/o90;->d(Lcom/shabakaty/downloader/o90$a;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 20
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 21
    iget-object v1, p0, Lcom/shabakaty/downloader/pv;->b:Lcom/shabakaty/downloader/o90;

    .line 22
    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/o90;->e(Lcom/shabakaty/downloader/o90$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    move-result v0

    .line 24
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    .line 25
    invoke-virtual {p1, p2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 26
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 27
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_1

    .line 28
    :cond_6
    iget-object p0, p0, Lcom/shabakaty/downloader/pv;->f:Lcom/shabakaty/downloader/lk4;

    .line 29
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 30
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p0

    return-object p0
.end method
