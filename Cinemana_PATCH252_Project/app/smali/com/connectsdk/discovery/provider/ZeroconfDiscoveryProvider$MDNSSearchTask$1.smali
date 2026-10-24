.class Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider$MDNSSearchTask$1;
.super Ljava/lang/Object;
.source "ZeroconfDiscoveryProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider$MDNSSearchTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider$MDNSSearchTask;

.field public final synthetic val$service:Lcom/connectsdk/service/config/ServiceDescription;


# direct methods
.method public constructor <init>(Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider$MDNSSearchTask;Lcom/connectsdk/service/config/ServiceDescription;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider$MDNSSearchTask$1;->this$1:Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider$MDNSSearchTask;

    iput-object p2, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider$MDNSSearchTask$1;->val$service:Lcom/connectsdk/service/config/ServiceDescription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider$MDNSSearchTask$1;->this$1:Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider$MDNSSearchTask;

    iget-object v0, v0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider$MDNSSearchTask;->this$0:Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;

    iget-object v0, v0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;->serviceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/connectsdk/discovery/DiscoveryProviderListener;

    .line 2
    iget-object v2, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider$MDNSSearchTask$1;->this$1:Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider$MDNSSearchTask;

    iget-object v2, v2, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider$MDNSSearchTask;->this$0:Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;

    iget-object v3, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider$MDNSSearchTask$1;->val$service:Lcom/connectsdk/service/config/ServiceDescription;

    invoke-interface {v1, v2, v3}, Lcom/connectsdk/discovery/DiscoveryProviderListener;->onServiceRemoved(Lcom/connectsdk/discovery/DiscoveryProvider;Lcom/connectsdk/service/config/ServiceDescription;)V

    goto :goto_0

    :cond_0
    return-void
.end method
