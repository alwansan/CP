.class public Landroidx/mediarouter/media/a;
.super Landroidx/mediarouter/media/c;
.source "MediaRoute2Provider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/media/a$c;,
        Landroidx/mediarouter/media/a$d;,
        Landroidx/mediarouter/media/a$b;,
        Landroidx/mediarouter/media/a$f;,
        Landroidx/mediarouter/media/a$e;,
        Landroidx/mediarouter/media/a$a;
    }
.end annotation


# static fields
.field public static final synthetic H:I


# instance fields
.field public final A:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/MediaRouter2$RoutingController;",
            "Landroidx/mediarouter/media/a$c;",
            ">;"
        }
    .end annotation
.end field

.field public final B:Landroid/media/MediaRouter2$RouteCallback;

.field public final C:Landroid/media/MediaRouter2$TransferCallback;

.field public final D:Landroid/media/MediaRouter2$ControllerCallback;

.field public final E:Ljava/util/concurrent/Executor;

.field public F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation
.end field

.field public G:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final z:Landroid/media/MediaRouter2;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "MR2Provider"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/mediarouter/media/a$a;)V
    .locals 1

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/mediarouter/media/c;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/c$d;)V

    .line 2
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Landroidx/mediarouter/media/a;->A:Ljava/util/Map;

    .line 3
    new-instance p2, Landroidx/mediarouter/media/a$e;

    invoke-direct {p2, p0}, Landroidx/mediarouter/media/a$e;-><init>(Landroidx/mediarouter/media/a;)V

    iput-object p2, p0, Landroidx/mediarouter/media/a;->B:Landroid/media/MediaRouter2$RouteCallback;

    .line 4
    new-instance p2, Landroidx/mediarouter/media/a$f;

    invoke-direct {p2, p0}, Landroidx/mediarouter/media/a$f;-><init>(Landroidx/mediarouter/media/a;)V

    iput-object p2, p0, Landroidx/mediarouter/media/a;->C:Landroid/media/MediaRouter2$TransferCallback;

    .line 5
    new-instance p2, Landroidx/mediarouter/media/a$b;

    invoke-direct {p2, p0}, Landroidx/mediarouter/media/a$b;-><init>(Landroidx/mediarouter/media/a;)V

    iput-object p2, p0, Landroidx/mediarouter/media/a;->D:Landroid/media/MediaRouter2$ControllerCallback;

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/mediarouter/media/a;->F:Ljava/util/List;

    .line 7
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Landroidx/mediarouter/media/a;->G:Ljava/util/Map;

    .line 8
    invoke-static {p1}, Landroid/media/MediaRouter2;->getInstance(Landroid/content/Context;)Landroid/media/MediaRouter2;

    move-result-object p1

    iput-object p1, p0, Landroidx/mediarouter/media/a;->z:Landroid/media/MediaRouter2;

    .line 9
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 10
    new-instance p2, Lcom/shabakaty/downloader/up2;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/shabakaty/downloader/up2;-><init>(Landroid/os/Handler;I)V

    iput-object p2, p0, Landroidx/mediarouter/media/a;->E:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public l(Ljava/lang/String;)Landroidx/mediarouter/media/c$b;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/a;->A:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/mediarouter/media/a$c;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    return-object v2
.end method

.method public m(Ljava/lang/String;)Landroidx/mediarouter/media/c$e;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/a;->G:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    new-instance v0, Landroidx/mediarouter/media/a$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/mediarouter/media/a$d;-><init>(Landroidx/mediarouter/media/a;Ljava/lang/String;Landroidx/mediarouter/media/a$c;)V

    return-object v0
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;)Landroidx/mediarouter/media/c$e;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/a;->G:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    iget-object v1, p0, Landroidx/mediarouter/media/a;->A:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find the matching GroupRouteController. routeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", routeGroupId="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MR2Provider"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance p1, Landroidx/mediarouter/media/a$d;

    invoke-direct {p1, p0, v0, v3}, Landroidx/mediarouter/media/a$d;-><init>(Landroidx/mediarouter/media/a;Ljava/lang/String;Landroidx/mediarouter/media/a$c;)V

    return-object p1

    .line 5
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/mediarouter/media/a$c;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/media/MediaRouter2$RoutingController;->getId()Ljava/lang/String;

    throw v3
.end method

.method public o(Lcom/shabakaty/downloader/cq2;)V
    .locals 3

    .line 1
    sget-object v0, Landroidx/mediarouter/media/g;->d:Landroidx/mediarouter/media/g$e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, v0, Landroidx/mediarouter/media/g$e;->w:I

    :goto_0
    if-lez v0, :cond_2

    if-nez p1, :cond_1

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/cq2;

    sget-object v0, Landroidx/mediarouter/media/f;->c:Landroidx/mediarouter/media/f;

    invoke-direct {p1, v0, v1}, Lcom/shabakaty/downloader/cq2;-><init>(Landroidx/mediarouter/media/f;Z)V

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/cq2;->a()V

    .line 5
    iget-object v0, p1, Lcom/shabakaty/downloader/cq2;->b:Landroidx/mediarouter/media/f;

    .line 6
    invoke-virtual {v0}, Landroidx/mediarouter/media/f;->a()V

    .line 7
    iget-object v0, v0, Landroidx/mediarouter/media/f;->b:Ljava/util/List;

    const-string v1, "android.media.intent.category.LIVE_AUDIO"

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9
    new-instance v1, Landroidx/mediarouter/media/f$a;

    invoke-direct {v1}, Landroidx/mediarouter/media/f$a;-><init>()V

    .line 10
    invoke-virtual {v1, v0}, Landroidx/mediarouter/media/f$a;->a(Ljava/util/Collection;)Landroidx/mediarouter/media/f$a;

    .line 11
    invoke-virtual {v1}, Landroidx/mediarouter/media/f$a;->c()Landroidx/mediarouter/media/f;

    move-result-object v0

    .line 12
    new-instance v1, Lcom/shabakaty/downloader/cq2;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/cq2;->b()Z

    move-result p1

    invoke-direct {v1, v0, p1}, Lcom/shabakaty/downloader/cq2;-><init>(Landroidx/mediarouter/media/f;Z)V

    .line 13
    iget-object p1, p0, Landroidx/mediarouter/media/a;->z:Landroid/media/MediaRouter2;

    iget-object v0, p0, Landroidx/mediarouter/media/a;->E:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroidx/mediarouter/media/a;->B:Landroid/media/MediaRouter2$RouteCallback;

    .line 14
    invoke-static {v1}, Landroidx/mediarouter/media/k;->a(Lcom/shabakaty/downloader/cq2;)Landroid/media/RouteDiscoveryPreference;

    move-result-object v1

    .line 15
    invoke-virtual {p1, v0, v2, v1}, Landroid/media/MediaRouter2;->registerRouteCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$RouteCallback;Landroid/media/RouteDiscoveryPreference;)V

    .line 16
    iget-object p1, p0, Landroidx/mediarouter/media/a;->z:Landroid/media/MediaRouter2;

    iget-object v0, p0, Landroidx/mediarouter/media/a;->E:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroidx/mediarouter/media/a;->C:Landroid/media/MediaRouter2$TransferCallback;

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaRouter2;->registerTransferCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$TransferCallback;)V

    .line 17
    iget-object p1, p0, Landroidx/mediarouter/media/a;->z:Landroid/media/MediaRouter2;

    iget-object v0, p0, Landroidx/mediarouter/media/a;->E:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroidx/mediarouter/media/a;->D:Landroid/media/MediaRouter2$ControllerCallback;

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaRouter2;->registerControllerCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$ControllerCallback;)V

    goto :goto_1

    .line 18
    :cond_2
    iget-object p1, p0, Landroidx/mediarouter/media/a;->z:Landroid/media/MediaRouter2;

    iget-object v0, p0, Landroidx/mediarouter/media/a;->B:Landroid/media/MediaRouter2$RouteCallback;

    invoke-virtual {p1, v0}, Landroid/media/MediaRouter2;->unregisterRouteCallback(Landroid/media/MediaRouter2$RouteCallback;)V

    .line 19
    iget-object p1, p0, Landroidx/mediarouter/media/a;->z:Landroid/media/MediaRouter2;

    iget-object v0, p0, Landroidx/mediarouter/media/a;->C:Landroid/media/MediaRouter2$TransferCallback;

    invoke-virtual {p1, v0}, Landroid/media/MediaRouter2;->unregisterTransferCallback(Landroid/media/MediaRouter2$TransferCallback;)V

    .line 20
    iget-object p1, p0, Landroidx/mediarouter/media/a;->z:Landroid/media/MediaRouter2;

    iget-object v0, p0, Landroidx/mediarouter/media/a;->D:Landroid/media/MediaRouter2$ControllerCallback;

    invoke-virtual {p1, v0}, Landroid/media/MediaRouter2;->unregisterControllerCallback(Landroid/media/MediaRouter2$ControllerCallback;)V

    :goto_1
    return-void
.end method

.method public r(Ljava/lang/String;)Landroid/media/MediaRoute2Info;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget-object v1, p0, Landroidx/mediarouter/media/a;->F:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    .line 2
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v0
.end method

.method public s(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/a;->r(Ljava/lang/String;)Landroid/media/MediaRoute2Info;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transferTo: Specified route not found. routeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MR2Provider"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Landroidx/mediarouter/media/a;->z:Landroid/media/MediaRouter2;

    invoke-virtual {p1, v0}, Landroid/media/MediaRouter2;->transferTo(Landroid/media/MediaRoute2Info;)V

    return-void
.end method
