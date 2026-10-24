.class public Lcom/shabakaty/downloader/mq2;
.super Landroid/media/MediaRouter$VolumeCallback;
.source "MediaRouterJellybean.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/shabakaty/downloader/lq2;",
        ">",
        "Landroid/media/MediaRouter$VolumeCallback;"
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/lq2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/lq2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/media/MediaRouter$VolumeCallback;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/mq2;->a:Lcom/shabakaty/downloader/lq2;

    return-void
.end method


# virtual methods
.method public onVolumeSetRequest(Landroid/media/MediaRouter$RouteInfo;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mq2;->a:Lcom/shabakaty/downloader/lq2;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/lq2;->j(Ljava/lang/Object;I)V

    return-void
.end method

.method public onVolumeUpdateRequest(Landroid/media/MediaRouter$RouteInfo;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mq2;->a:Lcom/shabakaty/downloader/lq2;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/lq2;->c(Ljava/lang/Object;I)V

    return-void
.end method
