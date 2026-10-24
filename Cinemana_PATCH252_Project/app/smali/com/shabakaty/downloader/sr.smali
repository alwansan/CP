.class public Lcom/shabakaty/downloader/sr;
.super Ljava/lang/Object;
.source "Camera2CameraControlImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/dt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/sr$a;,
        Lcom/shabakaty/downloader/sr$b;,
        Lcom/shabakaty/downloader/sr$c;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/sr$b;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Ljava/lang/Object;

.field public final d:Lcom/shabakaty/downloader/zs;

.field public final e:Lcom/shabakaty/downloader/dt$a;

.field public final f:Lcom/shabakaty/downloader/u14$b;

.field public final g:Lcom/shabakaty/downloader/dh1;

.field public final h:Lcom/shabakaty/downloader/q95;

.field public final i:Lcom/shabakaty/downloader/qo4;

.field public final j:Lcom/shabakaty/downloader/n81;

.field public final k:Lcom/shabakaty/downloader/mr;

.field public final l:Lcom/shabakaty/downloader/w4;

.field public m:I

.field public volatile n:Z

.field public volatile o:I

.field public final p:Lcom/shabakaty/downloader/ll3;

.field public final q:Lcom/shabakaty/downloader/sr$a;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zs;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/dt$a;Lcom/shabakaty/downloader/al3;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/sr;->c:Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/u14$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/u14$b;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/sr;->f:Lcom/shabakaty/downloader/u14$b;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/shabakaty/downloader/sr;->m:I

    .line 5
    iput-boolean v1, p0, Lcom/shabakaty/downloader/sr;->n:Z

    const/4 v2, 0x2

    .line 6
    iput v2, p0, Lcom/shabakaty/downloader/sr;->o:I

    .line 7
    new-instance v2, Lcom/shabakaty/downloader/ll3;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/ll3;-><init>(I)V

    iput-object v2, p0, Lcom/shabakaty/downloader/sr;->p:Lcom/shabakaty/downloader/ll3;

    .line 8
    new-instance v2, Lcom/shabakaty/downloader/sr$a;

    invoke-direct {v2}, Lcom/shabakaty/downloader/sr$a;-><init>()V

    iput-object v2, p0, Lcom/shabakaty/downloader/sr;->q:Lcom/shabakaty/downloader/sr$a;

    .line 9
    iput-object p1, p0, Lcom/shabakaty/downloader/sr;->d:Lcom/shabakaty/downloader/zs;

    .line 10
    iput-object p4, p0, Lcom/shabakaty/downloader/sr;->e:Lcom/shabakaty/downloader/dt$a;

    .line 11
    iput-object p3, p0, Lcom/shabakaty/downloader/sr;->b:Ljava/util/concurrent/Executor;

    .line 12
    new-instance p4, Lcom/shabakaty/downloader/sr$b;

    invoke-direct {p4, p3}, Lcom/shabakaty/downloader/sr$b;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p4, p0, Lcom/shabakaty/downloader/sr;->a:Lcom/shabakaty/downloader/sr$b;

    .line 13
    iget-object v4, v0, Lcom/shabakaty/downloader/u14$a;->b:Lcom/shabakaty/downloader/pv$a;

    .line 14
    iput v3, v4, Lcom/shabakaty/downloader/pv$a;->c:I

    .line 15
    new-instance v4, Lcom/shabakaty/downloader/nv;

    invoke-direct {v4, p4}, Lcom/shabakaty/downloader/nv;-><init>(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V

    .line 16
    iget-object p4, v0, Lcom/shabakaty/downloader/u14$a;->b:Lcom/shabakaty/downloader/pv$a;

    invoke-virtual {p4, v4}, Lcom/shabakaty/downloader/pv$a;->b(Lcom/shabakaty/downloader/ps;)V

    .line 17
    iget-object p4, v0, Lcom/shabakaty/downloader/u14$a;->b:Lcom/shabakaty/downloader/pv$a;

    invoke-virtual {p4, v2}, Lcom/shabakaty/downloader/pv$a;->b(Lcom/shabakaty/downloader/ps;)V

    .line 18
    new-instance p4, Lcom/shabakaty/downloader/n81;

    invoke-direct {p4, p0, p1, p3}, Lcom/shabakaty/downloader/n81;-><init>(Lcom/shabakaty/downloader/sr;Lcom/shabakaty/downloader/zs;Ljava/util/concurrent/Executor;)V

    iput-object p4, p0, Lcom/shabakaty/downloader/sr;->j:Lcom/shabakaty/downloader/n81;

    .line 19
    new-instance p4, Lcom/shabakaty/downloader/dh1;

    invoke-direct {p4, p0, p2, p3}, Lcom/shabakaty/downloader/dh1;-><init>(Lcom/shabakaty/downloader/sr;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)V

    iput-object p4, p0, Lcom/shabakaty/downloader/sr;->g:Lcom/shabakaty/downloader/dh1;

    .line 20
    new-instance p2, Lcom/shabakaty/downloader/q95;

    invoke-direct {p2, p0, p1, p3}, Lcom/shabakaty/downloader/q95;-><init>(Lcom/shabakaty/downloader/sr;Lcom/shabakaty/downloader/zs;Ljava/util/concurrent/Executor;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/sr;->h:Lcom/shabakaty/downloader/q95;

    .line 21
    new-instance p2, Lcom/shabakaty/downloader/qo4;

    invoke-direct {p2, p0, p1, p3}, Lcom/shabakaty/downloader/qo4;-><init>(Lcom/shabakaty/downloader/sr;Lcom/shabakaty/downloader/zs;Ljava/util/concurrent/Executor;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/sr;->i:Lcom/shabakaty/downloader/qo4;

    .line 22
    new-instance p1, Lcom/shabakaty/downloader/w4;

    invoke-direct {p1, p5}, Lcom/shabakaty/downloader/w4;-><init>(Lcom/shabakaty/downloader/al3;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/sr;->l:Lcom/shabakaty/downloader/w4;

    .line 23
    new-instance p1, Lcom/shabakaty/downloader/mr;

    invoke-direct {p1, p0, p3}, Lcom/shabakaty/downloader/mr;-><init>(Lcom/shabakaty/downloader/sr;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/sr;->k:Lcom/shabakaty/downloader/mr;

    .line 24
    new-instance p1, Lcom/shabakaty/downloader/nr;

    invoke-direct {p1, p0, v1}, Lcom/shabakaty/downloader/nr;-><init>(Lcom/shabakaty/downloader/sr;I)V

    check-cast p3, Lcom/shabakaty/downloader/w04;

    invoke-virtual {p3, p1}, Lcom/shabakaty/downloader/w04;->execute(Ljava/lang/Runnable;)V

    .line 25
    new-instance p1, Lcom/shabakaty/downloader/nr;

    invoke-direct {p1, p0, v3}, Lcom/shabakaty/downloader/nr;-><init>(Lcom/shabakaty/downloader/sr;I)V

    invoke-virtual {p3, p1}, Lcom/shabakaty/downloader/w04;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/sr$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sr;->a:Lcom/shabakaty/downloader/sr$b;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/sr$b;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/shabakaty/downloader/o90;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sr;->k:Lcom/shabakaty/downloader/mr;

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/sv$a;->d(Lcom/shabakaty/downloader/o90;)Lcom/shabakaty/downloader/sv$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/sv$a;->a()Lcom/shabakaty/downloader/sv;

    move-result-object p1

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/mr;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/jn3;->b()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/o90$a;

    .line 5
    iget-object v4, v0, Lcom/shabakaty/downloader/mr;->f:Lcom/shabakaty/downloader/js$a;

    .line 6
    iget-object v4, v4, Lcom/shabakaty/downloader/js$a;->a:Lcom/shabakaty/downloader/yv2;

    .line 7
    invoke-interface {p1, v3}, Lcom/shabakaty/downloader/jn3;->e(Lcom/shabakaty/downloader/o90$a;)Ljava/lang/Object;

    move-result-object v5

    .line 8
    sget-object v6, Lcom/shabakaty/downloader/o90$c;->t:Lcom/shabakaty/downloader/o90$c;

    invoke-virtual {v4, v3, v6, v5}, Lcom/shabakaty/downloader/yv2;->A(Lcom/shabakaty/downloader/o90$a;Lcom/shabakaty/downloader/o90$c;Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    new-instance p1, Lcom/shabakaty/downloader/ir;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/shabakaty/downloader/ir;-><init>(Lcom/shabakaty/downloader/mr;I)V

    invoke-static {p1}, Lcom/shabakaty/downloader/ar;->a(Lcom/shabakaty/downloader/ar$c;)Lcom/shabakaty/downloader/pi2;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/ko1;->d(Lcom/shabakaty/downloader/pi2;)Lcom/shabakaty/downloader/pi2;

    move-result-object p1

    .line 11
    sget-object v0, Lcom/shabakaty/downloader/qr;->r:Lcom/shabakaty/downloader/qr;

    .line 12
    invoke-static {}, Lcom/shabakaty/downloader/jl3;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 13
    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/pi2;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sr;->k:Lcom/shabakaty/downloader/mr;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/mr;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    new-instance v2, Lcom/shabakaty/downloader/js$a;

    invoke-direct {v2}, Lcom/shabakaty/downloader/js$a;-><init>()V

    iput-object v2, v0, Lcom/shabakaty/downloader/mr;->f:Lcom/shabakaty/downloader/js$a;

    .line 4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/ir;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/shabakaty/downloader/ir;-><init>(Lcom/shabakaty/downloader/mr;I)V

    invoke-static {v1}, Lcom/shabakaty/downloader/ar;->a(Lcom/shabakaty/downloader/ar$c;)Lcom/shabakaty/downloader/pi2;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/ko1;->d(Lcom/shabakaty/downloader/pi2;)Lcom/shabakaty/downloader/pi2;

    move-result-object v0

    .line 6
    sget-object v1, Lcom/shabakaty/downloader/qr;->r:Lcom/shabakaty/downloader/qr;

    .line 7
    invoke-static {}, Lcom/shabakaty/downloader/jl3;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 8
    invoke-interface {v0, v1, v2}, Lcom/shabakaty/downloader/pi2;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sr;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/shabakaty/downloader/sr;->m:I

    if-eqz v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 3
    iput v1, p0, Lcom/shabakaty/downloader/sr;->m:I

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Decrementing use count occurs more times than incrementing"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final e(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sr;->d:Lcom/shabakaty/downloader/zs;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zs;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/sr;->g(I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    return p1

    :cond_1
    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/sr;->g(I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    return p1

    :cond_2
    return v1
.end method

.method public f(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sr;->d:Lcom/shabakaty/downloader/zs;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zs;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/sr;->g(I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    return p1

    :cond_1
    const/4 p1, 0x4

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/sr;->g(I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    return p1

    :cond_2
    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/sr;->g(I[I)Z

    move-result v0

    if-eqz v0, :cond_3

    return p1

    :cond_3
    return v1
.end method

.method public final g(I[I)Z
    .locals 4

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p2, v2

    if-ne p1, v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public h(Lcom/shabakaty/downloader/sr$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sr;->a:Lcom/shabakaty/downloader/sr$b;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/sr$b;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public i(Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sr;->g:Lcom/shabakaty/downloader/dh1;

    .line 2
    iget-boolean v1, v0, Lcom/shabakaty/downloader/dh1;->c:Z

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    iput-boolean p1, v0, Lcom/shabakaty/downloader/dh1;->c:Z

    .line 4
    iget-boolean v1, v0, Lcom/shabakaty/downloader/dh1;->c:Z

    if-nez v1, :cond_5

    .line 5
    iget-object v1, v0, Lcom/shabakaty/downloader/dh1;->a:Lcom/shabakaty/downloader/sr;

    iget-object v3, v0, Lcom/shabakaty/downloader/dh1;->d:Lcom/shabakaty/downloader/sr$c;

    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/sr;->h(Lcom/shabakaty/downloader/sr$c;)V

    .line 6
    iget-object v1, v0, Lcom/shabakaty/downloader/dh1;->k:Lcom/shabakaty/downloader/ar$a;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 7
    new-instance v4, Lcom/shabakaty/downloader/ct;

    const-string v5, "Cancelled by another cancelFocusAndMetering()"

    invoke-direct {v4, v5}, Lcom/shabakaty/downloader/ct;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/shabakaty/downloader/ar$a;->c(Ljava/lang/Throwable;)Z

    .line 8
    iput-object v3, v0, Lcom/shabakaty/downloader/dh1;->k:Lcom/shabakaty/downloader/ar$a;

    .line 9
    :cond_1
    iget-object v1, v0, Lcom/shabakaty/downloader/dh1;->a:Lcom/shabakaty/downloader/sr;

    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/sr;->h(Lcom/shabakaty/downloader/sr$c;)V

    .line 10
    iput-object v3, v0, Lcom/shabakaty/downloader/dh1;->k:Lcom/shabakaty/downloader/ar$a;

    .line 11
    iget-object v1, v0, Lcom/shabakaty/downloader/dh1;->e:[Landroid/hardware/camera2/params/MeteringRectangle;

    array-length v1, v1

    const/4 v3, 0x1

    if-lez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 12
    sget-object v1, Lcom/shabakaty/downloader/o90$c;->t:Lcom/shabakaty/downloader/o90$c;

    const-class v4, Ljava/lang/Object;

    iget-boolean v5, v0, Lcom/shabakaty/downloader/dh1;->c:Z

    if-nez v5, :cond_3

    goto :goto_1

    .line 13
    :cond_3
    new-instance v5, Lcom/shabakaty/downloader/pv$a;

    invoke-direct {v5}, Lcom/shabakaty/downloader/pv$a;-><init>()V

    .line 14
    iput-boolean v3, v5, Lcom/shabakaty/downloader/pv$a;->e:Z

    .line 15
    iput v3, v5, Lcom/shabakaty/downloader/pv$a;->c:I

    .line 16
    invoke-static {}, Lcom/shabakaty/downloader/yv2;->y()Lcom/shabakaty/downloader/yv2;

    move-result-object v3

    const/4 v6, 0x2

    .line 17
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 18
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 19
    sget-object v8, Lcom/shabakaty/downloader/js;->s:Lcom/shabakaty/downloader/o90$a;

    const-string v8, "camera2.captureRequest.option."

    .line 20
    invoke-static {v8}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 21
    new-instance v9, Lcom/shabakaty/downloader/fg;

    invoke-direct {v9, v8, v4, v7}, Lcom/shabakaty/downloader/fg;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 22
    invoke-virtual {v3, v9, v1, v6}, Lcom/shabakaty/downloader/yv2;->A(Lcom/shabakaty/downloader/o90$a;Lcom/shabakaty/downloader/o90$c;Ljava/lang/Object;)V

    .line 23
    new-instance v1, Lcom/shabakaty/downloader/js;

    invoke-static {v3}, Lcom/shabakaty/downloader/k83;->x(Lcom/shabakaty/downloader/o90;)Lcom/shabakaty/downloader/k83;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/shabakaty/downloader/js;-><init>(Lcom/shabakaty/downloader/o90;)V

    .line 24
    invoke-virtual {v5, v1}, Lcom/shabakaty/downloader/pv$a;->c(Lcom/shabakaty/downloader/o90;)V

    .line 25
    iget-object v1, v0, Lcom/shabakaty/downloader/dh1;->a:Lcom/shabakaty/downloader/sr;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/pv$a;->d()Lcom/shabakaty/downloader/pv;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/sr;->j(Ljava/util/List;)V

    :cond_4
    :goto_1
    new-array v1, v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 26
    iput-object v1, v0, Lcom/shabakaty/downloader/dh1;->e:[Landroid/hardware/camera2/params/MeteringRectangle;

    new-array v1, v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 27
    iput-object v1, v0, Lcom/shabakaty/downloader/dh1;->f:[Landroid/hardware/camera2/params/MeteringRectangle;

    new-array v1, v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 28
    iput-object v1, v0, Lcom/shabakaty/downloader/dh1;->g:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 29
    iget-object v0, v0, Lcom/shabakaty/downloader/dh1;->a:Lcom/shabakaty/downloader/sr;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/sr;->k()V

    .line 30
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/shabakaty/downloader/sr;->h:Lcom/shabakaty/downloader/q95;

    .line 31
    iget-boolean v1, v0, Lcom/shabakaty/downloader/q95;->f:Z

    if-ne v1, p1, :cond_6

    goto :goto_4

    .line 32
    :cond_6
    iput-boolean p1, v0, Lcom/shabakaty/downloader/q95;->f:Z

    if-nez p1, :cond_8

    .line 33
    iget-object v1, v0, Lcom/shabakaty/downloader/q95;->c:Lcom/shabakaty/downloader/s95;

    monitor-enter v1

    .line 34
    :try_start_0
    iget-object v3, v0, Lcom/shabakaty/downloader/q95;->c:Lcom/shabakaty/downloader/s95;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/s95;->a(F)V

    .line 35
    iget-object v3, v0, Lcom/shabakaty/downloader/q95;->c:Lcom/shabakaty/downloader/s95;

    invoke-static {v3}, Lcom/shabakaty/downloader/b02;->a(Lcom/shabakaty/downloader/r95;)Lcom/shabakaty/downloader/r95;

    move-result-object v3

    .line 36
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v1, v4, :cond_7

    .line 38
    iget-object v1, v0, Lcom/shabakaty/downloader/q95;->d:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    goto :goto_3

    .line 39
    :cond_7
    iget-object v1, v0, Lcom/shabakaty/downloader/q95;->d:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/xv2;->postValue(Ljava/lang/Object;)V

    .line 40
    :goto_3
    iget-object v1, v0, Lcom/shabakaty/downloader/q95;->e:Lcom/shabakaty/downloader/q95$b;

    invoke-interface {v1}, Lcom/shabakaty/downloader/q95$b;->e()V

    .line 41
    iget-object v0, v0, Lcom/shabakaty/downloader/q95;->a:Lcom/shabakaty/downloader/sr;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/sr;->k()V

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 42
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 43
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/shabakaty/downloader/sr;->i:Lcom/shabakaty/downloader/qo4;

    .line 44
    iget-boolean v1, v0, Lcom/shabakaty/downloader/qo4;->d:Z

    if-ne v1, p1, :cond_9

    goto :goto_5

    .line 45
    :cond_9
    iput-boolean p1, v0, Lcom/shabakaty/downloader/qo4;->d:Z

    .line 46
    :goto_5
    iget-object v0, p0, Lcom/shabakaty/downloader/sr;->j:Lcom/shabakaty/downloader/n81;

    .line 47
    iget-boolean v1, v0, Lcom/shabakaty/downloader/n81;->d:Z

    if-ne p1, v1, :cond_a

    goto :goto_6

    .line 48
    :cond_a
    iput-boolean p1, v0, Lcom/shabakaty/downloader/n81;->d:Z

    if-nez p1, :cond_b

    .line 49
    iget-object v0, v0, Lcom/shabakaty/downloader/n81;->b:Lcom/shabakaty/downloader/o81;

    .line 50
    iget-object v1, v0, Lcom/shabakaty/downloader/o81;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 51
    :try_start_2
    iput v2, v0, Lcom/shabakaty/downloader/o81;->b:I

    .line 52
    monitor-exit v1

    goto :goto_6

    :catchall_1
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 53
    :cond_b
    :goto_6
    iget-object v0, p0, Lcom/shabakaty/downloader/sr;->k:Lcom/shabakaty/downloader/mr;

    .line 54
    iget-object v1, v0, Lcom/shabakaty/downloader/mr;->d:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/shabakaty/downloader/lr;

    invoke-direct {v2, v0, p1}, Lcom/shabakaty/downloader/lr;-><init>(Lcom/shabakaty/downloader/mr;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public j(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/pv;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/sr;->e:Lcom/shabakaty/downloader/dt$a;

    check-cast v1, Lcom/shabakaty/downloader/yr$d;

    .line 2
    iget-object v1, v1, Lcom/shabakaty/downloader/yr$d;->a:Lcom/shabakaty/downloader/yr;

    .line 3
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/pv;

    .line 7
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 8
    invoke-static {}, Lcom/shabakaty/downloader/yv2;->y()Lcom/shabakaty/downloader/yv2;

    .line 9
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v7, Lcom/shabakaty/downloader/ew2;

    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 11
    iget-object v7, v4, Lcom/shabakaty/downloader/pv;->a:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 12
    iget-object v7, v4, Lcom/shabakaty/downloader/pv;->b:Lcom/shabakaty/downloader/o90;

    invoke-static {v7}, Lcom/shabakaty/downloader/yv2;->z(Lcom/shabakaty/downloader/o90;)Lcom/shabakaty/downloader/yv2;

    move-result-object v7

    .line 13
    iget v10, v4, Lcom/shabakaty/downloader/pv;->c:I

    .line 14
    iget-object v8, v4, Lcom/shabakaty/downloader/pv;->d:Ljava/util/List;

    .line 15
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 16
    iget-boolean v12, v4, Lcom/shabakaty/downloader/pv;->e:Z

    .line 17
    iget-object v8, v4, Lcom/shabakaty/downloader/pv;->f:Lcom/shabakaty/downloader/lk4;

    .line 18
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    .line 19
    iget-object v13, v8, Lcom/shabakaty/downloader/lk4;->a:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    .line 20
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 21
    invoke-virtual {v8, v14}, Lcom/shabakaty/downloader/lk4;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 22
    :cond_0
    new-instance v8, Lcom/shabakaty/downloader/ew2;

    invoke-direct {v8, v9}, Lcom/shabakaty/downloader/ew2;-><init>(Ljava/util/Map;)V

    .line 23
    invoke-virtual {v4}, Lcom/shabakaty/downloader/pv;->a()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 24
    iget-boolean v4, v4, Lcom/shabakaty/downloader/pv;->e:Z

    if-eqz v4, :cond_8

    .line 25
    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    const-string v9, "Camera2CameraImpl"

    if-nez v4, :cond_1

    const-string v4, "The capture config builder already has surface inside."

    .line 26
    invoke-static {v9, v4, v5}, Lcom/shabakaty/downloader/vk2;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 27
    :cond_1
    iget-object v4, v1, Lcom/shabakaty/downloader/yr;->r:Lcom/shabakaty/downloader/fx4;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 29
    iget-object v4, v4, Lcom/shabakaty/downloader/fx4;->b:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 30
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v13, v17

    check-cast v13, Lcom/shabakaty/downloader/fx4$b;

    .line 31
    iget-boolean v14, v13, Lcom/shabakaty/downloader/fx4$b;->c:Z

    if-eqz v14, :cond_3

    .line 32
    iget-boolean v13, v13, Lcom/shabakaty/downloader/fx4$b;->b:Z

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    :goto_3
    if-eqz v13, :cond_2

    .line 33
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/shabakaty/downloader/fx4$b;

    .line 34
    iget-object v13, v13, Lcom/shabakaty/downloader/fx4$b;->a:Lcom/shabakaty/downloader/u14;

    .line 35
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 36
    :cond_4
    invoke-static {v15}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v4

    .line 37
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/shabakaty/downloader/u14;

    .line 38
    iget-object v13, v13, Lcom/shabakaty/downloader/u14;->f:Lcom/shabakaty/downloader/pv;

    .line 39
    invoke-virtual {v13}, Lcom/shabakaty/downloader/pv;->a()Ljava/util/List;

    move-result-object v13

    .line 40
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_5

    .line 41
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/shabakaty/downloader/hp0;

    .line 42
    invoke-virtual {v6, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 43
    :cond_6
    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "Unable to find a repeating surface to attach to CaptureConfig"

    .line 44
    invoke-static {v9, v4, v5}, Lcom/shabakaty/downloader/vk2;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    const/4 v13, 0x0

    goto :goto_6

    :cond_7
    const/4 v13, 0x1

    :goto_6
    if-nez v13, :cond_8

    goto/16 :goto_0

    .line 45
    :cond_8
    new-instance v4, Lcom/shabakaty/downloader/pv;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 46
    invoke-static {v7}, Lcom/shabakaty/downloader/k83;->x(Lcom/shabakaty/downloader/o90;)Lcom/shabakaty/downloader/k83;

    move-result-object v9

    .line 47
    sget-object v6, Lcom/shabakaty/downloader/lk4;->b:Lcom/shabakaty/downloader/lk4;

    .line 48
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 49
    iget-object v7, v8, Lcom/shabakaty/downloader/lk4;->a:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 50
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 51
    invoke-virtual {v8, v13}, Lcom/shabakaty/downloader/lk4;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 52
    :cond_9
    new-instance v13, Lcom/shabakaty/downloader/lk4;

    invoke-direct {v13, v6}, Lcom/shabakaty/downloader/lk4;-><init>(Ljava/util/Map;)V

    move-object v7, v4

    move-object v8, v5

    .line 53
    invoke-direct/range {v7 .. v13}, Lcom/shabakaty/downloader/pv;-><init>(Ljava/util/List;Lcom/shabakaty/downloader/o90;ILjava/util/List;ZLcom/shabakaty/downloader/lk4;)V

    .line 54
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    const-string v3, "Issue capture request"

    .line 55
    invoke-virtual {v1, v3, v5}, Lcom/shabakaty/downloader/yr;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    iget-object v1, v1, Lcom/shabakaty/downloader/yr;->B:Lcom/shabakaty/downloader/vv;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/vv;->d(Ljava/util/List;)V

    return-void
.end method

.method public k()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sr;->f:Lcom/shabakaty/downloader/u14$b;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/js$a;

    invoke-direct {v1}, Lcom/shabakaty/downloader/js$a;-><init>()V

    .line 3
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 5
    invoke-virtual {v1, v2, v4}, Lcom/shabakaty/downloader/js$a;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/shabakaty/downloader/js$a;

    .line 6
    iget-object v2, p0, Lcom/shabakaty/downloader/sr;->g:Lcom/shabakaty/downloader/dh1;

    .line 7
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x4

    .line 8
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v6, v2, Lcom/shabakaty/downloader/dh1;->a:Lcom/shabakaty/downloader/sr;

    .line 9
    invoke-virtual {v6, v4}, Lcom/shabakaty/downloader/sr;->f(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 10
    invoke-virtual {v1, v5, v4}, Lcom/shabakaty/downloader/js$a;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/shabakaty/downloader/js$a;

    .line 11
    iget-object v4, v2, Lcom/shabakaty/downloader/dh1;->e:[Landroid/hardware/camera2/params/MeteringRectangle;

    array-length v5, v4

    if-eqz v5, :cond_0

    .line 12
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v5, v4}, Lcom/shabakaty/downloader/js$a;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/shabakaty/downloader/js$a;

    .line 13
    :cond_0
    iget-object v4, v2, Lcom/shabakaty/downloader/dh1;->f:[Landroid/hardware/camera2/params/MeteringRectangle;

    array-length v5, v4

    if-eqz v5, :cond_1

    .line 14
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v5, v4}, Lcom/shabakaty/downloader/js$a;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/shabakaty/downloader/js$a;

    .line 15
    :cond_1
    iget-object v2, v2, Lcom/shabakaty/downloader/dh1;->g:[Landroid/hardware/camera2/params/MeteringRectangle;

    array-length v4, v2

    if-eqz v4, :cond_2

    .line 16
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v4, v2}, Lcom/shabakaty/downloader/js$a;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/shabakaty/downloader/js$a;

    .line 17
    :cond_2
    iget-object v2, p0, Lcom/shabakaty/downloader/sr;->l:Lcom/shabakaty/downloader/w4;

    .line 18
    iget-object v2, v2, Lcom/shabakaty/downloader/w4;->a:Landroid/util/Range;

    if-eqz v2, :cond_3

    .line 19
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v4, v2}, Lcom/shabakaty/downloader/js$a;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/shabakaty/downloader/js$a;

    .line 20
    :cond_3
    iget-object v2, p0, Lcom/shabakaty/downloader/sr;->h:Lcom/shabakaty/downloader/q95;

    .line 21
    iget-object v2, v2, Lcom/shabakaty/downloader/q95;->e:Lcom/shabakaty/downloader/q95$b;

    invoke-interface {v2, v1}, Lcom/shabakaty/downloader/q95$b;->d(Lcom/shabakaty/downloader/js$a;)V

    .line 22
    iget-boolean v2, p0, Lcom/shabakaty/downloader/sr;->n:Z

    const/4 v4, 0x2

    if-eqz v2, :cond_4

    .line 23
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 24
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 25
    invoke-virtual {v1, v2, v4}, Lcom/shabakaty/downloader/js$a;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/shabakaty/downloader/js$a;

    goto :goto_0

    .line 26
    :cond_4
    iget v2, p0, Lcom/shabakaty/downloader/sr;->o:I

    if-eqz v2, :cond_6

    if-eq v2, v3, :cond_5

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x3

    goto :goto_1

    .line 27
    :cond_6
    iget-object v2, p0, Lcom/shabakaty/downloader/sr;->p:Lcom/shabakaty/downloader/ll3;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-class v2, Lcom/shabakaty/downloader/ff0;

    invoke-static {v2}, Lcom/shabakaty/downloader/ts0;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/zk3;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/ff0;

    if-eqz v2, :cond_7

    const/4 v4, 0x1

    :cond_7
    move v2, v4

    .line 29
    :goto_1
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/sr;->e(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/shabakaty/downloader/js$a;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/shabakaty/downloader/js$a;

    .line 30
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 31
    iget-object v4, p0, Lcom/shabakaty/downloader/sr;->d:Lcom/shabakaty/downloader/zs;

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/zs;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    if-nez v4, :cond_8

    goto :goto_2

    .line 32
    :cond_8
    invoke-virtual {p0, v3, v4}, Lcom/shabakaty/downloader/sr;->g(I[I)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_3

    .line 33
    :cond_9
    invoke-virtual {p0, v3, v4}, Lcom/shabakaty/downloader/sr;->g(I[I)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_3

    :cond_a
    :goto_2
    const/4 v3, 0x0

    .line 34
    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 35
    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/js$a;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/shabakaty/downloader/js$a;

    .line 36
    iget-object v2, p0, Lcom/shabakaty/downloader/sr;->j:Lcom/shabakaty/downloader/n81;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, v2, Lcom/shabakaty/downloader/n81;->b:Lcom/shabakaty/downloader/o81;

    .line 38
    iget-object v4, v2, Lcom/shabakaty/downloader/o81;->a:Ljava/lang/Object;

    monitor-enter v4

    .line 39
    :try_start_0
    iget v2, v2, Lcom/shabakaty/downloader/o81;->b:I

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 41
    invoke-virtual {v1, v3, v2}, Lcom/shabakaty/downloader/js$a;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/shabakaty/downloader/js$a;

    .line 42
    iget-object v2, p0, Lcom/shabakaty/downloader/sr;->k:Lcom/shabakaty/downloader/mr;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/mr;->a()Lcom/shabakaty/downloader/js;

    move-result-object v2

    .line 43
    invoke-interface {v2}, Lcom/shabakaty/downloader/o90;->b()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/o90$a;

    .line 44
    iget-object v5, v1, Lcom/shabakaty/downloader/js$a;->a:Lcom/shabakaty/downloader/yv2;

    .line 45
    sget-object v6, Lcom/shabakaty/downloader/o90$c;->r:Lcom/shabakaty/downloader/o90$c;

    .line 46
    invoke-interface {v2, v4}, Lcom/shabakaty/downloader/o90;->e(Lcom/shabakaty/downloader/o90$a;)Ljava/lang/Object;

    move-result-object v7

    .line 47
    invoke-virtual {v5, v4, v6, v7}, Lcom/shabakaty/downloader/yv2;->A(Lcom/shabakaty/downloader/o90$a;Lcom/shabakaty/downloader/o90$c;Ljava/lang/Object;)V

    goto :goto_4

    .line 48
    :cond_b
    invoke-virtual {v1}, Lcom/shabakaty/downloader/js$a;->a()Lcom/shabakaty/downloader/js;

    move-result-object v1

    .line 49
    iget-object v0, v0, Lcom/shabakaty/downloader/u14$a;->b:Lcom/shabakaty/downloader/pv$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-static {v1}, Lcom/shabakaty/downloader/yv2;->z(Lcom/shabakaty/downloader/o90;)Lcom/shabakaty/downloader/yv2;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/downloader/pv$a;->b:Lcom/shabakaty/downloader/wv2;

    .line 51
    iget-object v0, p0, Lcom/shabakaty/downloader/sr;->k:Lcom/shabakaty/downloader/mr;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/mr;->a()Lcom/shabakaty/downloader/js;

    move-result-object v0

    const/4 v1, 0x0

    .line 52
    iget-object v0, v0, Lcom/shabakaty/downloader/sv;->r:Lcom/shabakaty/downloader/o90;

    .line 53
    sget-object v2, Lcom/shabakaty/downloader/js;->x:Lcom/shabakaty/downloader/o90$a;

    invoke-interface {v0, v2, v1}, Lcom/shabakaty/downloader/o90;->a(Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 54
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_c

    .line 55
    iget-object v1, p0, Lcom/shabakaty/downloader/sr;->f:Lcom/shabakaty/downloader/u14$b;

    const-string v2, "Camera2CameraControl"

    check-cast v0, Ljava/lang/Integer;

    .line 56
    iget-object v1, v1, Lcom/shabakaty/downloader/u14$a;->b:Lcom/shabakaty/downloader/pv$a;

    .line 57
    iget-object v1, v1, Lcom/shabakaty/downloader/pv$a;->f:Lcom/shabakaty/downloader/ew2;

    .line 58
    iget-object v1, v1, Lcom/shabakaty/downloader/lk4;->a:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_c
    iget-object v0, p0, Lcom/shabakaty/downloader/sr;->e:Lcom/shabakaty/downloader/dt$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/sr;->f:Lcom/shabakaty/downloader/u14$b;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/u14$b;->e()Lcom/shabakaty/downloader/u14;

    move-result-object v1

    check-cast v0, Lcom/shabakaty/downloader/yr$d;

    .line 60
    iget-object v0, v0, Lcom/shabakaty/downloader/yr$d;->a:Lcom/shabakaty/downloader/yr;

    iput-object v1, v0, Lcom/shabakaty/downloader/yr;->C:Lcom/shabakaty/downloader/u14;

    .line 61
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yr;->z()V

    return-void

    :catchall_0
    move-exception v0

    .line 62
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
