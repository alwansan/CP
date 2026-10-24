.class public final Lcom/shabakaty/downloader/tg0;
.super Ljava/lang/Object;
.source "CropRegionZoomImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/q95$b;


# instance fields
.field public final a:Lcom/shabakaty/downloader/zs;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zs;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/tg0;->a:Lcom/shabakaty/downloader/zs;

    return-void
.end method


# virtual methods
.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    return-void
.end method

.method public b()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tg0;->a:Lcom/shabakaty/downloader/zs;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zs;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpg-float v2, v2, v1

    if-gez v2, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public c()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public d(Lcom/shabakaty/downloader/js$a;)V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method
