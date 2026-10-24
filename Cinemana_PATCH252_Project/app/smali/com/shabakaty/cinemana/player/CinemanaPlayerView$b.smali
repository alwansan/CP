.class public final Lcom/shabakaty/cinemana/player/CinemanaPlayerView$b;
.super Lcom/shabakaty/downloader/af2;
.source "CinemanaPlayerView.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/player/CinemanaPlayerView;->t(Lcom/shabakaty/downloader/b41;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/player/CinemanaPlayerView;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/cinemana/player/CinemanaPlayerView$b;->r:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/player/CinemanaPlayerView$b;->r:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    invoke-static {v0}, Lcom/shabakaty/cinemana/player/CinemanaPlayerView;->p(Lcom/shabakaty/cinemana/player/CinemanaPlayerView;)Lcom/shabakaty/cinemana/player/VideoPlayerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->X1()V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v0
.end method
