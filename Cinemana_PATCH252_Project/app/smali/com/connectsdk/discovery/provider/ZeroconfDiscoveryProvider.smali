.class public Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;
.super Ljava/lang/Object;
.source "ZeroconfDiscoveryProvider.java"

# interfaces
.implements Lcom/connectsdk/discovery/DiscoveryProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider$MDNSSearchTask;
    }
.end annotation


# static fields
.field private static final HOSTNAME:Ljava/lang/String; = "connectsdk"


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

.field public jmdns:Lcom/shabakaty/downloader/b92;

.field public jmdnsListener:Lcom/shabakaty/downloader/m14;

.field private scanTimer:Ljava/util/Timer;

.field public serviceFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/connectsdk/discovery/DiscoveryFilter;",
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

.field public srcAddress:Ljava/net/InetAddress;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;->isRunning:Z

    .line 3
    new-instance v0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider$1;

    invoke-direct {v0, p0}, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider$1;-><init>(Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;)V

    iput-object v0, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;->jmdnsListener:Lcom/shabakaty/downloader/m14;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;->foundServices:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;->serviceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;->serviceFilters:Ljava/util/List;

    .line 7
    :try_start_0
    invoke-static {p1}, Lcom/connectsdk/core/Util;->getIpAddress(Landroid/content/Context;)Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;->srcAddress:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/net/UnknownHostException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public addDeviceFilter(Lcom/connectsdk/discovery/DiscoveryFilter;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/connectsdk/discovery/DiscoveryFilter;->getServiceFilter()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    const-string v0, "This device filter does not have zeroconf filter info"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;->serviceFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public addListener(Lcom/connectsdk/discovery/DiscoveryProviderListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;->serviceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createJmDNS()Lcom/shabakaty/downloader/b92;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;->srcAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/d92;

    const-string v2, "connectsdk"

    invoke-direct {v1, v0, v2}, Lcom/shabakaty/downloader/d92;-><init>(Ljava/net/InetAddress;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;->serviceFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeDeviceFilter(Lcom/connectsdk/discovery/DiscoveryFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;->serviceFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeListener(Lcom/connectsdk/discovery/DiscoveryProviderListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;->serviceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public rescan()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;->jmdns:Lcom/shabakaty/downloader/b92;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    .line 2
    :try_start_1
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 3
    :try_start_2
    iput-object v0, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;->jmdns:Lcom/shabakaty/downloader/b92;

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;->createJmDNS()Lcom/shabakaty/downloader/b92;

    move-result-object v0

    iput-object v0, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;->jmdns:Lcom/shabakaty/downloader/b92;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;->serviceFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/connectsdk/discovery/DiscoveryFilter;

    .line 6
    invoke-virtual {v1}, Lcom/connectsdk/discovery/DiscoveryFilter;->getServiceFilter()Ljava/lang/String;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;->jmdns:Lcom/shabakaty/downloader/b92;

    iget-object v3, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;->jmdnsListener:Lcom/shabakaty/downloader/m14;

    invoke-virtual {v2, v1, v3}, Lcom/shabakaty/downloader/b92;->v(Ljava/lang/String;Lcom/shabakaty/downloader/m14;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;->stop()V

    .line 2
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;->foundServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public restart()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;->stop()V

    .line 2
    invoke-virtual {p0}, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;->start()V

    return-void
.end method

.method public serviceIdForFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;->serviceFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/connectsdk/discovery/DiscoveryFilter;

    .line 2
    invoke-virtual {v1}, Lcom/connectsdk/discovery/DiscoveryFilter;->getServiceFilter()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/connectsdk/discovery/DiscoveryFilter;->getServiceId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
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

    .line 1
    iput-object p1, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;->serviceFilters:Ljava/util/List;

    return-void
.end method

.method public start()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;->isRunning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;->isRunning:Z

    .line 3
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;->scanTimer:Ljava/util/Timer;

    .line 4
    new-instance v2, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider$MDNSSearchTask;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider$MDNSSearchTask;-><init>(Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider$1;)V

    const-wide/16 v3, 0x64

    const-wide/16 v5, 0x2710

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public stop()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;->isRunning:Z

    .line 2
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;->scanTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;->scanTimer:Ljava/util/Timer;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;->jmdns:Lcom/shabakaty/downloader/b92;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;->serviceFilters:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;->serviceFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/connectsdk/discovery/DiscoveryFilter;

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Lcom/connectsdk/discovery/DiscoveryFilter;->getServiceFilter()Ljava/lang/String;

    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;->jmdns:Lcom/shabakaty/downloader/b92;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 10
    iget-object v3, p0, Lcom/connectsdk/discovery/provider/ZeroconfDiscoveryProvider;->jmdnsListener:Lcom/shabakaty/downloader/m14;

    invoke-virtual {v2, v1, v3}, Lcom/shabakaty/downloader/b92;->w(Ljava/lang/String;Lcom/shabakaty/downloader/m14;)V

    goto :goto_1

    :cond_2
    return-void
.end method
