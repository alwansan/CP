.class public final Lcom/shabakaty/downloader/zr;
.super Ljava/lang/Object;
.source "Camera2CameraInfoImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/tt;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/shabakaty/downloader/zs;

.field public final c:Ljava/lang/Object;

.field public d:Lcom/shabakaty/downloader/sr;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/shabakaty/downloader/ps;",
            "Ljava/util/concurrent/Executor;",
            ">;>;"
        }
    .end annotation
.end field

.field public final f:Lcom/shabakaty/downloader/al3;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/zs;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/zr;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/zr;->e:Ljava/util/List;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/zr;->a:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/shabakaty/downloader/zr;->b:Lcom/shabakaty/downloader/zs;

    .line 7
    invoke-static {p2}, Lcom/shabakaty/downloader/hl3;->c(Lcom/shabakaty/downloader/zs;)Lcom/shabakaty/downloader/al3;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/zr;->f:Lcom/shabakaty/downloader/al3;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/ps;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zr;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/zr;->d:Lcom/shabakaty/downloader/sr;

    if-nez v1, :cond_3

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/zr;->e:Ljava/util/List;

    if-nez v1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 6
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 8
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v2, p1, :cond_1

    .line 9
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 10
    :cond_2
    monitor-exit v0

    return-void

    .line 11
    :cond_3
    iget-object v2, v1, Lcom/shabakaty/downloader/sr;->b:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/shabakaty/downloader/or;

    invoke-direct {v3, v1, p1}, Lcom/shabakaty/downloader/or;-><init>(Lcom/shabakaty/downloader/sr;Lcom/shabakaty/downloader/ps;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zr;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/Integer;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zr;->b:Lcom/shabakaty/downloader/zs;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zs;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/zr;->g()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "androidx.camera.camera2.legacy"

    goto :goto_0

    :cond_0
    const-string v0, "androidx.camera.camera2"

    :goto_0
    return-object v0
.end method

.method public e(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zr;->b:Lcom/shabakaty/downloader/zs;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zs;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 6
    invoke-static {p1}, Lcom/shabakaty/downloader/cl3;->o(I)I

    move-result p1

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/zr;->c()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 9
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 10
    invoke-static {p1, v0, v2}, Lcom/shabakaty/downloader/cl3;->f(IIZ)I

    move-result p1

    return p1
.end method

.method public f(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/ps;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zr;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/zr;->d:Lcom/shabakaty/downloader/sr;

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/zr;->e:Ljava/util/List;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/shabakaty/downloader/zr;->e:Ljava/util/List;

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/zr;->e:Ljava/util/List;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_1
    iget-object v2, v1, Lcom/shabakaty/downloader/sr;->b:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/shabakaty/downloader/pr;

    invoke-direct {v3, v1, p1, p2}, Lcom/shabakaty/downloader/pr;-><init>(Lcom/shabakaty/downloader/sr;Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/ps;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public g()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zr;->b:Lcom/shabakaty/downloader/zs;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zs;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public h(Lcom/shabakaty/downloader/sr;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zr;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/shabakaty/downloader/zr;->d:Lcom/shabakaty/downloader/sr;

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/zr;->e:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 5
    iget-object v3, p0, Lcom/shabakaty/downloader/zr;->d:Lcom/shabakaty/downloader/sr;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/util/concurrent/Executor;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/ps;

    .line 6
    iget-object v5, v3, Lcom/shabakaty/downloader/sr;->b:Ljava/util/concurrent/Executor;

    new-instance v6, Lcom/shabakaty/downloader/pr;

    invoke-direct {v6, v3, v4, v2}, Lcom/shabakaty/downloader/pr;-><init>(Lcom/shabakaty/downloader/sr;Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/ps;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 7
    :cond_0
    iput-object v1, p0, Lcom/shabakaty/downloader/zr;->e:Ljava/util/List;

    .line 8
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/zr;->g()I

    move-result p1

    const/4 v0, 0x4

    const/4 v2, 0x1

    if-eqz p1, :cond_6

    if-eq p1, v2, :cond_5

    const/4 v3, 0x2

    if-eq p1, v3, :cond_4

    const/4 v3, 0x3

    if-eq p1, v3, :cond_3

    if-eq p1, v0, :cond_2

    const-string v3, "Unknown value: "

    .line 10
    invoke-static {v3, p1}, Lcom/shabakaty/downloader/bl3;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, "INFO_SUPPORTED_HARDWARE_LEVEL_EXTERNAL"

    goto :goto_1

    :cond_3
    const-string p1, "INFO_SUPPORTED_HARDWARE_LEVEL_3"

    goto :goto_1

    :cond_4
    const-string p1, "INFO_SUPPORTED_HARDWARE_LEVEL_LEGACY"

    goto :goto_1

    :cond_5
    const-string p1, "INFO_SUPPORTED_HARDWARE_LEVEL_FULL"

    goto :goto_1

    :cond_6
    const-string p1, "INFO_SUPPORTED_HARDWARE_LEVEL_LIMITED"

    :goto_1
    const-string v3, "Camera2CameraInfo"

    const-string v4, "Device Level: "

    .line 11
    invoke-static {v4, p1}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    sget v4, Lcom/shabakaty/downloader/vk2;->a:I

    if-le v4, v0, :cond_8

    invoke-static {v3}, Lcom/shabakaty/downloader/vk2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :cond_8
    :goto_2
    if-eqz v2, :cond_9

    .line 13
    invoke-static {v3}, Lcom/shabakaty/downloader/vk2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
