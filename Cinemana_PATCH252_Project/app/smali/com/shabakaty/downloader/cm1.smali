.class public final Lcom/shabakaty/downloader/cm1;
.super Lcom/shabakaty/downloader/hj;
.source "FranchisesFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/dm1;
.implements Lcom/shabakaty/downloader/bm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/hj<",
        "Lcom/shabakaty/downloader/oj1;",
        "Lcom/shabakaty/downloader/dm1;",
        "Lcom/shabakaty/downloader/mm1;",
        ">;",
        "Lcom/shabakaty/downloader/dm1;",
        "Lcom/shabakaty/downloader/bm1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00012\u00020\u00032\u00020\u0005B\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/shabakaty/downloader/cm1;",
        "Lcom/shabakaty/downloader/hj;",
        "Lcom/shabakaty/downloader/oj1;",
        "Lcom/shabakaty/downloader/dm1;",
        "Lcom/shabakaty/downloader/mm1;",
        "Lcom/shabakaty/downloader/bm1;",
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

    const v0, 0x7f0d0076

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/hj;-><init>(I)V

    return-void
.end method


# virtual methods
.method public V0(Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;)V
    .locals 3

    const-string v0, "franchiseItem"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Landroidx/navigation/fragment/NavHostFragment;->X1(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    const-string v1, "NavHostFragment.findNavController(this)"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic$Franchise;

    .line 3
    iget-object v2, p1, Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;->displayName:Ljava/lang/String;

    .line 4
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;->id:Ljava/lang/String;

    .line 5
    invoke-direct {v1, v2, p1}, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic$Franchise;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/uo1;->d(Landroidx/navigation/NavController;Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType;)V

    return-void
.end method

.method public Z1()Lcom/shabakaty/downloader/vj;
    .locals 0

    return-object p0
.end method

.method public d2()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/shabakaty/downloader/mm1;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/shabakaty/downloader/mm1;

    return-object v0
.end method

.method public o()V
    .locals 1

    const-string v0, "this"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/hj;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 3
    check-cast p1, Lcom/shabakaty/downloader/oj1;

    iget-object p1, p1, Lcom/shabakaty/downloader/oj1;->N:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/shabakaty/downloader/xt1;

    const/4 v0, 0x2

    invoke-direct {p2, v0, p0}, Lcom/shabakaty/downloader/xt1;-><init>(ILcom/shabakaty/downloader/bm1;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/mm1;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/mm1;->f:Lcom/shabakaty/downloader/mj;

    .line 6
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/tj;

    if-nez p1, :cond_0

    goto :goto_3

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    move-object p2, v0

    goto :goto_0

    :cond_1
    const-string v1, "COLLECTIONS_ARG"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p2

    :goto_0
    instance-of v1, p2, [Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;

    if-eqz v1, :cond_2

    check-cast p2, [Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;

    goto :goto_1

    :cond_2
    move-object p2, v0

    :goto_1
    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {p2}, Lcom/shabakaty/downloader/id;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 8
    :goto_2
    iput-object v0, p1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 9
    :goto_3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/mm1;

    .line 10
    iget-object p1, p1, Lcom/shabakaty/downloader/mm1;->f:Lcom/shabakaty/downloader/mj;

    .line 11
    invoke-static {p1}, Lcom/shabakaty/downloader/zi2;->f(Lcom/shabakaty/downloader/xv2;)V

    return-void
.end method

.method public q(I)V
    .locals 1

    const-string v0, "this"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/vj$a;->a(Lcom/shabakaty/downloader/vj;I)V

    return-void
.end method
