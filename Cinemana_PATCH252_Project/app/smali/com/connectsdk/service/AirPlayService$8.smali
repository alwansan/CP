.class Lcom/connectsdk/service/AirPlayService$8;
.super Ljava/lang/Object;
.source "AirPlayService.java"

# interfaces
.implements Lcom/connectsdk/service/capability/listeners/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/AirPlayService;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/service/AirPlayService;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/AirPlayService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/AirPlayService$8;->this$0:Lcom/connectsdk/service/AirPlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/AirPlayService$8;->this$0:Lcom/connectsdk/service/AirPlayService;

    iget-object v1, v0, Lcom/connectsdk/service/DeviceService;->listener:Lcom/connectsdk/service/DeviceService$DeviceServiceListener;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1, v0, p1}, Lcom/connectsdk/service/DeviceService$DeviceServiceListener;->onConnectionFailure(Lcom/connectsdk/service/DeviceService;Ljava/lang/Error;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/connectsdk/service/AirPlayService$8;->this$0:Lcom/connectsdk/service/AirPlayService;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/connectsdk/service/DeviceService;->connected:Z

    .line 2
    invoke-virtual {p1, v0}, Lcom/connectsdk/service/DeviceService;->reportConnected(Z)V

    return-void
.end method
