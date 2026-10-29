.class public final Lcom/shabakaty/downloader/vt1;
.super Lcom/shabakaty/downloader/hj;
.source "HomeFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/wt1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/hj<",
        "Lcom/shabakaty/downloader/qj1;",
        "Lcom/shabakaty/downloader/wt1;",
        "Lcom/shabakaty/downloader/tu1;",
        ">;",
        "Lcom/shabakaty/downloader/wt1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00012\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/shabakaty/downloader/vt1;",
        "Lcom/shabakaty/downloader/hj;",
        "Lcom/shabakaty/downloader/qj1;",
        "Lcom/shabakaty/downloader/wt1;",
        "Lcom/shabakaty/downloader/tu1;",
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


# static fields
.field public static final synthetic z:I


# instance fields
.field public x:Lcom/shabakaty/downloader/yt1;

.field public y:Lcom/shabakaty/downloader/fu1;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0d0077

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/hj;-><init>(I)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/fu1;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/fu1;-><init>(Lcom/shabakaty/downloader/wt1;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/vt1;->y:Lcom/shabakaty/downloader/fu1;

    return-void
.end method


# virtual methods
.method public D1(Lcom/shabakaty/cinemana/domain/models/local/home_page/VideosGroup;)V
    .locals 5

    .line 1
    invoke-static {p0}, Landroidx/navigation/fragment/NavHostFragment;->X1(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    const-string v1, "NavHostFragment.findNavController(this)"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic$Group;

    .line 3
    iget-object v2, p1, Lcom/shabakaty/cinemana/domain/models/local/home_page/VideosGroup;->title:Ljava/lang/String;

    .line 4
    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/local/home_page/VideosGroup;->groupsID:Ljava/lang/String;

    .line 5
    iget p1, p1, Lcom/shabakaty/cinemana/domain/models/local/home_page/VideosGroup;->hasPagination:I

    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 6
    :goto_0
    invoke-direct {v1, v2, v3, v4}, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic$Group;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/uo1;->d(Landroidx/navigation/NavController;Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType;)V

    return-void
.end method

.method public G(Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;)V
    .locals 3

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

.method public P(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroid/view/View;)V
    .locals 5

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
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/shabakaty/downloader/x93;

    const/4 v1, 0x0

    .line 2
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 3
    new-instance v3, Lcom/shabakaty/downloader/x93;

    const-string v4, "LAUNCH_PLAYER_ARG"

    invoke-direct {v3, v4, v2}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v1

    .line 4
    invoke-static {v0}, Lcom/shabakaty/downloader/ml3;->a([Lcom/shabakaty/downloader/x93;)Landroid/os/Bundle;

    move-result-object v0

    .line 5
    invoke-static {p0}, Landroidx/navigation/fragment/NavHostFragment;->X1(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v1

    const-string v2, "NavHostFragment.findNavController(this)"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {v1, p2, p1, v0}, Lcom/shabakaty/downloader/uo1;->e(Landroidx/navigation/NavController;Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public W0(Lcom/shabakaty/downloader/q14;)V
    .locals 2

    const-string v0, "status"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/yc4;->a(Landroid/content/Context;Lcom/shabakaty/downloader/q14;)Landroid/content/Intent;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Lcom/shabakaty/downloader/ji1;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public W1(Lcom/shabakaty/downloader/q14$b$b;)V
    .locals 3

    const-string v0, "status"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lcom/shabakaty/downloader/ji1;

    move-result-object v1

    instance-of v2, v1, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v1, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 4
    check-cast v0, Lcom/shabakaty/downloader/y2;

    iget-object v0, v0, Lcom/shabakaty/downloader/y2;->R:Landroid/widget/TextView;

    .line 5
    iget p1, p1, Lcom/shabakaty/downloader/q14$b$b;->d:I

    .line 6
    invoke-virtual {v1, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, v1, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 8
    check-cast p1, Lcom/shabakaty/downloader/y2;

    iget-object p1, p1, Lcom/shabakaty/downloader/y2;->P:Landroidx/cardview/widget/CardView;

    const-string v0, "binding.serviceDownBanner"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/s45;->l(Landroid/view/View;)V

    .line 9
    iget-object p1, v1, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 10
    check-cast p1, Lcom/shabakaty/downloader/y2;

    iget-object p1, p1, Lcom/shabakaty/downloader/y2;->P:Landroidx/cardview/widget/CardView;

    const/high16 v0, -0x3b860000    # -1000.0f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 11
    iget-object p1, v1, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 12
    check-cast p1, Lcom/shabakaty/downloader/y2;

    iget-object p1, p1, Lcom/shabakaty/downloader/y2;->P:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x320

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_1
    return-void
.end method

.method public Z1()Lcom/shabakaty/downloader/vj;
    .locals 0

    return-object p0
.end method

.method public a(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroid/view/View;)V
    .locals 3

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

    .line 2
    :cond_1
    invoke-static {p0}, Landroidx/navigation/fragment/NavHostFragment;->X1(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    const-string v1, "NavHostFragment.findNavController(this)"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 3
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
            "Lcom/shabakaty/downloader/tu1;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/shabakaty/downloader/tu1;

    return-object v0
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/qj1;

    iget-object v0, v0, Lcom/shabakaty/downloader/qj1;->N:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p0}, Lcom/shabakaty/downloader/hj;->b2(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 4
    check-cast v0, Lcom/shabakaty/downloader/qj1;

    iget-object v0, v0, Lcom/shabakaty/downloader/qj1;->N:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->q0(I)V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/tu1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/tu1;->p()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/shabakaty/downloader/vt1;->y:Lcom/shabakaty/downloader/fu1;

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/vt1;->x:Lcom/shabakaty/downloader/yt1;

    .line 3
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/qj1;

    iget-object v0, v0, Lcom/shabakaty/downloader/qj1;->N:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 3
    invoke-super {p0}, Lcom/shabakaty/downloader/hj;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 7

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->refresh(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0, p0}, Lcom/shabakaty/downloader/hj;->b2(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/tu1;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xk;->e()Lcom/shabakaty/downloader/se0;

    move-result-object v1

    new-instance v4, Lcom/shabakaty/downloader/su1;

    const/4 v2, 0x0

    invoke-direct {v4, v0, v2}, Lcom/shabakaty/downloader/su1;-><init>(Lcom/shabakaty/downloader/tu1;Lcom/shabakaty/downloader/ud0;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/vt1$a;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/vt1$a;-><init>(Lcom/shabakaty/downloader/vt1;)V

    check-cast v0, Lcom/shabakaty/downloader/l92;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 6
    invoke-virtual {v0, v2, v3, v1}, Lcom/shabakaty/downloader/l92;->x(ZZLcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/ou0;

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/hj;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 3
    check-cast p1, Lcom/shabakaty/downloader/qj1;

    iget-object p1, p1, Lcom/shabakaty/downloader/qj1;->N:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setAccessibilityLiveRegion(I)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 5
    check-cast p1, Lcom/shabakaty/downloader/qj1;

    iget-object p1, p1, Lcom/shabakaty/downloader/qj1;->M:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    const/4 p1, 0x1

    const/4 p2, 0x2

    const/4 v0, 0x0

    .line 6
    invoke-static {p0, p1, v0, p2, v0}, Lcom/shabakaty/downloader/hj;->g2(Lcom/shabakaty/downloader/hj;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/vt1;->x:Lcom/shabakaty/downloader/yt1;

    if-nez p1, :cond_0

    .line 8
    new-instance p1, Lcom/shabakaty/downloader/yt1;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/yt1;-><init>(Lcom/shabakaty/downloader/vt1;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/vt1;->x:Lcom/shabakaty/downloader/yt1;

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 10
    check-cast p1, Lcom/shabakaty/downloader/qj1;

    iget-object p1, p1, Lcom/shabakaty/downloader/qj1;->N:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/shabakaty/downloader/vt1;->x:Lcom/shabakaty/downloader/yt1;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$j;)V

    .line 11
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 12
    check-cast p1, Lcom/shabakaty/downloader/qj1;

    iget-object p1, p1, Lcom/shabakaty/downloader/qj1;->N:Landroidx/recyclerview/widget/RecyclerView;

    const-string p2, "binding.homePageMainRecycler"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/s45;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->refresh(Ljava/lang/Object;)V

    return-void
.end method

.method public q(I)V
    .locals 1

    const-string v0, "this"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/qk$a;->a(Lcom/shabakaty/downloader/qk;I)V

    return-void
.end method

.method public s0(Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "\u0623\u0643\u0645\u0644 \u0627\u0644\u0645\u0634\u0627\u0647\u062f\u0629"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Continue Watching"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const-string v0, "$this$findNavController"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/navigation/fragment/NavHostFragment;->X1(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    const-string v1, "NavHostFragment.findNavController(this)"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Fixed$VideosList;

    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    if-nez p1, :cond_2

    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    :cond_2
    invoke-direct {v1, p2, p1}, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Fixed$VideosList;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/uo1;->d(Landroidx/navigation/NavController;Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType;)V

    return-void

    .line 1
    :cond_3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/tu1;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/tu1;->m:Lcom/shabakaty/downloader/xv2;

    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItems;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItems;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal;

    .line 4
    invoke-virtual {v4}, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal;->c()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/shabakaty/downloader/m50;->c0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez v4, :cond_6

    move-object v4, v2

    goto :goto_0

    .line 5
    :cond_6
    iget-object v4, v4, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->listId:Ljava/lang/String;

    :goto_0
    if-nez p1, :cond_7

    :goto_1
    move-object v5, v2

    goto :goto_2

    .line 6
    :cond_7
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/m50;->c0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez v5, :cond_8

    goto :goto_1

    .line 7
    :cond_8
    iget-object v5, v5, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->listId:Ljava/lang/String;

    .line 8
    :goto_2
    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v2, v3

    .line 9
    :cond_9
    check-cast v2, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal;

    .line 10
    :goto_3
    instance-of v0, v2, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$RecentlyAdded;

    const-string v3, "NavHostFragment.findNavController(this)"

    const-string v4, "$this$findNavController"

    const-string v5, ""

    if-eqz v0, :cond_c

    .line 11
    invoke-static {p0, v4}, Lcom/shabakaty/downloader/j32;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p0}, Landroidx/navigation/fragment/NavHostFragment;->X1(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v1, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Fixed$VideosList;

    if-nez p2, :cond_a

    move-object p2, v5

    :cond_a
    if-nez p1, :cond_b

    .line 14
    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    .line 15
    :cond_b
    invoke-direct {v1, p2, p1}, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Fixed$VideosList;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 16
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/uo1;->d(Landroidx/navigation/NavController;Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType;)V

    goto :goto_6

    .line 17
    :cond_c
    invoke-static {p0, v4}, Lcom/shabakaty/downloader/j32;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {p0}, Landroidx/navigation/fragment/NavHostFragment;->X1(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v3, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic$Group;

    if-nez p2, :cond_d

    move-object p2, v5

    :cond_d
    if-nez p1, :cond_e

    goto :goto_4

    .line 20
    :cond_e
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/m50;->c0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez p1, :cond_f

    goto :goto_4

    .line 21
    :cond_f
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->listId:Ljava/lang/String;

    if-nez p1, :cond_10

    goto :goto_4

    :cond_10
    move-object v5, p1

    :goto_4
    const/4 p1, 0x1

    if-nez v2, :cond_11

    goto :goto_5

    .line 22
    :cond_11
    invoke-virtual {v2}, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal;->e()I

    move-result v2

    if-ne v2, p1, :cond_12

    const/4 v1, 0x1

    .line 23
    :cond_12
    :goto_5
    invoke-direct {v3, p2, v5, v1}, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic$Group;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 24
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/uo1;->d(Landroidx/navigation/NavController;Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType;)V

    :goto_6
    return-void
.end method

.method public x1()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/shabakaty/downloader/x93;

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/tu1;

    .line 2
    iget-object v1, v1, Lcom/shabakaty/downloader/tu1;->m:Lcom/shabakaty/downloader/xv2;

    .line 3
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItems;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, v1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItems;->franchises:Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Franchises;

    if-nez v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, v1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Franchises;->franchises:Ljava/util/List;

    if-nez v1, :cond_2

    :goto_0
    move-object v1, v3

    goto :goto_1

    :cond_2
    new-array v4, v2, [Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;

    .line 6
    invoke-interface {v1, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string v4, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, [Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;

    :goto_1
    if-nez v1, :cond_3

    new-array v1, v2, [Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;

    .line 7
    :cond_3
    new-instance v4, Lcom/shabakaty/downloader/x93;

    const-string v5, "COLLECTIONS_ARG"

    invoke-direct {v4, v5, v1}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v2

    .line 8
    invoke-static {v0}, Lcom/shabakaty/downloader/ml3;->a([Lcom/shabakaty/downloader/x93;)Landroid/os/Bundle;

    move-result-object v0

    .line 9
    invoke-static {p0}, Landroidx/navigation/fragment/NavHostFragment;->X1(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v1

    const-string v2, "NavHostFragment.findNavController(this)"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x44f

    .line 10
    invoke-virtual {v1, v2, v0, v3, v3}, Landroidx/navigation/NavController;->i(ILandroid/os/Bundle;Landroidx/navigation/g;Landroidx/navigation/h$a;)V

    return-void
.end method
