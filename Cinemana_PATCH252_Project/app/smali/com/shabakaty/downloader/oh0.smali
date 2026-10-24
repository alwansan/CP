.class public final Lcom/shabakaty/downloader/oh0;
.super Ljava/lang/Object;
.source "DLNAConnectableDeviceListener.kt"

# interfaces
.implements Lcom/connectsdk/device/ConnectableDeviceListener;


# instance fields
.field public final a:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/oh0;->a:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    return-void
.end method


# virtual methods
.method public onCapabilityUpdated(Lcom/connectsdk/device/ConnectableDevice;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/device/ConnectableDevice;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "ConnectableDeviceListen"

    const-string p2, "er ===>> onCapabilityUpdated"

    .line 1
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConnectionFailed(Lcom/connectsdk/device/ConnectableDevice;Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 0

    const-string p1, "ConnectableDeviceListen"

    const-string p2, "er ===>> onConnectionFailed"

    .line 1
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/oh0;->a:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->b()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p1

    const p2, 0x7f080227

    invoke-virtual {p1, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public onDeviceDisconnected(Lcom/connectsdk/device/ConnectableDevice;)V
    .locals 3

    const-string v0, "ConnectableDeviceListen"

    const-string v1, "er ===>> onDeviceDisconnected"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/oh0;->a:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, v0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->v:Lcom/connectsdk/device/ConnectableDevice;

    :goto_0
    if-eqz v2, :cond_1

    .line 4
    iget-object v0, v0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->v:Lcom/connectsdk/device/ConnectableDevice;

    .line 5
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 6
    sput-boolean p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->H:Z

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/oh0;->a:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    .line 8
    iput-object v1, p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->w:Lcom/connectsdk/service/capability/MediaPlayer$MediaLaunchObject;

    .line 9
    iput-object v1, p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->u:Lcom/connectsdk/service/DLNAService;

    .line 10
    iput-object v1, p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->v:Lcom/connectsdk/device/ConnectableDevice;

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/oh0;->a:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 12
    :goto_1
    iget-object p1, p0, Lcom/shabakaty/downloader/oh0;->a:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->b()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p1

    const v0, 0x7f080227

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageResource(I)V

    :goto_2
    return-void
.end method

.method public onDeviceReady(Lcom/connectsdk/device/ConnectableDevice;)V
    .locals 1

    const-string p1, "ConnectableDeviceListen"

    const-string v0, "er ===>> onDeviceReady"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/oh0;->a:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->b()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p1

    const v0, 0x7f08026d

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public onPairingRequired(Lcom/connectsdk/device/ConnectableDevice;Lcom/connectsdk/service/DeviceService;Lcom/connectsdk/service/DeviceService$PairingType;)V
    .locals 0

    const-string p1, "ConnectableDeviceListen"

    const-string p2, "er ===>> onPairingRequired"

    .line 1
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
