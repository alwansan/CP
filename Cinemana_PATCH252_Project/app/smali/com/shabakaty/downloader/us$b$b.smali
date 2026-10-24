.class public Lcom/shabakaty/downloader/us$b$b;
.super Ljava/lang/Object;
.source "CameraCaptureSessionCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/us$b;->onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Landroid/hardware/camera2/CameraCaptureSession;

.field public final synthetic s:Landroid/hardware/camera2/CaptureRequest;

.field public final synthetic t:Landroid/hardware/camera2/CaptureResult;

.field public final synthetic u:Lcom/shabakaty/downloader/us$b;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/us$b;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/us$b$b;->u:Lcom/shabakaty/downloader/us$b;

    iput-object p2, p0, Lcom/shabakaty/downloader/us$b$b;->r:Landroid/hardware/camera2/CameraCaptureSession;

    iput-object p3, p0, Lcom/shabakaty/downloader/us$b$b;->s:Landroid/hardware/camera2/CaptureRequest;

    iput-object p4, p0, Lcom/shabakaty/downloader/us$b$b;->t:Landroid/hardware/camera2/CaptureResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/us$b$b;->u:Lcom/shabakaty/downloader/us$b;

    iget-object v0, v0, Lcom/shabakaty/downloader/us$b;->a:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v1, p0, Lcom/shabakaty/downloader/us$b$b;->r:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcom/shabakaty/downloader/us$b$b;->s:Landroid/hardware/camera2/CaptureRequest;

    iget-object v3, p0, Lcom/shabakaty/downloader/us$b$b;->t:Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method
