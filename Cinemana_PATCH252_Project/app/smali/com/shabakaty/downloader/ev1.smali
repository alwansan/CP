.class public final Lcom/shabakaty/downloader/ev1;
.super Lcom/shabakaty/downloader/af2;
.source "HorizontalScrollVideosView.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/jj;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/cinemana/ui/home_fragment/HorizontalScrollVideosView;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/ui/home_fragment/HorizontalScrollVideosView;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/ev1;->r:Lcom/shabakaty/cinemana/ui/home_fragment/HorizontalScrollVideosView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/jj;

    iget-object v1, p0, Lcom/shabakaty/downloader/ev1;->r:Lcom/shabakaty/cinemana/ui/home_fragment/HorizontalScrollVideosView;

    invoke-virtual {v1}, Lcom/shabakaty/cinemana/ui/home_fragment/HorizontalScrollVideosView;->getVideos()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    :cond_0
    iget-object v2, p0, Lcom/shabakaty/downloader/ev1;->r:Lcom/shabakaty/cinemana/ui/home_fragment/HorizontalScrollVideosView;

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/jj;-><init>(Ljava/util/List;Lcom/shabakaty/downloader/pk;)V

    return-object v0
.end method
