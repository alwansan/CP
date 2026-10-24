.class Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$2;
.super Ljava/lang/Object;
.source "WebOSTVServiceSocketClient.java"

# interfaces
.implements Lcom/connectsdk/service/capability/listeners/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->sendRegister()V
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
.field public final synthetic this$0:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$2;->this$0:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$2;->this$0:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;

    sget-object v1, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$State;->INITIAL:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$State;

    iput-object v1, v0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->state:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$State;

    .line 2
    iget-object v0, v0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mListener:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$WebOSTVServiceSocketClientListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$WebOSTVServiceSocketClientListener;->onRegistrationFailed(Lcom/connectsdk/service/command/ServiceCommandError;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "pairingType"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$2;->this$0:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;

    invoke-static {v0, p1}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->access$000(Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;Ljava/lang/String;)Lcom/connectsdk/service/DeviceService$PairingType;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$2;->this$0:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;

    iget-object v0, v0, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient;->mListener:Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$WebOSTVServiceSocketClientListener;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$WebOSTVServiceSocketClientListener;->onBeforeRegister(Lcom/connectsdk/service/DeviceService$PairingType;)V

    :cond_0
    return-void
.end method
