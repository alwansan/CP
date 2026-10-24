.class public Lcom/shabakaty/downloader/nj4$a;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "SynchronizedCaptureSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/nj4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/nj4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/nj4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/nj4$a;->a:Lcom/shabakaty/downloader/nj4;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/nj4$a;->a:Lcom/shabakaty/downloader/nj4;

    iget-object p1, p1, Lcom/shabakaty/downloader/nj4;->p:Lcom/shabakaty/downloader/ar$a;

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p1, Lcom/shabakaty/downloader/ar$a;->d:Z

    .line 3
    iget-object v0, p1, Lcom/shabakaty/downloader/ar$a;->b:Lcom/shabakaty/downloader/ar$d;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/ar$d;->s:Lcom/shabakaty/downloader/w0;

    invoke-virtual {v0, p2}, Lcom/shabakaty/downloader/w0;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ar$a;->b()V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/nj4$a;->a:Lcom/shabakaty/downloader/nj4;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/shabakaty/downloader/nj4;->p:Lcom/shabakaty/downloader/ar$a;

    :cond_2
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/nj4$a;->a:Lcom/shabakaty/downloader/nj4;

    iget-object p1, p1, Lcom/shabakaty/downloader/nj4;->p:Lcom/shabakaty/downloader/ar$a;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/ar$a;->a(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/nj4$a;->a:Lcom/shabakaty/downloader/nj4;

    iput-object p2, p1, Lcom/shabakaty/downloader/nj4;->p:Lcom/shabakaty/downloader/ar$a;

    :cond_0
    return-void
.end method
