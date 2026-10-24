.class public final Lcom/shabakaty/downloader/t10;
.super Lcom/shabakaty/downloader/ui4;
.source "CinemanaVideoPlayerViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.player.CinemanaVideoPlayerViewModel$removeFromHistory$1$1"
    f = "CinemanaVideoPlayerViewModel.kt"
    l = {}
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
.field public final synthetic v:Lcom/shabakaty/downloader/q10;

.field public final synthetic w:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/q10;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/q10;",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/t10;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/t10;->v:Lcom/shabakaty/downloader/q10;

    iput-object p2, p0, Lcom/shabakaty/downloader/t10;->w:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/shabakaty/downloader/se0;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/t10;

    iget-object v0, p0, Lcom/shabakaty/downloader/t10;->v:Lcom/shabakaty/downloader/q10;

    iget-object v1, p0, Lcom/shabakaty/downloader/t10;->w:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/t10;-><init>(Lcom/shabakaty/downloader/q10;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/t10;->t(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
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

    new-instance p1, Lcom/shabakaty/downloader/t10;

    iget-object v0, p0, Lcom/shabakaty/downloader/t10;->v:Lcom/shabakaty/downloader/q10;

    iget-object v1, p0, Lcom/shabakaty/downloader/t10;->w:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/t10;-><init>(Lcom/shabakaty/downloader/q10;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/t10;->v:Lcom/shabakaty/downloader/q10;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/q10;->q:Ljava/util/List;

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/t10;->w:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 6
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/shabakaty/downloader/t10;->v:Lcom/shabakaty/downloader/q10;

    .line 7
    iget-object p1, p1, Lcom/shabakaty/downloader/q10;->n:Lcom/shabakaty/downloader/ox4;

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/t10;->w:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 9
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 10
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ox4;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/shabakaty/downloader/t10;->v:Lcom/shabakaty/downloader/q10;

    .line 12
    iget-object v0, p1, Lcom/shabakaty/downloader/q10;->n:Lcom/shabakaty/downloader/ox4;

    .line 13
    iget-object v1, p0, Lcom/shabakaty/downloader/t10;->w:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    const-string v2, "videoModel"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ox4;->g(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    new-instance v1, Lcom/shabakaty/downloader/t10$a;

    iget-object v2, p0, Lcom/shabakaty/downloader/t10;->v:Lcom/shabakaty/downloader/q10;

    iget-object v3, p0, Lcom/shabakaty/downloader/t10;->w:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    invoke-direct {v1, v2, v3}, Lcom/shabakaty/downloader/t10$a;-><init>(Lcom/shabakaty/downloader/q10;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V

    .line 14
    sget-object v2, Lcom/shabakaty/downloader/t10$b;->r:Lcom/shabakaty/downloader/t10$b;

    .line 15
    invoke-virtual {p1, v0, v1, v2}, Lcom/shabakaty/downloader/xk;->b(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/mu0;

    .line 16
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
