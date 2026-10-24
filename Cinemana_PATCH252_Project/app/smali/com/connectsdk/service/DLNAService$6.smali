.class Lcom/connectsdk/service/DLNAService$6;
.super Ljava/lang/Object;
.source "DLNAService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/DLNAService;->sendCommand(Lcom/connectsdk/service/command/ServiceCommand;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/service/DLNAService;

.field public final synthetic val$mCommand:Lcom/connectsdk/service/command/ServiceCommand;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/DLNAService;Lcom/connectsdk/service/command/ServiceCommand;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/DLNAService$6;->this$0:Lcom/connectsdk/service/DLNAService;

    iput-object p2, p0, Lcom/connectsdk/service/DLNAService$6;->val$mCommand:Lcom/connectsdk/service/command/ServiceCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/DLNAService$6;->val$mCommand:Lcom/connectsdk/service/command/ServiceCommand;

    .line 2
    invoke-virtual {v0}, Lcom/connectsdk/service/command/ServiceCommand;->getTarget()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lcom/connectsdk/service/command/ServiceCommand;->getPayload()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/connectsdk/service/command/ServiceCommand;->getResponseListener()Lcom/connectsdk/service/capability/listeners/ResponseListener;

    move-result-object v0

    const-string v1, "Cannot process the command, \"payload\" is missed"

    invoke-static {v3, v1, v4, v0}, Lcom/shabakaty/downloader/ww;->a(ILjava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void

    :cond_0
    const-string v5, "urn:schemas-upnp-org:service:AVTransport:1"

    .line 5
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, "urn:schemas-upnp-org:service:ConnectionManager:1"

    const-string v8, "urn:schemas-upnp-org:service:RenderingControl:1"

    if-eqz v6, :cond_1

    .line 6
    iget-object v6, p0, Lcom/connectsdk/service/DLNAService$6;->this$0:Lcom/connectsdk/service/DLNAService;

    iget-object v6, v6, Lcom/connectsdk/service/DLNAService;->avTransportURL:Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 8
    iget-object v5, p0, Lcom/connectsdk/service/DLNAService$6;->this$0:Lcom/connectsdk/service/DLNAService;

    iget-object v6, v5, Lcom/connectsdk/service/DLNAService;->renderingControlURL:Ljava/lang/String;

    move-object v5, v8

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 10
    iget-object v5, p0, Lcom/connectsdk/service/DLNAService$6;->this$0:Lcom/connectsdk/service/DLNAService;

    iget-object v6, v5, Lcom/connectsdk/service/DLNAService;->connectionControlURL:Ljava/lang/String;

    move-object v5, v7

    goto :goto_0

    :cond_3
    move-object v5, v4

    move-object v6, v5

    :goto_0
    if-nez v5, :cond_4

    .line 11
    invoke-virtual {v0}, Lcom/connectsdk/service/command/ServiceCommand;->getResponseListener()Lcom/connectsdk/service/capability/listeners/ResponseListener;

    move-result-object v0

    const-string v1, "Cannot process the command, \"serviceURN\" is missed"

    invoke-static {v3, v1, v4, v0}, Lcom/shabakaty/downloader/ww;->a(ILjava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void

    :cond_4
    if-nez v6, :cond_5

    .line 12
    invoke-virtual {v0}, Lcom/connectsdk/service/command/ServiceCommand;->getResponseListener()Lcom/connectsdk/service/capability/listeners/ResponseListener;

    move-result-object v0

    const-string v1, "Cannot process the command, \"targetURL\" is missed"

    invoke-static {v3, v1, v4, v0}, Lcom/shabakaty/downloader/ww;->a(ILjava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void

    .line 13
    :cond_5
    :try_start_0
    iget-object v7, p0, Lcom/connectsdk/service/DLNAService$6;->this$0:Lcom/connectsdk/service/DLNAService;

    invoke-virtual {v7, v6}, Lcom/connectsdk/service/DLNAService;->createHttpConnection(Ljava/lang/String;)Lcom/connectsdk/etc/helper/HttpConnection;

    move-result-object v6

    const-string v7, "Content-Type"

    const-string v8, "text/xml; charset=utf-8"

    .line 14
    invoke-virtual {v6, v7, v8}, Lcom/connectsdk/etc/helper/HttpConnection;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "SOAPAction"

    const-string v8, "\"%s#%s\""

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v5, v9, v3

    const/4 v5, 0x1

    aput-object v1, v9, v5

    .line 15
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v7, v1}, Lcom/connectsdk/etc/helper/HttpConnection;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-object v1, Lcom/connectsdk/etc/helper/HttpConnection$Method;->POST:Lcom/connectsdk/etc/helper/HttpConnection$Method;

    invoke-virtual {v6, v1}, Lcom/connectsdk/etc/helper/HttpConnection;->setMethod(Lcom/connectsdk/etc/helper/HttpConnection$Method;)V

    .line 17
    invoke-virtual {v6, v2}, Lcom/connectsdk/etc/helper/HttpConnection;->setPayload(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v6}, Lcom/connectsdk/etc/helper/HttpConnection;->execute()V

    .line 19
    invoke-virtual {v6}, Lcom/connectsdk/etc/helper/HttpConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_6

    .line 20
    invoke-virtual {v0}, Lcom/connectsdk/service/command/ServiceCommand;->getResponseListener()Lcom/connectsdk/service/capability/listeners/ResponseListener;

    move-result-object v1

    invoke-virtual {v6}, Lcom/connectsdk/etc/helper/HttpConnection;->getResponseString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    goto :goto_1

    .line 21
    :cond_6
    invoke-virtual {v0}, Lcom/connectsdk/service/command/ServiceCommand;->getResponseListener()Lcom/connectsdk/service/capability/listeners/ResponseListener;

    move-result-object v2

    invoke-static {v1}, Lcom/connectsdk/service/command/ServiceCommandError;->getError(I)Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 22
    invoke-virtual {v0}, Lcom/connectsdk/service/command/ServiceCommand;->getResponseListener()Lcom/connectsdk/service/capability/listeners/ResponseListener;

    move-result-object v0

    new-instance v2, Lcom/connectsdk/service/command/ServiceCommandError;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1, v4}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, v2}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    :goto_1
    return-void
.end method
