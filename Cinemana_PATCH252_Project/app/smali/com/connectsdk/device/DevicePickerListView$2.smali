.class Lcom/connectsdk/device/DevicePickerListView$2;
.super Ljava/lang/Object;
.source "DevicePickerListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/device/DevicePickerListView;->onDeviceAdded(Lcom/connectsdk/discovery/DiscoveryManager;Lcom/connectsdk/device/ConnectableDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/device/DevicePickerListView;

.field public final synthetic val$device:Lcom/connectsdk/device/ConnectableDevice;


# direct methods
.method public constructor <init>(Lcom/connectsdk/device/DevicePickerListView;Lcom/connectsdk/device/ConnectableDevice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/device/DevicePickerListView$2;->this$0:Lcom/connectsdk/device/DevicePickerListView;

    iput-object p2, p0, Lcom/connectsdk/device/DevicePickerListView$2;->val$device:Lcom/connectsdk/device/ConnectableDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/connectsdk/device/DevicePickerListView$2;->this$0:Lcom/connectsdk/device/DevicePickerListView;

    iget-object v1, v1, Lcom/connectsdk/device/DevicePickerListView;->pickerAdapter:Lcom/connectsdk/device/DevicePickerAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_4

    .line 2
    iget-object v1, p0, Lcom/connectsdk/device/DevicePickerListView$2;->this$0:Lcom/connectsdk/device/DevicePickerListView;

    iget-object v1, v1, Lcom/connectsdk/device/DevicePickerListView;->pickerAdapter:Lcom/connectsdk/device/DevicePickerAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/connectsdk/device/ConnectableDevice;

    .line 3
    iget-object v3, p0, Lcom/connectsdk/device/DevicePickerListView$2;->val$device:Lcom/connectsdk/device/ConnectableDevice;

    invoke-virtual {v3}, Lcom/connectsdk/device/ConnectableDevice;->getFriendlyName()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v1}, Lcom/connectsdk/device/ConnectableDevice;->getFriendlyName()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_0

    .line 5
    iget-object v3, p0, Lcom/connectsdk/device/DevicePickerListView$2;->val$device:Lcom/connectsdk/device/ConnectableDevice;

    invoke-virtual {v3}, Lcom/connectsdk/device/ConnectableDevice;->getModelName()Ljava/lang/String;

    move-result-object v3

    :cond_0
    if-nez v4, :cond_1

    .line 6
    invoke-virtual {v1}, Lcom/connectsdk/device/ConnectableDevice;->getModelName()Ljava/lang/String;

    move-result-object v4

    .line 7
    :cond_1
    invoke-virtual {v1}, Lcom/connectsdk/device/ConnectableDevice;->getIpAddress()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/connectsdk/device/DevicePickerListView$2;->val$device:Lcom/connectsdk/device/ConnectableDevice;

    invoke-virtual {v6}, Lcom/connectsdk/device/ConnectableDevice;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 8
    iget-object v2, p0, Lcom/connectsdk/device/DevicePickerListView$2;->this$0:Lcom/connectsdk/device/DevicePickerListView;

    iget-object v2, v2, Lcom/connectsdk/device/DevicePickerListView;->pickerAdapter:Lcom/connectsdk/device/DevicePickerAdapter;

    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 9
    iget-object v1, p0, Lcom/connectsdk/device/DevicePickerListView$2;->this$0:Lcom/connectsdk/device/DevicePickerListView;

    iget-object v1, v1, Lcom/connectsdk/device/DevicePickerListView;->pickerAdapter:Lcom/connectsdk/device/DevicePickerAdapter;

    iget-object v2, p0, Lcom/connectsdk/device/DevicePickerListView$2;->val$device:Lcom/connectsdk/device/ConnectableDevice;

    invoke-virtual {v1, v2, v0}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    return-void

    .line 10
    :cond_2
    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_3

    .line 11
    iget-object v1, p0, Lcom/connectsdk/device/DevicePickerListView$2;->this$0:Lcom/connectsdk/device/DevicePickerListView;

    iget-object v1, v1, Lcom/connectsdk/device/DevicePickerListView;->pickerAdapter:Lcom/connectsdk/device/DevicePickerAdapter;

    iget-object v3, p0, Lcom/connectsdk/device/DevicePickerListView$2;->val$device:Lcom/connectsdk/device/ConnectableDevice;

    invoke-virtual {v1, v3, v0}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    :goto_1
    if-ne v0, v2, :cond_5

    .line 12
    iget-object v0, p0, Lcom/connectsdk/device/DevicePickerListView$2;->this$0:Lcom/connectsdk/device/DevicePickerListView;

    iget-object v0, v0, Lcom/connectsdk/device/DevicePickerListView;->pickerAdapter:Lcom/connectsdk/device/DevicePickerAdapter;

    iget-object v1, p0, Lcom/connectsdk/device/DevicePickerListView$2;->val$device:Lcom/connectsdk/device/ConnectableDevice;

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method
