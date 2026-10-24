.class public final Lcom/shabakaty/downloader/uy3;
.super Lcom/shabakaty/downloader/hj;
.source "SearchAllTabFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/pk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/hj<",
        "Lcom/shabakaty/downloader/dk1;",
        "Lcom/shabakaty/downloader/dz3;",
        "Lcom/shabakaty/downloader/hz3;",
        ">;",
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
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00012\u00020\u00052\u00020\u0006B\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/shabakaty/downloader/uy3;",
        "Lcom/shabakaty/downloader/hj;",
        "Lcom/shabakaty/downloader/dk1;",
        "Lcom/shabakaty/downloader/dz3;",
        "Lcom/shabakaty/downloader/hz3;",
        "",
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

    const v0, 0x7f0d007e

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

    check-cast v0, Lcom/shabakaty/downloader/yy3;

    return-object v0
.end method

.method public a(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroid/view/View;)V
    .locals 1

    const-string v0, "videoModel"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/yy3;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/yy3;->a(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroid/view/View;)V

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

.method public onDestroyView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/dk1;

    iget-object v0, v0, Lcom/shabakaty/downloader/dk1;->M:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;->t()V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 4
    check-cast v0, Lcom/shabakaty/downloader/dk1;

    iget-object v0, v0, Lcom/shabakaty/downloader/dk1;->N:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;->t()V

    .line 5
    invoke-super {p0}, Lcom/shabakaty/downloader/hj;->onDestroyView()V

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
    check-cast p1, Lcom/shabakaty/downloader/dk1;

    iget-object p1, p1, Lcom/shabakaty/downloader/dk1;->M:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    invoke-virtual {p1, p0}, Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;->setItemsListener(Lcom/shabakaty/downloader/pk;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 5
    check-cast p1, Lcom/shabakaty/downloader/dk1;

    iget-object p1, p1, Lcom/shabakaty/downloader/dk1;->N:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    invoke-virtual {p1, p0}, Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;->setItemsListener(Lcom/shabakaty/downloader/pk;)V

    return-void
.end method
