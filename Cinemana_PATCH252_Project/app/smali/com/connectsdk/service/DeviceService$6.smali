.class Lcom/connectsdk/service/DeviceService$6;
.super Ljava/lang/Object;
.source "DeviceService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/DeviceService;->removeCapabilities(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/service/DeviceService;

.field public final synthetic val$capabilities:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/DeviceService;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/DeviceService$6;->this$0:Lcom/connectsdk/service/DeviceService;

    iput-object p2, p0, Lcom/connectsdk/service/DeviceService$6;->val$capabilities:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/DeviceService$6;->this$0:Lcom/connectsdk/service/DeviceService;

    iget-object v1, v0, Lcom/connectsdk/service/DeviceService;->listener:Lcom/connectsdk/service/DeviceService$DeviceServiceListener;

    if-eqz v1, :cond_0

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/connectsdk/service/DeviceService$6;->val$capabilities:Ljava/util/List;

    invoke-interface {v1, v0, v2, v3}, Lcom/connectsdk/service/DeviceService$DeviceServiceListener;->onCapabilitiesUpdated(Lcom/connectsdk/service/DeviceService;Ljava/util/List;Ljava/util/List;)V

    :cond_0
    return-void
.end method
