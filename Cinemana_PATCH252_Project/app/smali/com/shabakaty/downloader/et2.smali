.class public Lcom/shabakaty/downloader/et2;
.super Ljava/lang/Object;
.source "MeteringRepeatingSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/et2$b;
    }
.end annotation


# instance fields
.field public a:Lcom/shabakaty/downloader/hp0;

.field public final b:Lcom/shabakaty/downloader/u14;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zs;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/et2$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/et2$b;-><init>()V

    .line 3
    new-instance v1, Landroid/graphics/SurfaceTexture;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 4
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v3}, Lcom/shabakaty/downloader/zs;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const-string v3, "MeteringRepeating"

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const-string p1, "Can not retrieve SCALER_STREAM_CONFIGURATION_MAP."

    .line 5
    invoke-static {v3, p1, v4}, Lcom/shabakaty/downloader/vk2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v2, v2}, Landroid/util/Size;-><init>(II)V

    goto :goto_1

    .line 7
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-ge v5, v6, :cond_1

    .line 8
    const-class v5, Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/16 v5, 0x22

    .line 9
    invoke-virtual {p1, v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    const-string p1, "Can not get output size list."

    .line 10
    invoke-static {v3, p1, v4}, Lcom/shabakaty/downloader/vk2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v2, v2}, Landroid/util/Size;-><init>(II)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    sget-object v2, Lcom/shabakaty/downloader/dt2;->s:Lcom/shabakaty/downloader/dt2;

    .line 13
    invoke-static {p1, v2}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Size;

    .line 14
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MerteringSession SurfaceTexture size: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-static {v3, v2, v4}, Lcom/shabakaty/downloader/vk2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 17
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    .line 18
    invoke-virtual {v1, v2, p1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 19
    new-instance p1, Landroid/view/Surface;

    invoke-direct {p1, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 20
    invoke-static {v0}, Lcom/shabakaty/downloader/u14$b;->f(Lcom/shabakaty/downloader/hx4;)Lcom/shabakaty/downloader/u14$b;

    move-result-object v0

    const/4 v2, 0x1

    .line 21
    iget-object v3, v0, Lcom/shabakaty/downloader/u14$a;->b:Lcom/shabakaty/downloader/pv$a;

    .line 22
    iput v2, v3, Lcom/shabakaty/downloader/pv$a;->c:I

    .line 23
    new-instance v2, Lcom/shabakaty/downloader/wz1;

    invoke-direct {v2, p1}, Lcom/shabakaty/downloader/wz1;-><init>(Landroid/view/Surface;)V

    iput-object v2, p0, Lcom/shabakaty/downloader/et2;->a:Lcom/shabakaty/downloader/hp0;

    .line 24
    invoke-virtual {v2}, Lcom/shabakaty/downloader/hp0;->d()Lcom/shabakaty/downloader/pi2;

    move-result-object v2

    new-instance v3, Lcom/shabakaty/downloader/et2$a;

    invoke-direct {v3, p0, p1, v1}, Lcom/shabakaty/downloader/et2$a;-><init>(Lcom/shabakaty/downloader/et2;Landroid/view/Surface;Landroid/graphics/SurfaceTexture;)V

    .line 25
    invoke-static {}, Lcom/shabakaty/downloader/jl3;->a()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 26
    new-instance v1, Lcom/shabakaty/downloader/ko1$d;

    invoke-direct {v1, v2, v3}, Lcom/shabakaty/downloader/ko1$d;-><init>(Ljava/util/concurrent/Future;Lcom/shabakaty/downloader/ho1;)V

    invoke-interface {v2, v1, p1}, Lcom/shabakaty/downloader/pi2;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 27
    iget-object p1, p0, Lcom/shabakaty/downloader/et2;->a:Lcom/shabakaty/downloader/hp0;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/u14$b;->d(Lcom/shabakaty/downloader/hp0;)V

    .line 28
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u14$b;->e()Lcom/shabakaty/downloader/u14;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/et2;->b:Lcom/shabakaty/downloader/u14;

    return-void
.end method
