.class public final Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "FranchisesView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R$\u0010\r\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001d\u0010\u0013\u001a\u00020\u000e8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R*\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Lcom/shabakaty/downloader/bm1;",
        "listener",
        "Lcom/shabakaty/downloader/qv4;",
        "setCollectionsListener",
        "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Franchises;",
        "L",
        "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Franchises;",
        "getFranchises",
        "()Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Franchises;",
        "setFranchises",
        "(Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Franchises;)V",
        "franchises",
        "Lcom/shabakaty/downloader/km1;",
        "binding$delegate",
        "Lcom/shabakaty/downloader/kf2;",
        "getBinding",
        "()Lcom/shabakaty/downloader/km1;",
        "binding",
        "Lkotlin/Function0;",
        "seeMoreClickListener",
        "Lcom/shabakaty/downloader/rm1;",
        "getSeeMoreClickListener",
        "()Lcom/shabakaty/downloader/rm1;",
        "setSeeMoreClickListener",
        "(Lcom/shabakaty/downloader/rm1;)V",
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
.field public static final synthetic M:I


# instance fields
.field public J:Lcom/shabakaty/downloader/rm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/rm1<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation
.end field

.field public final K:Lcom/shabakaty/downloader/kf2;

.field public L:Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Franchises;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/jm1;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/jm1;-><init>(Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesView;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesView;->K:Lcom/shabakaty/downloader/kf2;

    .line 4
    invoke-direct {p0}, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesView;->getBinding()Lcom/shabakaty/downloader/km1;

    move-result-object p1

    iget-object p1, p1, Lcom/shabakaty/downloader/km1;->O:Lcom/google/android/material/button/MaterialButton;

    new-instance p2, Lcom/shabakaty/downloader/ck;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/ck;-><init>(Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesView;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final getBinding()Lcom/shabakaty/downloader/km1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesView;->K:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/km1;

    return-object v0
.end method


# virtual methods
.method public final getFranchises()Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Franchises;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesView;->L:Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Franchises;

    return-object v0
.end method

.method public final getSeeMoreClickListener()Lcom/shabakaty/downloader/rm1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/rm1<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesView;->J:Lcom/shabakaty/downloader/rm1;

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesView;->J:Lcom/shabakaty/downloader/rm1;

    .line 3
    invoke-direct {p0}, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesView;->getBinding()Lcom/shabakaty/downloader/km1;

    move-result-object v1

    iget-object v1, v1, Lcom/shabakaty/downloader/km1;->N:Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;

    .line 4
    iput-object v0, v1, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;->a1:Lcom/shabakaty/downloader/bm1;

    .line 5
    invoke-virtual {v1}, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;->getFranchisesLive()Landroidx/lifecycle/LiveData;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v1, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;->Z0:Lcom/shabakaty/downloader/tm1;

    new-instance v4, Lcom/shabakaty/downloader/em1;

    const/4 v5, 0x2

    invoke-direct {v4, v3, v5}, Lcom/shabakaty/downloader/em1;-><init>(Lcom/shabakaty/downloader/tm1;I)V

    invoke-virtual {v2, v4}, Landroidx/lifecycle/LiveData;->removeObserver(Lcom/shabakaty/downloader/r53;)V

    .line 6
    :goto_0
    invoke-virtual {v1, v0}, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;->setFranchisesLive(Landroidx/lifecycle/LiveData;)V

    return-void
.end method

.method public final setCollectionsListener(Lcom/shabakaty/downloader/bm1;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesView;->getBinding()Lcom/shabakaty/downloader/km1;

    move-result-object v0

    iget-object v0, v0, Lcom/shabakaty/downloader/km1;->N:Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;

    invoke-virtual {v0, p1}, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;->setFranchisesListener(Lcom/shabakaty/downloader/bm1;)V

    return-void
.end method

.method public final setFranchises(Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Franchises;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesView;->L:Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Franchises;

    return-void
.end method

.method public final setSeeMoreClickListener(Lcom/shabakaty/downloader/rm1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/rm1<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesView;->J:Lcom/shabakaty/downloader/rm1;

    return-void
.end method

.method public final t()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesView;->L:Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Franchises;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Franchises;->franchises:Ljava/util/List;

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    .line 4
    invoke-static {p0}, Lcom/shabakaty/downloader/s45;->l(Landroid/view/View;)V

    .line 5
    invoke-direct {p0}, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesView;->getBinding()Lcom/shabakaty/downloader/km1;

    move-result-object v0

    iget-object v0, v0, Lcom/shabakaty/downloader/km1;->N:Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;

    const-string v1, "binding.homePageFranchisesView"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesView;->L:Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Franchises;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    move-object v1, v2

    goto :goto_1

    .line 6
    :cond_3
    iget-object v1, v1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Franchises;->franchises:Ljava/util/List;

    :goto_1
    const/4 v3, 0x5

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v0, v1, v3, v2, v4}, Lcom/shabakaty/downloader/fo3;->b(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;Ljava/lang/Integer;Lcom/shabakaty/downloader/tj$a;I)V

    goto :goto_2

    .line 8
    :cond_4
    invoke-static {p0}, Lcom/shabakaty/downloader/s45;->j(Landroid/view/View;)V

    :goto_2
    return-void
.end method
