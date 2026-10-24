.class public final Lcom/shabakaty/downloader/j10;
.super Lcom/shabakaty/downloader/af2;
.source "CinemanaPlayerView.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/is3;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/player/CinemanaPlayerView;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/j10;->r:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/is3;

    iget-object v1, p0, Lcom/shabakaty/downloader/j10;->r:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    invoke-virtual {v1}, Lcom/shabakaty/cinemana/player/CinemanaPlayerView;->getBinding()Lcom/shabakaty/downloader/n10;

    move-result-object v1

    iget-object v1, v1, Lcom/shabakaty/downloader/n10;->O:Lcom/google/android/exoplayer2/ui/PlayerView;

    const-string v2, "binding.exoPlayerView"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/is3;-><init>(Lcom/google/android/exoplayer2/ui/PlayerView;)V

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/i10;

    iget-object v2, p0, Lcom/shabakaty/downloader/j10;->r:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/i10;-><init>(Lcom/shabakaty/cinemana/player/CinemanaPlayerView;)V

    const-string v2, "scaleChanged"

    .line 3
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-object v1, v0, Lcom/shabakaty/downloader/is3;->d:Lcom/shabakaty/downloader/tm1;

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/j10;->r:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    invoke-static {v1}, Lcom/shabakaty/cinemana/player/CinemanaPlayerView;->p(Lcom/shabakaty/cinemana/player/CinemanaPlayerView;)Lcom/shabakaty/cinemana/player/VideoPlayerActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    .line 6
    iput v1, v0, Lcom/shabakaty/downloader/is3;->b:I

    return-object v0
.end method
