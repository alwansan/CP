.class Lcom/connectsdk/service/NetcastTVService$3;
.super Ljava/lang/Object;
.source "NetcastTVService.java"

# interfaces
.implements Lcom/connectsdk/service/capability/listeners/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/NetcastTVService;->showPairingKeyOnTV()V
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
.field public final synthetic this$0:Lcom/connectsdk/service/NetcastTVService;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/NetcastTVService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/NetcastTVService$3;->this$0:Lcom/connectsdk/service/NetcastTVService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/NetcastTVService$3;->this$0:Lcom/connectsdk/service/NetcastTVService;

    sget-object v1, Lcom/connectsdk/service/NetcastTVService$State;->INITIAL:Lcom/connectsdk/service/NetcastTVService$State;

    iput-object v1, v0, Lcom/connectsdk/service/NetcastTVService;->state:Lcom/connectsdk/service/NetcastTVService$State;

    .line 2
    iget-object v1, v0, Lcom/connectsdk/service/DeviceService;->listener:Lcom/connectsdk/service/DeviceService$DeviceServiceListener;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1, v0, p1}, Lcom/connectsdk/service/DeviceService$DeviceServiceListener;->onConnectionFailure(Lcom/connectsdk/service/DeviceService;Ljava/lang/Error;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/connectsdk/service/NetcastTVService$3;->this$0:Lcom/connectsdk/service/NetcastTVService;

    iget-object v0, p1, Lcom/connectsdk/service/DeviceService;->listener:Lcom/connectsdk/service/DeviceService$DeviceServiceListener;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p1, Lcom/connectsdk/service/DeviceService;->pairingType:Lcom/connectsdk/service/DeviceService$PairingType;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/connectsdk/service/DeviceService$DeviceServiceListener;->onPairingRequired(Lcom/connectsdk/service/DeviceService;Lcom/connectsdk/service/DeviceService$PairingType;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
