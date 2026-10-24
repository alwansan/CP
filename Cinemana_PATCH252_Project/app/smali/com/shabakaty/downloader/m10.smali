.class public final Lcom/shabakaty/downloader/m10;
.super Lcom/shabakaty/downloader/af2;
.source "CinemanaPlayerView.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/q10;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/player/CinemanaPlayerView;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/m10;->r:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Landroidx/lifecycle/n;

    iget-object v1, p0, Lcom/shabakaty/downloader/m10;->r:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    invoke-static {v1}, Lcom/shabakaty/cinemana/player/CinemanaPlayerView;->p(Lcom/shabakaty/cinemana/player/CinemanaPlayerView;)Lcom/shabakaty/cinemana/player/VideoPlayerActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/n;-><init>(Lcom/shabakaty/downloader/s35;)V

    const-class v1, Lcom/shabakaty/downloader/q10;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/o35;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/q10;

    return-object v0
.end method
