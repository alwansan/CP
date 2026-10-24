.class Lcom/connectsdk/device/DevicePickerListView$1;
.super Ljava/lang/Object;
.source "DevicePickerListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/device/DevicePickerListView;->onDiscoveryFailed(Lcom/connectsdk/discovery/DiscoveryManager;Lcom/connectsdk/service/command/ServiceCommandError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/device/DevicePickerListView;


# direct methods
.method public constructor <init>(Lcom/connectsdk/device/DevicePickerListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/device/DevicePickerListView$1;->this$0:Lcom/connectsdk/device/DevicePickerListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/device/DevicePickerListView$1;->this$0:Lcom/connectsdk/device/DevicePickerListView;

    iget-object v0, v0, Lcom/connectsdk/device/DevicePickerListView;->pickerAdapter:Lcom/connectsdk/device/DevicePickerAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    return-void
.end method
