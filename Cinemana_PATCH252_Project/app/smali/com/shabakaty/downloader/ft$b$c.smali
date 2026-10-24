.class public Lcom/shabakaty/downloader/ft$b$c;
.super Ljava/lang/Object;
.source "CameraDeviceCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ft$b;->onError(Landroid/hardware/camera2/CameraDevice;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Landroid/hardware/camera2/CameraDevice;

.field public final synthetic s:I

.field public final synthetic t:Lcom/shabakaty/downloader/ft$b;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ft$b;Landroid/hardware/camera2/CameraDevice;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ft$b$c;->t:Lcom/shabakaty/downloader/ft$b;

    iput-object p2, p0, Lcom/shabakaty/downloader/ft$b$c;->r:Landroid/hardware/camera2/CameraDevice;

    iput p3, p0, Lcom/shabakaty/downloader/ft$b$c;->s:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ft$b$c;->t:Lcom/shabakaty/downloader/ft$b;

    iget-object v0, v0, Lcom/shabakaty/downloader/ft$b;->a:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v1, p0, Lcom/shabakaty/downloader/ft$b$c;->r:Landroid/hardware/camera2/CameraDevice;

    iget v2, p0, Lcom/shabakaty/downloader/ft$b$c;->s:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onError(Landroid/hardware/camera2/CameraDevice;I)V

    return-void
.end method
