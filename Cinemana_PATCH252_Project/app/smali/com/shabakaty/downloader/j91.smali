.class public final Lcom/shabakaty/downloader/j91;
.super Lcom/shabakaty/downloader/ui4;
.source "ExternalSeasonFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.ui.video_info.ExternalSeasonFragment$scrollToSelected$1"
    f = "ExternalSeasonFragment.kt"
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
.field public synthetic v:Ljava/lang/Object;

.field public final synthetic w:Lcom/shabakaty/downloader/f91;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/f91;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/f91;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/j91;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/j91;->w:Lcom/shabakaty/downloader/f91;

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
    new-instance v0, Lcom/shabakaty/downloader/j91;

    iget-object v1, p0, Lcom/shabakaty/downloader/j91;->w:Lcom/shabakaty/downloader/f91;

    invoke-direct {v0, v1, p2}, Lcom/shabakaty/downloader/j91;-><init>(Lcom/shabakaty/downloader/f91;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/j91;->v:Ljava/lang/Object;

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/j91;->t(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lcom/shabakaty/downloader/j91;

    iget-object v1, p0, Lcom/shabakaty/downloader/j91;->w:Lcom/shabakaty/downloader/f91;

    invoke-direct {v0, v1, p2}, Lcom/shabakaty/downloader/j91;-><init>(Lcom/shabakaty/downloader/f91;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/j91;->v:Ljava/lang/Object;

    return-object v0
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/shabakaty/downloader/j91;->v:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/se0;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/j91;->w:Lcom/shabakaty/downloader/f91;

    sget v1, Lcom/shabakaty/downloader/f91;->P:I

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/m91;

    .line 4
    iget-object v1, v1, Lcom/shabakaty/downloader/m91;->j:Lcom/shabakaty/downloader/xv2;

    .line 5
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 7
    check-cast v5, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 8
    iget-object v5, v5, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/shabakaty/downloader/f91;->h2()Lcom/shabakaty/downloader/d41;

    move-result-object v6

    .line 10
    iget-object v6, v6, Lcom/shabakaty/downloader/d41;->e:Ljava/lang/String;

    .line 11
    invoke-static {v5, v6}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 12
    :goto_1
    iget-object p1, p0, Lcom/shabakaty/downloader/j91;->w:Lcom/shabakaty/downloader/f91;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/m91;

    iget-object v1, p0, Lcom/shabakaty/downloader/j91;->w:Lcom/shabakaty/downloader/f91;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/m91;

    .line 13
    iget-object v1, v1, Lcom/shabakaty/downloader/m91;->j:Lcom/shabakaty/downloader/xv2;

    .line 14
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v4, 0x0

    if-nez v1, :cond_2

    move-object v1, v4

    goto :goto_2

    :cond_2
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/m50;->c0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 15
    :goto_2
    iput-object v1, p1, Lcom/shabakaty/downloader/m91;->i:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 16
    iget-object p1, p0, Lcom/shabakaty/downloader/j91;->w:Lcom/shabakaty/downloader/f91;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/m91;

    .line 17
    iget-object p1, p1, Lcom/shabakaty/downloader/m91;->h:Lcom/shabakaty/downloader/mj;

    .line 18
    iget-object v1, p0, Lcom/shabakaty/downloader/j91;->w:Lcom/shabakaty/downloader/f91;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/m91;

    .line 19
    iget-object v1, v1, Lcom/shabakaty/downloader/m91;->i:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 20
    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/mj;->b(Ljava/lang/Object;)V

    .line 21
    iget-object p1, p0, Lcom/shabakaty/downloader/j91;->w:Lcom/shabakaty/downloader/f91;

    .line 22
    invoke-virtual {p1}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/m91;

    .line 23
    iget-object p1, p1, Lcom/shabakaty/downloader/m91;->j:Lcom/shabakaty/downloader/xv2;

    .line 24
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_3
    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 p1, p1, -0x1

    :goto_4
    const/4 v1, 0x3

    if-gt v1, v3, :cond_5

    if-ge v3, p1, :cond_5

    const/4 v2, 0x1

    :cond_5
    if-eqz v2, :cond_6

    add-int/lit8 v3, v3, 0x2

    .line 25
    :cond_6
    sget-object p1, Lcom/shabakaty/downloader/hu0;->a:Lcom/shabakaty/downloader/pe0;

    .line 26
    sget-object v1, Lcom/shabakaty/downloader/wl2;->a:Lcom/shabakaty/downloader/vl2;

    .line 27
    new-instance p1, Lcom/shabakaty/downloader/j91$a;

    iget-object v2, p0, Lcom/shabakaty/downloader/j91;->w:Lcom/shabakaty/downloader/f91;

    invoke-direct {p1, v2, v3, v4}, Lcom/shabakaty/downloader/j91$a;-><init>(Lcom/shabakaty/downloader/f91;ILcom/shabakaty/downloader/ud0;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    .line 28
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
