.class public Lcom/shabakaty/downloader/jq2;
.super Landroid/media/MediaRouter$Callback;
.source "MediaRouterJellybean.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/shabakaty/downloader/iq2;",
        ">",
        "Landroid/media/MediaRouter$Callback;"
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/iq2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/iq2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/media/MediaRouter$Callback;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/jq2;->a:Lcom/shabakaty/downloader/iq2;

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/jq2;->a:Lcom/shabakaty/downloader/iq2;

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/iq2;->i(Ljava/lang/Object;)V

    return-void
.end method

.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/jq2;->a:Lcom/shabakaty/downloader/iq2;

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/iq2;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onRouteGrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/jq2;->a:Lcom/shabakaty/downloader/iq2;

    invoke-interface {p1, p2, p3, p4}, Lcom/shabakaty/downloader/iq2;->h(Ljava/lang/Object;Ljava/lang/Object;I)V

    return-void
.end method

.method public onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/jq2;->a:Lcom/shabakaty/downloader/iq2;

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/iq2;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/jq2;->a:Lcom/shabakaty/downloader/iq2;

    invoke-interface {p1, p2, p3}, Lcom/shabakaty/downloader/iq2;->e(ILjava/lang/Object;)V

    return-void
.end method

.method public onRouteUngrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/jq2;->a:Lcom/shabakaty/downloader/iq2;

    invoke-interface {p1, p2, p3}, Lcom/shabakaty/downloader/iq2;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/jq2;->a:Lcom/shabakaty/downloader/iq2;

    invoke-interface {p1, p2, p3}, Lcom/shabakaty/downloader/iq2;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public onRouteVolumeChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/jq2;->a:Lcom/shabakaty/downloader/iq2;

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/iq2;->k(Ljava/lang/Object;)V

    return-void
.end method
