.class public Lcom/shabakaty/downloader/us$c$c;
.super Ljava/lang/Object;
.source "CameraCaptureSessionCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/us$c;->onReady(Landroid/hardware/camera2/CameraCaptureSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Landroid/hardware/camera2/CameraCaptureSession;

.field public final synthetic s:Lcom/shabakaty/downloader/us$c;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/us$c;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/us$c$c;->s:Lcom/shabakaty/downloader/us$c;

    iput-object p2, p0, Lcom/shabakaty/downloader/us$c$c;->r:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/us$c$c;->s:Lcom/shabakaty/downloader/us$c;

    iget-object v0, v0, Lcom/shabakaty/downloader/us$c;->a:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iget-object v1, p0, Lcom/shabakaty/downloader/us$c$c;->r:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onReady(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method
