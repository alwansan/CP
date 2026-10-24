.class public Lcom/shabakaty/downloader/wt$a$c;
.super Ljava/lang/Object;
.source "CameraManagerCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/wt$a;->onCameraUnavailable(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Ljava/lang/String;

.field public final synthetic s:Lcom/shabakaty/downloader/wt$a;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wt$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/wt$a$c;->s:Lcom/shabakaty/downloader/wt$a;

    iput-object p2, p0, Lcom/shabakaty/downloader/wt$a$c;->r:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wt$a$c;->s:Lcom/shabakaty/downloader/wt$a;

    iget-object v0, v0, Lcom/shabakaty/downloader/wt$a;->b:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iget-object v1, p0, Lcom/shabakaty/downloader/wt$a$c;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraUnavailable(Ljava/lang/String;)V

    return-void
.end method
