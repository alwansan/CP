.class Lcom/connectsdk/service/WebOSTVService$2;
.super Ljava/lang/Object;
.source "WebOSTVService.java"

# interfaces
.implements Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$WebOSTVServiceSocketClientListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/connectsdk/service/WebOSTVService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/service/WebOSTVService;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/WebOSTVService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/WebOSTVService$2;->this$0:Lcom/connectsdk/service/WebOSTVService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeRegister(Lcom/connectsdk/service/DeviceService$PairingType;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/connectsdk/discovery/DiscoveryManager;->getInstance()Lcom/connectsdk/discovery/DiscoveryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/connectsdk/discovery/DiscoveryManager;->getPairingLevel()Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;

    move-result-object v0

    sget-object v1, Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;->ON:Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/connectsdk/service/WebOSTVService$2$4;

    invoke-direct {v0, p0, p1}, Lcom/connectsdk/service/WebOSTVService$2$4;-><init>(Lcom/connectsdk/service/WebOSTVService$2;Lcom/connectsdk/service/DeviceService$PairingType;)V

    invoke-static {v0}, Lcom/connectsdk/core/Util;->runOnUI(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onCloseWithError(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService$2;->this$0:Lcom/connectsdk/service/WebOSTVService;

    iget-object v0, v0, Lcom/connectsdk/service/WebOSTVService;->socket:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->setListener(Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$WebOSTVServiceSocketClientListener;)V

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService$2;->this$0:Lcom/connectsdk/service/WebOSTVService;

    iget-object v0, v0, Lcom/connectsdk/service/WebOSTVService;->socket:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;

    invoke-virtual {v0}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->disconnect()V

    .line 3
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService$2;->this$0:Lcom/connectsdk/service/WebOSTVService;

    iput-object v1, v0, Lcom/connectsdk/service/WebOSTVService;->socket:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;

    .line 4
    new-instance v0, Lcom/connectsdk/service/WebOSTVService$2$3;

    invoke-direct {v0, p0, p1}, Lcom/connectsdk/service/WebOSTVService$2$3;-><init>(Lcom/connectsdk/service/WebOSTVService$2;Lcom/connectsdk/service/command/ServiceCommandError;)V

    invoke-static {v0}, Lcom/connectsdk/core/Util;->runOnUI(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConnect()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService$2;->this$0:Lcom/connectsdk/service/WebOSTVService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/connectsdk/service/DeviceService;->reportConnected(Z)V

    return-void
.end method

.method public onFailWithError(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService$2;->this$0:Lcom/connectsdk/service/WebOSTVService;

    iget-object v0, v0, Lcom/connectsdk/service/WebOSTVService;->socket:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->setListener(Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$WebOSTVServiceSocketClientListener;)V

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService$2;->this$0:Lcom/connectsdk/service/WebOSTVService;

    iget-object v0, v0, Lcom/connectsdk/service/WebOSTVService;->socket:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;

    invoke-virtual {v0}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->disconnect()V

    .line 3
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService$2;->this$0:Lcom/connectsdk/service/WebOSTVService;

    iput-object v1, v0, Lcom/connectsdk/service/WebOSTVService;->socket:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;

    .line 4
    new-instance v0, Lcom/connectsdk/service/WebOSTVService$2$2;

    invoke-direct {v0, p0, p1}, Lcom/connectsdk/service/WebOSTVService$2$2;-><init>(Lcom/connectsdk/service/WebOSTVService$2;Lcom/connectsdk/service/command/ServiceCommandError;)V

    invoke-static {v0}, Lcom/connectsdk/core/Util;->runOnUI(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReceiveMessage(Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public onRegistrationFailed(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService$2;->this$0:Lcom/connectsdk/service/WebOSTVService;

    invoke-virtual {v0}, Lcom/connectsdk/service/WebOSTVService;->disconnect()V

    .line 2
    new-instance v0, Lcom/connectsdk/service/WebOSTVService$2$1;

    invoke-direct {v0, p0, p1}, Lcom/connectsdk/service/WebOSTVService$2$1;-><init>(Lcom/connectsdk/service/WebOSTVService$2;Lcom/connectsdk/service/command/ServiceCommandError;)V

    invoke-static {v0}, Lcom/connectsdk/core/Util;->runOnUI(Ljava/lang/Runnable;)V

    return-void
.end method
