.class public final Lcom/shabakaty/downloader/su1;
.super Lcom/shabakaty/downloader/ui4;
.source "HomePageViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.ui.home_fragment.HomePageViewModel$recheckForItemsProgress$1"
    f = "HomePageViewModel.kt"
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
.field public final synthetic v:Lcom/shabakaty/downloader/tu1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/tu1;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/tu1;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/su1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/su1;->v:Lcom/shabakaty/downloader/tu1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/shabakaty/downloader/se0;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/su1;

    iget-object v0, p0, Lcom/shabakaty/downloader/su1;->v:Lcom/shabakaty/downloader/tu1;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/su1;-><init>(Lcom/shabakaty/downloader/tu1;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/su1;->t(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 1
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

    new-instance p1, Lcom/shabakaty/downloader/su1;

    iget-object v0, p0, Lcom/shabakaty/downloader/su1;->v:Lcom/shabakaty/downloader/tu1;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/su1;-><init>(Lcom/shabakaty/downloader/tu1;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/su1;->v:Lcom/shabakaty/downloader/tu1;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/tu1;->m:Lcom/shabakaty/downloader/xv2;

    .line 4
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItems;

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItems;->a()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/shabakaty/downloader/su1;->v:Lcom/shabakaty/downloader/tu1;

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal;

    .line 6
    iget-object v2, v0, Lcom/shabakaty/downloader/tu1;->i:Lcom/shabakaty/downloader/ox4;

    .line 7
    invoke-virtual {v1}, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal;->c()Ljava/util/List;

    move-result-object v3

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "videos"

    .line 8
    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 11
    check-cast v6, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 12
    iget-object v7, v2, Lcom/shabakaty/downloader/ox4;->d:Lcom/shabakaty/downloader/s25;

    iget-object v8, v2, Lcom/shabakaty/downloader/ox4;->e:Lcom/shabakaty/downloader/qm2;

    invoke-virtual {v6, v7, v8}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->a(Lcom/shabakaty/downloader/s25;Lcom/shabakaty/downloader/qm2;)V

    .line 13
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {v1, v3}, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal;->d(Ljava/util/List;)V

    goto :goto_0

    .line 15
    :cond_2
    :goto_2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
