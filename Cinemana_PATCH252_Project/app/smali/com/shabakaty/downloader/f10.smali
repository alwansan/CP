.class public final Lcom/shabakaty/downloader/f10;
.super Lcom/shabakaty/downloader/af2;
.source "CinemanaPlayerView.kt"

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
.field public final synthetic r:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

.field public final synthetic s:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/player/CinemanaPlayerView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/f10;->r:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    iput-object p2, p0, Lcom/shabakaty/downloader/f10;->s:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/wc3;

    iget-object v1, p0, Lcom/shabakaty/downloader/f10;->r:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    invoke-virtual {v1}, Lcom/shabakaty/cinemana/player/CinemanaPlayerView;->getPlayer()Lcom/shabakaty/downloader/s64;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/downloader/f10;->r:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    invoke-virtual {v2}, Lcom/shabakaty/cinemana/player/CinemanaPlayerView;->getVideoModel()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v2

    iget-object v3, p0, Lcom/shabakaty/downloader/f10;->s:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context.applicationContext"

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/shabakaty/downloader/wc3;-><init>(Lcom/shabakaty/downloader/s64;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroid/content/Context;)V

    return-object v0
.end method
