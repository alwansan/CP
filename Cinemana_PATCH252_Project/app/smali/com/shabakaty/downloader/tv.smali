.class public final synthetic Lcom/shabakaty/downloader/tv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/od;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Landroid/hardware/camera2/CameraDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/nj4;Landroid/hardware/camera2/CameraDevice;Lcom/shabakaty/downloader/v14;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/tv;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/tv;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/tv;->d:Landroid/hardware/camera2/CameraDevice;

    iput-object p3, p0, Lcom/shabakaty/downloader/tv;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/vv;Lcom/shabakaty/downloader/u14;Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/tv;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/tv;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/tv;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/shabakaty/downloader/tv;->d:Landroid/hardware/camera2/CameraDevice;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/shabakaty/downloader/pi2;
    .locals 11

    iget v0, p0, Lcom/shabakaty/downloader/tv;->a:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/tv;->b:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/vv;

    iget-object v1, p0, Lcom/shabakaty/downloader/tv;->c:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/u14;

    iget-object v2, p0, Lcom/shabakaty/downloader/tv;->d:Landroid/hardware/camera2/CameraDevice;

    check-cast p1, Ljava/util/List;

    .line 1
    iget-object v3, v0, Lcom/shabakaty/downloader/vv;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 2
    :try_start_0
    iget-object v4, v0, Lcom/shabakaty/downloader/vv;->l:Lcom/shabakaty/downloader/vv$c;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_7

    const/4 v5, 0x1

    if-eq v4, v5, :cond_7

    const/4 v6, 0x2

    if-eq v4, v6, :cond_0

    const/4 p1, 0x4

    if-eq v4, p1, :cond_7

    .line 3
    new-instance p1, Ljava/util/concurrent/CancellationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openCaptureSession() not execute in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/shabakaty/downloader/vv;->l:Lcom/shabakaty/downloader/vv$c;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/vz1$a;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/vz1$a;-><init>(Ljava/lang/Throwable;)V

    .line 5
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    .line 6
    :cond_0
    :try_start_1
    iget-object v4, v0, Lcom/shabakaty/downloader/vv;->k:Ljava/util/List;

    invoke-static {v4}, Lcom/shabakaty/downloader/mp0;->a(Ljava/util/List;)V
    :try_end_1
    .catch Lcom/shabakaty/downloader/hp0$a; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    iget-object v4, v0, Lcom/shabakaty/downloader/vv;->j:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 9
    iget-object v8, v0, Lcom/shabakaty/downloader/vv;->j:Ljava/util/Map;

    iget-object v9, v0, Lcom/shabakaty/downloader/vv;->k:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/hp0;

    .line 10
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/Surface;

    .line 11
    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 12
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    sget-object p1, Lcom/shabakaty/downloader/vv$c;->u:Lcom/shabakaty/downloader/vv$c;

    iput-object p1, v0, Lcom/shabakaty/downloader/vv;->l:Lcom/shabakaty/downloader/vv$c;

    const-string p1, "CaptureSession"

    const-string v8, "Opening capture session."

    const/4 v9, 0x0

    .line 14
    invoke-static {p1, v8, v9}, Lcom/shabakaty/downloader/vk2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-array p1, v6, [Lcom/shabakaty/downloader/gj4$a;

    .line 15
    iget-object v6, v0, Lcom/shabakaty/downloader/vv;->d:Lcom/shabakaty/downloader/vv$d;

    aput-object v6, p1, v4

    new-instance v6, Lcom/shabakaty/downloader/pj4$a;

    .line 16
    iget-object v8, v1, Lcom/shabakaty/downloader/u14;->c:Ljava/util/List;

    .line 17
    invoke-direct {v6, v8}, Lcom/shabakaty/downloader/pj4$a;-><init>(Ljava/util/List;)V

    aput-object v6, p1, v5

    .line 18
    new-instance v5, Lcom/shabakaty/downloader/pj4;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v5, p1}, Lcom/shabakaty/downloader/pj4;-><init>(Ljava/util/List;)V

    .line 19
    iget-object p1, v1, Lcom/shabakaty/downloader/u14;->f:Lcom/shabakaty/downloader/pv;

    .line 20
    iget-object p1, p1, Lcom/shabakaty/downloader/pv;->b:Lcom/shabakaty/downloader/o90;

    .line 21
    new-instance v6, Lcom/shabakaty/downloader/js;

    .line 22
    invoke-static {}, Lcom/shabakaty/downloader/ot;->d()Lcom/shabakaty/downloader/ot;

    move-result-object v6

    .line 23
    sget-object v8, Lcom/shabakaty/downloader/js;->w:Lcom/shabakaty/downloader/o90$a;

    invoke-interface {p1, v8, v6}, Lcom/shabakaty/downloader/o90;->a(Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ot;

    .line 24
    iput-object p1, v0, Lcom/shabakaty/downloader/vv;->i:Lcom/shabakaty/downloader/ot;

    .line 25
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ot;->c()Lcom/shabakaty/downloader/ot$a;

    move-result-object p1

    .line 26
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 27
    iget-object p1, p1, Lcom/shabakaty/downloader/ot$a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shabakaty/downloader/nt;

    .line 28
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 29
    :cond_2
    iget-object p1, v1, Lcom/shabakaty/downloader/u14;->f:Lcom/shabakaty/downloader/pv;

    .line 30
    new-instance v1, Lcom/shabakaty/downloader/pv$a;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/pv$a;-><init>(Lcom/shabakaty/downloader/pv;)V

    .line 31
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/pv;

    .line 32
    iget-object v6, v6, Lcom/shabakaty/downloader/pv;->b:Lcom/shabakaty/downloader/o90;

    .line 33
    invoke-virtual {v1, v6}, Lcom/shabakaty/downloader/pv$a;->c(Lcom/shabakaty/downloader/o90;)V

    goto :goto_2

    .line 34
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/Surface;

    .line 36
    new-instance v8, Lcom/shabakaty/downloader/r83;

    invoke-direct {v8, v7}, Lcom/shabakaty/downloader/r83;-><init>(Landroid/view/Surface;)V

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 37
    :cond_4
    iget-object v6, v0, Lcom/shabakaty/downloader/vv;->e:Lcom/shabakaty/downloader/oj4;

    .line 38
    iget-object v6, v6, Lcom/shabakaty/downloader/oj4;->a:Lcom/shabakaty/downloader/oj4$b;

    check-cast v6, Lcom/shabakaty/downloader/kj4;

    .line 39
    iput-object v5, v6, Lcom/shabakaty/downloader/kj4;->f:Lcom/shabakaty/downloader/gj4$a;

    .line 40
    new-instance v5, Lcom/shabakaty/downloader/v14;

    .line 41
    iget-object v7, v6, Lcom/shabakaty/downloader/kj4;->d:Ljava/util/concurrent/Executor;

    .line 42
    new-instance v8, Lcom/shabakaty/downloader/jj4;

    invoke-direct {v8, v6}, Lcom/shabakaty/downloader/jj4;-><init>(Lcom/shabakaty/downloader/kj4;)V

    invoke-direct {v5, v4, p1, v7, v8}, Lcom/shabakaty/downloader/v14;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    :try_start_3
    invoke-virtual {v1}, Lcom/shabakaty/downloader/pv$a;->d()Lcom/shabakaty/downloader/pv;

    move-result-object p1

    if-nez v2, :cond_5

    goto :goto_4

    .line 44
    :cond_5
    iget v1, p1, Lcom/shabakaty/downloader/pv;->c:I

    .line 45
    invoke-virtual {v2, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 46
    iget-object p1, p1, Lcom/shabakaty/downloader/pv;->b:Lcom/shabakaty/downloader/o90;

    .line 47
    invoke-static {v1, p1}, Lcom/shabakaty/downloader/ds;->a(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/shabakaty/downloader/o90;)V

    .line 48
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v9

    :goto_4
    if-eqz v9, :cond_6

    .line 49
    iget-object p1, v5, Lcom/shabakaty/downloader/v14;->a:Lcom/shabakaty/downloader/v14$c;

    invoke-interface {p1, v9}, Lcom/shabakaty/downloader/v14$c;->g(Landroid/hardware/camera2/CaptureRequest;)V
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 50
    :cond_6
    :try_start_4
    iget-object p1, v0, Lcom/shabakaty/downloader/vv;->e:Lcom/shabakaty/downloader/oj4;

    .line 51
    iget-object p1, p1, Lcom/shabakaty/downloader/oj4;->a:Lcom/shabakaty/downloader/oj4$b;

    invoke-interface {p1, v2, v5}, Lcom/shabakaty/downloader/oj4$b;->j(Landroid/hardware/camera2/CameraDevice;Lcom/shabakaty/downloader/v14;)Lcom/shabakaty/downloader/pi2;

    move-result-object v0

    .line 52
    monitor-exit v3

    goto :goto_5

    :catch_0
    move-exception p1

    .line 53
    new-instance v0, Lcom/shabakaty/downloader/vz1$a;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/vz1$a;-><init>(Ljava/lang/Throwable;)V

    .line 54
    monitor-exit v3

    goto :goto_5

    :catch_1
    move-exception p1

    .line 55
    iget-object v0, v0, Lcom/shabakaty/downloader/vv;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 56
    new-instance v0, Lcom/shabakaty/downloader/vz1$a;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/vz1$a;-><init>(Ljava/lang/Throwable;)V

    .line 57
    monitor-exit v3

    goto :goto_5

    .line 58
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openCaptureSession() should not be possible in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/shabakaty/downloader/vv;->l:Lcom/shabakaty/downloader/vv$c;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    new-instance v0, Lcom/shabakaty/downloader/vz1$a;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/vz1$a;-><init>(Ljava/lang/Throwable;)V

    .line 60
    monitor-exit v3

    :goto_5
    return-object v0

    :catchall_0
    move-exception p1

    .line 61
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    .line 62
    :goto_6
    iget-object v0, p0, Lcom/shabakaty/downloader/tv;->b:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/nj4;

    iget-object v1, p0, Lcom/shabakaty/downloader/tv;->d:Landroid/hardware/camera2/CameraDevice;

    iget-object v2, p0, Lcom/shabakaty/downloader/tv;->c:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/v14;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, v2, p1}, Lcom/shabakaty/downloader/nj4;->u(Lcom/shabakaty/downloader/nj4;Landroid/hardware/camera2/CameraDevice;Lcom/shabakaty/downloader/v14;Ljava/util/List;)Lcom/shabakaty/downloader/pi2;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
