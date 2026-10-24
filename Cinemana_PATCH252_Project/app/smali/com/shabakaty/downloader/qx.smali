.class public final Lcom/shabakaty/downloader/qx;
.super Lcom/shabakaty/downloader/ui4;
.source "CategoryDetailsViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.ui.categories_fragment.CategoryDetailsViewModel$createSortingNamesList$1"
    f = "CategoryDetailsViewModel.kt"
    l = {
        0x90,
        0x91,
        0x92,
        0x93,
        0x94,
        0x95,
        0x96
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
            "Lcom/shabakaty/downloader/qx;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/qx;->A:Lcom/shabakaty/downloader/rx;

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
    new-instance p1, Lcom/shabakaty/downloader/qx;

    iget-object v0, p0, Lcom/shabakaty/downloader/qx;->A:Lcom/shabakaty/downloader/rx;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/qx;-><init>(Lcom/shabakaty/downloader/rx;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/qx;->t(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance p1, Lcom/shabakaty/downloader/qx;

    iget-object v0, p0, Lcom/shabakaty/downloader/qx;->A:Lcom/shabakaty/downloader/rx;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/qx;-><init>(Lcom/shabakaty/downloader/rx;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/qx;->z:I

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x7

    packed-switch v1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_0
    iget v2, p0, Lcom/shabakaty/downloader/qx;->y:I

    iget-object v0, p0, Lcom/shabakaty/downloader/qx;->x:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/shabakaty/downloader/qx;->w:Ljava/lang/Object;

    check-cast v1, [Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;

    iget-object v3, p0, Lcom/shabakaty/downloader/qx;->v:Ljava/lang/Object;

    check-cast v3, [Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_1
    iget v3, p0, Lcom/shabakaty/downloader/qx;->y:I

    iget-object v1, p0, Lcom/shabakaty/downloader/qx;->x:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/shabakaty/downloader/qx;->w:Ljava/lang/Object;

    check-cast v4, [Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;

    iget-object v5, p0, Lcom/shabakaty/downloader/qx;->v:Ljava/lang/Object;

    check-cast v5, [Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_2
    iget v4, p0, Lcom/shabakaty/downloader/qx;->y:I

    iget-object v1, p0, Lcom/shabakaty/downloader/qx;->x:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v5, p0, Lcom/shabakaty/downloader/qx;->w:Ljava/lang/Object;

    check-cast v5, [Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;

    iget-object v6, p0, Lcom/shabakaty/downloader/qx;->v:Ljava/lang/Object;

    check-cast v6, [Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_3
    iget v5, p0, Lcom/shabakaty/downloader/qx;->y:I

    iget-object v1, p0, Lcom/shabakaty/downloader/qx;->x:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v6, p0, Lcom/shabakaty/downloader/qx;->w:Ljava/lang/Object;

    check-cast v6, [Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;

    iget-object v7, p0, Lcom/shabakaty/downloader/qx;->v:Ljava/lang/Object;

    check-cast v7, [Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_4
    iget v6, p0, Lcom/shabakaty/downloader/qx;->y:I

    iget-object v1, p0, Lcom/shabakaty/downloader/qx;->x:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v7, p0, Lcom/shabakaty/downloader/qx;->w:Ljava/lang/Object;

    check-cast v7, [Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;

    iget-object v9, p0, Lcom/shabakaty/downloader/qx;->v:Ljava/lang/Object;

    check-cast v9, [Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_5
    iget v7, p0, Lcom/shabakaty/downloader/qx;->y:I

    iget-object v1, p0, Lcom/shabakaty/downloader/qx;->x:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v9, p0, Lcom/shabakaty/downloader/qx;->w:Ljava/lang/Object;

    check-cast v9, [Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;

    iget-object v10, p0, Lcom/shabakaty/downloader/qx;->v:Ljava/lang/Object;

    check-cast v10, [Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    iget v1, p0, Lcom/shabakaty/downloader/qx;->y:I

    iget-object v9, p0, Lcom/shabakaty/downloader/qx;->x:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v10, p0, Lcom/shabakaty/downloader/qx;->w:Ljava/lang/Object;

    check-cast v10, [Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;

    iget-object v11, p0, Lcom/shabakaty/downloader/qx;->v:Ljava/lang/Object;

    check-cast v11, [Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    move-object v13, v11

    move-object v11, v10

    move-object v10, v13

    goto :goto_0

    :pswitch_7
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    new-array v10, v8, [Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;

    const/4 v1, 0x0

    const-string v9, ""

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/qx;->A:Lcom/shabakaty/downloader/rx;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/vx;

    const v11, 0x7f1202c0

    iput-object v10, p0, Lcom/shabakaty/downloader/qx;->v:Ljava/lang/Object;

    iput-object v10, p0, Lcom/shabakaty/downloader/qx;->w:Ljava/lang/Object;

    iput-object v9, p0, Lcom/shabakaty/downloader/qx;->x:Ljava/lang/Object;

    iput v1, p0, Lcom/shabakaty/downloader/qx;->y:I

    iput v7, p0, Lcom/shabakaty/downloader/qx;->z:I

    invoke-interface {p1, v11, p0}, Lcom/shabakaty/downloader/vx;->v1(ILcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    :cond_0
    move-object v11, v10

    :goto_0
    check-cast p1, Ljava/lang/String;

    new-instance v12, Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;

    invoke-direct {v12, v9, p1}, Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v12, v11, v1

    const-string v1, "r_"

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/qx;->A:Lcom/shabakaty/downloader/rx;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/vx;

    const v9, 0x7f12020a

    iput-object v10, p0, Lcom/shabakaty/downloader/qx;->v:Ljava/lang/Object;

    iput-object v10, p0, Lcom/shabakaty/downloader/qx;->w:Ljava/lang/Object;

    iput-object v1, p0, Lcom/shabakaty/downloader/qx;->x:Ljava/lang/Object;

    iput v7, p0, Lcom/shabakaty/downloader/qx;->y:I

    iput v6, p0, Lcom/shabakaty/downloader/qx;->z:I

    invoke-interface {p1, v9, p0}, Lcom/shabakaty/downloader/vx;->v1(ILcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1

    return-object v0

    :cond_1
    move-object v9, v10

    :goto_1
    check-cast p1, Ljava/lang/String;

    new-instance v11, Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;

    invoke-direct {v11, v1, p1}, Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v11, v9, v7

    const-string v1, "en_title_"

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/qx;->A:Lcom/shabakaty/downloader/rx;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/vx;

    const v7, 0x7f1200e7

    iput-object v10, p0, Lcom/shabakaty/downloader/qx;->v:Ljava/lang/Object;

    iput-object v10, p0, Lcom/shabakaty/downloader/qx;->w:Ljava/lang/Object;

    iput-object v1, p0, Lcom/shabakaty/downloader/qx;->x:Ljava/lang/Object;

    iput v6, p0, Lcom/shabakaty/downloader/qx;->y:I

    iput v5, p0, Lcom/shabakaty/downloader/qx;->z:I

    invoke-interface {p1, v7, p0}, Lcom/shabakaty/downloader/vx;->v1(ILcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v7, v10

    move-object v9, v7

    :goto_2
    check-cast p1, Ljava/lang/String;

    new-instance v10, Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;

    invoke-direct {v10, v1, p1}, Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v10, v7, v6

    const-string v1, "ar_title_"

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/qx;->A:Lcom/shabakaty/downloader/rx;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/vx;

    const v6, 0x7f120034

    iput-object v9, p0, Lcom/shabakaty/downloader/qx;->v:Ljava/lang/Object;

    iput-object v9, p0, Lcom/shabakaty/downloader/qx;->w:Ljava/lang/Object;

    iput-object v1, p0, Lcom/shabakaty/downloader/qx;->x:Ljava/lang/Object;

    iput v5, p0, Lcom/shabakaty/downloader/qx;->y:I

    iput v4, p0, Lcom/shabakaty/downloader/qx;->z:I

    invoke-interface {p1, v6, p0}, Lcom/shabakaty/downloader/vx;->v1(ILcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v6, v9

    move-object v7, v6

    :goto_3
    check-cast p1, Ljava/lang/String;

    new-instance v9, Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;

    invoke-direct {v9, v1, p1}, Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v9, v6, v5

    const-string v1, "views_"

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/qx;->A:Lcom/shabakaty/downloader/rx;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/vx;

    const v5, 0x7f1202d6

    iput-object v7, p0, Lcom/shabakaty/downloader/qx;->v:Ljava/lang/Object;

    iput-object v7, p0, Lcom/shabakaty/downloader/qx;->w:Ljava/lang/Object;

    iput-object v1, p0, Lcom/shabakaty/downloader/qx;->x:Ljava/lang/Object;

    iput v4, p0, Lcom/shabakaty/downloader/qx;->y:I

    iput v3, p0, Lcom/shabakaty/downloader/qx;->z:I

    invoke-interface {p1, v5, p0}, Lcom/shabakaty/downloader/vx;->v1(ILcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v5, v7

    move-object v6, v5

    :goto_4
    check-cast p1, Ljava/lang/String;

    new-instance v7, Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;

    invoke-direct {v7, v1, p1}, Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v4

    const-string v1, "rating_"

    .line 9
    iget-object p1, p0, Lcom/shabakaty/downloader/qx;->A:Lcom/shabakaty/downloader/rx;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/vx;

    const v4, 0x7f1201e5

    iput-object v6, p0, Lcom/shabakaty/downloader/qx;->v:Ljava/lang/Object;

    iput-object v6, p0, Lcom/shabakaty/downloader/qx;->w:Ljava/lang/Object;

    iput-object v1, p0, Lcom/shabakaty/downloader/qx;->x:Ljava/lang/Object;

    iput v3, p0, Lcom/shabakaty/downloader/qx;->y:I

    iput v2, p0, Lcom/shabakaty/downloader/qx;->z:I

    invoke-interface {p1, v4, p0}, Lcom/shabakaty/downloader/vx;->v1(ILcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    move-object v4, v6

    move-object v5, v4

    :goto_5
    check-cast p1, Ljava/lang/String;

    new-instance v6, Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;

    invoke-direct {v6, v1, p1}, Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v3

    const-string p1, "stars_"

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/qx;->A:Lcom/shabakaty/downloader/rx;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/vx;

    const v3, 0x7f12014f

    iput-object v5, p0, Lcom/shabakaty/downloader/qx;->v:Ljava/lang/Object;

    iput-object v5, p0, Lcom/shabakaty/downloader/qx;->w:Ljava/lang/Object;

    iput-object p1, p0, Lcom/shabakaty/downloader/qx;->x:Ljava/lang/Object;

    iput v2, p0, Lcom/shabakaty/downloader/qx;->y:I

    iput v8, p0, Lcom/shabakaty/downloader/qx;->z:I

    invoke-interface {v1, v3, p0}, Lcom/shabakaty/downloader/vx;->v1(ILcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_6

    return-object v0

    :cond_6
    move-object v0, p1

    move-object p1, v1

    move-object v1, v5

    move-object v3, v1

    :goto_6
    check-cast p1, Ljava/lang/String;

    new-instance v4, Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;

    invoke-direct {v4, v0, p1}, Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v2

    .line 11
    invoke-static {v3}, Lcom/shabakaty/downloader/iq6;->t([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/shabakaty/downloader/qx;->A:Lcom/shabakaty/downloader/rx;

    .line 13
    iget-object v0, v0, Lcom/shabakaty/downloader/rx;->o:Lcom/shabakaty/downloader/xv2;

    .line 14
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 15
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
