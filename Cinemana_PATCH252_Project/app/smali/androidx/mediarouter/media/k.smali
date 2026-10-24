.class public Landroidx/mediarouter/media/k;
.super Ljava/lang/Object;
.source "MediaRouter2Utils.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# direct methods
.method public static a(Lcom/shabakaty/downloader/cq2;)Landroid/media/RouteDiscoveryPreference;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/cq2;->a()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/cq2;->b:Landroidx/mediarouter/media/f;

    .line 3
    invoke-virtual {v0}, Landroidx/mediarouter/media/f;->a()V

    .line 4
    iget-object v0, v0, Landroidx/mediarouter/media/f;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 5
    new-instance p0, Landroid/media/RouteDiscoveryPreference$Builder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/RouteDiscoveryPreference$Builder;-><init>(Ljava/util/List;Z)V

    invoke-virtual {p0}, Landroid/media/RouteDiscoveryPreference$Builder;->build()Landroid/media/RouteDiscoveryPreference;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/cq2;->b()Z

    move-result v0

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/cq2;->a()V

    .line 8
    iget-object p0, p0, Lcom/shabakaty/downloader/cq2;->b:Landroidx/mediarouter/media/f;

    .line 9
    invoke-virtual {p0}, Landroidx/mediarouter/media/f;->a()V

    .line 10
    iget-object p0, p0, Landroidx/mediarouter/media/f;->b:Ljava/util/List;

    .line 11
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v1, Lcom/shabakaty/downloader/hq2;->a:Lcom/shabakaty/downloader/hq2;

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 12
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 13
    new-instance v1, Landroid/media/RouteDiscoveryPreference$Builder;

    invoke-direct {v1, p0, v0}, Landroid/media/RouteDiscoveryPreference$Builder;-><init>(Ljava/util/List;Z)V

    invoke-virtual {v1}, Landroid/media/RouteDiscoveryPreference$Builder;->build()Landroid/media/RouteDiscoveryPreference;

    move-result-object p0

    return-object p0
.end method
