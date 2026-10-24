.class Lcom/connectsdk/service/DLNAService$15;
.super Ljava/lang/Object;
.source "DLNAService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/DLNAService;->unsubscribeServices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/service/DLNAService;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/DLNAService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/DLNAService$15;->this$0:Lcom/connectsdk/service/DLNAService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/DLNAService$15;->this$0:Lcom/connectsdk/service/DLNAService;

    iget-object v0, v0, Lcom/connectsdk/service/DeviceService;->serviceDescription:Lcom/connectsdk/service/config/ServiceDescription;

    invoke-virtual {v0}, Lcom/connectsdk/service/config/ServiceDescription;->getServiceList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3
    iget-object v2, p0, Lcom/connectsdk/service/DLNAService$15;->this$0:Lcom/connectsdk/service/DLNAService;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/connectsdk/discovery/provider/ssdp/Service;

    iget-object v3, v3, Lcom/connectsdk/discovery/provider/ssdp/Service;->eventSubURL:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v2, v4, v3}, Lcom/connectsdk/service/DLNAService;->makeControlURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/connectsdk/service/DLNAService$15;->this$0:Lcom/connectsdk/service/DLNAService;

    iget-object v2, v2, Lcom/connectsdk/service/DLNAService;->SIDList:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/connectsdk/discovery/provider/ssdp/Service;

    iget-object v3, v3, Lcom/connectsdk/discovery/provider/ssdp/Service;->serviceType:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    :try_start_0
    new-instance v3, Ljava/net/URI;

    const-string v6, "http"

    const-string v7, ""

    iget-object v4, p0, Lcom/connectsdk/service/DLNAService$15;->this$0:Lcom/connectsdk/service/DLNAService;

    iget-object v4, v4, Lcom/connectsdk/service/DeviceService;->serviceDescription:Lcom/connectsdk/service/config/ServiceDescription;

    .line 6
    invoke-virtual {v4}, Lcom/connectsdk/service/config/ServiceDescription;->getIpAddress()Ljava/lang/String;

    move-result-object v8

    iget-object v4, p0, Lcom/connectsdk/service/DLNAService$15;->this$0:Lcom/connectsdk/service/DLNAService;

    iget-object v4, v4, Lcom/connectsdk/service/DeviceService;->serviceDescription:Lcom/connectsdk/service/config/ServiceDescription;

    invoke-virtual {v4}, Lcom/connectsdk/service/config/ServiceDescription;->getPort()I

    move-result v9

    const-string v11, ""

    const-string v12, ""

    move-object v5, v3

    invoke-direct/range {v5 .. v12}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {v3}, Lcom/connectsdk/etc/helper/HttpConnection;->newSubscriptionInstance(Ljava/net/URI;)Lcom/connectsdk/etc/helper/HttpConnection;

    move-result-object v3

    .line 8
    sget-object v4, Lcom/connectsdk/etc/helper/HttpConnection$Method;->UNSUBSCRIBE:Lcom/connectsdk/etc/helper/HttpConnection$Method;

    invoke-virtual {v3, v4}, Lcom/connectsdk/etc/helper/HttpConnection;->setMethod(Lcom/connectsdk/etc/helper/HttpConnection$Method;)V

    const-string v4, "SID"

    .line 9
    invoke-virtual {v3, v4, v2}, Lcom/connectsdk/etc/helper/HttpConnection;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v3}, Lcom/connectsdk/etc/helper/HttpConnection;->execute()V

    .line 11
    invoke-virtual {v3}, Lcom/connectsdk/etc/helper/HttpConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    .line 12
    iget-object v2, p0, Lcom/connectsdk/service/DLNAService$15;->this$0:Lcom/connectsdk/service/DLNAService;

    iget-object v2, v2, Lcom/connectsdk/service/DLNAService;->SIDList:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/connectsdk/discovery/provider/ssdp/Service;

    iget-object v3, v3, Lcom/connectsdk/discovery/provider/ssdp/Service;->serviceType:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 13
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
