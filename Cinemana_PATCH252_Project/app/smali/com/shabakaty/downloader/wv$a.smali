.class public Lcom/shabakaty/downloader/wv$a;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "CaptureSessionRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/wv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static final synthetic b:I


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/wv;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wv;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/wv$a;->a:Lcom/shabakaty/downloader/wv;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/wv$a;->a:Lcom/shabakaty/downloader/wv;

    iget-object p1, p1, Lcom/shabakaty/downloader/wv;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/shabakaty/downloader/rr;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/rr;-><init>(Lcom/shabakaty/downloader/wv$a;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/wv$a;->a:Lcom/shabakaty/downloader/wv;

    iget-object p1, p1, Lcom/shabakaty/downloader/wv;->a:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/shabakaty/downloader/rr;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/rr;-><init>(Lcom/shabakaty/downloader/wv$a;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    return-void
.end method
