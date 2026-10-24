.class public Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;
.super Ljava/lang/Object;
.source "SSDPDiscoveryProvider.java"

# interfaces
.implements Lcom/connectsdk/discovery/DiscoveryProvider;


# instance fields
.field public context:Landroid/content/Context;

.field public discoveredServices:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/connectsdk/service/config/ServiceDescription;",
            ">;"
        }
    .end annotation
.end field

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

.field private final mRespNotifyHandler:Ljava/lang/Runnable;

.field private final mResponseHandler:Ljava/lang/Runnable;

.field public needToStartSearch:Z

.field private notifyThread:Ljava/lang/Thread;

.field private responseThread:Ljava/lang/Thread;

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

.field private final serviceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/connectsdk/discovery/DiscoveryProviderListener;",
            ">;"
        }
    .end annotation
.end field

.field private ssdpClient:Lcom/connectsdk/discovery/provider/ssdp/SSDPClient;

.field private final uuidReg:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->needToStartSearch:Z

    .line 3
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->foundServices:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->discoveredServices:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    iput-boolean v0, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->isRunning:Z

    .line 6
    new-instance v0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider$3;

    invoke-direct {v0, p0}, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider$3;-><init>(Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;)V

    iput-object v0, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->mResponseHandler:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider$4;

    invoke-direct {v0, p0}, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider$4;-><init>(Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;)V

    iput-object v0, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->mRespNotifyHandler:Ljava/lang/Runnable;

    .line 8
    iput-object p1, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->context:Landroid/content/Context;

    const-string p1, "(?<=uuid:)(.+?)(?=(::)|$)"

    .line 9
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->uuidReg:Ljava/util/regex/Pattern;

    .line 10
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->serviceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->serviceFilters:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;)Lcom/connectsdk/discovery/provider/ssdp/SSDPClient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->ssdpClient:Lcom/connectsdk/discovery/provider/ssdp/SSDPClient;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;Lcom/connectsdk/discovery/provider/ssdp/SSDPPacket;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->handleSSDPPacket(Lcom/connectsdk/discovery/provider/ssdp/SSDPPacket;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;Lcom/connectsdk/service/config/ServiceDescription;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->notifyListenersOfNewService(Lcom/connectsdk/service/config/ServiceDescription;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->serviceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private handleSSDPPacket(Lcom/connectsdk/discovery/provider/ssdp/SSDPPacket;)V
    .locals 5

    if-eqz p1, :cond_9

    .line 1
    invoke-virtual {p1}, Lcom/connectsdk/discovery/provider/ssdp/SSDPPacket;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/connectsdk/discovery/provider/ssdp/SSDPPacket;->getType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/connectsdk/discovery/provider/ssdp/SSDPPacket;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/connectsdk/discovery/provider/ssdp/SSDPPacket;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NOTIFY * HTTP/1.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "NT"

    goto :goto_0

    :cond_1
    const-string v1, "ST"

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 3
    invoke-virtual {p1}, Lcom/connectsdk/discovery/provider/ssdp/SSDPPacket;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "M-SEARCH * HTTP/1.1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p0, v0}, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->isSearchingForFilter(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_2

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcom/connectsdk/discovery/provider/ssdp/SSDPPacket;->getData()Ljava/util/Map;

    move-result-object v1

    const-string v2, "USN"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_2

    .line 6
    :cond_3
    iget-object v2, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->uuidReg:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_4

    return-void

    .line 8
    :cond_4
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/connectsdk/discovery/provider/ssdp/SSDPPacket;->getData()Ljava/util/Map;

    move-result-object v2

    const-string v3, "NTS"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "ssdp:byebye"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 10
    iget-object p1, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->foundServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/connectsdk/service/config/ServiceDescription;

    if-eqz p1, :cond_9

    .line 11
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->foundServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-direct {p0, p1}, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->notifyListenersOfLostService(Lcom/connectsdk/service/config/ServiceDescription;)V

    goto :goto_2

    .line 13
    :cond_5
    invoke-virtual {p1}, Lcom/connectsdk/discovery/provider/ssdp/SSDPPacket;->getData()Ljava/util/Map;

    move-result-object v2

    const-string v3, "LOCATION"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 14
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_6

    goto :goto_2

    .line 15
    :cond_6
    iget-object v3, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->foundServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/connectsdk/service/config/ServiceDescription;

    .line 16
    iget-object v4, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->discoveredServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/connectsdk/service/config/ServiceDescription;

    if-nez v3, :cond_7

    if-nez v4, :cond_7

    const/4 v4, 0x1

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_8

    .line 17
    new-instance v3, Lcom/connectsdk/service/config/ServiceDescription;

    invoke-direct {v3}, Lcom/connectsdk/service/config/ServiceDescription;-><init>()V

    .line 18
    invoke-virtual {v3, v1}, Lcom/connectsdk/service/config/ServiceDescription;->setUUID(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v3, v0}, Lcom/connectsdk/service/config/ServiceDescription;->setServiceFilter(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lcom/connectsdk/discovery/provider/ssdp/SSDPPacket;->getDatagramPacket()Ljava/net/DatagramPacket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/connectsdk/service/config/ServiceDescription;->setIpAddress(Ljava/lang/String;)V

    const/16 p1, 0xbb9

    .line 21
    invoke-virtual {v3, p1}, Lcom/connectsdk/service/config/ServiceDescription;->setPort(I)V

    .line 22
    iget-object p1, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->discoveredServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-virtual {p0, v2, v1, v0}, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->getLocationData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    if-eqz v3, :cond_9

    .line 24
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/connectsdk/service/config/ServiceDescription;->setLastDetection(J)V

    :cond_9
    :goto_2
    return-void
.end method

.method private notifyListenersOfLostService(Lcom/connectsdk/service/config/ServiceDescription;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/connectsdk/service/config/ServiceDescription;->getServiceFilter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->serviceIdsForFilter(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/connectsdk/service/config/ServiceDescription;->clone()Lcom/connectsdk/service/config/ServiceDescription;

    move-result-object v2

    .line 4
    invoke-virtual {v2, v1}, Lcom/connectsdk/service/config/ServiceDescription;->setServiceID(Ljava/lang/String;)V

    .line 5
    new-instance v1, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider$7;

    invoke-direct {v1, p0, v2}, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider$7;-><init>(Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;Lcom/connectsdk/service/config/ServiceDescription;)V

    invoke-static {v1}, Lcom/connectsdk/core/Util;->runOnUI(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyListenersOfNewService(Lcom/connectsdk/service/config/ServiceDescription;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/connectsdk/service/config/ServiceDescription;->getServiceFilter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->serviceIdsForFilter(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/connectsdk/service/config/ServiceDescription;->clone()Lcom/connectsdk/service/config/ServiceDescription;

    move-result-object v2

    .line 4
    invoke-virtual {v2, v1}, Lcom/connectsdk/service/config/ServiceDescription;->setServiceID(Ljava/lang/String;)V

    .line 5
    new-instance v1, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider$6;

    invoke-direct {v1, p0, v2}, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider$6;-><init>(Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;Lcom/connectsdk/service/config/ServiceDescription;)V

    invoke-static {v1}, Lcom/connectsdk/core/Util;->runOnUI(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private openSocket()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->ssdpClient:Lcom/connectsdk/discovery/provider/ssdp/SSDPClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/connectsdk/discovery/provider/ssdp/SSDPClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/connectsdk/core/Util;->getIpAddress(Landroid/content/Context;)Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, v0}, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->createSocket(Ljava/net/InetAddress;)Lcom/connectsdk/discovery/provider/ssdp/SSDPClient;

    move-result-object v0

    iput-object v0, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->ssdpClient:Lcom/connectsdk/discovery/provider/ssdp/SSDPClient;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

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

    const-string v0, "This device filter does not have ssdp filter info"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->serviceFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public addListener(Lcom/connectsdk/discovery/DiscoveryProviderListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->serviceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public containsServicesWithFilter(Lcom/connectsdk/discovery/provider/ssdp/SSDPDevice;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public createSocket(Ljava/net/InetAddress;)Lcom/connectsdk/discovery/provider/ssdp/SSDPClient;
    .locals 1

    .line 1
    new-instance v0, Lcom/connectsdk/discovery/provider/ssdp/SSDPClient;

    invoke-direct {v0, p1}, Lcom/connectsdk/discovery/provider/ssdp/SSDPClient;-><init>(Ljava/net/InetAddress;)V

    return-object v0
.end method

.method public getLocationData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->getLocationData(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getLocationData(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider$5;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider$5;-><init>(Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, p1}, Lcom/connectsdk/core/Util;->runInBackground(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->serviceFilters:Ljava/util/List;

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

.method public isSearchingForFilter(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->serviceFilters:Ljava/util/List;

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

    move-result-object v1

    .line 3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public removeDeviceFilter(Lcom/connectsdk/discovery/DiscoveryFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->serviceFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeListener(Lcom/connectsdk/discovery/DiscoveryProviderListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->serviceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public rescan()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->serviceFilters:Ljava/util/List;

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

    move-result-object v1

    invoke-static {v1}, Lcom/connectsdk/discovery/provider/ssdp/SSDPClient;->getSSDPSearchMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    .line 4
    new-instance v4, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider$2;

    invoke-direct {v4, p0, v1}, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider$2;-><init>(Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;Ljava/lang/String;)V

    mul-int/lit16 v5, v3, 0x3e8

    int-to-long v5, v5

    .line 5
    invoke-virtual {v2, v4, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->stop()V

    .line 2
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->foundServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 3
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->discoveredServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public restart()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->stop()V

    .line 2
    invoke-virtual {p0}, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->start()V

    return-void
.end method

.method public sendSearch()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/32 v3, 0xea60

    sub-long/2addr v1, v3

    .line 3
    iget-object v3, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->foundServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4
    iget-object v5, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->foundServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/connectsdk/service/config/ServiceDescription;

    if-eqz v5, :cond_1

    .line 5
    invoke-virtual {v5}, Lcom/connectsdk/service/config/ServiceDescription;->getLastDetection()J

    move-result-wide v5

    cmp-long v7, v5, v1

    if-gez v7, :cond_0

    .line 6
    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8
    iget-object v2, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->foundServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/connectsdk/service/config/ServiceDescription;

    if-eqz v2, :cond_3

    .line 9
    invoke-direct {p0, v2}, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->notifyListenersOfLostService(Lcom/connectsdk/service/config/ServiceDescription;)V

    .line 10
    :cond_3
    iget-object v2, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->foundServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 11
    :cond_4
    invoke-virtual {p0}, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->rescan()V

    return-void
.end method

.method public serviceIdsForFilter(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->serviceFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/connectsdk/discovery/DiscoveryFilter;

    .line 3
    invoke-virtual {v2}, Lcom/connectsdk/discovery/DiscoveryFilter;->getServiceFilter()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v2}, Lcom/connectsdk/discovery/DiscoveryFilter;->getServiceId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
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
    iput-object p1, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->serviceFilters:Ljava/util/List;

    return-void
.end method

.method public start()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->isRunning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->isRunning:Z

    .line 3
    invoke-direct {p0}, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->openSocket()V

    .line 4
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->scanTimer:Ljava/util/Timer;

    .line 5
    new-instance v2, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider$1;

    invoke-direct {v2, p0}, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider$1;-><init>(Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;)V

    const-wide/16 v3, 0x64

    const-wide/16 v5, 0x2710

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 6
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->mResponseHandler:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->responseThread:Ljava/lang/Thread;

    .line 7
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->mRespNotifyHandler:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->notifyThread:Ljava/lang/Thread;

    .line 8
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->responseThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 9
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->notifyThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->isRunning:Z

    .line 2
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->scanTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 4
    iput-object v1, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->scanTimer:Ljava/util/Timer;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->responseThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 7
    iput-object v1, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->responseThread:Ljava/lang/Thread;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->notifyThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 10
    iput-object v1, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->notifyThread:Ljava/lang/Thread;

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->ssdpClient:Lcom/connectsdk/discovery/provider/ssdp/SSDPClient;

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0}, Lcom/connectsdk/discovery/provider/ssdp/SSDPClient;->close()V

    .line 13
    iput-object v1, p0, Lcom/connectsdk/discovery/provider/SSDPDiscoveryProvider;->ssdpClient:Lcom/connectsdk/discovery/provider/ssdp/SSDPClient;

    :cond_3
    return-void
.end method
