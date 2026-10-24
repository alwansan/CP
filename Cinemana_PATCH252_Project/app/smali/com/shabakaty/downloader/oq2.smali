.class public Lcom/shabakaty/downloader/oq2;
.super Lcom/shabakaty/downloader/jq2;
.source "MediaRouterJellybeanMr1.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/shabakaty/downloader/nq2;",
        ">",
        "Lcom/shabakaty/downloader/jq2<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/nq2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/jq2;-><init>(Lcom/shabakaty/downloader/iq2;)V

    return-void
.end method


# virtual methods
.method public onRoutePresentationDisplayChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/jq2;->a:Lcom/shabakaty/downloader/iq2;

    check-cast p1, Lcom/shabakaty/downloader/nq2;

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/nq2;->f(Ljava/lang/Object;)V

    return-void
.end method
