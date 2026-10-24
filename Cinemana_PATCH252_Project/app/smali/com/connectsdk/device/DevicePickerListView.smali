.class public Lcom/connectsdk/device/DevicePickerListView;
.super Landroid/widget/ListView;
.source "DevicePickerListView.java"

# interfaces
.implements Lcom/connectsdk/discovery/DiscoveryManagerListener;


# instance fields
.field public pickerAdapter:Lcom/connectsdk/device/DevicePickerAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/connectsdk/device/DevicePickerAdapter;

    invoke-direct {v0, p1}, Lcom/connectsdk/device/DevicePickerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/connectsdk/device/DevicePickerListView;->pickerAdapter:Lcom/connectsdk/device/DevicePickerAdapter;

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4
    invoke-static {}, Lcom/connectsdk/discovery/DiscoveryManager;->getInstance()Lcom/connectsdk/discovery/DiscoveryManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/connectsdk/discovery/DiscoveryManager;->addListener(Lcom/connectsdk/discovery/DiscoveryManagerListener;)V

    return-void
.end method


# virtual methods
.method public onDeviceAdded(Lcom/connectsdk/discovery/DiscoveryManager;Lcom/connectsdk/device/ConnectableDevice;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/connectsdk/device/DevicePickerListView$2;

    invoke-direct {p1, p0, p2}, Lcom/connectsdk/device/DevicePickerListView$2;-><init>(Lcom/connectsdk/device/DevicePickerListView;Lcom/connectsdk/device/ConnectableDevice;)V

    invoke-static {p1}, Lcom/connectsdk/core/Util;->runOnUI(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDeviceRemoved(Lcom/connectsdk/discovery/DiscoveryManager;Lcom/connectsdk/device/ConnectableDevice;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/connectsdk/device/DevicePickerListView$4;

    invoke-direct {p1, p0, p2}, Lcom/connectsdk/device/DevicePickerListView$4;-><init>(Lcom/connectsdk/device/DevicePickerListView;Lcom/connectsdk/device/ConnectableDevice;)V

    invoke-static {p1}, Lcom/connectsdk/core/Util;->runOnUI(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDeviceUpdated(Lcom/connectsdk/discovery/DiscoveryManager;Lcom/connectsdk/device/ConnectableDevice;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/connectsdk/device/DevicePickerListView$3;

    invoke-direct {p1, p0}, Lcom/connectsdk/device/DevicePickerListView$3;-><init>(Lcom/connectsdk/device/DevicePickerListView;)V

    invoke-static {p1}, Lcom/connectsdk/core/Util;->runOnUI(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDiscoveryFailed(Lcom/connectsdk/discovery/DiscoveryManager;Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/connectsdk/device/DevicePickerListView$1;

    invoke-direct {p1, p0}, Lcom/connectsdk/device/DevicePickerListView$1;-><init>(Lcom/connectsdk/device/DevicePickerListView;)V

    invoke-static {p1}, Lcom/connectsdk/core/Util;->runOnUI(Ljava/lang/Runnable;)V

    return-void
.end method
