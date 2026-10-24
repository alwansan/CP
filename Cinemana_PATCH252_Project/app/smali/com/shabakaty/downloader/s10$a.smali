.class public final Lcom/shabakaty/downloader/s10$a;
.super Lcom/shabakaty/downloader/ui4;
.source "CinemanaVideoPlayerViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.player.CinemanaVideoPlayerViewModel$getSeasonsAndEpisodes$1$1"
    f = "CinemanaVideoPlayerViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/s10;->t(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
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

.field public final synthetic w:Lcom/shabakaty/downloader/bi2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/bi2<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/b41;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/q10;Lcom/shabakaty/downloader/bi2;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/q10;",
            "Lcom/shabakaty/downloader/bi2<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/b41;",
            ">;>;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/s10$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/s10$a;->v:Lcom/shabakaty/downloader/q10;

    iput-object p2, p0, Lcom/shabakaty/downloader/s10$a;->w:Lcom/shabakaty/downloader/bi2;

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
    new-instance p1, Lcom/shabakaty/downloader/s10$a;

    iget-object v0, p0, Lcom/shabakaty/downloader/s10$a;->v:Lcom/shabakaty/downloader/q10;

    iget-object v1, p0, Lcom/shabakaty/downloader/s10$a;->w:Lcom/shabakaty/downloader/bi2;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/s10$a;-><init>(Lcom/shabakaty/downloader/q10;Lcom/shabakaty/downloader/bi2;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/s10$a;->t(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance p1, Lcom/shabakaty/downloader/s10$a;

    iget-object v0, p0, Lcom/shabakaty/downloader/s10$a;->v:Lcom/shabakaty/downloader/q10;

    iget-object v1, p0, Lcom/shabakaty/downloader/s10$a;->w:Lcom/shabakaty/downloader/bi2;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/s10$a;-><init>(Lcom/shabakaty/downloader/q10;Lcom/shabakaty/downloader/bi2;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/s10$a;->v:Lcom/shabakaty/downloader/q10;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/q10;->B:Lcom/shabakaty/downloader/xv2;

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/s10$a;->w:Lcom/shabakaty/downloader/bi2;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/s10$a;->v:Lcom/shabakaty/downloader/q10;

    .line 6
    iget-object v0, p1, Lcom/shabakaty/downloader/q10;->A:Lcom/shabakaty/downloader/xv2;

    .line 7
    iget-object p1, p1, Lcom/shabakaty/downloader/q10;->B:Lcom/shabakaty/downloader/xv2;

    .line 8
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/bi2;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/shabakaty/downloader/s10$a;->v:Lcom/shabakaty/downloader/q10;

    .line 9
    iget-object v2, v2, Lcom/shabakaty/downloader/q10;->z:Lcom/shabakaty/downloader/xv2;

    .line 10
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez v2, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    iget-object v1, v2, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->season:Ljava/lang/String;

    .line 12
    :goto_0
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/util/List;

    :goto_1
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 13
    iget-object p1, p0, Lcom/shabakaty/downloader/s10$a;->v:Lcom/shabakaty/downloader/q10;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/p10;

    invoke-interface {p1}, Lcom/shabakaty/downloader/p10;->L0()V

    .line 14
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
