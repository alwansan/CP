.class public Lcom/shabakaty/downloader/us$b$e;
.super Ljava/lang/Object;
.source "CameraCaptureSessionCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/us$b;->onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Landroid/hardware/camera2/CameraCaptureSession;

.field public final synthetic s:I

.field public final synthetic t:J

.field public final synthetic u:Lcom/shabakaty/downloader/us$b;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/us$b;Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/us$b$e;->u:Lcom/shabakaty/downloader/us$b;

    iput-object p2, p0, Lcom/shabakaty/downloader/us$b$e;->r:Landroid/hardware/camera2/CameraCaptureSession;

    iput p3, p0, Lcom/shabakaty/downloader/us$b$e;->s:I

    iput-wide p4, p0, Lcom/shabakaty/downloader/us$b$e;->t:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/us$b$e;->u:Lcom/shabakaty/downloader/us$b;

    iget-object v0, v0, Lcom/shabakaty/downloader/us$b;->a:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v1, p0, Lcom/shabakaty/downloader/us$b$e;->r:Landroid/hardware/camera2/CameraCaptureSession;

    iget v2, p0, Lcom/shabakaty/downloader/us$b$e;->s:I

    iget-wide v3, p0, Lcom/shabakaty/downloader/us$b$e;->t:J

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V

    return-void
.end method
