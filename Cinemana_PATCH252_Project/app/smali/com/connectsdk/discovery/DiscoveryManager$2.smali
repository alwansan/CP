.class Lcom/connectsdk/discovery/DiscoveryManager$2;
.super Ljava/lang/Object;
.source "DiscoveryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/discovery/DiscoveryManager;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/discovery/DiscoveryManager;


# direct methods
.method public constructor <init>(Lcom/connectsdk/discovery/DiscoveryManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/discovery/DiscoveryManager$2;->this$0:Lcom/connectsdk/discovery/DiscoveryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/connectsdk/discovery/DiscoveryManager$2;->this$0:Lcom/connectsdk/discovery/DiscoveryManager;

    iget-object v0, v0, Lcom/connectsdk/discovery/DiscoveryManager;->discoveryProviders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/connectsdk/discovery/DiscoveryManager$2;->this$0:Lcom/connectsdk/discovery/DiscoveryManager;

    invoke-virtual {v0}, Lcom/connectsdk/discovery/DiscoveryManager;->registerDefaultDeviceTypes()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/connectsdk/discovery/DiscoveryManager$2;->this$0:Lcom/connectsdk/discovery/DiscoveryManager;

    iget-object v0, v0, Lcom/connectsdk/discovery/DiscoveryManager;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/connectsdk/discovery/DiscoveryManager$2;->this$0:Lcom/connectsdk/discovery/DiscoveryManager;

    iget-object v0, v0, Lcom/connectsdk/discovery/DiscoveryManager;->discoveryProviders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/connectsdk/discovery/DiscoveryProvider;

    .line 7
    invoke-interface {v1}, Lcom/connectsdk/discovery/DiscoveryProvider;->start()V

    goto :goto_0

    .line 8
    :cond_1
    sget-object v0, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    const-string v1, "Wifi is not connected yet"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance v0, Lcom/connectsdk/discovery/DiscoveryManager$2$1;

    invoke-direct {v0, p0}, Lcom/connectsdk/discovery/DiscoveryManager$2$1;-><init>(Lcom/connectsdk/discovery/DiscoveryManager$2;)V

    invoke-static {v0}, Lcom/connectsdk/core/Util;->runOnUI(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
