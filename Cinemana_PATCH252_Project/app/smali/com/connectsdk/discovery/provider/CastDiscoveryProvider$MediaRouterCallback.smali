.class Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$MediaRouterCallback;
.super Landroidx/mediarouter/media/g$b;
.source "CastDiscoveryProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;


# direct methods
.method private constructor <init>(Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$MediaRouterCallback;->this$0:Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;

    invoke-direct {p0}, Landroidx/mediarouter/media/g$b;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$MediaRouterCallback;-><init>(Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$MediaRouterCallback;Landroidx/mediarouter/media/g$h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$MediaRouterCallback;->removeServices(Landroidx/mediarouter/media/g$h;)V

    return-void
.end method

.method private removeServices(Landroidx/mediarouter/media/g$h;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$MediaRouterCallback;->this$0:Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;

    invoke-static {v0}, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->access$300(Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    iget-object v2, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$MediaRouterCallback;->this$0:Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;

    iget-object v2, v2, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->foundServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/connectsdk/service/config/ServiceDescription;

    if-eqz v2, :cond_0

    .line 3
    sget-object v3, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    const-string v4, "Service ["

    invoke-static {v4}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4
    iget-object v5, p1, Landroidx/mediarouter/media/g$h;->d:Ljava/lang/String;

    .line 5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] has been removed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance v3, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$MediaRouterCallback$2;

    invoke-direct {v3, p0, v2}, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$MediaRouterCallback$2;-><init>(Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$MediaRouterCallback;Lcom/connectsdk/service/config/ServiceDescription;)V

    invoke-static {v3}, Lcom/connectsdk/core/Util;->runOnUI(Ljava/lang/Runnable;)V

    .line 7
    iget-object v2, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$MediaRouterCallback;->this$0:Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;

    iget-object v2, v2, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->foundServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$MediaRouterCallback;->this$0:Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;

    invoke-static {p1}, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->access$300(Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroidx/mediarouter/media/g;Landroidx/mediarouter/media/g$h;)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/mediarouter/media/g$b;->onRouteAdded(Landroidx/mediarouter/media/g;Landroidx/mediarouter/media/g$h;)V

    .line 2
    iget-object p1, p2, Landroidx/mediarouter/media/g$h;->r:Landroid/os/Bundle;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/cast/CastDevice;->o1(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/cast/CastDevice;->W0()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$MediaRouterCallback;->this$0:Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;

    invoke-static {v1}, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->access$300(Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    iget-object v1, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$MediaRouterCallback;->this$0:Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;

    iget-object v1, v1, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->foundServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/connectsdk/service/config/ServiceDescription;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    .line 7
    new-instance v1, Lcom/connectsdk/service/config/ServiceDescription;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/cast/CastDevice;->D1()Ljava/net/Inet4Address;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Chromecast"

    invoke-direct {v1, v4, v0, v2}, Lcom/connectsdk/service/config/ServiceDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v2, p1, Lcom/google/android/gms/cast/CastDevice;->u:Ljava/lang/String;

    .line 10
    invoke-virtual {v1, v2}, Lcom/connectsdk/service/config/ServiceDescription;->setFriendlyName(Ljava/lang/String;)V

    .line 11
    iget-object v2, p1, Lcom/google/android/gms/cast/CastDevice;->v:Ljava/lang/String;

    .line 12
    invoke-virtual {v1, v2}, Lcom/connectsdk/service/config/ServiceDescription;->setModelName(Ljava/lang/String;)V

    .line 13
    iget-object v2, p1, Lcom/google/android/gms/cast/CastDevice;->w:Ljava/lang/String;

    .line 14
    invoke-virtual {v1, v2}, Lcom/connectsdk/service/config/ServiceDescription;->setModelNumber(Ljava/lang/String;)V

    .line 15
    iget-object p2, p2, Landroidx/mediarouter/media/g$h;->e:Ljava/lang/String;

    .line 16
    invoke-virtual {v1, p2}, Lcom/connectsdk/service/config/ServiceDescription;->setModelDescription(Ljava/lang/String;)V

    .line 17
    iget p2, p1, Lcom/google/android/gms/cast/CastDevice;->x:I

    .line 18
    invoke-virtual {v1, p2}, Lcom/connectsdk/service/config/ServiceDescription;->setPort(I)V

    .line 19
    invoke-virtual {v1, v4}, Lcom/connectsdk/service/config/ServiceDescription;->setServiceID(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v1, p1}, Lcom/connectsdk/service/config/ServiceDescription;->setDevice(Ljava/lang/Object;)V

    goto :goto_1

    .line 21
    :cond_1
    invoke-virtual {v1}, Lcom/connectsdk/service/config/ServiceDescription;->getFriendlyName()Ljava/lang/String;

    move-result-object p2

    .line 22
    iget-object v4, p1, Lcom/google/android/gms/cast/CastDevice;->u:Ljava/lang/String;

    .line 23
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 24
    iget-object p2, p1, Lcom/google/android/gms/cast/CastDevice;->u:Ljava/lang/String;

    .line 25
    invoke-virtual {v1, p2}, Lcom/connectsdk/service/config/ServiceDescription;->setFriendlyName(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 26
    :cond_2
    invoke-virtual {v1, p1}, Lcom/connectsdk/service/config/ServiceDescription;->setDevice(Ljava/lang/Object;)V

    move v3, v2

    .line 27
    :goto_1
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Lcom/connectsdk/service/config/ServiceDescription;->setLastDetection(J)V

    .line 28
    iget-object p1, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$MediaRouterCallback;->this$0:Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;

    iget-object p1, p1, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->foundServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_3

    .line 29
    iget-object p1, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$MediaRouterCallback;->this$0:Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;

    iget-object p1, p1, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->serviceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/connectsdk/discovery/DiscoveryProviderListener;

    .line 30
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$MediaRouterCallback;->this$0:Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;

    invoke-interface {p2, v0, v1}, Lcom/connectsdk/discovery/DiscoveryProviderListener;->onServiceAdded(Lcom/connectsdk/discovery/DiscoveryProvider;Lcom/connectsdk/service/config/ServiceDescription;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public onRouteChanged(Landroidx/mediarouter/media/g;Landroidx/mediarouter/media/g$h;)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/mediarouter/media/g$b;->onRouteChanged(Landroidx/mediarouter/media/g;Landroidx/mediarouter/media/g$h;)V

    .line 2
    iget-object p1, p2, Landroidx/mediarouter/media/g$h;->r:Landroid/os/Bundle;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/cast/CastDevice;->o1(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/cast/CastDevice;->W0()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$MediaRouterCallback;->this$0:Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;

    iget-object v1, v1, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->foundServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/connectsdk/service/config/ServiceDescription;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/cast/CastDevice;->D1()Ljava/net/Inet4Address;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/connectsdk/service/config/ServiceDescription;->setIpAddress(Ljava/lang/String;)V

    .line 7
    iget-object v4, p1, Lcom/google/android/gms/cast/CastDevice;->v:Ljava/lang/String;

    .line 8
    invoke-virtual {v1, v4}, Lcom/connectsdk/service/config/ServiceDescription;->setModelName(Ljava/lang/String;)V

    .line 9
    iget-object v4, p1, Lcom/google/android/gms/cast/CastDevice;->w:Ljava/lang/String;

    .line 10
    invoke-virtual {v1, v4}, Lcom/connectsdk/service/config/ServiceDescription;->setModelNumber(Ljava/lang/String;)V

    .line 11
    iget-object p2, p2, Landroidx/mediarouter/media/g$h;->e:Ljava/lang/String;

    .line 12
    invoke-virtual {v1, p2}, Lcom/connectsdk/service/config/ServiceDescription;->setModelDescription(Ljava/lang/String;)V

    .line 13
    iget p2, p1, Lcom/google/android/gms/cast/CastDevice;->x:I

    .line 14
    invoke-virtual {v1, p2}, Lcom/connectsdk/service/config/ServiceDescription;->setPort(I)V

    .line 15
    invoke-virtual {v1, p1}, Lcom/connectsdk/service/config/ServiceDescription;->setDevice(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {v1}, Lcom/connectsdk/service/config/ServiceDescription;->getFriendlyName()Ljava/lang/String;

    move-result-object p2

    .line 17
    iget-object v4, p1, Lcom/google/android/gms/cast/CastDevice;->u:Ljava/lang/String;

    .line 18
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 19
    iget-object p1, p1, Lcom/google/android/gms/cast/CastDevice;->u:Ljava/lang/String;

    .line 20
    invoke-virtual {v1, p1}, Lcom/connectsdk/service/config/ServiceDescription;->setFriendlyName(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 21
    :goto_1
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Lcom/connectsdk/service/config/ServiceDescription;->setLastDetection(J)V

    .line 22
    iget-object p1, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$MediaRouterCallback;->this$0:Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;

    iget-object p1, p1, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->foundServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 23
    iget-object p1, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$MediaRouterCallback;->this$0:Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;

    iget-object p1, p1, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->serviceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/connectsdk/discovery/DiscoveryProviderListener;

    .line 24
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$MediaRouterCallback;->this$0:Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;

    invoke-interface {p2, v0, v1}, Lcom/connectsdk/discovery/DiscoveryProviderListener;->onServiceAdded(Lcom/connectsdk/discovery/DiscoveryProvider;Lcom/connectsdk/service/config/ServiceDescription;)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public onRoutePresentationDisplayChanged(Landroidx/mediarouter/media/g;Landroidx/mediarouter/media/g$h;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    const-string v1, "onRoutePresentationDisplayChanged: ["

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    iget-object v2, p2, Landroidx/mediarouter/media/g$h;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v2, p2, Landroidx/mediarouter/media/g$h;->e:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-super {p0, p1, p2}, Landroidx/mediarouter/media/g$b;->onRoutePresentationDisplayChanged(Landroidx/mediarouter/media/g;Landroidx/mediarouter/media/g$h;)V

    return-void
.end method

.method public onRouteRemoved(Landroidx/mediarouter/media/g;Landroidx/mediarouter/media/g$h;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/mediarouter/media/g$b;->onRouteRemoved(Landroidx/mediarouter/media/g;Landroidx/mediarouter/media/g$h;)V

    .line 2
    iget-object p1, p2, Landroidx/mediarouter/media/g$h;->r:Landroid/os/Bundle;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/cast/CastDevice;->o1(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/cast/CastDevice;->W0()Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$MediaRouterCallback;->this$0:Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;

    invoke-static {v0}, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->access$300(Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$MediaRouterCallback;->this$0:Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;

    invoke-static {p1}, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->access$400(Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;)Ljava/util/Timer;

    move-result-object p1

    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$MediaRouterCallback;->this$0:Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    invoke-static {p1, v0}, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->access$402(Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;Ljava/util/Timer;)Ljava/util/Timer;

    .line 8
    iget-object p1, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$MediaRouterCallback;->this$0:Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;

    invoke-static {p1}, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->access$400(Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;)Ljava/util/Timer;

    move-result-object p1

    new-instance v0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$MediaRouterCallback$1;

    invoke-direct {v0, p0, p2}, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$MediaRouterCallback$1;-><init>(Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$MediaRouterCallback;Landroidx/mediarouter/media/g$h;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    return-void
.end method

.method public onRouteVolumeChanged(Landroidx/mediarouter/media/g;Landroidx/mediarouter/media/g$h;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    const-string v1, "onRouteVolumeChanged: ["

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    iget-object v2, p2, Landroidx/mediarouter/media/g$h;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v2, p2, Landroidx/mediarouter/media/g$h;->e:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-super {p0, p1, p2}, Landroidx/mediarouter/media/g$b;->onRouteVolumeChanged(Landroidx/mediarouter/media/g;Landroidx/mediarouter/media/g$h;)V

    return-void
.end method
