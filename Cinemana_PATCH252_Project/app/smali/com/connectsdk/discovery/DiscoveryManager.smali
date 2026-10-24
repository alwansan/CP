.class public Lcom/connectsdk/discovery/DiscoveryManager;
.super Ljava/lang/Object;
.source "DiscoveryManager.java"

# interfaces
.implements Lcom/connectsdk/device/ConnectableDeviceListener;
.implements Lcom/connectsdk/discovery/DiscoveryProviderListener;
.implements Lcom/connectsdk/service/config/ServiceConfig$ServiceConfigListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;
    }
.end annotation


# static fields
.field public static CONNECT_SDK_VERSION:Ljava/lang/String; = "1.6.0"

.field private static instance:Lcom/connectsdk/discovery/DiscoveryManager;


# instance fields
.field private final allDevices:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/connectsdk/device/ConnectableDevice;",
            ">;"
        }
    .end annotation
.end field

.field public capabilityFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/connectsdk/discovery/CapabilityFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final compatibleDevices:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/connectsdk/device/ConnectableDevice;",
            ">;"
        }
    .end annotation
.end field

.field public connectableDeviceStore:Lcom/connectsdk/device/ConnectableDeviceStore;

.field public context:Landroid/content/Context;

.field public deviceClasses:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/connectsdk/service/DeviceService;",
            ">;>;"
        }
    .end annotation
.end field

.field private final discoveryListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/connectsdk/discovery/DiscoveryManagerListener;",
            ">;"
        }
    .end annotation
.end field

.field public discoveryProviders:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/connectsdk/discovery/DiscoveryProvider;",
            ">;"
        }
    .end annotation
.end field

.field public isBroadcastReceiverRegistered:Z

.field private mSearching:Z

.field public multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

.field public pairingLevel:Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;

.field public receiver:Landroid/content/BroadcastReceiver;

.field public rescanInterval:I

.field public rescanTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/connectsdk/device/DefaultConnectableDeviceStore;

    invoke-direct {v0, p1}, Lcom/connectsdk/device/DefaultConnectableDeviceStore;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/connectsdk/discovery/DiscoveryManager;-><init>(Landroid/content/Context;Lcom/connectsdk/device/ConnectableDeviceStore;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/connectsdk/device/ConnectableDeviceStore;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 3
    iput v0, p0, Lcom/connectsdk/discovery/DiscoveryManager;->rescanInterval:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/connectsdk/discovery/DiscoveryManager;->isBroadcastReceiverRegistered:Z

    .line 5
    iput-boolean v0, p0, Lcom/connectsdk/discovery/DiscoveryManager;->mSearching:Z

    .line 6
    iput-object p1, p0, Lcom/connectsdk/discovery/DiscoveryManager;->context:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lcom/connectsdk/discovery/DiscoveryManager;->connectableDeviceStore:Lcom/connectsdk/device/ConnectableDeviceStore;

    .line 8
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v0, 0x8

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x2

    invoke-direct {p2, v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object p2, p0, Lcom/connectsdk/discovery/DiscoveryManager;->allDevices:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2, v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object p2, p0, Lcom/connectsdk/discovery/DiscoveryManager;->compatibleDevices:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x4

    invoke-direct {p2, v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object p2, p0, Lcom/connectsdk/discovery/DiscoveryManager;->deviceClasses:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/connectsdk/discovery/DiscoveryManager;->discoveryProviders:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/connectsdk/discovery/DiscoveryManager;->discoveryListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string p2, "wifi"

    .line 13
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 14
    sget-object p2, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object p1

    iput-object p1, p0, Lcom/connectsdk/discovery/DiscoveryManager;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    const/4 p2, 0x1

    .line 15
    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager$MulticastLock;->setReferenceCounted(Z)V

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/connectsdk/discovery/DiscoveryManager;->capabilityFilters:Ljava/util/List;

    .line 17
    sget-object p1, Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;->OFF:Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;

    iput-object p1, p0, Lcom/connectsdk/discovery/DiscoveryManager;->pairingLevel:Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;

    .line 18
    new-instance p1, Lcom/connectsdk/discovery/DiscoveryManager$1;

    invoke-direct {p1, p0}, Lcom/connectsdk/discovery/DiscoveryManager$1;-><init>(Lcom/connectsdk/discovery/DiscoveryManager;)V

    iput-object p1, p0, Lcom/connectsdk/discovery/DiscoveryManager;->receiver:Landroid/content/BroadcastReceiver;

    .line 19
    invoke-direct {p0}, Lcom/connectsdk/discovery/DiscoveryManager;->registerBroadcastReceiver()V

    return-void
.end method

.method public static synthetic access$000(Lcom/connectsdk/discovery/DiscoveryManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/connectsdk/discovery/DiscoveryManager;->mSearching:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/connectsdk/discovery/DiscoveryManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/connectsdk/discovery/DiscoveryManager;->allDevices:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/connectsdk/discovery/DiscoveryManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/connectsdk/discovery/DiscoveryManager;->compatibleDevices:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/connectsdk/discovery/DiscoveryManager;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/connectsdk/discovery/DiscoveryManager;->discoveryListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static declared-synchronized destroy()V
    .locals 2

    const-class v0, Lcom/connectsdk/discovery/DiscoveryManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/connectsdk/discovery/DiscoveryManager;->instance:Lcom/connectsdk/discovery/DiscoveryManager;

    invoke-virtual {v1}, Lcom/connectsdk/discovery/DiscoveryManager;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance()Lcom/connectsdk/discovery/DiscoveryManager;
    .locals 3

    const-class v0, Lcom/connectsdk/discovery/DiscoveryManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/connectsdk/discovery/DiscoveryManager;->instance:Lcom/connectsdk/discovery/DiscoveryManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2
    monitor-exit v0

    return-object v1

    .line 3
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Call DiscoveryManager.init(Context) first"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/connectsdk/discovery/DiscoveryManager;

    monitor-enter v0

    .line 1
    :try_start_0
    new-instance v1, Lcom/connectsdk/discovery/DiscoveryManager;

    invoke-direct {v1, p0}, Lcom/connectsdk/discovery/DiscoveryManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/connectsdk/discovery/DiscoveryManager;->instance:Lcom/connectsdk/discovery/DiscoveryManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lcom/connectsdk/device/ConnectableDeviceStore;)V
    .locals 2

    const-class v0, Lcom/connectsdk/discovery/DiscoveryManager;

    monitor-enter v0

    .line 3
    :try_start_0
    new-instance v1, Lcom/connectsdk/discovery/DiscoveryManager;

    invoke-direct {v1, p0, p1}, Lcom/connectsdk/discovery/DiscoveryManager;-><init>(Landroid/content/Context;Lcom/connectsdk/device/ConnectableDeviceStore;)V

    sput-object v1, Lcom/connectsdk/discovery/DiscoveryManager;->instance:Lcom/connectsdk/discovery/DiscoveryManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/connectsdk/discovery/DiscoveryManager;->isBroadcastReceiverRegistered:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/connectsdk/discovery/DiscoveryManager;->isBroadcastReceiverRegistered:Z

    .line 3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/connectsdk/discovery/DiscoveryManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/shabakaty/downloader/nj2;->a(Landroid/content/Context;)Lcom/shabakaty/downloader/nj2;

    move-result-object v1

    iget-object v2, p0, Lcom/connectsdk/discovery/DiscoveryManager;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/shabakaty/downloader/nj2;->b(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_0
    return-void
.end method

.method private unregisterBroadcastReceiver()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/connectsdk/discovery/DiscoveryManager;->isBroadcastReceiverRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/connectsdk/discovery/DiscoveryManager;->isBroadcastReceiverRegistered:Z

    .line 3
    iget-object v0, p0, Lcom/connectsdk/discovery/DiscoveryManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/shabakaty/downloader/nj2;->a(Landroid/content/Context;)Lcom/shabakaty/downloader/nj2;

    move-result-object v0

    iget-object v1, p0, Lcom/connectsdk/discovery/DiscoveryManager;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/nj2;->d(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/connectsdk/discovery/DiscoveryManagerListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/connectsdk/discovery/DiscoveryManager;->compatibleDevices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/connectsdk/device/ConnectableDevice;

    .line 2
    invoke-interface {p1, p0, v1}, Lcom/connectsdk/discovery/DiscoveryManagerListener;->onDeviceAdded(Lcom/connectsdk/discovery/DiscoveryManager;Lcom/connectsdk/device/ConnectableDevice;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/connectsdk/discovery/DiscoveryManager;->discoveryListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addServiceDescriptionToDevice(Lcom/connectsdk/service/config/ServiceDescription;Lcom/connectsdk/device/ConnectableDevice;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    const-string v1, "Adding service "

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/connectsdk/service/config/ServiceDescription;->getServiceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to device with address "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/connectsdk/device/ConnectableDevice;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/connectsdk/device/ConnectableDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/connectsdk/discovery/DiscoveryManager;->deviceClasses:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/connectsdk/service/config/ServiceDescription;->getServiceID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    const-class v1, Lcom/connectsdk/service/DLNAService;

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/connectsdk/service/config/ServiceDescription;->getLocationXML()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 5
    :cond_1
    const-class v1, Lcom/connectsdk/service/NetcastTVService;

    if-ne v0, v1, :cond_2

    .line 6
    invoke-virtual {p0, p1}, Lcom/connectsdk/discovery/DiscoveryManager;->isNetcast(Lcom/connectsdk/service/config/ServiceDescription;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x0

    .line 7
    iget-object v2, p0, Lcom/connectsdk/discovery/DiscoveryManager;->connectableDeviceStore:Lcom/connectsdk/device/ConnectableDeviceStore;

    if-eqz v2, :cond_3

    .line 8
    invoke-interface {v2, p1}, Lcom/connectsdk/device/ConnectableDeviceStore;->getServiceConfig(Lcom/connectsdk/service/config/ServiceDescription;)Lcom/connectsdk/service/config/ServiceConfig;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_4

    .line 9
    new-instance v1, Lcom/connectsdk/service/config/ServiceConfig;

    invoke-direct {v1, p1}, Lcom/connectsdk/service/config/ServiceConfig;-><init>(Lcom/connectsdk/service/config/ServiceDescription;)V

    .line 10
    :cond_4
    invoke-virtual {v1, p0}, Lcom/connectsdk/service/config/ServiceConfig;->setListener(Lcom/connectsdk/service/config/ServiceConfig$ServiceConfigListener;)V

    .line 11
    invoke-virtual {p2}, Lcom/connectsdk/device/ConnectableDevice;->getServices()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/connectsdk/service/DeviceService;

    .line 12
    invoke-virtual {v3}, Lcom/connectsdk/service/DeviceService;->getServiceDescription()Lcom/connectsdk/service/config/ServiceDescription;

    move-result-object v6

    invoke-virtual {v6}, Lcom/connectsdk/service/config/ServiceDescription;->getServiceID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/connectsdk/service/config/ServiceDescription;->getServiceID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 13
    invoke-virtual {v3}, Lcom/connectsdk/service/DeviceService;->getServiceDescription()Lcom/connectsdk/service/config/ServiceDescription;

    move-result-object v2

    invoke-virtual {v2}, Lcom/connectsdk/service/config/ServiceDescription;->getUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/connectsdk/service/config/ServiceDescription;->getUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v5, 0x1

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    :cond_7
    :goto_0
    if-eqz v4, :cond_a

    if-eqz v5, :cond_9

    .line 14
    invoke-virtual {p2, p1}, Lcom/connectsdk/device/ConnectableDevice;->setServiceDescription(Lcom/connectsdk/service/config/ServiceDescription;)V

    .line 15
    invoke-virtual {p1}, Lcom/connectsdk/service/config/ServiceDescription;->getServiceID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/connectsdk/device/ConnectableDevice;->getServiceByName(Ljava/lang/String;)Lcom/connectsdk/service/DeviceService;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 16
    invoke-virtual {p2, p1}, Lcom/connectsdk/service/DeviceService;->setServiceDescription(Lcom/connectsdk/service/config/ServiceDescription;)V

    :cond_8
    return-void

    .line 17
    :cond_9
    invoke-virtual {p1}, Lcom/connectsdk/service/config/ServiceDescription;->getServiceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/connectsdk/device/ConnectableDevice;->removeServiceByName(Ljava/lang/String;)V

    .line 18
    :cond_a
    invoke-static {v0, p1, v1}, Lcom/connectsdk/service/DeviceService;->getService(Ljava/lang/Class;Lcom/connectsdk/service/config/ServiceDescription;Lcom/connectsdk/service/config/ServiceConfig;)Lcom/connectsdk/service/DeviceService;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 19
    invoke-virtual {v0, p1}, Lcom/connectsdk/service/DeviceService;->setServiceDescription(Lcom/connectsdk/service/config/ServiceDescription;)V

    .line 20
    invoke-virtual {p2, v0}, Lcom/connectsdk/device/ConnectableDevice;->addService(Lcom/connectsdk/service/DeviceService;)V

    :cond_b
    return-void
.end method

.method public deviceIsCompatible(Lcom/connectsdk/device/ConnectableDevice;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/connectsdk/discovery/DiscoveryManager;->capabilityFilters:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget-object v2, p0, Lcom/connectsdk/discovery/DiscoveryManager;->capabilityFilters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/connectsdk/discovery/CapabilityFilter;

    .line 3
    iget-object v3, v3, Lcom/connectsdk/discovery/CapabilityFilter;->capabilities:Ljava/util/List;

    invoke-virtual {p1, v3}, Lcom/connectsdk/device/ConnectableDevice;->hasCapabilities(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method public getAllDevices()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/connectsdk/device/ConnectableDevice;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/connectsdk/discovery/DiscoveryManager;->allDevices:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public getCapabilityFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/connectsdk/discovery/CapabilityFilter;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/connectsdk/discovery/DiscoveryManager;->capabilityFilters:Ljava/util/List;

    return-object v0
.end method

.method public getCompatibleDevices()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/connectsdk/device/ConnectableDevice;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/connectsdk/discovery/DiscoveryManager;->compatibleDevices:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public getConnectableDeviceStore()Lcom/connectsdk/device/ConnectableDeviceStore;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/discovery/DiscoveryManager;->connectableDeviceStore:Lcom/connectsdk/device/ConnectableDeviceStore;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/discovery/DiscoveryManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDiscoveryProviders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/connectsdk/discovery/DiscoveryProvider;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/connectsdk/discovery/DiscoveryManager;->discoveryProviders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getPairingLevel()Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/discovery/DiscoveryManager;->pairingLevel:Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;

    return-object v0
.end method

.method public handleDeviceAdd(Lcom/connectsdk/device/ConnectableDevice;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/connectsdk/discovery/DiscoveryManager;->deviceIsCompatible(Lcom/connectsdk/device/ConnectableDevice;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/connectsdk/discovery/DiscoveryManager;->compatibleDevices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/connectsdk/device/ConnectableDevice;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/connectsdk/discovery/DiscoveryManager;->discoveryListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/connectsdk/discovery/DiscoveryManagerListener;

    .line 4
    invoke-interface {v1, p0, p1}, Lcom/connectsdk/discovery/DiscoveryManagerListener;->onDeviceAdded(Lcom/connectsdk/discovery/DiscoveryManager;Lcom/connectsdk/device/ConnectableDevice;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public handleDeviceLoss(Lcom/connectsdk/device/ConnectableDevice;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/connectsdk/discovery/DiscoveryManager;->discoveryListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/connectsdk/discovery/DiscoveryManagerListener;

    .line 2
    invoke-interface {v1, p0, p1}, Lcom/connectsdk/discovery/DiscoveryManagerListener;->onDeviceRemoved(Lcom/connectsdk/discovery/DiscoveryManager;Lcom/connectsdk/device/ConnectableDevice;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/connectsdk/device/ConnectableDevice;->disconnect()V

    return-void
.end method

.method public handleDeviceUpdate(Lcom/connectsdk/device/ConnectableDevice;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/connectsdk/discovery/DiscoveryManager;->deviceIsCompatible(Lcom/connectsdk/device/ConnectableDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/connectsdk/device/ConnectableDevice;->getIpAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/connectsdk/discovery/DiscoveryManager;->compatibleDevices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/connectsdk/device/ConnectableDevice;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/connectsdk/discovery/DiscoveryManager;->discoveryListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/connectsdk/discovery/DiscoveryManagerListener;

    .line 4
    invoke-interface {v1, p0, p1}, Lcom/connectsdk/discovery/DiscoveryManagerListener;->onDeviceUpdated(Lcom/connectsdk/discovery/DiscoveryManager;Lcom/connectsdk/device/ConnectableDevice;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcom/connectsdk/discovery/DiscoveryManager;->handleDeviceAdd(Lcom/connectsdk/device/ConnectableDevice;)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/connectsdk/discovery/DiscoveryManager;->compatibleDevices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/connectsdk/device/ConnectableDevice;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0, p1}, Lcom/connectsdk/discovery/DiscoveryManager;->handleDeviceLoss(Lcom/connectsdk/device/ConnectableDevice;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public isNetcast(Lcom/connectsdk/service/config/ServiceDescription;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/connectsdk/service/config/ServiceDescription;->getModelName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/connectsdk/service/config/ServiceDescription;->getModelDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 3
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "LG TV"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WEBOS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/connectsdk/service/config/ServiceDescription;->getServiceID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Netcast TV"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onCapabilityUpdated(Lcom/connectsdk/device/ConnectableDevice;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/device/ConnectableDevice;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/connectsdk/discovery/DiscoveryManager;->handleDeviceUpdate(Lcom/connectsdk/device/ConnectableDevice;)V

    return-void
.end method

.method public onConnectionFailed(Lcom/connectsdk/device/ConnectableDevice;Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/connectsdk/discovery/DiscoveryManager;->unregisterBroadcastReceiver()V

    return-void
.end method

.method public onDeviceDisconnected(Lcom/connectsdk/device/ConnectableDevice;)V
    .locals 0

    return-void
.end method

.method public onDeviceReady(Lcom/connectsdk/device/ConnectableDevice;)V
    .locals 0

    return-void
.end method

.method public onPairingRequired(Lcom/connectsdk/device/ConnectableDevice;Lcom/connectsdk/service/DeviceService;Lcom/connectsdk/service/DeviceService$PairingType;)V
    .locals 0

    return-void
.end method

.method public onServiceAdded(Lcom/connectsdk/discovery/DiscoveryProvider;Lcom/connectsdk/service/config/ServiceDescription;)V
    .locals 4

    .line 1
    sget-object p1, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    const-string v0, "Service added: "

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/connectsdk/service/config/ServiceDescription;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/connectsdk/service/config/ServiceDescription;->getServiceID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/connectsdk/discovery/DiscoveryManager;->allDevices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/connectsdk/service/config/ServiceDescription;->getIpAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/connectsdk/discovery/DiscoveryManager;->connectableDeviceStore:Lcom/connectsdk/device/ConnectableDeviceStore;

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {p2}, Lcom/connectsdk/service/config/ServiceDescription;->getUUID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/connectsdk/device/ConnectableDeviceStore;->getDevice(Ljava/lang/String;)Lcom/connectsdk/device/ConnectableDevice;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v2, p0, Lcom/connectsdk/discovery/DiscoveryManager;->allDevices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/connectsdk/service/config/ServiceDescription;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p2}, Lcom/connectsdk/service/config/ServiceDescription;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/connectsdk/device/ConnectableDevice;->setIpAddress(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/connectsdk/discovery/DiscoveryManager;->allDevices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/connectsdk/service/config/ServiceDescription;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/connectsdk/device/ConnectableDevice;

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 8
    new-instance v1, Lcom/connectsdk/device/ConnectableDevice;

    invoke-direct {v1, p2}, Lcom/connectsdk/device/ConnectableDevice;-><init>(Lcom/connectsdk/service/config/ServiceDescription;)V

    .line 9
    invoke-virtual {p2}, Lcom/connectsdk/service/config/ServiceDescription;->getIpAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/connectsdk/device/ConnectableDevice;->setIpAddress(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/connectsdk/discovery/DiscoveryManager;->allDevices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/connectsdk/service/config/ServiceDescription;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move v0, p1

    .line 11
    :goto_1
    invoke-virtual {p2}, Lcom/connectsdk/service/config/ServiceDescription;->getFriendlyName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/connectsdk/device/ConnectableDevice;->setFriendlyName(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/connectsdk/core/Util;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/connectsdk/device/ConnectableDevice;->setLastDetection(J)V

    .line 13
    invoke-virtual {p2}, Lcom/connectsdk/service/config/ServiceDescription;->getIpAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/connectsdk/device/ConnectableDevice;->setLastKnownIPAddress(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, p2, v1}, Lcom/connectsdk/discovery/DiscoveryManager;->addServiceDescriptionToDevice(Lcom/connectsdk/service/config/ServiceDescription;Lcom/connectsdk/device/ConnectableDevice;)V

    .line 15
    invoke-virtual {v1}, Lcom/connectsdk/device/ConnectableDevice;->getServices()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 16
    iget-object p1, p0, Lcom/connectsdk/discovery/DiscoveryManager;->allDevices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/connectsdk/service/config/ServiceDescription;->getIpAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    if-eqz v0, :cond_4

    .line 17
    invoke-virtual {p0, v1}, Lcom/connectsdk/discovery/DiscoveryManager;->handleDeviceAdd(Lcom/connectsdk/device/ConnectableDevice;)V

    goto :goto_2

    .line 18
    :cond_4
    invoke-virtual {p0, v1}, Lcom/connectsdk/discovery/DiscoveryManager;->handleDeviceUpdate(Lcom/connectsdk/device/ConnectableDevice;)V

    :goto_2
    return-void
.end method

.method public onServiceConfigUpdate(Lcom/connectsdk/service/config/ServiceConfig;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/connectsdk/discovery/DiscoveryManager;->connectableDeviceStore:Lcom/connectsdk/device/ConnectableDeviceStore;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/connectsdk/discovery/DiscoveryManager;->getAllDevices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/connectsdk/device/ConnectableDevice;

    .line 3
    invoke-virtual {p1}, Lcom/connectsdk/service/config/ServiceConfig;->getServiceUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/connectsdk/device/ConnectableDevice;->getServiceWithUUID(Ljava/lang/String;)Lcom/connectsdk/service/DeviceService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/connectsdk/discovery/DiscoveryManager;->connectableDeviceStore:Lcom/connectsdk/device/ConnectableDeviceStore;

    invoke-interface {v2, v1}, Lcom/connectsdk/device/ConnectableDeviceStore;->updateDevice(Lcom/connectsdk/device/ConnectableDevice;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onServiceDiscoveryFailed(Lcom/connectsdk/discovery/DiscoveryProvider;Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    const-string p2, "DiscoveryProviderListener, Service Discovery Failed"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceRemoved(Lcom/connectsdk/discovery/DiscoveryProvider;Lcom/connectsdk/service/config/ServiceDescription;)V
    .locals 2

    if-nez p2, :cond_0

    .line 1
    sget-object p1, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    const-string p2, "onServiceRemoved: unknown service description"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_0
    sget-object p1, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    const-string v0, "onServiceRemoved: friendlyName: "

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/connectsdk/service/config/ServiceDescription;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/connectsdk/discovery/DiscoveryManager;->allDevices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/connectsdk/service/config/ServiceDescription;->getIpAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/connectsdk/device/ConnectableDevice;

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p2}, Lcom/connectsdk/service/config/ServiceDescription;->getServiceID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/connectsdk/device/ConnectableDevice;->removeServiceWithId(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/connectsdk/device/ConnectableDevice;->getServices()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/connectsdk/discovery/DiscoveryManager;->allDevices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/connectsdk/service/config/ServiceDescription;->getIpAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0, p1}, Lcom/connectsdk/discovery/DiscoveryManager;->handleDeviceLoss(Lcom/connectsdk/device/ConnectableDevice;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, p1}, Lcom/connectsdk/discovery/DiscoveryManager;->handleDeviceUpdate(Lcom/connectsdk/device/ConnectableDevice;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public registerDefaultDeviceTypes()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/connectsdk/DefaultPlatform;->getDeviceServiceMap()Ljava/util/HashMap;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/connectsdk/discovery/DiscoveryManager;->registerDeviceService(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerDeviceService(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/connectsdk/service/DeviceService;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/connectsdk/discovery/DiscoveryProvider;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/connectsdk/service/DeviceService;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    const-class v0, Lcom/connectsdk/discovery/DiscoveryProvider;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/connectsdk/discovery/DiscoveryManager;->discoveryProviders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/connectsdk/discovery/DiscoveryProvider;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    move-object v1, v2

    :goto_0
    const/4 v0, 0x0

    if-nez v1, :cond_4

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Class;

    .line 5
    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v0

    invoke-virtual {p2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    iget-object v3, p0, Lcom/connectsdk/discovery/DiscoveryManager;->context:Landroid/content/Context;

    aput-object v3, v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 7
    move-object v1, p2

    check-cast v1, Lcom/connectsdk/discovery/DiscoveryProvider;

    .line 8
    invoke-interface {v1, p0}, Lcom/connectsdk/discovery/DiscoveryProvider;->addListener(Lcom/connectsdk/discovery/DiscoveryProviderListener;)V

    .line 9
    iget-object p2, p0, Lcom/connectsdk/discovery/DiscoveryManager;->discoveryProviders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string p2, "discoveryFilter"

    new-array v3, v0, [Ljava/lang/Class;

    .line 10
    invoke-virtual {p1, p2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    .line 11
    invoke-virtual {p2, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 12
    check-cast p2, Lcom/connectsdk/discovery/DiscoveryFilter;

    .line 13
    invoke-virtual {p2}, Lcom/connectsdk/discovery/DiscoveryFilter;->getServiceId()Ljava/lang/String;

    move-result-object v0

    .line 14
    iget-object v2, p0, Lcom/connectsdk/discovery/DiscoveryManager;->deviceClasses:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-interface {v1, p2}, Lcom/connectsdk/discovery/DiscoveryProvider;->addDeviceFilter(Lcom/connectsdk/discovery/DiscoveryFilter;)V

    .line 16
    iget-boolean p1, p0, Lcom/connectsdk/discovery/DiscoveryManager;->mSearching:Z

    if-eqz p1, :cond_5

    .line 17
    invoke-interface {v1}, Lcom/connectsdk/discovery/DiscoveryProvider;->restart()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :catch_5
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    :catch_6
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method

.method public removeListener(Lcom/connectsdk/discovery/DiscoveryManagerListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/discovery/DiscoveryManager;->discoveryListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCapabilityFilters(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/connectsdk/discovery/CapabilityFilter;",
            ">;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/connectsdk/discovery/DiscoveryManager;->capabilityFilters:Ljava/util/List;

    .line 3
    iget-object p1, p0, Lcom/connectsdk/discovery/DiscoveryManager;->compatibleDevices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/connectsdk/device/ConnectableDevice;

    .line 4
    invoke-virtual {p0, v0}, Lcom/connectsdk/discovery/DiscoveryManager;->handleDeviceLoss(Lcom/connectsdk/device/ConnectableDevice;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/connectsdk/discovery/DiscoveryManager;->compatibleDevices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 6
    iget-object p1, p0, Lcom/connectsdk/discovery/DiscoveryManager;->allDevices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/connectsdk/device/ConnectableDevice;

    .line 7
    invoke-virtual {p0, v0}, Lcom/connectsdk/discovery/DiscoveryManager;->deviceIsCompatible(Lcom/connectsdk/device/ConnectableDevice;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/connectsdk/discovery/DiscoveryManager;->compatibleDevices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/connectsdk/device/ConnectableDevice;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p0, v0}, Lcom/connectsdk/discovery/DiscoveryManager;->handleDeviceAdd(Lcom/connectsdk/device/ConnectableDevice;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public varargs setCapabilityFilters([Lcom/connectsdk/discovery/CapabilityFilter;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/connectsdk/discovery/DiscoveryManager;->setCapabilityFilters(Ljava/util/List;)V

    return-void
.end method

.method public setConnectableDeviceStore(Lcom/connectsdk/device/ConnectableDeviceStore;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/discovery/DiscoveryManager;->connectableDeviceStore:Lcom/connectsdk/device/ConnectableDeviceStore;

    return-void
.end method

.method public setPairingLevel(Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/discovery/DiscoveryManager;->pairingLevel:Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;

    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/connectsdk/discovery/DiscoveryManager;->mSearching:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/connectsdk/discovery/DiscoveryManager;->discoveryProviders:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/connectsdk/discovery/DiscoveryManager;->mSearching:Z

    .line 4
    iget-object v0, p0, Lcom/connectsdk/discovery/DiscoveryManager;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    .line 5
    new-instance v0, Lcom/connectsdk/discovery/DiscoveryManager$2;

    invoke-direct {v0, p0}, Lcom/connectsdk/discovery/DiscoveryManager$2;-><init>(Lcom/connectsdk/discovery/DiscoveryManager;)V

    invoke-static {v0}, Lcom/connectsdk/core/Util;->runOnUI(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/connectsdk/discovery/DiscoveryManager;->mSearching:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/connectsdk/discovery/DiscoveryManager;->mSearching:Z

    .line 3
    iget-object v0, p0, Lcom/connectsdk/discovery/DiscoveryManager;->discoveryProviders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/connectsdk/discovery/DiscoveryProvider;

    .line 4
    invoke-interface {v1}, Lcom/connectsdk/discovery/DiscoveryProvider;->stop()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/connectsdk/discovery/DiscoveryManager;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/connectsdk/discovery/DiscoveryManager;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    :cond_2
    return-void
.end method

.method public unregisterDeviceService(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/connectsdk/service/DeviceService;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    const-class v0, Lcom/connectsdk/discovery/DiscoveryProvider;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/connectsdk/discovery/DiscoveryManager;->discoveryProviders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/connectsdk/discovery/DiscoveryProvider;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_4

    return-void

    :cond_4
    const-string p2, "discoveryFilter"

    const/4 v0, 0x0

    new-array v3, v0, [Ljava/lang/Class;

    .line 5
    invoke-virtual {p1, p2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    .line 6
    invoke-virtual {p1, v2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    check-cast p1, Lcom/connectsdk/discovery/DiscoveryFilter;

    .line 8
    invoke-virtual {p1}, Lcom/connectsdk/discovery/DiscoveryFilter;->getServiceId()Ljava/lang/String;

    move-result-object p2

    .line 9
    iget-object v0, p0, Lcom/connectsdk/discovery/DiscoveryManager;->deviceClasses:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_5

    return-void

    .line 10
    :cond_5
    invoke-interface {v1, p1}, Lcom/connectsdk/discovery/DiscoveryProvider;->removeDeviceFilter(Lcom/connectsdk/discovery/DiscoveryFilter;)V

    .line 11
    invoke-interface {v1}, Lcom/connectsdk/discovery/DiscoveryProvider;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 12
    invoke-interface {v1}, Lcom/connectsdk/discovery/DiscoveryProvider;->stop()V

    .line 13
    iget-object p1, p0, Lcom/connectsdk/discovery/DiscoveryManager;->discoveryProviders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_6
    :goto_1
    return-void
.end method
