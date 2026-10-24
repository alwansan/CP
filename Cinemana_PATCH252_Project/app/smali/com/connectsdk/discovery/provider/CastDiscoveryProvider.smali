.class public Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;
.super Ljava/lang/Object;
.source "CastDiscoveryProvider.java"

# interfaces
.implements Lcom/connectsdk/discovery/DiscoveryProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$MediaRouterCallback;
    }
.end annotation


# static fields
.field private static final ROUTE_REMOVE_INTERVAL:J = 0xbb8L


# instance fields
.field public foundServices:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/connectsdk/service/config/ServiceDescription;",
            ">;"
        }
    .end annotation
.end field

.field public isRunning:Z

.field private mMediaRouteSelector:Landroidx/mediarouter/media/f;

.field private final mMediaRouter:Landroidx/mediarouter/media/g;

.field public mMediaRouterCallback:Landroidx/mediarouter/media/g$b;

.field private removeRoutesTimer:Ljava/util/Timer;

.field private final removedUUID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public serviceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/connectsdk/discovery/DiscoveryProviderListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->removedUUID:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->isRunning:Z

    .line 4
    invoke-virtual {p0, p1}, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->createMediaRouter(Landroid/content/Context;)Landroidx/mediarouter/media/g;

    move-result-object p1

    iput-object p1, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->mMediaRouter:Landroidx/mediarouter/media/g;

    .line 5
    new-instance p1, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$MediaRouterCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$MediaRouterCallback;-><init>(Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$1;)V

    iput-object p1, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->mMediaRouterCallback:Landroidx/mediarouter/media/g$b;

    .line 6
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v0, 0x8

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x2

    invoke-direct {p1, v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object p1, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->foundServices:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->serviceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static synthetic access$100(Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;)Landroidx/mediarouter/media/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->mMediaRouter:Landroidx/mediarouter/media/g;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;)Landroidx/mediarouter/media/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->mMediaRouteSelector:Landroidx/mediarouter/media/f;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->removedUUID:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;)Ljava/util/Timer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->removeRoutesTimer:Ljava/util/Timer;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->removeRoutesTimer:Ljava/util/Timer;

    return-object p1
.end method


# virtual methods
.method public addDeviceFilter(Lcom/connectsdk/discovery/DiscoveryFilter;)V
    .locals 0

    return-void
.end method

.method public addListener(Lcom/connectsdk/discovery/DiscoveryProviderListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->serviceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createMediaRouter(Landroid/content/Context;)Landroidx/mediarouter/media/g;
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/mediarouter/media/g;->d(Landroid/content/Context;)Landroidx/mediarouter/media/g;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public removeDeviceFilter(Lcom/connectsdk/discovery/DiscoveryFilter;)V
    .locals 0

    return-void
.end method

.method public removeListener(Lcom/connectsdk/discovery/DiscoveryProviderListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->serviceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public rescan()V
    .locals 1

    .line 1
    new-instance v0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$2;

    invoke-direct {v0, p0}, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$2;-><init>(Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;)V

    invoke-static {v0}, Lcom/connectsdk/core/Util;->runOnUI(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->stop()V

    .line 2
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->foundServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public restart()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->stop()V

    .line 2
    invoke-virtual {p0}, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->start()V

    return-void
.end method

.method public setFilters(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/connectsdk/discovery/DiscoveryFilter;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public start()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->isRunning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->isRunning:Z

    .line 3
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->mMediaRouteSelector:Landroidx/mediarouter/media/f;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/connectsdk/service/CastService;->getApplicationID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "com.google.android.gms.cast.CATEGORY_CAST"

    .line 5
    invoke-static {v2, v1, v0}, Lcom/shabakaty/downloader/jl3;->j(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 8
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "controlCategories"

    .line 10
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 11
    new-instance v3, Landroidx/mediarouter/media/f;

    invoke-direct {v3, v1, v2}, Landroidx/mediarouter/media/f;-><init>(Landroid/os/Bundle;Ljava/util/List;)V

    .line 12
    iput-object v3, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->mMediaRouteSelector:Landroidx/mediarouter/media/f;

    goto :goto_1

    .line 13
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "category must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 14
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "applicationId cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :catch_0
    sget-object v1, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    const-string v2, "Invalid application ID: "

    invoke-static {v2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/connectsdk/service/CastService;->getApplicationID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object v1, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->serviceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/connectsdk/discovery/DiscoveryProviderListener;

    .line 17
    new-instance v4, Lcom/connectsdk/service/command/ServiceCommandError;

    const/4 v5, 0x0

    invoke-static {v2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 18
    invoke-static {}, Lcom/connectsdk/service/CastService;->getApplicationID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v0}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 19
    invoke-interface {v3, p0, v4}, Lcom/connectsdk/discovery/DiscoveryProviderListener;->onServiceDiscoveryFailed(Lcom/connectsdk/discovery/DiscoveryProvider;Lcom/connectsdk/service/command/ServiceCommandError;)V

    goto :goto_0

    :cond_4
    return-void

    .line 20
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->rescan()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->isRunning:Z

    .line 2
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->removeRoutesTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->removeRoutesTimer:Ljava/util/Timer;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->mMediaRouter:Landroidx/mediarouter/media/g;

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$1;

    invoke-direct {v0, p0}, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$1;-><init>(Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;)V

    invoke-static {v0}, Lcom/connectsdk/core/Util;->runOnUI(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
