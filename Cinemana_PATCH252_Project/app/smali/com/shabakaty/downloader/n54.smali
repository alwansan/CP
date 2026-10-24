.class public final Lcom/shabakaty/downloader/n54;
.super Lcom/shabakaty/downloader/hj;
.source "ShowMoreFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/o54;
.implements Lcom/shabakaty/downloader/pk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/hj<",
        "Lcom/shabakaty/downloader/lk1;",
        "Lcom/shabakaty/downloader/o54;",
        "Lcom/shabakaty/downloader/r54;",
        ">;",
        "Lcom/shabakaty/downloader/o54;",
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
        "Lcom/shabakaty/downloader/n54;",
        "Lcom/shabakaty/downloader/hj;",
        "Lcom/shabakaty/downloader/lk1;",
        "Lcom/shabakaty/downloader/o54;",
        "Lcom/shabakaty/downloader/r54;",
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

    const v0, 0x7f0d0082

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/hj;-><init>(I)V

    return-void
.end method


# virtual methods
.method public R(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/hj;->f2(ZLjava/lang/String;)V

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

.method public b()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/r54;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/r54;->k:Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$b;

    instance-of v2, v1, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$b$b;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/r54;->m()V

    goto :goto_0

    .line 4
    :cond_0
    instance-of v1, v1, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$b$a;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/r54;->l()V

    :cond_1
    :goto_0
    return-void
.end method

.method public d2()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/shabakaty/downloader/r54;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/shabakaty/downloader/r54;

    return-object v0
.end method

.method public o()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/r54;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/r54;->k:Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$b;

    instance-of v2, v1, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$b$b;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/r54;->m()V

    goto :goto_0

    .line 4
    :cond_0
    instance-of v1, v1, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$b$a;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/r54;->l()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/lk1;

    iget-object v0, v0, Lcom/shabakaty/downloader/lk1;->M:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;->t()V

    .line 3
    invoke-super {p0}, Lcom/shabakaty/downloader/hj;->onDestroyView()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/hj;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/r54;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/r54;->h:Lcom/shabakaty/downloader/r54$a;

    .line 4
    iget p1, p1, Lcom/shabakaty/downloader/r54$a;->a:I

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_5

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/r54;

    .line 6
    new-instance v1, Lcom/shabakaty/downloader/r54$a;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v0, v2}, Lcom/shabakaty/downloader/r54$a;-><init>(IZI)V

    iput-object v1, p1, Lcom/shabakaty/downloader/r54;->h:Lcom/shabakaty/downloader/r54$a;

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/mj;

    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/mj;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p1, Lcom/shabakaty/downloader/r54;->i:Lcom/shabakaty/downloader/mj;

    const-string v0, "0"

    .line 10
    iput-object v0, p1, Lcom/shabakaty/downloader/r54;->j:Ljava/lang/String;

    .line 11
    sget-object v0, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$b$b;->a:Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$b$b;

    iput-object v0, p1, Lcom/shabakaty/downloader/r54;->k:Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$b;

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "ShowMoreDataType"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType;

    if-nez p1, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/r54;

    const-string v2, "type"

    .line 14
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/shabakaty/downloader/r54;->l:Ljava/lang/String;

    .line 16
    instance-of v2, p1, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Fixed$VideosList;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Fixed$VideosList;

    .line 17
    iget-object p1, p1, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Fixed$VideosList;->videos:Ljava/util/List;

    .line 18
    sget-object v0, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$b$c;->a:Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$b$c;

    iput-object v0, v1, Lcom/shabakaty/downloader/r54;->k:Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$b;

    .line 19
    iget-object v0, v1, Lcom/shabakaty/downloader/r54;->i:Lcom/shabakaty/downloader/mj;

    invoke-static {p1}, Lcom/shabakaty/downloader/m50;->z0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    .line 20
    new-instance p1, Lcom/shabakaty/downloader/tj;

    .line 21
    sget-object v2, Lcom/shabakaty/downloader/tj$a;->r:Lcom/shabakaty/downloader/tj$a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    move-object v1, p1

    .line 22
    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/tj;-><init>(Lcom/shabakaty/downloader/tj$a;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 23
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/mj;->c(Lcom/shabakaty/downloader/tj;)V

    goto :goto_1

    .line 24
    :cond_3
    instance-of v2, p1, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic$Franchise;

    if-eqz v2, :cond_4

    check-cast p1, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic$Franchise;

    .line 25
    sget-object v0, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$b$a;->a:Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$b$a;

    iput-object v0, v1, Lcom/shabakaty/downloader/r54;->k:Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$b;

    .line 26
    iget-object p1, p1, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic$Franchise;->id:Ljava/lang/String;

    .line 27
    iput-object p1, v1, Lcom/shabakaty/downloader/r54;->j:Ljava/lang/String;

    .line 28
    invoke-virtual {v1}, Lcom/shabakaty/downloader/r54;->l()V

    goto :goto_1

    .line 29
    :cond_4
    instance-of v2, p1, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic$Group;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic$Group;

    .line 30
    iput-object v0, v1, Lcom/shabakaty/downloader/r54;->k:Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$b;

    .line 31
    iget-object p1, p1, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Dynamic$Group;->id:Ljava/lang/String;

    .line 32
    iput-object p1, v1, Lcom/shabakaty/downloader/r54;->j:Ljava/lang/String;

    .line 33
    invoke-virtual {v1}, Lcom/shabakaty/downloader/r54;->m()V

    .line 34
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/r54;

    .line 35
    iget-object p1, p1, Lcom/shabakaty/downloader/r54;->l:Ljava/lang/String;

    .line 36
    invoke-virtual {p0, p2, p1}, Lcom/shabakaty/downloader/hj;->f2(ZLjava/lang/String;)V

    .line 37
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 38
    check-cast p1, Lcom/shabakaty/downloader/lk1;

    iget-object p1, p1, Lcom/shabakaty/downloader/lk1;->M:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

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
