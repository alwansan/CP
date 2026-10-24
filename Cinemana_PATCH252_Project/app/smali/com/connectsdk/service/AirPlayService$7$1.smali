.class Lcom/connectsdk/service/AirPlayService$7$1;
.super Ljava/lang/Object;
.source "AirPlayService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/AirPlayService$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/connectsdk/service/AirPlayService$7;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/AirPlayService$7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/AirPlayService$7$1;->this$1:Lcom/connectsdk/service/AirPlayService$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/AirPlayService$7$1;->this$1:Lcom/connectsdk/service/AirPlayService$7;

    iget-object v0, v0, Lcom/connectsdk/service/AirPlayService$7;->this$0:Lcom/connectsdk/service/AirPlayService;

    iget-object v1, v0, Lcom/connectsdk/service/DeviceService;->listener:Lcom/connectsdk/service/DeviceService$DeviceServiceListener;

    if-eqz v1, :cond_0

    .line 2
    iget-object v2, v0, Lcom/connectsdk/service/DeviceService;->pairingType:Lcom/connectsdk/service/DeviceService$PairingType;

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/connectsdk/service/DeviceService$DeviceServiceListener;->onPairingRequired(Lcom/connectsdk/service/DeviceService;Lcom/connectsdk/service/DeviceService$PairingType;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
