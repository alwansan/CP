.class Lcom/connectsdk/device/ConnectableDevice$1;
.super Ljava/lang/Object;
.source "ConnectableDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/device/ConnectableDevice;->addService(Lcom/connectsdk/service/DeviceService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/device/ConnectableDevice;

.field public final synthetic val$added:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/connectsdk/device/ConnectableDevice;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/device/ConnectableDevice$1;->this$0:Lcom/connectsdk/device/ConnectableDevice;

    iput-object p2, p0, Lcom/connectsdk/device/ConnectableDevice$1;->val$added:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/connectsdk/device/ConnectableDevice$1;->this$0:Lcom/connectsdk/device/ConnectableDevice;

    iget-object v0, v0, Lcom/connectsdk/device/ConnectableDevice;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/connectsdk/device/ConnectableDeviceListener;

    .line 2
    iget-object v2, p0, Lcom/connectsdk/device/ConnectableDevice$1;->this$0:Lcom/connectsdk/device/ConnectableDevice;

    iget-object v3, p0, Lcom/connectsdk/device/ConnectableDevice$1;->val$added:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2, v3, v4}, Lcom/connectsdk/device/ConnectableDeviceListener;->onCapabilityUpdated(Lcom/connectsdk/device/ConnectableDevice;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method
