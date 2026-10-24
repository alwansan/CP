.class public final synthetic Lcom/shabakaty/downloader/jr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/sr$c;


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/mr;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/mr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/jr;->a:Lcom/shabakaty/downloader/mr;

    return-void
.end method


# virtual methods
.method public final a(Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/downloader/jr;->a:Lcom/shabakaty/downloader/mr;

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/mr;->g:Lcom/shabakaty/downloader/ar$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 3
    instance-of v1, p1, Lcom/shabakaty/downloader/lk4;

    if-eqz v1, :cond_0

    .line 4
    check-cast p1, Lcom/shabakaty/downloader/lk4;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/lk4;->a:Ljava/util/Map;

    const-string v1, "Camera2CameraControl"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 6
    iget-object v1, v0, Lcom/shabakaty/downloader/mr;->g:Lcom/shabakaty/downloader/ar$a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, v0, Lcom/shabakaty/downloader/mr;->g:Lcom/shabakaty/downloader/ar$a;

    .line 8
    iput-object v2, v0, Lcom/shabakaty/downloader/mr;->g:Lcom/shabakaty/downloader/ar$a;

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/ar$a;->a(Ljava/lang/Object;)Z

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
