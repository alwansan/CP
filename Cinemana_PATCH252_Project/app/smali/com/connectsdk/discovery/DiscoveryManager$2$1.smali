.class Lcom/connectsdk/discovery/DiscoveryManager$2$1;
.super Ljava/lang/Object;
.source "DiscoveryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/discovery/DiscoveryManager$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/connectsdk/discovery/DiscoveryManager$2;


# direct methods
.method public constructor <init>(Lcom/connectsdk/discovery/DiscoveryManager$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/discovery/DiscoveryManager$2$1;->this$1:Lcom/connectsdk/discovery/DiscoveryManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/connectsdk/discovery/DiscoveryManager$2$1;->this$1:Lcom/connectsdk/discovery/DiscoveryManager$2;

    iget-object v0, v0, Lcom/connectsdk/discovery/DiscoveryManager$2;->this$0:Lcom/connectsdk/discovery/DiscoveryManager;

    invoke-static {v0}, Lcom/connectsdk/discovery/DiscoveryManager;->access$300(Lcom/connectsdk/discovery/DiscoveryManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

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
    iget-object v2, p0, Lcom/connectsdk/discovery/DiscoveryManager$2$1;->this$1:Lcom/connectsdk/discovery/DiscoveryManager$2;

    iget-object v2, v2, Lcom/connectsdk/discovery/DiscoveryManager$2;->this$0:Lcom/connectsdk/discovery/DiscoveryManager;

    new-instance v3, Lcom/connectsdk/service/command/ServiceCommandError;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "No wifi connection"

    invoke-direct {v3, v4, v6, v5}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2, v3}, Lcom/connectsdk/discovery/DiscoveryManagerListener;->onDiscoveryFailed(Lcom/connectsdk/discovery/DiscoveryManager;Lcom/connectsdk/service/command/ServiceCommandError;)V

    goto :goto_0

    :cond_0
    return-void
.end method
