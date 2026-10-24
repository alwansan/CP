.class public final Lcom/shabakaty/downloader/wh0;
.super Ljava/lang/Object;
.source "DLNAControllerService.kt"

# interfaces
.implements Lcom/connectsdk/discovery/DiscoveryManagerListener;


# instance fields
.field public final synthetic r:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/wh0;->r:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceAdded(Lcom/connectsdk/discovery/DiscoveryManager;Lcom/connectsdk/device/ConnectableDevice;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/j51;->b()Lcom/shabakaty/downloader/j51;

    move-result-object p2

    new-instance v0, Lcom/shabakaty/downloader/su0;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/su0;-><init>(Lcom/connectsdk/discovery/DiscoveryManager;)V

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/j51;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public onDeviceRemoved(Lcom/connectsdk/discovery/DiscoveryManager;Lcom/connectsdk/device/ConnectableDevice;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/j51;->b()Lcom/shabakaty/downloader/j51;

    move-result-object p2

    new-instance v0, Lcom/shabakaty/downloader/su0;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/su0;-><init>(Lcom/connectsdk/discovery/DiscoveryManager;)V

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/j51;->f(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/wh0;->r:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/Service;->stopForeground(Z)V

    return-void
.end method

.method public onDeviceUpdated(Lcom/connectsdk/discovery/DiscoveryManager;Lcom/connectsdk/device/ConnectableDevice;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/j51;->b()Lcom/shabakaty/downloader/j51;

    move-result-object p2

    new-instance v0, Lcom/shabakaty/downloader/su0;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/su0;-><init>(Lcom/connectsdk/discovery/DiscoveryManager;)V

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/j51;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public onDiscoveryFailed(Lcom/connectsdk/discovery/DiscoveryManager;Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/wh0;->r:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/Service;->stopForeground(Z)V

    return-void
.end method
