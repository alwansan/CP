.class public final Lcom/shabakaty/downloader/px;
.super Lcom/shabakaty/downloader/ui4;
.source "CategoryDetailsViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.ui.categories_fragment.CategoryDetailsViewModel$createAscendingDescendingList$1"
    f = "CategoryDetailsViewModel.kt"
    l = {
        0xa1,
        0xa5
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
.field public final synthetic A:Lcom/shabakaty/downloader/rx;

.field public v:Ljava/lang/Object;

.field public w:Ljava/lang/Object;

.field public x:Ljava/lang/Object;

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/rx;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/rx;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/px;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/px;->A:Lcom/shabakaty/downloader/rx;

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
    new-instance p1, Lcom/shabakaty/downloader/px;

    iget-object v0, p0, Lcom/shabakaty/downloader/px;->A:Lcom/shabakaty/downloader/rx;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/px;-><init>(Lcom/shabakaty/downloader/rx;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/px;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

    new-instance p1, Lcom/shabakaty/downloader/px;

    iget-object v0, p0, Lcom/shabakaty/downloader/px;->A:Lcom/shabakaty/downloader/rx;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/px;-><init>(Lcom/shabakaty/downloader/rx;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/px;->z:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget v3, p0, Lcom/shabakaty/downloader/px;->y:I

    iget-object v0, p0, Lcom/shabakaty/downloader/px;->x:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/shabakaty/downloader/px;->w:Ljava/lang/Object;

    check-cast v1, [Lcom/shabakaty/cinemana/ui/categories_fragment/SortingAscendingDescending;

    iget-object v2, p0, Lcom/shabakaty/downloader/px;->v:Ljava/lang/Object;

    check-cast v2, [Lcom/shabakaty/cinemana/ui/categories_fragment/SortingAscendingDescending;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget v1, p0, Lcom/shabakaty/downloader/px;->y:I

    iget-object v4, p0, Lcom/shabakaty/downloader/px;->x:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/shabakaty/downloader/px;->w:Ljava/lang/Object;

    check-cast v5, [Lcom/shabakaty/cinemana/ui/categories_fragment/SortingAscendingDescending;

    iget-object v6, p0, Lcom/shabakaty/downloader/px;->v:Ljava/lang/Object;

    check-cast v6, [Lcom/shabakaty/cinemana/ui/categories_fragment/SortingAscendingDescending;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    move-object v8, v6

    move-object v6, v5

    move-object v5, v8

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    new-array v5, v2, [Lcom/shabakaty/cinemana/ui/categories_fragment/SortingAscendingDescending;

    const/4 v1, 0x0

    const-string v4, "desc"

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/px;->A:Lcom/shabakaty/downloader/rx;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/vx;

    const v6, 0x7f120293

    iput-object v5, p0, Lcom/shabakaty/downloader/px;->v:Ljava/lang/Object;

    iput-object v5, p0, Lcom/shabakaty/downloader/px;->w:Ljava/lang/Object;

    iput-object v4, p0, Lcom/shabakaty/downloader/px;->x:Ljava/lang/Object;

    iput v1, p0, Lcom/shabakaty/downloader/px;->y:I

    iput v3, p0, Lcom/shabakaty/downloader/px;->z:I

    invoke-interface {p1, v6, p0}, Lcom/shabakaty/downloader/vx;->v1(ILcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v6, v5

    .line 5
    :goto_0
    check-cast p1, Ljava/lang/String;

    .line 6
    new-instance v7, Lcom/shabakaty/cinemana/ui/categories_fragment/SortingAscendingDescending;

    invoke-direct {v7, v4, p1}, Lcom/shabakaty/cinemana/ui/categories_fragment/SortingAscendingDescending;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v6, v1

    const-string p1, "asc"

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/px;->A:Lcom/shabakaty/downloader/rx;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/vx;

    const v4, 0x7f120289

    iput-object v5, p0, Lcom/shabakaty/downloader/px;->v:Ljava/lang/Object;

    iput-object v5, p0, Lcom/shabakaty/downloader/px;->w:Ljava/lang/Object;

    iput-object p1, p0, Lcom/shabakaty/downloader/px;->x:Ljava/lang/Object;

    iput v3, p0, Lcom/shabakaty/downloader/px;->y:I

    iput v2, p0, Lcom/shabakaty/downloader/px;->z:I

    invoke-interface {v1, v4, p0}, Lcom/shabakaty/downloader/vx;->v1(ILcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, p1

    move-object p1, v1

    move-object v1, v5

    move-object v2, v1

    .line 8
    :goto_1
    check-cast p1, Ljava/lang/String;

    .line 9
    new-instance v4, Lcom/shabakaty/cinemana/ui/categories_fragment/SortingAscendingDescending;

    invoke-direct {v4, v0, p1}, Lcom/shabakaty/cinemana/ui/categories_fragment/SortingAscendingDescending;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v3

    .line 10
    invoke-static {v2}, Lcom/shabakaty/downloader/iq6;->t([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/px;->A:Lcom/shabakaty/downloader/rx;

    .line 12
    iget-object v0, v0, Lcom/shabakaty/downloader/rx;->p:Lcom/shabakaty/downloader/xv2;

    .line 13
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 14
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
