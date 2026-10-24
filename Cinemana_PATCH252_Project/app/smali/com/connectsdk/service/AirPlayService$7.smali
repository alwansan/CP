.class Lcom/connectsdk/service/AirPlayService$7;
.super Ljava/lang/Object;
.source "AirPlayService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/AirPlayService;->sendCommand(Lcom/connectsdk/service/command/ServiceCommand;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/service/AirPlayService;

.field public final synthetic val$serviceCommand:Lcom/connectsdk/service/command/ServiceCommand;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/AirPlayService;Lcom/connectsdk/service/command/ServiceCommand;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/AirPlayService$7;->this$0:Lcom/connectsdk/service/AirPlayService;

    iput-object p2, p0, Lcom/connectsdk/service/AirPlayService$7;->val$serviceCommand:Lcom/connectsdk/service/command/ServiceCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "POST"

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/connectsdk/service/AirPlayService$7;->this$0:Lcom/connectsdk/service/AirPlayService;

    iget-object v2, v2, Lcom/connectsdk/service/DeviceService;->serviceDescription:Lcom/connectsdk/service/config/ServiceDescription;

    invoke-virtual {v2}, Lcom/connectsdk/service/config/ServiceDescription;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/connectsdk/service/AirPlayService$7;->this$0:Lcom/connectsdk/service/AirPlayService;

    iget-object v2, v2, Lcom/connectsdk/service/DeviceService;->serviceDescription:Lcom/connectsdk/service/config/ServiceDescription;

    invoke-virtual {v2}, Lcom/connectsdk/service/config/ServiceDescription;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3
    iget-object v2, p0, Lcom/connectsdk/service/AirPlayService$7;->val$serviceCommand:Lcom/connectsdk/service/command/ServiceCommand;

    invoke-virtual {v2}, Lcom/connectsdk/service/command/ServiceCommand;->getTarget()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-static {v1}, Lcom/connectsdk/etc/helper/HttpConnection;->newInstance(Ljava/net/URI;)Lcom/connectsdk/etc/helper/HttpConnection;

    move-result-object v1

    const-string v2, "User-Agent"

    const-string v3, "ConnectSDK MediaControl/1.0"

    .line 5
    invoke-virtual {v1, v2, v3}, Lcom/connectsdk/etc/helper/HttpConnection;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "X-Apple-Session-ID"

    .line 6
    iget-object v3, p0, Lcom/connectsdk/service/AirPlayService$7;->this$0:Lcom/connectsdk/service/AirPlayService;

    invoke-static {v3}, Lcom/connectsdk/service/AirPlayService;->access$300(Lcom/connectsdk/service/AirPlayService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/connectsdk/etc/helper/HttpConnection;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/connectsdk/service/AirPlayService$7;->this$0:Lcom/connectsdk/service/AirPlayService;

    iget-object v3, v2, Lcom/connectsdk/service/AirPlayService;->password:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 8
    iget-object v3, p0, Lcom/connectsdk/service/AirPlayService$7;->val$serviceCommand:Lcom/connectsdk/service/command/ServiceCommand;

    invoke-virtual {v3}, Lcom/connectsdk/service/command/ServiceCommand;->getHttpMethod()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/connectsdk/service/AirPlayService$7;->val$serviceCommand:Lcom/connectsdk/service/command/ServiceCommand;

    invoke-virtual {v4}, Lcom/connectsdk/service/command/ServiceCommand;->getTarget()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/connectsdk/service/AirPlayService$7;->this$0:Lcom/connectsdk/service/AirPlayService;

    iget-object v5, v5, Lcom/connectsdk/service/AirPlayService;->authenticate:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/connectsdk/service/AirPlayService;->getAuthenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Authorization"

    .line 9
    invoke-virtual {v1, v3, v2}, Lcom/connectsdk/etc/helper/HttpConnection;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_0
    iget-object v2, p0, Lcom/connectsdk/service/AirPlayService$7;->val$serviceCommand:Lcom/connectsdk/service/command/ServiceCommand;

    invoke-virtual {v2}, Lcom/connectsdk/service/command/ServiceCommand;->getPayload()Ljava/lang/Object;

    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/connectsdk/service/AirPlayService$7;->val$serviceCommand:Lcom/connectsdk/service/command/ServiceCommand;

    invoke-virtual {v3}, Lcom/connectsdk/service/command/ServiceCommand;->getHttpMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "PUT"

    if-nez v3, :cond_1

    :try_start_1
    iget-object v3, p0, Lcom/connectsdk/service/AirPlayService$7;->val$serviceCommand:Lcom/connectsdk/service/command/ServiceCommand;

    .line 12
    invoke-virtual {v3}, Lcom/connectsdk/service/command/ServiceCommand;->getHttpMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    if-eqz v2, :cond_3

    .line 13
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_2

    const-string v3, "Content-Type"

    const-string v5, "application/x-apple-binary-plist"

    .line 14
    invoke-virtual {v1, v3, v5}, Lcom/connectsdk/etc/helper/HttpConnection;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/connectsdk/etc/helper/HttpConnection;->setPayload(Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_2
    instance-of v3, v2, [B

    if-eqz v3, :cond_3

    .line 17
    check-cast v2, [B

    invoke-virtual {v1, v2}, Lcom/connectsdk/etc/helper/HttpConnection;->setPayload([B)V

    .line 18
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/connectsdk/service/AirPlayService$7;->val$serviceCommand:Lcom/connectsdk/service/command/ServiceCommand;

    invoke-virtual {v2}, Lcom/connectsdk/service/command/ServiceCommand;->getHttpMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19
    sget-object v0, Lcom/connectsdk/etc/helper/HttpConnection$Method;->POST:Lcom/connectsdk/etc/helper/HttpConnection$Method;

    invoke-virtual {v1, v0}, Lcom/connectsdk/etc/helper/HttpConnection;->setMethod(Lcom/connectsdk/etc/helper/HttpConnection$Method;)V

    goto :goto_1

    .line 20
    :cond_4
    iget-object v0, p0, Lcom/connectsdk/service/AirPlayService$7;->val$serviceCommand:Lcom/connectsdk/service/command/ServiceCommand;

    invoke-virtual {v0}, Lcom/connectsdk/service/command/ServiceCommand;->getHttpMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 21
    sget-object v0, Lcom/connectsdk/etc/helper/HttpConnection$Method;->PUT:Lcom/connectsdk/etc/helper/HttpConnection$Method;

    invoke-virtual {v1, v0}, Lcom/connectsdk/etc/helper/HttpConnection;->setMethod(Lcom/connectsdk/etc/helper/HttpConnection$Method;)V

    goto :goto_1

    :cond_5
    const-string v0, "Content-Length"

    const-string v2, "0"

    .line 22
    invoke-virtual {v1, v0, v2}, Lcom/connectsdk/etc/helper/HttpConnection;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :goto_1
    invoke-virtual {v1}, Lcom/connectsdk/etc/helper/HttpConnection;->execute()V

    .line 24
    invoke-virtual {v1}, Lcom/connectsdk/etc/helper/HttpConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_6

    .line 25
    iget-object v0, p0, Lcom/connectsdk/service/AirPlayService$7;->val$serviceCommand:Lcom/connectsdk/service/command/ServiceCommand;

    invoke-virtual {v0}, Lcom/connectsdk/service/command/ServiceCommand;->getResponseListener()Lcom/connectsdk/service/capability/listeners/ResponseListener;

    move-result-object v0

    invoke-virtual {v1}, Lcom/connectsdk/etc/helper/HttpConnection;->getResponseString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    const/16 v2, 0x191

    if-ne v0, v2, :cond_7

    .line 26
    iget-object v0, p0, Lcom/connectsdk/service/AirPlayService$7;->this$0:Lcom/connectsdk/service/AirPlayService;

    const-string v2, "WWW-Authenticate"

    invoke-virtual {v1, v2}, Lcom/connectsdk/etc/helper/HttpConnection;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/connectsdk/service/AirPlayService;->authenticate:Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lcom/connectsdk/service/AirPlayService$7;->this$0:Lcom/connectsdk/service/AirPlayService;

    iget-object v1, p0, Lcom/connectsdk/service/AirPlayService$7;->val$serviceCommand:Lcom/connectsdk/service/command/ServiceCommand;

    iput-object v1, v0, Lcom/connectsdk/service/AirPlayService;->pendingCommand:Lcom/connectsdk/service/command/ServiceCommand;

    .line 28
    new-instance v0, Lcom/connectsdk/service/AirPlayService$7$1;

    invoke-direct {v0, p0}, Lcom/connectsdk/service/AirPlayService$7$1;-><init>(Lcom/connectsdk/service/AirPlayService$7;)V

    invoke-static {v0}, Lcom/connectsdk/core/Util;->runOnUI(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 29
    :cond_7
    iget-object v1, p0, Lcom/connectsdk/service/AirPlayService$7;->val$serviceCommand:Lcom/connectsdk/service/command/ServiceCommand;

    invoke-virtual {v1}, Lcom/connectsdk/service/command/ServiceCommand;->getResponseListener()Lcom/connectsdk/service/capability/listeners/ResponseListener;

    move-result-object v1

    invoke-static {v0}, Lcom/connectsdk/service/command/ServiceCommandError;->getError(I)Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 31
    iget-object v1, p0, Lcom/connectsdk/service/AirPlayService$7;->val$serviceCommand:Lcom/connectsdk/service/command/ServiceCommand;

    invoke-virtual {v1}, Lcom/connectsdk/service/command/ServiceCommand;->getResponseListener()Lcom/connectsdk/service/capability/listeners/ResponseListener;

    move-result-object v1

    new-instance v2, Lcom/connectsdk/service/command/ServiceCommandError;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    :goto_2
    return-void
.end method
