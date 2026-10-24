.class public final Lcom/shabakaty/downloader/k10;
.super Lcom/shabakaty/downloader/ui4;
.source "CinemanaPlayerView.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.player.CinemanaPlayerView$seekToLastPosition$1"
    f = "CinemanaPlayerView.kt"
    l = {
        0xf0
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ui4;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/se0;",
        "Lcom/shabakaty/downloader/ud0<",
        "-",
        "Lcom/shabakaty/downloader/qv4;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public v:I

.field public synthetic w:Ljava/lang/Object;

.field public final synthetic x:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/player/CinemanaPlayerView;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/player/CinemanaPlayerView;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/k10;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/k10;->x:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/shabakaty/downloader/se0;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/k10;

    iget-object v1, p0, Lcom/shabakaty/downloader/k10;->x:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    invoke-direct {v0, v1, p2}, Lcom/shabakaty/downloader/k10;-><init>(Lcom/shabakaty/cinemana/player/CinemanaPlayerView;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/k10;->w:Ljava/lang/Object;

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/k10;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/ud0<",
            "*>;)",
            "Lcom/shabakaty/downloader/ud0<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/shabakaty/downloader/k10;

    iget-object v1, p0, Lcom/shabakaty/downloader/k10;->x:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    invoke-direct {v0, v1, p2}, Lcom/shabakaty/downloader/k10;-><init>(Lcom/shabakaty/cinemana/player/CinemanaPlayerView;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/k10;->w:Ljava/lang/Object;

    return-object v0
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v1, p0, Lcom/shabakaty/downloader/k10;->x:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->requested(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v1

    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/k10;->v:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/k10;->w:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/se0;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/shabakaty/downloader/k10;->w:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/se0;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/k10;->x:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    invoke-static {v1}, Lcom/shabakaty/cinemana/player/CinemanaPlayerView;->q(Lcom/shabakaty/cinemana/player/CinemanaPlayerView;)Lcom/shabakaty/downloader/q10;

    move-result-object v1

    iget-object v3, p0, Lcom/shabakaty/downloader/k10;->x:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    invoke-virtual {v3}, Lcom/shabakaty/cinemana/player/CinemanaPlayerView;->getVideoModel()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v3

    .line 5
    iget-object v3, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/shabakaty/downloader/k10;->w:Ljava/lang/Object;

    iput v2, p0, Lcom/shabakaty/downloader/k10;->v:I

    .line 7
    iget-object v1, v1, Lcom/shabakaty/downloader/q10;->n:Lcom/shabakaty/downloader/ox4;

    .line 8
    iget-object v1, v1, Lcom/shabakaty/downloader/ox4;->d:Lcom/shabakaty/downloader/s25;

    invoke-interface {v1, v3, p0}, Lcom/shabakaty/downloader/s25;->w(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v0, p1

    move-object p1, v1

    .line 9
    :goto_0
    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_4

    iget-object v1, p0, Lcom/shabakaty/downloader/k10;->x:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Ui7;->noProgress(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/shabakaty/downloader/k10;->x:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/shabakaty/cinemana/ca1/Ui7;->resume(Ljava/lang/Object;J)J

    move-result-wide v2

    .line 10
    sget-object p1, Lcom/shabakaty/downloader/hu0;->a:Lcom/shabakaty/downloader/pe0;

    .line 11
    sget-object p1, Lcom/shabakaty/downloader/wl2;->a:Lcom/shabakaty/downloader/vl2;

    .line 12
    new-instance v4, Lcom/shabakaty/downloader/k10$a;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v2, v3, v5}, Lcom/shabakaty/downloader/k10$a;-><init>(Lcom/shabakaty/cinemana/player/CinemanaPlayerView;JLcom/shabakaty/downloader/ud0;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v1, p1

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    .line 13
    :goto_1
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
