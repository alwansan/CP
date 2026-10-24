.class public final Lcom/shabakaty/downloader/us;
.super Ljava/lang/Object;
.source "CameraCaptureSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/us$c;,
        Lcom/shabakaty/downloader/us$b;,
        Lcom/shabakaty/downloader/us$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/us$a;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraCaptureSession;Landroid/os/Handler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 3
    new-instance p2, Lcom/shabakaty/downloader/vs;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/vs;-><init>(Landroid/hardware/camera2/CameraCaptureSession;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/us;->a:Lcom/shabakaty/downloader/us$a;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/ws;

    new-instance v1, Lcom/shabakaty/downloader/ws$a;

    invoke-direct {v1, p2}, Lcom/shabakaty/downloader/ws$a;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/ws;-><init>(Landroid/hardware/camera2/CameraCaptureSession;Ljava/lang/Object;)V

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/us;->a:Lcom/shabakaty/downloader/us$a;

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Landroid/hardware/camera2/CameraCaptureSession;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/us;->a:Lcom/shabakaty/downloader/us$a;

    check-cast v0, Lcom/shabakaty/downloader/ws;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/ws;->a:Landroid/hardware/camera2/CameraCaptureSession;

    return-object v0
.end method
