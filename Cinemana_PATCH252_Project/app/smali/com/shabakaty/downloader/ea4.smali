.class public final Lcom/shabakaty/downloader/ea4;
.super Landroid/opengl/GLSurfaceView;
.source "SphericalGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ea4$a;,
        Lcom/shabakaty/downloader/ea4$b;
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Z

.field public final r:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/shabakaty/downloader/ea4$b;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Landroid/hardware/SensorManager;

.field public final t:Landroid/hardware/Sensor;

.field public final u:Lcom/shabakaty/downloader/o83;

.field public final v:Landroid/os/Handler;

.field public final w:Lcom/shabakaty/downloader/rx3;

.field public x:Landroid/graphics/SurfaceTexture;

.field public y:Landroid/view/Surface;

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/shabakaty/downloader/ea4;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/shabakaty/downloader/ea4;->v:Landroid/os/Handler;

    const-string v1, "sensor"

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/shabakaty/downloader/ea4;->s:Landroid/hardware/SensorManager;

    .line 7
    sget v2, Lcom/shabakaty/downloader/sy4;->a:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_0

    const/16 v0, 0xf

    .line 8
    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const/16 v0, 0xb

    .line 9
    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 10
    :cond_1
    iput-object v0, p0, Lcom/shabakaty/downloader/ea4;->t:Landroid/hardware/Sensor;

    .line 11
    new-instance v0, Lcom/shabakaty/downloader/rx3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/rx3;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/ea4;->w:Lcom/shabakaty/downloader/rx3;

    .line 12
    new-instance v1, Lcom/shabakaty/downloader/ea4$a;

    invoke-direct {v1, p0, v0}, Lcom/shabakaty/downloader/ea4$a;-><init>(Lcom/shabakaty/downloader/ea4;Lcom/shabakaty/downloader/rx3;)V

    .line 13
    new-instance v0, Lcom/shabakaty/downloader/ro4;

    const/high16 v2, 0x41c80000    # 25.0f

    invoke-direct {v0, p1, v1, v2}, Lcom/shabakaty/downloader/ro4;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/ro4$a;F)V

    const-string v2, "window"

    .line 14
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 15
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 17
    new-instance v2, Lcom/shabakaty/downloader/o83;

    const/4 v3, 0x2

    new-array v4, v3, [Lcom/shabakaty/downloader/o83$a;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-direct {v2, p1, v4}, Lcom/shabakaty/downloader/o83;-><init>(Landroid/view/Display;[Lcom/shabakaty/downloader/o83$a;)V

    iput-object v2, p0, Lcom/shabakaty/downloader/ea4;->u:Lcom/shabakaty/downloader/o83;

    .line 18
    iput-boolean v5, p0, Lcom/shabakaty/downloader/ea4;->z:Z

    .line 19
    invoke-virtual {p0, v3}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 20
    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 21
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ea4;->z:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shabakaty/downloader/ea4;->A:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/shabakaty/downloader/ea4;->t:Landroid/hardware/Sensor;

    if-eqz v2, :cond_3

    iget-boolean v3, p0, Lcom/shabakaty/downloader/ea4;->B:Z

    if-ne v0, v3, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    .line 3
    iget-object v3, p0, Lcom/shabakaty/downloader/ea4;->s:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/shabakaty/downloader/ea4;->u:Lcom/shabakaty/downloader/o83;

    invoke-virtual {v3, v4, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_1

    .line 4
    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/ea4;->s:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/shabakaty/downloader/ea4;->u:Lcom/shabakaty/downloader/o83;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 5
    :goto_1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ea4;->B:Z

    :cond_3
    :goto_2
    return-void
.end method

.method public getCameraMotionListener()Lcom/shabakaty/downloader/au;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ea4;->w:Lcom/shabakaty/downloader/rx3;

    return-object v0
.end method

.method public getVideoFrameMetadataListener()Lcom/shabakaty/downloader/p05;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ea4;->w:Lcom/shabakaty/downloader/rx3;

    return-object v0
.end method

.method public getVideoSurface()Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ea4;->y:Landroid/view/Surface;

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ea4;->v:Landroid/os/Handler;

    new-instance v1, Lcom/shabakaty/downloader/rr;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/rr;-><init>(Lcom/shabakaty/downloader/ea4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ea4;->A:Z

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ea4;->a()V

    .line 3
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ea4;->A:Z

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ea4;->a()V

    return-void
.end method

.method public setDefaultStereoMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ea4;->w:Lcom/shabakaty/downloader/rx3;

    .line 2
    iput p1, v0, Lcom/shabakaty/downloader/rx3;->B:I

    return-void
.end method

.method public setUseSensorRotation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/shabakaty/downloader/ea4;->z:Z

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ea4;->a()V

    return-void
.end method
