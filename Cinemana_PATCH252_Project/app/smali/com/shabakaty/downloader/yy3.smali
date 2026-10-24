.class public final Lcom/shabakaty/downloader/yy3;
.super Lcom/shabakaty/downloader/hj;
.source "SearchFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/dz3;
.implements Lcom/shabakaty/downloader/pk;
.implements Lcom/google/android/material/tabs/TabLayout$d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/hj<",
        "Lcom/shabakaty/downloader/fk1;",
        "Lcom/shabakaty/downloader/dz3;",
        "Lcom/shabakaty/downloader/hz3;",
        ">;",
        "Lcom/shabakaty/downloader/dz3;",
        "Lcom/shabakaty/downloader/pk;",
        "Lcom/google/android/material/tabs/TabLayout$d;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00012\u00020\u00032\u00020\u00052\u00020\u0006B\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/shabakaty/downloader/yy3;",
        "Lcom/shabakaty/downloader/hj;",
        "Lcom/shabakaty/downloader/fk1;",
        "Lcom/shabakaty/downloader/dz3;",
        "Lcom/shabakaty/downloader/hz3;",
        "Lcom/shabakaty/downloader/pk;",
        "Lcom/google/android/material/tabs/TabLayout$d;",
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

    const v0, 0x7f0d007d

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/hj;-><init>(I)V

    return-void
.end method


# virtual methods
.method public E0()V
    .locals 3

    const-string v0, "$this$findNavController"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Landroidx/navigation/fragment/NavHostFragment;->X1(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    const-string v1, "NavHostFragment.findNavController(this)"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xc1e

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v2, v2}, Landroidx/navigation/NavController;->i(ILandroid/os/Bundle;Landroidx/navigation/g;Landroidx/navigation/h$a;)V

    return-void
.end method

.method public E1(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 0

    return-void
.end method

.method public F(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 0

    return-void
.end method

.method public F1(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 2
    check-cast p1, Lcom/shabakaty/downloader/fk1;

    iget-object p1, p1, Lcom/shabakaty/downloader/fk1;->S:Lcom/google/android/material/tabs/TabLayout;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 4
    check-cast v1, Lcom/shabakaty/downloader/fk1;

    iget-object v1, v1, Lcom/shabakaty/downloader/fk1;->S:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->g(I)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v1

    .line 5
    invoke-virtual {p1, v1, v0}, Lcom/google/android/material/tabs/TabLayout;->j(Lcom/google/android/material/tabs/TabLayout$f;Z)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 7
    check-cast p1, Lcom/shabakaty/downloader/fk1;

    iget-object p1, p1, Lcom/shabakaty/downloader/fk1;->S:Lcom/google/android/material/tabs/TabLayout;

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 9
    check-cast v1, Lcom/shabakaty/downloader/fk1;

    iget-object v1, v1, Lcom/shabakaty/downloader/fk1;->S:Lcom/google/android/material/tabs/TabLayout;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->g(I)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v1

    .line 10
    invoke-virtual {p1, v1, v0}, Lcom/google/android/material/tabs/TabLayout;->j(Lcom/google/android/material/tabs/TabLayout$f;Z)V

    :goto_0
    return-void
.end method

.method public T()V
    .locals 1

    const-string v0, "this"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public T1()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/uj2;->c:Lcom/shabakaty/downloader/uj2$b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "resources"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/uj2$b;->b(Landroid/content/res/Resources;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocaleManager.getLocale(resources).language"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public Z1()Lcom/shabakaty/downloader/vj;
    .locals 0

    return-object p0
.end method

.method public a(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroid/view/View;)V
    .locals 8

    const-string v0, "videoModel"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/hz3;

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/hl3;->e(Lcom/shabakaty/downloader/o35;)Lcom/shabakaty/downloader/se0;

    move-result-object v1

    new-instance v4, Lcom/shabakaty/downloader/gz3;

    const/4 v7, 0x0

    invoke-direct {v4, v0, p1, v7}, Lcom/shabakaty/downloader/gz3;-><init>(Lcom/shabakaty/downloader/hz3;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/ud0;)V

    const/4 v2, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "VideoThumb"

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/facebook/drawee/view/SimpleDraweeView;

    if-nez p2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p0}, Landroidx/navigation/fragment/NavHostFragment;->X1(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    const-string v1, "NavHostFragment.findNavController(this)"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 5
    invoke-static {v0, p2, p1, v7, v1}, Lcom/shabakaty/downloader/uo1;->f(Landroidx/navigation/NavController;Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroid/os/Bundle;I)V

    :goto_0
    return-void
.end method

.method public d2()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/shabakaty/downloader/hz3;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/shabakaty/downloader/hz3;

    return-object v0
.end method

.method public e2()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/hz3;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/hz3;->v:Lcom/shabakaty/downloader/xv2;

    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/shabakaty/downloader/ne4;->D(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 5
    check-cast v0, Lcom/shabakaty/downloader/fk1;

    iget-object v0, v0, Lcom/shabakaty/downloader/fk1;->N:Lcom/google/android/material/appbar/AppBarLayout;

    .line 6
    invoke-virtual {v0, v2, v2, v2}, Lcom/google/android/material/appbar/AppBarLayout;->e(ZZZ)V

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/hz3;

    .line 8
    iget-object v0, v0, Lcom/shabakaty/downloader/hz3;->v:Lcom/shabakaty/downloader/xv2;

    const-string v3, ""

    .line 9
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 11
    check-cast v0, Lcom/shabakaty/downloader/fk1;

    iget-object v0, v0, Lcom/shabakaty/downloader/fk1;->Q:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v0, v3, v1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 12
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/hz3;

    .line 13
    iget-object v0, v0, Lcom/shabakaty/downloader/hz3;->y:Lcom/shabakaty/downloader/mj;

    .line 14
    invoke-static {v0}, Lcom/shabakaty/downloader/zi2;->l(Lcom/shabakaty/downloader/mj;)V

    .line 15
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/hz3;

    .line 16
    iget-object v0, v0, Lcom/shabakaty/downloader/hz3;->x:Lcom/shabakaty/downloader/mj;

    .line 17
    invoke-static {v0}, Lcom/shabakaty/downloader/zi2;->l(Lcom/shabakaty/downloader/mj;)V

    .line 18
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/hz3;

    .line 19
    iput-boolean v1, v0, Lcom/shabakaty/downloader/hz3;->g:Z

    .line 20
    iput-boolean v1, v0, Lcom/shabakaty/downloader/hz3;->h:Z

    .line 21
    iput v1, v0, Lcom/shabakaty/downloader/hz3;->i:I

    .line 22
    iput v1, v0, Lcom/shabakaty/downloader/hz3;->j:I

    .line 23
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/hz3;

    .line 24
    iget-object v4, v0, Lcom/shabakaty/downloader/hz3;->s:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/hz3;->n()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 25
    iget-object v4, v0, Lcom/shabakaty/downloader/hz3;->n:Lcom/shabakaty/downloader/xv2;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 26
    iget-object v4, v0, Lcom/shabakaty/downloader/hz3;->o:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v4, v1}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 27
    iget-object v4, v0, Lcom/shabakaty/downloader/hz3;->m:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v4, v3}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 28
    iget-object v0, v0, Lcom/shabakaty/downloader/hz3;->p:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public f(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/hz3;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/shabakaty/downloader/hz3;->o(Lcom/shabakaty/downloader/hz3;Ljava/lang/String;Ljava/lang/Integer;I)V

    return-void
.end method

.method public f1()V
    .locals 1

    const-string v0, "this"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public l1(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/hz3;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/hz3;->v:Lcom/shabakaty/downloader/xv2;

    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/hz3;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2}, Lcom/shabakaty/downloader/hz3;->o(Lcom/shabakaty/downloader/hz3;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 6
    check-cast p1, Lcom/shabakaty/downloader/fk1;

    iget-object p1, p1, Lcom/shabakaty/downloader/fk1;->N:Lcom/google/android/material/appbar/AppBarLayout;

    const-string v0, "binding.searchAppBarLayout"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getBottom()I

    move-result p1

    sub-int/2addr v0, p1

    const/4 p1, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-virtual {p0, p0}, Lcom/shabakaty/downloader/hj;->b2(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 10
    check-cast v0, Lcom/shabakaty/downloader/fk1;

    iget-object v0, v0, Lcom/shabakaty/downloader/fk1;->N:Lcom/google/android/material/appbar/AppBarLayout;

    .line 11
    invoke-virtual {v0, p1, p1, p1}, Lcom/google/android/material/appbar/AppBarLayout;->e(ZZZ)V

    :cond_2
    return-void
.end method

.method public o()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/hz3;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v0, v1, v1, v2}, Lcom/shabakaty/downloader/hz3;->o(Lcom/shabakaty/downloader/hz3;Ljava/lang/String;Ljava/lang/Integer;I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-virtual {p0, p0}, Lcom/shabakaty/downloader/hj;->b2(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/hz3;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/hz3;->k:Lcom/shabakaty/downloader/c90;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/c90;->h()V

    .line 5
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/fk1;

    iget-object v0, v0, Lcom/shabakaty/downloader/fk1;->O:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;->t()V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 4
    check-cast v0, Lcom/shabakaty/downloader/fk1;

    iget-object v0, v0, Lcom/shabakaty/downloader/fk1;->R:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 6
    check-cast v0, Lcom/shabakaty/downloader/fk1;

    iget-object v0, v0, Lcom/shabakaty/downloader/fk1;->Q:Landroidx/appcompat/widget/SearchView;

    const-string v2, "binding.searchView"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/st2;->i(Landroidx/appcompat/widget/SearchView;Lcom/shabakaty/downloader/b73;)V

    .line 7
    invoke-super {p0}, Lcom/shabakaty/downloader/hj;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/fk1;

    iget-object v0, v0, Lcom/shabakaty/downloader/fk1;->N:Lcom/google/android/material/appbar/AppBarLayout;

    const-string v1, "binding.searchAppBarLayout"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 5
    check-cast v1, Lcom/shabakaty/downloader/fk1;

    iget-object v1, v1, Lcom/shabakaty/downloader/fk1;->N:Lcom/google/android/material/appbar/AppBarLayout;

    .line 6
    invoke-virtual {v1, v2, v2, v2}, Lcom/google/android/material/appbar/AppBarLayout;->e(ZZZ)V

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 8
    check-cast v1, Lcom/shabakaty/downloader/fk1;

    iget-object v1, v1, Lcom/shabakaty/downloader/fk1;->Q:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/shabakaty/downloader/ne4;->D(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_6

    .line 9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/hz3;

    .line 10
    iget-object v1, v1, Lcom/shabakaty/downloader/hz3;->v:Lcom/shabakaty/downloader/xv2;

    .line 11
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    invoke-static {v1}, Lcom/shabakaty/downloader/ne4;->D(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_3
    if-nez v2, :cond_6

    .line 12
    iget-object v1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 13
    check-cast v1, Lcom/shabakaty/downloader/fk1;

    iget-object v1, v1, Lcom/shabakaty/downloader/fk1;->Q:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/hz3;

    .line 14
    iget-object v2, v2, Lcom/shabakaty/downloader/hz3;->v:Lcom/shabakaty/downloader/xv2;

    .line 15
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v0}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 16
    :cond_6
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/hj;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/hz3;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/hz3;->m()V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 4
    check-cast p1, Lcom/shabakaty/downloader/fk1;

    iget-object p1, p1, Lcom/shabakaty/downloader/fk1;->N:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p2, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    move-object p1, v0

    goto :goto_1

    .line 5
    :cond_1
    iget-object p1, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

    :goto_1
    if-nez p1, :cond_2

    .line 6
    new-instance p1, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, v0}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    :cond_2
    instance-of p2, p1, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    if-eqz p2, :cond_3

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    goto :goto_2

    :cond_3
    move-object p1, v0

    :goto_2
    if-nez p1, :cond_4

    goto :goto_3

    .line 8
    :cond_4
    new-instance p2, Lcom/shabakaty/downloader/xy3;

    invoke-direct {p2}, Lcom/shabakaty/downloader/xy3;-><init>()V

    .line 9
    iput-object p2, p1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->o:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$a;

    .line 10
    :goto_3
    iget-object p2, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 11
    check-cast p2, Lcom/shabakaty/downloader/fk1;

    iget-object p2, p2, Lcom/shabakaty/downloader/fk1;->N:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    instance-of v1, p2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    if-eqz v1, :cond_5

    move-object v0, p2

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    :cond_5
    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->b(Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;)V

    .line 12
    :goto_4
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 13
    check-cast p1, Lcom/shabakaty/downloader/fk1;

    iget-object p1, p1, Lcom/shabakaty/downloader/fk1;->O:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    invoke-virtual {p1, p0}, Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;->setItemsListener(Lcom/shabakaty/downloader/pk;)V

    .line 14
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 15
    check-cast p1, Lcom/shabakaty/downloader/fk1;

    iget-object p1, p1, Lcom/shabakaty/downloader/fk1;->S:Lcom/google/android/material/tabs/TabLayout;

    .line 16
    iget-object p2, p1, Lcom/google/android/material/tabs/TabLayout;->a0:Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 17
    iget-object p1, p1, Lcom/google/android/material/tabs/TabLayout;->a0:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_7
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 19
    check-cast p1, Lcom/shabakaty/downloader/fk1;

    iget-object p1, p1, Lcom/shabakaty/downloader/fk1;->R:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/hz3;

    .line 20
    iget p2, p2, Lcom/shabakaty/downloader/hz3;->r:I

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, p2, v0}, Landroidx/viewpager2/widget/ViewPager2;->c(IZ)V

    return-void
.end method

.method public p0(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/hz3;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p1, Lcom/google/android/material/tabs/TabLayout$f;->d:I

    .line 3
    :goto_0
    iput p1, v0, Lcom/shabakaty/downloader/hz3;->r:I

    return-void
.end method

.method public q(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/vj$a;->a(Lcom/shabakaty/downloader/vj;I)V

    return-void
.end method

.method public s0(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
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

    return-void
.end method
