.class public final Lcom/shabakaty/downloader/y00;
.super Lcom/shabakaty/downloader/af2;
.source "CinemanaPlayerControllerView.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/ed3;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/y00;->r:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ed3;

    iget-object v1, p0, Lcom/shabakaty/downloader/y00;->r:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    invoke-virtual {v1}, Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;->getVideoModel()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/downloader/y00;->r:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    invoke-static {v2}, Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;->x(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)Lcom/shabakaty/cinemana/player/VideoPlayerActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/shabakaty/downloader/y00;->r:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    invoke-static {v3}, Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;->y(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)Lcom/shabakaty/downloader/q10;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/shabakaty/downloader/ed3;-><init>(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroid/content/Context;Lcom/shabakaty/downloader/q10;)V

    return-object v0
.end method
