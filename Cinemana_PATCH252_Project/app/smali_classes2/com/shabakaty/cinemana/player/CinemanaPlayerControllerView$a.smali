.class public final Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView$a;
.super Lcom/shabakaty/downloader/af2;
.source "CinemanaPlayerControllerView.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;->b(Lcom/shabakaty/cinemana/domain/models/local/Quality;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Ljava/lang/Throwable;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView$a;->r:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView$a;->r:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    invoke-static {p1}, Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;->x(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)Lcom/shabakaty/cinemana/player/VideoPlayerActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/cl3;->e(Lcom/shabakaty/downloader/rh2;)Lcom/shabakaty/downloader/ih2;

    move-result-object v0

    new-instance v3, Lcom/shabakaty/cinemana/player/a;

    iget-object p1, p0, Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView$a;->r:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    const/4 v1, 0x0

    invoke-direct {v3, p1, v1}, Lcom/shabakaty/cinemana/player/a;-><init>(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;Lcom/shabakaty/downloader/ud0;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
