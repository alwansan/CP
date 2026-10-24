.class Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$MediaRouterCallback$1;
.super Ljava/util/TimerTask;
.source "CastDiscoveryProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$MediaRouterCallback;->onRouteRemoved(Landroidx/mediarouter/media/g;Landroidx/mediarouter/media/g$h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$MediaRouterCallback;

.field public final synthetic val$route:Landroidx/mediarouter/media/g$h;


# direct methods
.method public constructor <init>(Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$MediaRouterCallback;Landroidx/mediarouter/media/g$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$MediaRouterCallback$1;->this$1:Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$MediaRouterCallback;

    iput-object p2, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$MediaRouterCallback$1;->val$route:Landroidx/mediarouter/media/g$h;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$MediaRouterCallback$1;->this$1:Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$MediaRouterCallback;

    iget-object v1, p0, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$MediaRouterCallback$1;->val$route:Landroidx/mediarouter/media/g$h;

    invoke-static {v0, v1}, Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$MediaRouterCallback;->access$500(Lcom/connectsdk/discovery/provider/CastDiscoveryProvider$MediaRouterCallback;Landroidx/mediarouter/media/g$h;)V

    return-void
.end method
