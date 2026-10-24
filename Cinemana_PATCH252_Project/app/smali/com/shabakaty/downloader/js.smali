.class public final Lcom/shabakaty/downloader/js;
.super Lcom/shabakaty/downloader/sv;
.source "Camera2ImplConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/js$a;
    }
.end annotation


# static fields
.field public static final s:Lcom/shabakaty/downloader/o90$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/o90$a<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final t:Lcom/shabakaty/downloader/o90$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/o90$a<",
            "Landroid/hardware/camera2/CameraDevice$StateCallback;",
            ">;"
        }
    .end annotation
.end field

.field public static final u:Lcom/shabakaty/downloader/o90$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/o90$a<",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            ">;"
        }
    .end annotation
.end field

.field public static final v:Lcom/shabakaty/downloader/o90$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/o90$a<",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            ">;"
        }
    .end annotation
.end field

.field public static final w:Lcom/shabakaty/downloader/o90$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/o90$a<",
            "Lcom/shabakaty/downloader/ot;",
            ">;"
        }
    .end annotation
.end field

.field public static final x:Lcom/shabakaty/downloader/o90$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/o90$a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/fg;

    const-string v2, "camera2.captureRequest.templateType"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/shabakaty/downloader/fg;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 3
    sput-object v1, Lcom/shabakaty/downloader/js;->s:Lcom/shabakaty/downloader/o90$a;

    .line 4
    const-class v0, Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/fg;

    const-string v2, "camera2.cameraDevice.stateCallback"

    invoke-direct {v1, v2, v0, v3}, Lcom/shabakaty/downloader/fg;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 6
    sput-object v1, Lcom/shabakaty/downloader/js;->t:Lcom/shabakaty/downloader/o90$a;

    .line 7
    const-class v0, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 8
    new-instance v1, Lcom/shabakaty/downloader/fg;

    const-string v2, "camera2.cameraCaptureSession.stateCallback"

    invoke-direct {v1, v2, v0, v3}, Lcom/shabakaty/downloader/fg;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 9
    sput-object v1, Lcom/shabakaty/downloader/js;->u:Lcom/shabakaty/downloader/o90$a;

    .line 10
    const-class v0, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 11
    new-instance v1, Lcom/shabakaty/downloader/fg;

    const-string v2, "camera2.cameraCaptureSession.captureCallback"

    invoke-direct {v1, v2, v0, v3}, Lcom/shabakaty/downloader/fg;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 12
    sput-object v1, Lcom/shabakaty/downloader/js;->v:Lcom/shabakaty/downloader/o90$a;

    .line 13
    const-class v0, Lcom/shabakaty/downloader/ot;

    .line 14
    new-instance v1, Lcom/shabakaty/downloader/fg;

    const-string v2, "camera2.cameraEvent.callback"

    invoke-direct {v1, v2, v0, v3}, Lcom/shabakaty/downloader/fg;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 15
    sput-object v1, Lcom/shabakaty/downloader/js;->w:Lcom/shabakaty/downloader/o90$a;

    .line 16
    const-class v0, Ljava/lang/Object;

    .line 17
    new-instance v1, Lcom/shabakaty/downloader/fg;

    const-string v2, "camera2.captureRequest.tag"

    invoke-direct {v1, v2, v0, v3}, Lcom/shabakaty/downloader/fg;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 18
    sput-object v1, Lcom/shabakaty/downloader/js;->x:Lcom/shabakaty/downloader/o90$a;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/o90;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/sv;-><init>(Lcom/shabakaty/downloader/o90;)V

    return-void
.end method
