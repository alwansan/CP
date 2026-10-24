.class Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider$1;
.super Ljava/lang/Object;
.source "ZeroconfDiscoveryProvider.java"

# interfaces
.implements Lcom/shabakaty/downloader/m14;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;


# direct methods
.method public constructor <init>(Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider$1;->this$0:Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceAdded(Lcom/shabakaty/downloader/h14;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider$1;->this$0:Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;

    iget-object v0, v0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;->jmdns:Lcom/shabakaty/downloader/b92;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/h14;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/h14;->e()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/shabakaty/downloader/b92;->x(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public serviceRemoved(Lcom/shabakaty/downloader/h14;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/h14;->c()Lcom/shabakaty/downloader/j14;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/j14;->g()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider$1;->this$0:Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;

    iget-object v0, v0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;->foundServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/connectsdk/service/config/ServiceDescription;

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider$1$1;

    invoke-direct {v0, p0, p1}, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider$1$1;-><init>(Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider$1;Lcom/connectsdk/service/config/ServiceDescription;)V

    invoke-static {v0}, Lcom/connectsdk/core/Util;->runOnUI(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public serviceResolved(Lcom/shabakaty/downloader/h14;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/h14;->c()Lcom/shabakaty/downloader/j14;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/j14;->g()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/connectsdk/core/Util;->isIPv4Address(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/h14;->c()Lcom/shabakaty/downloader/j14;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/j14;->j()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/h14;->c()Lcom/shabakaty/downloader/j14;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shabakaty/downloader/j14;->k()I

    move-result v2

    .line 5
    iget-object v3, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider$1;->this$0:Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;

    iget-object v3, v3, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;->foundServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/connectsdk/service/config/ServiceDescription;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_2

    .line 6
    new-instance v3, Lcom/connectsdk/service/config/ServiceDescription;

    invoke-direct {v3}, Lcom/connectsdk/service/config/ServiceDescription;-><init>()V

    .line 7
    invoke-virtual {v3, v0}, Lcom/connectsdk/service/config/ServiceDescription;->setUUID(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/shabakaty/downloader/h14;->c()Lcom/shabakaty/downloader/j14;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shabakaty/downloader/j14;->s()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/connectsdk/service/config/ServiceDescription;->setServiceFilter(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v3, v0}, Lcom/connectsdk/service/config/ServiceDescription;->setIpAddress(Ljava/lang/String;)V

    .line 10
    iget-object v4, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider$1;->this$0:Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/h14;->c()Lcom/shabakaty/downloader/j14;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/j14;->s()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;->serviceIdForFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/connectsdk/service/config/ServiceDescription;->setServiceID(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v3, v2}, Lcom/connectsdk/service/config/ServiceDescription;->setPort(I)V

    .line 12
    invoke-virtual {v3, v1}, Lcom/connectsdk/service/config/ServiceDescription;->setFriendlyName(Ljava/lang/String;)V

    :goto_1
    const/4 v4, 0x1

    goto :goto_2

    .line 13
    :cond_2
    invoke-virtual {v3}, Lcom/connectsdk/service/config/ServiceDescription;->getFriendlyName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 14
    invoke-virtual {v3, v1}, Lcom/connectsdk/service/config/ServiceDescription;->setFriendlyName(Ljava/lang/String;)V

    goto :goto_1

    .line 15
    :cond_3
    :goto_2
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Lcom/connectsdk/service/config/ServiceDescription;->setLastDetection(J)V

    .line 16
    iget-object p1, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider$1;->this$0:Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;

    iget-object p1, p1, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;->foundServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_4

    .line 17
    iget-object p1, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider$1;->this$0:Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;

    iget-object p1, p1, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;->serviceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/connectsdk/discovery/DiscoveryProviderListener;

    .line 18
    iget-object v1, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider$1;->this$0:Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;

    invoke-interface {v0, v1, v3}, Lcom/connectsdk/discovery/DiscoveryProviderListener;->onServiceAdded(Lcom/connectsdk/discovery/DiscoveryProvider;Lcom/connectsdk/service/config/ServiceDescription;)V

    goto :goto_3

    :cond_4
    return-void
.end method
