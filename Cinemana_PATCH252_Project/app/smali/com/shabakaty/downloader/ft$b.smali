.class public final Lcom/shabakaty/downloader/ft$b;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "CameraDeviceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field public final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ft$b;->b:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/ft$b;->a:Landroid/hardware/camera2/CameraDevice$StateCallback;

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ft$b;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/shabakaty/downloader/ft$b$d;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/ft$b$d;-><init>(Lcom/shabakaty/downloader/ft$b;Landroid/hardware/camera2/CameraDevice;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ft$b;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/shabakaty/downloader/ft$b$b;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/ft$b$b;-><init>(Lcom/shabakaty/downloader/ft$b;Landroid/hardware/camera2/CameraDevice;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ft$b;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/shabakaty/downloader/ft$b$c;

    invoke-direct {v1, p0, p1, p2}, Lcom/shabakaty/downloader/ft$b$c;-><init>(Lcom/shabakaty/downloader/ft$b;Landroid/hardware/camera2/CameraDevice;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ft$b;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/shabakaty/downloader/ft$b$a;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/ft$b$a;-><init>(Lcom/shabakaty/downloader/ft$b;Landroid/hardware/camera2/CameraDevice;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
