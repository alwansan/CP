.class public Lcom/shabakaty/downloader/us$c$g;
.super Ljava/lang/Object;
.source "CameraCaptureSessionCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/us$c;->onSurfacePrepared(Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Landroid/hardware/camera2/CameraCaptureSession;

.field public final synthetic s:Landroid/view/Surface;

.field public final synthetic t:Lcom/shabakaty/downloader/us$c;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/us$c;Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/us$c$g;->t:Lcom/shabakaty/downloader/us$c;

    iput-object p2, p0, Lcom/shabakaty/downloader/us$c$g;->r:Landroid/hardware/camera2/CameraCaptureSession;

    iput-object p3, p0, Lcom/shabakaty/downloader/us$c$g;->s:Landroid/view/Surface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/us$c$g;->t:Lcom/shabakaty/downloader/us$c;

    iget-object v0, v0, Lcom/shabakaty/downloader/us$c;->a:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iget-object v1, p0, Lcom/shabakaty/downloader/us$c$g;->r:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcom/shabakaty/downloader/us$c$g;->s:Landroid/view/Surface;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onSurfacePrepared(Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V

    return-void
.end method
