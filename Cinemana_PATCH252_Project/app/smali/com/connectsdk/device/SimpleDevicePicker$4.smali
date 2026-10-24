.class Lcom/connectsdk/device/SimpleDevicePicker$4;
.super Ljava/lang/Object;
.source "SimpleDevicePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/device/SimpleDevicePicker;->pickFailed(Lcom/connectsdk/device/ConnectableDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/device/SimpleDevicePicker;

.field public final synthetic val$device:Lcom/connectsdk/device/ConnectableDevice;


# direct methods
.method public constructor <init>(Lcom/connectsdk/device/SimpleDevicePicker;Lcom/connectsdk/device/ConnectableDevice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/device/SimpleDevicePicker$4;->this$0:Lcom/connectsdk/device/SimpleDevicePicker;

    iput-object p2, p0, Lcom/connectsdk/device/SimpleDevicePicker$4;->val$device:Lcom/connectsdk/device/ConnectableDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/connectsdk/device/SimpleDevicePicker$4;->this$0:Lcom/connectsdk/device/SimpleDevicePicker;

    iget-object v1, v0, Lcom/connectsdk/device/SimpleDevicePicker;->pendingDevice:Lcom/connectsdk/device/ConnectableDevice;

    iget-object v2, p0, Lcom/connectsdk/device/SimpleDevicePicker$4;->val$device:Lcom/connectsdk/device/ConnectableDevice;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 2
    iget-object v0, v0, Lcom/connectsdk/device/SimpleDevicePicker;->listener:Lcom/connectsdk/device/SimpleDevicePickerListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, v3}, Lcom/connectsdk/device/SimpleDevicePickerListener;->onPickDeviceFailed(Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/connectsdk/device/SimpleDevicePicker$4;->this$0:Lcom/connectsdk/device/SimpleDevicePicker;

    invoke-virtual {v0}, Lcom/connectsdk/device/SimpleDevicePicker;->cleanupPending()V

    .line 5
    iget-object v0, p0, Lcom/connectsdk/device/SimpleDevicePicker$4;->this$0:Lcom/connectsdk/device/SimpleDevicePicker;

    iget-object v1, v0, Lcom/connectsdk/device/SimpleDevicePicker;->activity:Landroid/app/Activity;

    iget v0, v0, Lcom/connectsdk/device/SimpleDevicePicker;->connectionFailedResId:I

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
