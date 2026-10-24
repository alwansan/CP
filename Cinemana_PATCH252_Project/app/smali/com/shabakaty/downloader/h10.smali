.class public final Lcom/shabakaty/downloader/h10;
.super Lcom/shabakaty/downloader/af2;
.source "CinemanaPlayerView.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Landroid/view/ScaleGestureDetector;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Landroid/content/Context;

.field public final synthetic s:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/cinemana/player/CinemanaPlayerView;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/h10;->r:Landroid/content/Context;

    iput-object p2, p0, Lcom/shabakaty/downloader/h10;->s:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/shabakaty/downloader/h10;->r:Landroid/content/Context;

    iget-object v2, p0, Lcom/shabakaty/downloader/h10;->s:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    invoke-virtual {v2}, Lcom/shabakaty/cinemana/player/CinemanaPlayerView;->getScaleListener()Lcom/shabakaty/downloader/is3;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    return-object v0
.end method
