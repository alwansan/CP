.class public final Lcom/shabakaty/downloader/vx4;
.super Lcom/shabakaty/downloader/hj;
.source "UserListDetailsFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/cy4;
.implements Lcom/shabakaty/downloader/pk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/hj<",
        "Lcom/shabakaty/downloader/fl1;",
        "Lcom/shabakaty/downloader/cy4;",
        "Lcom/shabakaty/downloader/by4;",
        ">;",
        "Lcom/shabakaty/downloader/cy4;",
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
        "Lcom/shabakaty/downloader/vx4;",
        "Lcom/shabakaty/downloader/hj;",
        "Lcom/shabakaty/downloader/fl1;",
        "Lcom/shabakaty/downloader/cy4;",
        "Lcom/shabakaty/downloader/by4;",
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


# static fields
.field public static final synthetic y:I


# instance fields
.field public final x:Lcom/shabakaty/downloader/kf2;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0d0086

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/hj;-><init>(I)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/vx4$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/vx4$a;-><init>(Lcom/shabakaty/downloader/vx4;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/vx4;->x:Lcom/shabakaty/downloader/kf2;

    return-void
.end method


# virtual methods
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

.method public b()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/by4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/by4;->l()V

    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/by4;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/by4;->j:Lcom/shabakaty/downloader/mj;

    const-string v1, "<this>"

    .line 3
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {v0}, Lcom/shabakaty/downloader/zi2;->c(Lcom/shabakaty/downloader/xv2;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/shabakaty/downloader/zi2;->d(Lcom/shabakaty/downloader/xv2;)Z

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
    if-nez v0, :cond_4

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/vx4;->x:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/n;

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 7
    check-cast v1, Lcom/shabakaty/downloader/fl1;

    iget-object v1, v1, Lcom/shabakaty/downloader/fl1;->P:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    invoke-virtual {v1}, Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;->getBinding()Lcom/shabakaty/downloader/i65;

    move-result-object v1

    iget-object v1, v1, Lcom/shabakaty/downloader/i65;->N:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/n;->f(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 9
    check-cast v0, Lcom/shabakaty/downloader/fl1;

    iget-object v0, v0, Lcom/shabakaty/downloader/fl1;->P:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;->getBinding()Lcom/shabakaty/downloader/i65;

    move-result-object v0

    iget-object v0, v0, Lcom/shabakaty/downloader/i65;->N:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$e;

    move-result-object v0

    .line 10
    instance-of v1, v0, Landroidx/recyclerview/widget/g;

    if-eqz v1, :cond_2

    .line 11
    check-cast v0, Landroidx/recyclerview/widget/g;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/g;->f()Ljava/util/List;

    move-result-object v0

    const-string v1, "adapter.adapters"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/m50;->c0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$e;

    :cond_2
    if-nez v0, :cond_3

    goto :goto_2

    .line 12
    :cond_3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    :cond_4
    :goto_2
    return-void
.end method

.method public d2()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/shabakaty/downloader/by4;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/shabakaty/downloader/by4;

    return-object v0
.end method

.method public o()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/by4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/by4;->l()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/fl1;

    iget-object v0, v0, Lcom/shabakaty/downloader/fl1;->P:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;->t()V

    .line 3
    invoke-super {p0}, Lcom/shabakaty/downloader/hj;->onDestroyView()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/hj;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/by4;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/by4;->j:Lcom/shabakaty/downloader/mj;

    .line 4
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/tj;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    move-object p1, p2

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 6
    check-cast p1, Ljava/util/List;

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    :goto_2
    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/by4;

    .line 8
    iget-object p1, p1, Lcom/shabakaty/downloader/by4;->j:Lcom/shabakaty/downloader/mj;

    .line 9
    invoke-static {p1, p2, v1}, Lcom/shabakaty/downloader/zi2;->j(Lcom/shabakaty/downloader/mj;Ljava/lang/Object;I)V

    .line 10
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "3"

    if-nez p1, :cond_4

    goto :goto_5

    :cond_4
    const-string v3, "USER_LIST_KIND"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_5

    .line 11
    :cond_5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/by4;

    .line 12
    iget-object v3, v3, Lcom/shabakaty/downloader/by4;->i:Lcom/shabakaty/downloader/xv2;

    .line 13
    invoke-virtual {v3, p1}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x31

    if-eq v3, v4, :cond_8

    const/16 v4, 0x33

    if-eq v3, v4, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    const p1, 0x7f12012c

    .line 15
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_8
    const-string v3, "1"

    .line 16
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    :goto_3
    const p1, 0x7f1202d9

    .line 17
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_9
    const p1, 0x7f1202de

    .line 18
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_4
    const-string v3, "when (it) {\n\t\t\t\tFAVORITE\u2026ing.watch_later_txt)\n\t\t\t}"

    .line 19
    invoke-static {p1, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, v1, p1}, Lcom/shabakaty/downloader/hj;->f2(ZLjava/lang/String;)V

    .line 21
    :goto_5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/by4;

    .line 22
    iget-object p1, p1, Lcom/shabakaty/downloader/by4;->i:Lcom/shabakaty/downloader/xv2;

    .line 23
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 24
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 25
    check-cast p1, Lcom/shabakaty/downloader/fl1;

    iget-object p1, p1, Lcom/shabakaty/downloader/fl1;->P:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    new-instance v2, Lcom/shabakaty/downloader/l55;

    invoke-direct {v2, p0}, Lcom/shabakaty/downloader/l55;-><init>(Lcom/shabakaty/downloader/pk;)V

    invoke-virtual {p1, v2}, Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;->setAdapter(Lcom/shabakaty/downloader/ej;)V

    .line 26
    :cond_a
    invoke-virtual {p0}, Lcom/shabakaty/downloader/vx4;->d()V

    .line 27
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/by4;

    .line 28
    iget-object p1, p1, Lcom/shabakaty/downloader/by4;->j:Lcom/shabakaty/downloader/mj;

    .line 29
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/tj;

    if-nez p1, :cond_b

    goto :goto_6

    .line 30
    :cond_b
    iget-object p1, p1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 31
    move-object p2, p1

    check-cast p2, Ljava/util/List;

    :goto_6
    if-eqz p2, :cond_c

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d

    :cond_c
    const/4 v0, 0x1

    :cond_d
    if-eqz v0, :cond_e

    .line 32
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/by4;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/by4;->l()V

    .line 33
    :cond_e
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 34
    check-cast p1, Lcom/shabakaty/downloader/fl1;

    iget-object p1, p1, Lcom/shabakaty/downloader/fl1;->P:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    invoke-virtual {p1, p0}, Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;->setItemsListener(Lcom/shabakaty/downloader/pk;)V

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

    const-string p1, "this"

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
