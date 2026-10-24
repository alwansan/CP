.class public Lcom/connectsdk/device/SimpleDevicePicker;
.super Ljava/lang/Object;
.source "SimpleDevicePicker.java"

# interfaces
.implements Lcom/connectsdk/device/ConnectableDeviceListener;


# instance fields
.field public activeDevice:Lcom/connectsdk/device/ConnectableDevice;

.field public activity:Landroid/app/Activity;

.field public connectionFailedResId:I

.field public listener:Lcom/connectsdk/device/SimpleDevicePickerListener;

.field public pairingDialog:Landroid/app/Dialog;

.field private pairingType:Lcom/connectsdk/service/DeviceService$PairingType;

.field public pendingDevice:Lcom/connectsdk/device/ConnectableDevice;

.field public picker:Lcom/connectsdk/device/DevicePicker;

.field public pickerDialog:Landroid/app/Dialog;

.field public pinPairingPromptResId:I

.field public selectDeviceResId:I

.field public simplePairingPromptResId:I

.field public simplePairingTitleResId:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/connectsdk/device/SimpleDevicePicker;->activity:Landroid/app/Activity;

    .line 3
    new-instance v0, Lcom/connectsdk/device/DevicePicker;

    invoke-direct {v0, p1}, Lcom/connectsdk/device/DevicePicker;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/connectsdk/device/SimpleDevicePicker;->picker:Lcom/connectsdk/device/DevicePicker;

    .line 4
    invoke-virtual {p0}, Lcom/connectsdk/device/SimpleDevicePicker;->loadStringIds()V

    return-void
.end method


# virtual methods
.method public cleanupActive()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/device/SimpleDevicePicker;->activeDevice:Lcom/connectsdk/device/ConnectableDevice;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Lcom/connectsdk/device/ConnectableDevice;->removeListener(Lcom/connectsdk/device/ConnectableDeviceListener;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/connectsdk/device/SimpleDevicePicker;->activeDevice:Lcom/connectsdk/device/ConnectableDevice;

    :cond_0
    return-void
.end method

.method public cleanupPending()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/device/SimpleDevicePicker;->pendingDevice:Lcom/connectsdk/device/ConnectableDevice;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Lcom/connectsdk/device/ConnectableDevice;->removeListener(Lcom/connectsdk/device/ConnectableDeviceListener;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/connectsdk/device/SimpleDevicePicker;->pendingDevice:Lcom/connectsdk/device/ConnectableDevice;

    :cond_0
    return-void
.end method

.method public createPinPairingDialog()Landroid/app/Dialog;
    .locals 3

    .line 1
    new-instance v0, Lcom/connectsdk/device/PairingDialog;

    iget-object v1, p0, Lcom/connectsdk/device/SimpleDevicePicker;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/connectsdk/device/SimpleDevicePicker;->pendingDevice:Lcom/connectsdk/device/ConnectableDevice;

    invoke-direct {v0, v1, v2}, Lcom/connectsdk/device/PairingDialog;-><init>(Landroid/app/Activity;Lcom/connectsdk/device/ConnectableDevice;)V

    .line 2
    iget v1, p0, Lcom/connectsdk/device/SimpleDevicePicker;->pinPairingPromptResId:I

    invoke-virtual {v0, v1}, Lcom/connectsdk/device/PairingDialog;->getPairingDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public createSimplePairingDialog()Landroid/app/Dialog;
    .locals 3

    .line 1
    new-instance v0, Lcom/connectsdk/device/PairingDialog;

    iget-object v1, p0, Lcom/connectsdk/device/SimpleDevicePicker;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/connectsdk/device/SimpleDevicePicker;->pendingDevice:Lcom/connectsdk/device/ConnectableDevice;

    invoke-direct {v0, v1, v2}, Lcom/connectsdk/device/PairingDialog;-><init>(Landroid/app/Activity;Lcom/connectsdk/device/ConnectableDevice;)V

    .line 2
    iget v1, p0, Lcom/connectsdk/device/SimpleDevicePicker;->simplePairingTitleResId:I

    iget v2, p0, Lcom/connectsdk/device/SimpleDevicePicker;->simplePairingPromptResId:I

    invoke-virtual {v0, v1, v2}, Lcom/connectsdk/device/PairingDialog;->getSimplePairingDialog(II)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDevice()Lcom/connectsdk/device/ConnectableDevice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/device/SimpleDevicePicker;->activeDevice:Lcom/connectsdk/device/ConnectableDevice;

    return-object v0
.end method

.method public getStringId(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/connectsdk/device/SimpleDevicePicker;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/connectsdk/device/SimpleDevicePicker;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/connectsdk/device/SimpleDevicePicker;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "com.connectsdk"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    return v0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "missing string resource for \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v0, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hidePairingDialog()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/device/SimpleDevicePicker;->pairingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/connectsdk/device/SimpleDevicePicker;->pairingDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public hidePicker()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/device/SimpleDevicePicker;->pickerDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/connectsdk/device/SimpleDevicePicker;->pickerDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public loadStringIds()V
    .locals 1

    const-string v0, "connect_sdk_picker_select_device"

    .line 1
    invoke-virtual {p0, v0}, Lcom/connectsdk/device/SimpleDevicePicker;->getStringId(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/connectsdk/device/SimpleDevicePicker;->selectDeviceResId:I

    const-string v0, "connect_sdk_pairing_simple_title_tv"

    .line 2
    invoke-virtual {p0, v0}, Lcom/connectsdk/device/SimpleDevicePicker;->getStringId(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/connectsdk/device/SimpleDevicePicker;->simplePairingTitleResId:I

    const-string v0, "connect_sdk_pairing_simple_prompt_tv"

    .line 3
    invoke-virtual {p0, v0}, Lcom/connectsdk/device/SimpleDevicePicker;->getStringId(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/connectsdk/device/SimpleDevicePicker;->simplePairingPromptResId:I

    const-string v0, "connect_sdk_pairing_pin_prompt_tv"

    .line 4
    invoke-virtual {p0, v0}, Lcom/connectsdk/device/SimpleDevicePicker;->getStringId(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/connectsdk/device/SimpleDevicePicker;->pinPairingPromptResId:I

    const-string v0, "connect_sdk_connection_failed"

    .line 5
    invoke-virtual {p0, v0}, Lcom/connectsdk/device/SimpleDevicePicker;->getStringId(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/connectsdk/device/SimpleDevicePicker;->connectionFailedResId:I

    return-void
.end method

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

    return-void
.end method

.method public onConnectionFailed(Lcom/connectsdk/device/ConnectableDevice;Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/connectsdk/device/SimpleDevicePicker;->pendingDevice:Lcom/connectsdk/device/ConnectableDevice;

    if-ne p1, p2, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/connectsdk/device/SimpleDevicePicker;->pickFailed(Lcom/connectsdk/device/ConnectableDevice;)V

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/connectsdk/device/SimpleDevicePicker;->activeDevice:Lcom/connectsdk/device/ConnectableDevice;

    if-ne p1, p2, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/connectsdk/device/SimpleDevicePicker;->cleanupActive()V

    :cond_1
    return-void
.end method

.method public onDeviceDisconnected(Lcom/connectsdk/device/ConnectableDevice;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/device/SimpleDevicePicker;->pendingDevice:Lcom/connectsdk/device/ConnectableDevice;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/connectsdk/device/SimpleDevicePicker;->pickFailed(Lcom/connectsdk/device/ConnectableDevice;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/connectsdk/device/SimpleDevicePicker;->activeDevice:Lcom/connectsdk/device/ConnectableDevice;

    if-ne p1, v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/connectsdk/device/SimpleDevicePicker;->cleanupActive()V

    :cond_1
    return-void
.end method

.method public onDeviceReady(Lcom/connectsdk/device/ConnectableDevice;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/connectsdk/device/SimpleDevicePicker$2;

    invoke-direct {v0, p0, p1}, Lcom/connectsdk/device/SimpleDevicePicker$2;-><init>(Lcom/connectsdk/device/SimpleDevicePicker;Lcom/connectsdk/device/ConnectableDevice;)V

    invoke-static {v0}, Lcom/connectsdk/core/Util;->runOnUI(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPairingRequired(Lcom/connectsdk/device/ConnectableDevice;Lcom/connectsdk/service/DeviceService;Lcom/connectsdk/service/DeviceService$PairingType;)V
    .locals 0

    const-string p2, "pairing required for device "

    .line 1
    invoke-static {p2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/connectsdk/device/ConnectableDevice;->getFriendlyName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SimpleDevicePicker"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance p1, Lcom/connectsdk/device/SimpleDevicePicker$3;

    invoke-direct {p1, p0, p3}, Lcom/connectsdk/device/SimpleDevicePicker$3;-><init>(Lcom/connectsdk/device/SimpleDevicePicker;Lcom/connectsdk/service/DeviceService$PairingType;)V

    invoke-static {p1}, Lcom/connectsdk/core/Util;->runOnUI(Ljava/lang/Runnable;)V

    return-void
.end method

.method public pickFailed(Lcom/connectsdk/device/ConnectableDevice;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/connectsdk/device/SimpleDevicePicker$4;

    invoke-direct {v0, p0, p1}, Lcom/connectsdk/device/SimpleDevicePicker$4;-><init>(Lcom/connectsdk/device/SimpleDevicePicker;Lcom/connectsdk/device/ConnectableDevice;)V

    invoke-static {v0}, Lcom/connectsdk/core/Util;->runOnUI(Ljava/lang/Runnable;)V

    return-void
.end method

.method public selectDevice(Lcom/connectsdk/device/ConnectableDevice;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 1
    iput-object p1, p0, Lcom/connectsdk/device/SimpleDevicePicker;->pendingDevice:Lcom/connectsdk/device/ConnectableDevice;

    .line 2
    invoke-virtual {p1, p0}, Lcom/connectsdk/device/ConnectableDevice;->addListener(Lcom/connectsdk/device/ConnectableDeviceListener;)V

    .line 3
    iget-object v0, p0, Lcom/connectsdk/device/SimpleDevicePicker;->listener:Lcom/connectsdk/device/SimpleDevicePickerListener;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/connectsdk/device/SimpleDevicePickerListener;->onPrepareDevice(Lcom/connectsdk/device/ConnectableDevice;)V

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/connectsdk/device/ConnectableDevice;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/connectsdk/device/SimpleDevicePicker;->pairingType:Lcom/connectsdk/service/DeviceService$PairingType;

    invoke-virtual {p1, v0}, Lcom/connectsdk/device/ConnectableDevice;->setPairingType(Lcom/connectsdk/service/DeviceService$PairingType;)V

    .line 7
    invoke-virtual {p1}, Lcom/connectsdk/device/ConnectableDevice;->connect()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, p1}, Lcom/connectsdk/device/SimpleDevicePicker;->onDeviceReady(Lcom/connectsdk/device/ConnectableDevice;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/connectsdk/device/SimpleDevicePicker;->cleanupPending()V

    :goto_0
    return-void
.end method

.method public setListener(Lcom/connectsdk/device/SimpleDevicePickerListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/device/SimpleDevicePicker;->listener:Lcom/connectsdk/device/SimpleDevicePickerListener;

    return-void
.end method

.method public setPairingType(Lcom/connectsdk/service/DeviceService$PairingType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/device/SimpleDevicePicker;->pairingType:Lcom/connectsdk/service/DeviceService$PairingType;

    return-void
.end method

.method public showPairingDialog(Lcom/connectsdk/service/DeviceService$PairingType;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/connectsdk/device/SimpleDevicePicker$5;->$SwitchMap$com$connectsdk$service$DeviceService$PairingType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/connectsdk/device/SimpleDevicePicker;->createPinPairingDialog()Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/connectsdk/device/SimpleDevicePicker;->pairingDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/connectsdk/device/SimpleDevicePicker;->createSimplePairingDialog()Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/connectsdk/device/SimpleDevicePicker;->pairingDialog:Landroid/app/Dialog;

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/connectsdk/device/SimpleDevicePicker;->pairingDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_2
    return-void
.end method

.method public showPicker()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/connectsdk/device/SimpleDevicePicker;->cleanupPending()V

    .line 2
    invoke-virtual {p0}, Lcom/connectsdk/device/SimpleDevicePicker;->hidePicker()V

    .line 3
    iget-object v0, p0, Lcom/connectsdk/device/SimpleDevicePicker;->picker:Lcom/connectsdk/device/DevicePicker;

    iget-object v1, p0, Lcom/connectsdk/device/SimpleDevicePicker;->activity:Landroid/app/Activity;

    iget v2, p0, Lcom/connectsdk/device/SimpleDevicePicker;->selectDeviceResId:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/connectsdk/device/SimpleDevicePicker$1;

    invoke-direct {v2, p0}, Lcom/connectsdk/device/SimpleDevicePicker$1;-><init>(Lcom/connectsdk/device/SimpleDevicePicker;)V

    invoke-virtual {v0, v1, v2}, Lcom/connectsdk/device/DevicePicker;->getPickerDialog(Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/connectsdk/device/SimpleDevicePicker;->pickerDialog:Landroid/app/Dialog;

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
