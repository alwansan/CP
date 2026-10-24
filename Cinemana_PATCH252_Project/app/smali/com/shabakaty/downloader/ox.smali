.class public final Lcom/shabakaty/downloader/ox;
.super Lcom/shabakaty/downloader/hj;
.source "CategoryDetailsFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/vx;
.implements Lcom/shabakaty/downloader/pk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/hj<",
        "Lcom/shabakaty/downloader/oi1;",
        "Lcom/shabakaty/downloader/vx;",
        "Lcom/shabakaty/downloader/rx;",
        ">;",
        "Lcom/shabakaty/downloader/vx;",
        "Lcom/shabakaty/downloader/pk;"
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
        "Lcom/shabakaty/downloader/ox;",
        "Lcom/shabakaty/downloader/hj;",
        "Lcom/shabakaty/downloader/oi1;",
        "Lcom/shabakaty/downloader/vx;",
        "Lcom/shabakaty/downloader/rx;",
        "Lcom/shabakaty/downloader/pk;",
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

    const v0, 0x7f0d006a

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/hj;-><init>(I)V

    return-void
.end method

.method public static final h2(Lcom/shabakaty/downloader/ox;)Lcom/shabakaty/downloader/oi1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 2
    check-cast p0, Lcom/shabakaty/downloader/oi1;

    return-object p0
.end method


# virtual methods
.method public L()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/oi1;

    iget-object v0, v0, Lcom/shabakaty/downloader/oi1;->Q:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    return-void
.end method

.method public Z0(Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/rx;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lcom/shabakaty/downloader/rx;->x:I

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/rx;

    .line 4
    iput v1, v0, Lcom/shabakaty/downloader/rx;->w:I

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/rx;

    .line 6
    iput-boolean v1, v0, Lcom/shabakaty/downloader/rx;->y:Z

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/rx;

    .line 8
    iput-boolean v1, v0, Lcom/shabakaty/downloader/rx;->z:Z

    .line 9
    instance-of v0, p1, Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;

    const-string v1, "sortParam"

    const-string v2, "<set-?>"

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/rx;

    .line 11
    iput p2, v0, Lcom/shabakaty/downloader/rx;->t:I

    .line 12
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/rx;

    check-cast p1, Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;

    .line 13
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p2, Lcom/shabakaty/downloader/rx;->s:Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;

    .line 15
    iget-object p1, p1, Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;->value:Ljava/lang/String;

    .line 16
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/rx;

    .line 17
    iget-object p2, p2, Lcom/shabakaty/downloader/rx;->u:Lcom/shabakaty/cinemana/ui/categories_fragment/SortingAscendingDescending;

    .line 18
    iget-object p2, p2, Lcom/shabakaty/cinemana/ui/categories_fragment/SortingAscendingDescending;->value:Ljava/lang/String;

    .line 19
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/rx;

    .line 21
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p2, Lcom/shabakaty/downloader/rx;->r:Ljava/lang/String;

    .line 23
    invoke-virtual {p2}, Lcom/shabakaty/downloader/rx;->s()V

    .line 24
    invoke-virtual {p2}, Lcom/shabakaty/downloader/rx;->q()V

    .line 25
    invoke-virtual {p2}, Lcom/shabakaty/downloader/rx;->r()V

    goto :goto_0

    .line 26
    :cond_0
    instance-of v0, p1, Lcom/shabakaty/cinemana/ui/categories_fragment/SortingAscendingDescending;

    if-eqz v0, :cond_1

    .line 27
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/rx;

    .line 28
    iput p2, v0, Lcom/shabakaty/downloader/rx;->v:I

    .line 29
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/rx;

    check-cast p1, Lcom/shabakaty/cinemana/ui/categories_fragment/SortingAscendingDescending;

    .line 30
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p2, Lcom/shabakaty/downloader/rx;->u:Lcom/shabakaty/cinemana/ui/categories_fragment/SortingAscendingDescending;

    .line 32
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/rx;

    .line 33
    iget-object p2, p2, Lcom/shabakaty/downloader/rx;->s:Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;

    .line 34
    iget-object p2, p2, Lcom/shabakaty/cinemana/ui/categories_fragment/SortingName;->value:Ljava/lang/String;

    .line 35
    iget-object p1, p1, Lcom/shabakaty/cinemana/ui/categories_fragment/SortingAscendingDescending;->value:Ljava/lang/String;

    .line 36
    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/rx;

    .line 38
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iput-object p1, p2, Lcom/shabakaty/downloader/rx;->r:Ljava/lang/String;

    .line 40
    invoke-virtual {p2}, Lcom/shabakaty/downloader/rx;->s()V

    .line 41
    invoke-virtual {p2}, Lcom/shabakaty/downloader/rx;->q()V

    .line 42
    invoke-virtual {p2}, Lcom/shabakaty/downloader/rx;->r()V

    goto :goto_0

    .line 43
    :cond_1
    instance-of v0, p1, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem$NewLanguageItem;

    if-eqz v0, :cond_2

    .line 44
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/rx;

    .line 45
    iput p2, v0, Lcom/shabakaty/downloader/rx;->n:I

    .line 46
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/rx;

    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem$NewLanguageItem;

    .line 47
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem$NewLanguageItem;->langNb:Ljava/lang/String;

    .line 48
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iput-object p1, p2, Lcom/shabakaty/downloader/rx;->m:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/rx;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/rx;->q()V

    .line 51
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/rx;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/rx;->r()V

    :cond_2
    :goto_0
    return-void
.end method

.method public Z1()Lcom/shabakaty/downloader/vj;
    .locals 0

    return-object p0
.end method

.method public a(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroid/view/View;)V
    .locals 3

    const-string v0, "videoModel"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "VideoThumb"

    .line 1
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/facebook/drawee/view/SimpleDraweeView;

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "$this$findNavController"

    .line 2
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Landroidx/navigation/fragment/NavHostFragment;->X1(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    const-string v1, "NavHostFragment.findNavController(this)"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 4
    invoke-static {v0, p2, p1, v1, v2}, Lcom/shabakaty/downloader/uo1;->f(Landroidx/navigation/NavController;Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroid/os/Bundle;I)V

    :goto_0
    return-void
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

.method public f(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/rx;

    .line 2
    iget v1, p1, Lcom/shabakaty/downloader/rx;->x:I

    add-int/2addr v1, v0

    .line 3
    iput v1, p1, Lcom/shabakaty/downloader/rx;->x:I

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/rx;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/rx;->q()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/rx;

    .line 6
    iget v1, p1, Lcom/shabakaty/downloader/rx;->w:I

    add-int/2addr v1, v0

    .line 7
    iput v1, p1, Lcom/shabakaty/downloader/rx;->w:I

    .line 8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/rx;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/rx;->r()V

    :goto_0
    return-void
.end method

.method public o()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/rx;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/rx;->i:Lcom/shabakaty/downloader/mj;

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/zi2;->d(Lcom/shabakaty/downloader/xv2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/rx;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/rx;->q()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/rx;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/rx;->r()V

    :goto_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/oi1;

    iget-object v0, v0, Lcom/shabakaty/downloader/oi1;->M:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->f()V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 4
    check-cast v0, Lcom/shabakaty/downloader/oi1;

    iget-object v0, v0, Lcom/shabakaty/downloader/oi1;->N:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->f()V

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 6
    check-cast v0, Lcom/shabakaty/downloader/oi1;

    iget-object v0, v0, Lcom/shabakaty/downloader/oi1;->O:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->f()V

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/rx;

    const/4 v1, 0x0

    .line 8
    iput-object v1, v0, Lcom/shabakaty/downloader/rx;->k:Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;

    .line 9
    invoke-super {p0}, Lcom/shabakaty/downloader/hj;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/rx;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/hj;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/hj;->f2(ZLjava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 4
    check-cast v0, Lcom/shabakaty/downloader/oi1;

    iget-object v0, v0, Lcom/shabakaty/downloader/oi1;->P:Landroidx/appcompat/widget/Toolbar;

    const-string v1, "binding.categoryToolbar"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {p0}, Landroidx/navigation/fragment/NavHostFragment;->X1(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v1

    const-string v2, "NavHostFragment.findNavController(this)"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 6
    invoke-static {v0, v1, p2, v2}, Lcom/shabakaty/downloader/ol3;->h(Landroidx/appcompat/widget/Toolbar;Landroidx/navigation/NavController;Lcom/shabakaty/downloader/m9;I)V

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/rx;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    const-string v2, "CATEGORY_ITEM_ARG"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;

    .line 8
    :goto_0
    iput-object v1, v0, Lcom/shabakaty/downloader/rx;->k:Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;

    .line 9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/rx;

    .line 10
    sget-object v1, Lcom/shabakaty/downloader/uj2;->c:Lcom/shabakaty/downloader/uj2$b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "requireContext().resources"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/uj2$b;->b(Landroid/content/res/Resources;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "en"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/rx;

    .line 12
    iget-object v1, v1, Lcom/shabakaty/downloader/rx;->k:Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;

    if-nez v1, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    iget-object v1, v1, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->t:Ljava/lang/String;

    if-nez v1, :cond_4

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/rx;

    .line 15
    iget-object v1, v1, Lcom/shabakaty/downloader/rx;->k:Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;

    if-nez v1, :cond_3

    goto :goto_1

    .line 16
    :cond_3
    iget-object v1, v1, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->s:Ljava/lang/String;

    if-nez v1, :cond_4

    :goto_1
    const-string v1, ""

    .line 17
    :cond_4
    iput-object v1, v0, Lcom/shabakaty/downloader/rx;->l:Ljava/lang/String;

    .line 18
    iget-object v0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 19
    check-cast v0, Lcom/shabakaty/downloader/oi1;

    iget-object v0, v0, Lcom/shabakaty/downloader/oi1;->P:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/rx;

    .line 20
    iget-object v1, v1, Lcom/shabakaty/downloader/rx;->l:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/rx;

    .line 23
    iget-object v0, v0, Lcom/shabakaty/downloader/rx;->k:Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;

    if-nez v0, :cond_5

    goto :goto_4

    .line 24
    :cond_5
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->A:Ljava/util/List;

    if-nez v0, :cond_6

    goto :goto_4

    .line 25
    :cond_6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem$NewLanguageItem;

    .line 26
    sget-object v4, Lcom/shabakaty/downloader/uj2;->c:Lcom/shabakaty/downloader/uj2$b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/uj2$b;->b(Landroid/content/res/Resources;)Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 27
    iget-object v4, v1, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem$NewLanguageItem;->langEnTitle:Ljava/lang/String;

    goto :goto_3

    .line 28
    :cond_7
    iget-object v4, v1, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem$NewLanguageItem;->langArTitle:Ljava/lang/String;

    .line 29
    :goto_3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "<set-?>"

    .line 30
    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object v4, v1, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem$NewLanguageItem;->title:Ljava/lang/String;

    goto :goto_2

    .line 32
    :cond_8
    :goto_4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/rx;

    .line 33
    iget-object v0, v0, Lcom/shabakaty/downloader/rx;->q:Lcom/shabakaty/downloader/xv2;

    .line 34
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    const/4 p1, 0x1

    :cond_a
    if-eqz p1, :cond_c

    .line 35
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/rx;

    .line 36
    iget-object p1, p1, Lcom/shabakaty/downloader/rx;->q:Lcom/shabakaty/downloader/xv2;

    .line 37
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/rx;

    .line 38
    iget-object v0, v0, Lcom/shabakaty/downloader/rx;->k:Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;

    if-nez v0, :cond_b

    goto :goto_5

    .line 39
    :cond_b
    iget-object p2, v0, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->A:Ljava/util/List;

    .line 40
    :goto_5
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 41
    :cond_c
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/rx;

    .line 42
    iget-object p1, p1, Lcom/shabakaty/downloader/rx;->m:Ljava/lang/String;

    .line 43
    invoke-static {p1}, Lcom/shabakaty/downloader/ne4;->D(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_11

    .line 44
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/rx;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/rx;

    .line 45
    iget-object p2, p2, Lcom/shabakaty/downloader/rx;->k:Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;

    if-nez p2, :cond_d

    goto :goto_6

    .line 46
    :cond_d
    iget-object p2, p2, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;->A:Ljava/util/List;

    if-nez p2, :cond_e

    goto :goto_6

    .line 47
    :cond_e
    invoke-static {p2}, Lcom/shabakaty/downloader/m50;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem$NewLanguageItem;

    if-nez p2, :cond_f

    goto :goto_6

    .line 48
    :cond_f
    iget-object p2, p2, Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem$NewLanguageItem;->langNb:Ljava/lang/String;

    if-nez p2, :cond_10

    :goto_6
    const-string p2, "7"

    .line 49
    :cond_10
    iput-object p2, p1, Lcom/shabakaty/downloader/rx;->m:Ljava/lang/String;

    .line 50
    :cond_11
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/rx;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/rx;->p()V

    .line 51
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 52
    check-cast p1, Lcom/shabakaty/downloader/oi1;

    iget-object p1, p1, Lcom/shabakaty/downloader/oi1;->M:Lcom/skydoves/powerspinner/PowerSpinnerView;

    new-instance p2, Lcom/shabakaty/downloader/lx;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/lx;-><init>(Lcom/shabakaty/downloader/ox;)V

    invoke-virtual {p1, p2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setOnSpinnerOutsideTouchListener(Lcom/shabakaty/downloader/hn1;)V

    .line 53
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 54
    check-cast p1, Lcom/shabakaty/downloader/oi1;

    iget-object p1, p1, Lcom/shabakaty/downloader/oi1;->O:Lcom/skydoves/powerspinner/PowerSpinnerView;

    new-instance p2, Lcom/shabakaty/downloader/mx;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/mx;-><init>(Lcom/shabakaty/downloader/ox;)V

    invoke-virtual {p1, p2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setOnSpinnerOutsideTouchListener(Lcom/shabakaty/downloader/hn1;)V

    .line 55
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 56
    check-cast p1, Lcom/shabakaty/downloader/oi1;

    iget-object p1, p1, Lcom/shabakaty/downloader/oi1;->N:Lcom/skydoves/powerspinner/PowerSpinnerView;

    new-instance p2, Lcom/shabakaty/downloader/nx;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/nx;-><init>(Lcom/shabakaty/downloader/ox;)V

    invoke-virtual {p1, p2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setOnSpinnerOutsideTouchListener(Lcom/shabakaty/downloader/hn1;)V

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

.method public v1(ILcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/shabakaty/downloader/ox$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/ox$a;

    iget v1, v0, Lcom/shabakaty/downloader/ox$a;->w:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/ox$a;->w:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/ox$a;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/ox$a;-><init>(Lcom/shabakaty/downloader/ox;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p2, v0, Lcom/shabakaty/downloader/ox$a;->u:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/ox$a;->w:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    new-instance p2, Lcom/shabakaty/downloader/ox$b;

    const/4 v2, 0x0

    invoke-direct {p2, p0, p1, v2}, Lcom/shabakaty/downloader/ox$b;-><init>(Lcom/shabakaty/downloader/ox;ILcom/shabakaty/downloader/ud0;)V

    iput v3, v0, Lcom/shabakaty/downloader/ox$a;->w:I

    .line 5
    invoke-interface {p0}, Lcom/shabakaty/downloader/rh2;->getLifecycle()Landroidx/lifecycle/e;

    move-result-object p1

    const-string v2, "lifecycle"

    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v2, Landroidx/lifecycle/e$c;->t:Landroidx/lifecycle/e$c;

    invoke-static {p1, v2, p2, v0}, Lcom/shabakaty/downloader/kb3;->a(Landroidx/lifecycle/e;Landroidx/lifecycle/e$c;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const-string p1, "override suspend fun str\u2026getString(stringRes) }\n\t}"

    .line 7
    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method
