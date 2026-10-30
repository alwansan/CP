.class public final Lcom/shabakaty/downloader/pz0;
.super Lcom/shabakaty/downloader/hj;
.source "DownloadsFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/sz0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/hj<",
        "Lcom/shabakaty/downloader/gj1;",
        "Lcom/shabakaty/downloader/sz0;",
        "Lcom/shabakaty/downloader/zz0;",
        ">;",
        "Lcom/shabakaty/downloader/sz0;"
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
        "Lcom/shabakaty/downloader/pz0;",
        "Lcom/shabakaty/downloader/hj;",
        "Lcom/shabakaty/downloader/gj1;",
        "Lcom/shabakaty/downloader/sz0;",
        "Lcom/shabakaty/downloader/zz0;",
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
.field public static final synthetic x:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0d0072

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/hj;-><init>(I)V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 5

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/lo3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/lo3;-><init>()V

    .line 2
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 4
    new-instance v3, Lcom/shabakaty/downloader/bn2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/shabakaty/downloader/bn2;-><init>(Landroid/content/Context;)V

    const v4, 0x7f12008e

    .line 5
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/bn2;->p(I)Lcom/shabakaty/downloader/bn2;

    .line 6
    invoke-virtual {v3, v1}, Lcom/shabakaty/downloader/bn2;->r(Landroid/view/View;)Lcom/shabakaty/downloader/bn2;

    move-result-object v3

    .line 7
    new-instance v4, Lcom/shabakaty/downloader/pz0$a;

    invoke-direct {v4, v1, v0, p0}, Lcom/shabakaty/downloader/pz0$a;-><init>(Landroid/widget/EditText;Lcom/shabakaty/downloader/lo3;Lcom/shabakaty/downloader/pz0;)V

    const v0, 0x7f1202a7

    invoke-virtual {v3, v0, v4}, Lcom/shabakaty/downloader/bn2;->n(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shabakaty/downloader/bn2;

    move-result-object v0

    const-string v1, "private inline fun showC\u2026elButton()\n\t\t\t\t.show()\n\t}"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 8
    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/s45;->h(Lcom/shabakaty/downloader/bn2;Lcom/shabakaty/downloader/rm1;I)Lcom/shabakaty/downloader/bn2;

    .line 9
    invoke-virtual {v0}, Landroidx/appcompat/app/b$a;->j()Landroidx/appcompat/app/b;

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
            "Lcom/shabakaty/downloader/zz0;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/shabakaty/downloader/zz0;

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

.method public onDestroyView()V
    .locals 0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Fix100;->hide(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/shabakaty/downloader/hj;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 1

    const-string v0, "downloads_hidden"
    invoke-static {v0}, Lcom/shabakaty/cinemana/local/UiPerfDiag;->mark(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Fix100;->hide(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/shabakaty/downloader/hj;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/shabakaty/downloader/hj;->onResume()V

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Fix100;->show(Ljava/lang/Object;)V

    # PATCH303: report visibility only; do not pause or modify download tasks.
    const-string v0, "downloads_visible"
    invoke-static {v0}, Lcom/shabakaty/cinemana/local/UiPerfDiag;->mark(Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/hj;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->downloads(Landroid/view/View;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 v0, 0x2

    .line 2
    invoke-static {p0, p1, p2, v0, p2}, Lcom/shabakaty/downloader/hj;->g2(Lcom/shabakaty/downloader/hj;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 4
    check-cast p1, Lcom/shabakaty/downloader/gj1;

    iget-object p1, p1, Lcom/shabakaty/downloader/gj1;->N:Landroidx/viewpager2/widget/ViewPager2;

    new-instance p2, Lcom/shabakaty/downloader/rz0;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/rz0;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 6
    check-cast p1, Lcom/shabakaty/downloader/gj1;

    iget-object p1, p1, Lcom/shabakaty/downloader/gj1;->O:Lcom/google/android/material/tabs/TabLayout;

    const-string p2, "binding.tabLayout"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 8
    check-cast p2, Lcom/shabakaty/downloader/gj1;

    iget-object p2, p2, Lcom/shabakaty/downloader/gj1;->O:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p2}, Lcom/google/android/material/tabs/TabLayout;->h()Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object p2

    const v0, 0x7f120153

    .line 9
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/material/tabs/TabLayout$f;->b(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$f;

    .line 10
    iget-object v0, p1, Lcom/google/android/material/tabs/TabLayout;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/TabLayout$f;Z)V

    .line 11
    iget-object p2, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 12
    check-cast p2, Lcom/shabakaty/downloader/gj1;

    iget-object p2, p2, Lcom/shabakaty/downloader/gj1;->O:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p2}, Lcom/google/android/material/tabs/TabLayout;->h()Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object p2

    const v0, 0x7f12008d

    .line 13
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/material/tabs/TabLayout$f;->b(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$f;

    .line 14
    iget-object v0, p1, Lcom/google/android/material/tabs/TabLayout;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/TabLayout$f;Z)V

    .line 15
    new-instance p2, Lcom/shabakaty/downloader/qz0;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/qz0;-><init>(Lcom/shabakaty/downloader/pz0;)V

    .line 16
    iget-object v0, p1, Lcom/google/android/material/tabs/TabLayout;->a0:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 17
    iget-object p1, p1, Lcom/google/android/material/tabs/TabLayout;->a0:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
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
