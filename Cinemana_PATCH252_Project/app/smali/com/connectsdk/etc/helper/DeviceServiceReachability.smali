.class public Lcom/connectsdk/etc/helper/DeviceServiceReachability;
.super Ljava/lang/Object;
.source "DeviceServiceReachability.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/connectsdk/etc/helper/DeviceServiceReachability$DeviceServiceReachabilityListener;
    }
.end annotation


# static fields
.field private static final TIMEOUT:I = 0x2710


# instance fields
.field private ipAddress:Ljava/net/InetAddress;

.field private listener:Lcom/connectsdk/etc/helper/DeviceServiceReachability$DeviceServiceReachabilityListener;

.field private final testReachability:Ljava/lang/Runnable;

.field private testThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/connectsdk/etc/helper/DeviceServiceReachability$1;

    invoke-direct {v0, p0}, Lcom/connectsdk/etc/helper/DeviceServiceReachability$1;-><init>(Lcom/connectsdk/etc/helper/DeviceServiceReachability;)V

    iput-object v0, p0, Lcom/connectsdk/etc/helper/DeviceServiceReachability;->testReachability:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/connectsdk/etc/helper/DeviceServiceReachability$1;

    invoke-direct {v0, p0}, Lcom/connectsdk/etc/helper/DeviceServiceReachability$1;-><init>(Lcom/connectsdk/etc/helper/DeviceServiceReachability;)V

    iput-object v0, p0, Lcom/connectsdk/etc/helper/DeviceServiceReachability;->testReachability:Ljava/lang/Runnable;

    .line 5
    iput-object p1, p0, Lcom/connectsdk/etc/helper/DeviceServiceReachability;->ipAddress:Ljava/net/InetAddress;

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;Lcom/connectsdk/etc/helper/DeviceServiceReachability$DeviceServiceReachabilityListener;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lcom/connectsdk/etc/helper/DeviceServiceReachability$1;

    invoke-direct {v0, p0}, Lcom/connectsdk/etc/helper/DeviceServiceReachability$1;-><init>(Lcom/connectsdk/etc/helper/DeviceServiceReachability;)V

    iput-object v0, p0, Lcom/connectsdk/etc/helper/DeviceServiceReachability;->testReachability:Ljava/lang/Runnable;

    .line 8
    iput-object p1, p0, Lcom/connectsdk/etc/helper/DeviceServiceReachability;->ipAddress:Ljava/net/InetAddress;

    .line 9
    iput-object p2, p0, Lcom/connectsdk/etc/helper/DeviceServiceReachability;->listener:Lcom/connectsdk/etc/helper/DeviceServiceReachability$DeviceServiceReachabilityListener;

    return-void
.end method

.method public static synthetic access$000(Lcom/connectsdk/etc/helper/DeviceServiceReachability;)Ljava/net/InetAddress;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/connectsdk/etc/helper/DeviceServiceReachability;->ipAddress:Ljava/net/InetAddress;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/connectsdk/etc/helper/DeviceServiceReachability;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/connectsdk/etc/helper/DeviceServiceReachability;->unreachable()V

    return-void
.end method

.method public static getReachability(Ljava/lang/String;Lcom/connectsdk/etc/helper/DeviceServiceReachability$DeviceServiceReachabilityListener;)Lcom/connectsdk/etc/helper/DeviceServiceReachability;
    .locals 0

    .line 2
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-static {p0, p1}, Lcom/connectsdk/etc/helper/DeviceServiceReachability;->getReachability(Ljava/net/InetAddress;Lcom/connectsdk/etc/helper/DeviceServiceReachability$DeviceServiceReachabilityListener;)Lcom/connectsdk/etc/helper/DeviceServiceReachability;

    move-result-object p0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getReachability(Ljava/net/InetAddress;Lcom/connectsdk/etc/helper/DeviceServiceReachability$DeviceServiceReachabilityListener;)Lcom/connectsdk/etc/helper/DeviceServiceReachability;
    .locals 1

    .line 1
    new-instance v0, Lcom/connectsdk/etc/helper/DeviceServiceReachability;

    invoke-direct {v0, p0, p1}, Lcom/connectsdk/etc/helper/DeviceServiceReachability;-><init>(Ljava/net/InetAddress;Lcom/connectsdk/etc/helper/DeviceServiceReachability$DeviceServiceReachabilityListener;)V

    return-object v0
.end method

.method private unreachable()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/connectsdk/etc/helper/DeviceServiceReachability;->stop()V

    .line 2
    iget-object v0, p0, Lcom/connectsdk/etc/helper/DeviceServiceReachability;->listener:Lcom/connectsdk/etc/helper/DeviceServiceReachability$DeviceServiceReachabilityListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p0}, Lcom/connectsdk/etc/helper/DeviceServiceReachability$DeviceServiceReachabilityListener;->onLoseReachability(Lcom/connectsdk/etc/helper/DeviceServiceReachability;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getIpAddress()Ljava/net/InetAddress;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/etc/helper/DeviceServiceReachability;->ipAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getListener()Lcom/connectsdk/etc/helper/DeviceServiceReachability$DeviceServiceReachabilityListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/etc/helper/DeviceServiceReachability;->listener:Lcom/connectsdk/etc/helper/DeviceServiceReachability$DeviceServiceReachabilityListener;

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/etc/helper/DeviceServiceReachability;->testThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setIpAddress(Ljava/net/InetAddress;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/etc/helper/DeviceServiceReachability;->ipAddress:Ljava/net/InetAddress;

    return-void
.end method

.method public setListener(Lcom/connectsdk/etc/helper/DeviceServiceReachability$DeviceServiceReachabilityListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/etc/helper/DeviceServiceReachability;->listener:Lcom/connectsdk/etc/helper/DeviceServiceReachability$DeviceServiceReachabilityListener;

    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/connectsdk/etc/helper/DeviceServiceReachability;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/connectsdk/etc/helper/DeviceServiceReachability;->testReachability:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/connectsdk/etc/helper/DeviceServiceReachability;->testThread:Ljava/lang/Thread;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/connectsdk/etc/helper/DeviceServiceReachability;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/connectsdk/etc/helper/DeviceServiceReachability;->testThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/connectsdk/etc/helper/DeviceServiceReachability;->testThread:Ljava/lang/Thread;

    return-void
.end method
