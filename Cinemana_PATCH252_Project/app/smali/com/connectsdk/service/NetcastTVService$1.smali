.class Lcom/connectsdk/service/NetcastTVService$1;
.super Ljava/lang/Object;
.source "NetcastTVService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/NetcastTVService;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/service/NetcastTVService;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/NetcastTVService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/NetcastTVService$1;->this$0:Lcom/connectsdk/service/NetcastTVService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/NetcastTVService$1;->this$0:Lcom/connectsdk/service/NetcastTVService;

    new-instance v1, Lcom/connectsdk/service/netcast/NetcastHttpServer;

    invoke-virtual {v0}, Lcom/connectsdk/service/DeviceService;->getServiceDescription()Lcom/connectsdk/service/config/ServiceDescription;

    move-result-object v2

    invoke-virtual {v2}, Lcom/connectsdk/service/config/ServiceDescription;->getPort()I

    move-result v2

    iget-object v3, p0, Lcom/connectsdk/service/NetcastTVService$1;->this$0:Lcom/connectsdk/service/NetcastTVService;

    invoke-static {v3}, Lcom/connectsdk/service/NetcastTVService;->access$000(Lcom/connectsdk/service/NetcastTVService;)Lcom/connectsdk/service/capability/listeners/ResponseListener;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/connectsdk/service/netcast/NetcastHttpServer;-><init>(Lcom/connectsdk/service/NetcastTVService;ILcom/connectsdk/service/capability/listeners/ResponseListener;)V

    iput-object v1, v0, Lcom/connectsdk/service/NetcastTVService;->httpServer:Lcom/connectsdk/service/netcast/NetcastHttpServer;

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/NetcastTVService$1;->this$0:Lcom/connectsdk/service/NetcastTVService;

    iget-object v1, v0, Lcom/connectsdk/service/NetcastTVService;->httpServer:Lcom/connectsdk/service/netcast/NetcastHttpServer;

    iget-object v0, v0, Lcom/connectsdk/service/NetcastTVService;->subscriptions:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/connectsdk/service/netcast/NetcastHttpServer;->setSubscriptions(Ljava/util/List;)V

    .line 3
    iget-object v0, p0, Lcom/connectsdk/service/NetcastTVService$1;->this$0:Lcom/connectsdk/service/NetcastTVService;

    iget-object v0, v0, Lcom/connectsdk/service/NetcastTVService;->httpServer:Lcom/connectsdk/service/netcast/NetcastHttpServer;

    invoke-virtual {v0}, Lcom/connectsdk/service/netcast/NetcastHttpServer;->start()V

    return-void
.end method
