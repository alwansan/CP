.class Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$2;
.super Ljava/lang/Object;
.source "CastDiscoveryProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->rescan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;


# direct methods
.method public constructor <init>(Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$2;->this$0:Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$2;->this$0:Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;

    invoke-static {v0}, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->access$100(Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;)Landroidx/mediarouter/media/g;

    move-result-object v0

    iget-object v1, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$2;->this$0:Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;

    invoke-static {v1}, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->access$200(Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;)Landroidx/mediarouter/media/f;

    move-result-object v1

    iget-object v2, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$2;->this$0:Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;

    iget-object v2, v2, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider;->mMediaRouterCallback:Landroidx/mediarouter/media/g$b;

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroidx/mediarouter/media/g;->a(Landroidx/mediarouter/media/f;Landroidx/mediarouter/media/g$b;I)V

    return-void
.end method
