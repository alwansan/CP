.class public final Lcom/shabakaty/downloader/v00;
.super Lcom/shabakaty/downloader/af2;
.source "CinemanaPlayerControllerView.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/wc3;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/v00;->r:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/v00;->r:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    invoke-static {v0}, Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;->w(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/player/CinemanaPlayerView;->getPlaybackEventsHandler()Lcom/shabakaty/downloader/wc3;

    move-result-object v0

    return-object v0
.end method
