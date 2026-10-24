.class public final Lcom/shabakaty/downloader/ux;
.super Lcom/shabakaty/downloader/hj;
.source "CategoryMoviesTvShowsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/hj<",
        "Lcom/shabakaty/downloader/qi1;",
        "Lcom/shabakaty/downloader/vx;",
        "Lcom/shabakaty/downloader/rx;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0001B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/shabakaty/downloader/ux;",
        "Lcom/shabakaty/downloader/hj;",
        "Lcom/shabakaty/downloader/qi1;",
        "Lcom/shabakaty/downloader/vx;",
        "Lcom/shabakaty/downloader/rx;",
        "<init>",
        "()V",
        "app_productionBetaRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0d006b

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/hj;-><init>(I)V

    return-void
.end method


# virtual methods
.method public Z1()Lcom/shabakaty/downloader/vj;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ox;

    return-object v0
.end method

.method public d2()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/shabakaty/downloader/rx;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/shabakaty/downloader/rx;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/hj;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    move-object p1, p2

    goto :goto_0

    :cond_0
    const-string v0, "MEDIA_TYPE_ARG"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 4
    check-cast v0, Lcom/shabakaty/downloader/qi1;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/qi1;->G(Ljava/lang/Integer;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_5

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->a2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/rx;

    .line 7
    iget-object p1, p1, Lcom/shabakaty/downloader/rx;->i:Lcom/shabakaty/downloader/mj;

    .line 8
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/tj;

    if-nez p1, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    iget-object p1, p1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 10
    move-object p2, p1

    check-cast p2, Ljava/util/List;

    :goto_1
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    if-eqz v0, :cond_9

    .line 11
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->a2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/rx;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/rx;->q()V

    goto :goto_4

    .line 12
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->a2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/rx;

    .line 13
    iget-object p1, p1, Lcom/shabakaty/downloader/rx;->j:Lcom/shabakaty/downloader/mj;

    .line 14
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/tj;

    if-nez p1, :cond_6

    goto :goto_3

    .line 15
    :cond_6
    iget-object p1, p1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 16
    move-object p2, p1

    check-cast p2, Ljava/util/List;

    :goto_3
    if-eqz p2, :cond_7

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    const/4 v0, 0x1

    :cond_8
    if-eqz v0, :cond_9

    .line 17
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->a2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/rx;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/rx;->r()V

    .line 18
    :cond_9
    :goto_4
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 19
    check-cast p1, Lcom/shabakaty/downloader/qi1;

    iget-object p1, p1, Lcom/shabakaty/downloader/qi1;->M:Lcom/shabakaty/downloader/a35;

    iget-object p1, p1, Lcom/shabakaty/downloader/a35;->N:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$e;

    move-result-object p1

    if-nez p1, :cond_a

    .line 20
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 21
    check-cast p1, Lcom/shabakaty/downloader/qi1;

    iget-object p1, p1, Lcom/shabakaty/downloader/qi1;->M:Lcom/shabakaty/downloader/a35;

    iget-object p1, p1, Lcom/shabakaty/downloader/a35;->N:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/shabakaty/downloader/rk;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ox;

    invoke-direct {p2, v0}, Lcom/shabakaty/downloader/rk;-><init>(Lcom/shabakaty/downloader/pk;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    :cond_a
    return-void
.end method
