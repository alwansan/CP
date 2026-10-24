.class public final Lcom/shabakaty/downloader/ft;
.super Ljava/lang/Object;
.source "CameraDeviceCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ft$b;,
        Lcom/shabakaty/downloader/ft$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/ft$a;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraDevice;Landroid/os/Handler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 3
    new-instance p2, Lcom/shabakaty/downloader/it;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/it;-><init>(Landroid/hardware/camera2/CameraDevice;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/ft;->a:Lcom/shabakaty/downloader/ft$a;

    goto :goto_0

    :cond_0
    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/ht;

    new-instance v1, Lcom/shabakaty/downloader/jt$a;

    invoke-direct {v1, p2}, Lcom/shabakaty/downloader/jt$a;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/ht;-><init>(Landroid/hardware/camera2/CameraDevice;Ljava/lang/Object;)V

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/ft;->a:Lcom/shabakaty/downloader/ft$a;

    goto :goto_0

    :cond_1
    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/gt;

    new-instance v1, Lcom/shabakaty/downloader/jt$a;

    invoke-direct {v1, p2}, Lcom/shabakaty/downloader/jt$a;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/gt;-><init>(Landroid/hardware/camera2/CameraDevice;Ljava/lang/Object;)V

    .line 7
    iput-object v0, p0, Lcom/shabakaty/downloader/ft;->a:Lcom/shabakaty/downloader/ft$a;

    goto :goto_0

    .line 8
    :cond_2
    new-instance v0, Lcom/shabakaty/downloader/jt;

    new-instance v1, Lcom/shabakaty/downloader/jt$a;

    invoke-direct {v1, p2}, Lcom/shabakaty/downloader/jt$a;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/jt;-><init>(Landroid/hardware/camera2/CameraDevice;Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lcom/shabakaty/downloader/ft;->a:Lcom/shabakaty/downloader/ft$a;

    :goto_0
    return-void
.end method
