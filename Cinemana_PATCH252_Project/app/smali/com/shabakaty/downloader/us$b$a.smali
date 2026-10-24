.class public Lcom/shabakaty/downloader/us$b$a;
.super Ljava/lang/Object;
.source "CameraCaptureSessionCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/us$b;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Landroid/hardware/camera2/CameraCaptureSession;

.field public final synthetic s:Landroid/hardware/camera2/CaptureRequest;

.field public final synthetic t:J

.field public final synthetic u:J

.field public final synthetic v:Lcom/shabakaty/downloader/us$b;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/us$b;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/us$b$a;->v:Lcom/shabakaty/downloader/us$b;

    iput-object p2, p0, Lcom/shabakaty/downloader/us$b$a;->r:Landroid/hardware/camera2/CameraCaptureSession;

    iput-object p3, p0, Lcom/shabakaty/downloader/us$b$a;->s:Landroid/hardware/camera2/CaptureRequest;

    iput-wide p4, p0, Lcom/shabakaty/downloader/us$b$a;->t:J

    iput-wide p6, p0, Lcom/shabakaty/downloader/us$b$a;->u:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/us$b$a;->v:Lcom/shabakaty/downloader/us$b;

    iget-object v1, v0, Lcom/shabakaty/downloader/us$b;->a:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v2, p0, Lcom/shabakaty/downloader/us$b$a;->r:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v3, p0, Lcom/shabakaty/downloader/us$b$a;->s:Landroid/hardware/camera2/CaptureRequest;

    iget-wide v4, p0, Lcom/shabakaty/downloader/us$b$a;->t:J

    iget-wide v6, p0, Lcom/shabakaty/downloader/us$b$a;->u:J

    invoke-virtual/range {v1 .. v7}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    return-void
.end method
