.class Lcom/connectsdk/service/sessions/WebOSWebAppSession$1;
.super Ljava/lang/Object;
.source "WebOSWebAppSession.java"

# interfaces
.implements Lcom/connectsdk/service/webos/WebOSTVServiceSocketClient$WebOSTVServiceSocketClientListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/connectsdk/service/sessions/WebOSWebAppSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/service/sessions/WebOSWebAppSession;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/sessions/WebOSWebAppSession;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$1;->this$0:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeRegister(Lcom/connectsdk/service/DeviceService$PairingType;)V
    .locals 0

    return-void
.end method

.method public onCloseWithError(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$1;->this$0:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->access$002(Lcom/connectsdk/service/sessions/WebOSWebAppSession;Z)Z

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$1;->this$0:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->appToAppSubscription:Lcom/connectsdk/service/command/URLServiceSubscription;

    .line 3
    iget-object v2, v0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mConnectionListener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {v2, p1}, Lcom/connectsdk/service/capability/listeners/ErrorListener;->onError(Lcom/connectsdk/service/command/ServiceCommandError;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/connectsdk/service/sessions/WebAppSession;->getWebAppSessionListener()Lcom/connectsdk/service/sessions/WebAppSessionListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$1;->this$0:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    invoke-virtual {p1}, Lcom/connectsdk/service/sessions/WebAppSession;->getWebAppSessionListener()Lcom/connectsdk/service/sessions/WebAppSessionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$1;->this$0:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    .line 7
    invoke-interface {p1, v0}, Lcom/connectsdk/service/sessions/WebAppSessionListener;->onWebAppSessionDisconnect(Lcom/connectsdk/service/sessions/WebAppSession;)V

    .line 8
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$1;->this$0:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    iput-object v1, p1, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mConnectionListener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    return-void
.end method

.method public onConnect()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$1;->this$0:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    iget-object v0, v0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mConnectionListener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, v1}, Lcom/connectsdk/service/capability/listeners/ResponseListener;->onSuccess(Ljava/lang/Object;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$1;->this$0:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    iput-object v1, v0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mConnectionListener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    return-void
.end method

.method public onFailWithError(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$1;->this$0:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->access$002(Lcom/connectsdk/service/sessions/WebOSWebAppSession;Z)Z

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$1;->this$0:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->appToAppSubscription:Lcom/connectsdk/service/command/URLServiceSubscription;

    .line 3
    iget-object v0, v0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mConnectionListener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommandError;

    const-string v0, "Unknown error connecting to web socket"

    invoke-direct {p1, v1, v0, v2}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$1;->this$0:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    iget-object v0, v0, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mConnectionListener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    invoke-interface {v0, p1}, Lcom/connectsdk/service/capability/listeners/ErrorListener;->onError(Lcom/connectsdk/service/command/ServiceCommandError;)V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$1;->this$0:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    iput-object v2, p1, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->mConnectionListener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    return-void
.end method

.method public onReceiveMessage(Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 3

    const-string v0, "type"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "p2p"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "from"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$1;->this$0:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    invoke-virtual {v1}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->getFullAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    const-string v0, "payload"

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_7

    .line 8
    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "contentType"

    .line 9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "connectsdk."

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_6

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "media-error"

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 16
    iget-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$1;->this$0:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    invoke-virtual {v0, p1}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->handleMediaEvent(Lorg/json/JSONObject;)V

    .line 17
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_2
    if-nez v1, :cond_3

    .line 18
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_3
    const-string p1, "mediaEvent"

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 20
    iget-object p1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$1;->this$0:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    invoke-virtual {p1, v1}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->handleMediaEvent(Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_4
    const-string p1, "mediaCommandResponse"

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 22
    iget-object p1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$1;->this$0:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    invoke-virtual {p1, v1}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->handleMediaCommandResponse(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 23
    :cond_5
    :goto_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 24
    :cond_6
    iget-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$1;->this$0:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    invoke-virtual {v0, p1}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->handleMessage(Ljava/lang/Object;)V

    goto :goto_1

    .line 25
    :cond_7
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 26
    iget-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$1;->this$0:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    invoke-virtual {v0, p1}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->handleMessage(Ljava/lang/Object;)V

    .line 27
    :cond_8
    :goto_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 28
    :cond_9
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public onRegistrationFailed(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 0

    return-void
.end method
