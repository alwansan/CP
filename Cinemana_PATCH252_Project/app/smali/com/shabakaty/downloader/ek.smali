.class public abstract Lcom/shabakaty/downloader/ek;
.super Landroidx/fragment/app/Fragment;
.source "BaseRootFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/shabakaty/downloader/ek;",
        "Landroidx/fragment/app/Fragment;",
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


# instance fields
.field public final r:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Lcom/shabakaty/downloader/m9;

.field public final t:Lcom/shabakaty/downloader/kf2;

.field public u:Lcom/shabakaty/downloader/sx2;

.field public v:Lcom/google/android/material/appbar/AppBarLayout;

.field public w:Landroidx/navigation/fragment/NavHostFragment;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x44d

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x835

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0xc1d

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/16 v1, 0x1005

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 6
    invoke-static {v0}, Lcom/shabakaty/downloader/nl6;->t([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ek;->r:Ljava/util/Set;

    .line 7
    sget-object v1, Lcom/shabakaty/downloader/ek$b;->r:Lcom/shabakaty/downloader/ek$b;

    .line 8
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 9
    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 10
    new-instance v0, Lcom/shabakaty/downloader/o9;

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/o9;-><init>(Lcom/shabakaty/downloader/rm1;I)V

    .line 11
    new-instance v1, Lcom/shabakaty/downloader/m9;

    const/4 v2, 0x0

    invoke-direct {v1, v3, v2, v0, v2}, Lcom/shabakaty/downloader/m9;-><init>(Ljava/util/Set;Lcom/shabakaty/downloader/w73;Lcom/shabakaty/downloader/m9$b;Lcom/shabakaty/downloader/m9$a;)V

    .line 12
    iput-object v1, p0, Lcom/shabakaty/downloader/ek;->s:Lcom/shabakaty/downloader/m9;

    .line 13
    new-instance v0, Lcom/shabakaty/downloader/ek$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/ek$a;-><init>(Lcom/shabakaty/downloader/ek;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ek;->t:Lcom/shabakaty/downloader/kf2;

    return-void
.end method


# virtual methods
.method public abstract X1()I
.end method

.method public abstract Y1()I
.end method

.method public final Z1()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ek;->w:Landroidx/navigation/fragment/NavHostFragment;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :goto_0
    move-object v0, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/q;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/q;->L()Ljava/util/List;

    move-result-object v0

    :goto_1
    const/4 v2, 0x0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_2

    .line 2
    :cond_2
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/m50;->c0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    :goto_2
    instance-of v3, v0, Lcom/shabakaty/downloader/hj;

    if-eqz v3, :cond_3

    move-object v1, v0

    check-cast v1, Lcom/shabakaty/downloader/hj;

    :cond_3
    const/4 v0, 0x1

    if-nez v1, :cond_5

    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 3
    :cond_5
    invoke-virtual {v1}, Lcom/shabakaty/downloader/hj;->e2()Z

    move-result v1

    if-ne v1, v0, :cond_4

    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_6

    const/4 v2, 0x1

    goto :goto_4

    .line 4
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lcom/shabakaty/downloader/ji1;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ek;->Y1()I

    move-result v1

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/kl3;->c(Landroid/app/Activity;I)Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->k()Z

    move-result v2

    :goto_4
    return v2
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/md0;->z(Landroidx/fragment/app/Fragment;)V

    .line 2
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ek;->X1()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "view"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a027f

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object p2, p0, Lcom/shabakaty/downloader/ek;->v:Lcom/google/android/material/appbar/AppBarLayout;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/q;

    move-result-object p2

    invoke-virtual {p0}, Lcom/shabakaty/downloader/ek;->Y1()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/fragment/app/q;->H(I)Landroidx/fragment/app/Fragment;

    move-result-object p2

    instance-of v0, p2, Landroidx/navigation/fragment/NavHostFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p2, Landroidx/navigation/fragment/NavHostFragment;

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    if-nez p2, :cond_1

    move-object p2, v1

    goto :goto_1

    :cond_1
    const v0, 0x7f0a0280

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    if-nez v0, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {p2}, Landroidx/navigation/fragment/NavHostFragment;->Y1()Landroidx/navigation/NavController;

    move-result-object v2

    const-string v3, "navHostFragment.navController"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v3, p0, Lcom/shabakaty/downloader/ek;->s:Lcom/shabakaty/downloader/m9;

    .line 7
    invoke-static {v0, v2, v3}, Lcom/shabakaty/downloader/ol3;->g(Landroidx/appcompat/widget/Toolbar;Landroidx/navigation/NavController;Lcom/shabakaty/downloader/m9;)V

    .line 8
    new-instance v2, Lcom/shabakaty/downloader/ck;

    invoke-direct {v2, p0}, Lcom/shabakaty/downloader/ck;-><init>(Lcom/shabakaty/downloader/ek;)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-virtual {p2}, Landroidx/navigation/fragment/NavHostFragment;->Y1()Landroidx/navigation/NavController;

    move-result-object v2

    new-instance v3, Lcom/shabakaty/downloader/dk;

    invoke-direct {v3, p0, p1, v0}, Lcom/shabakaty/downloader/dk;-><init>(Lcom/shabakaty/downloader/ek;Landroid/view/View;Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {v2, v3}, Landroidx/navigation/NavController;->a(Landroidx/navigation/NavController$b;)V

    .line 10
    :goto_1
    iput-object p2, p0, Lcom/shabakaty/downloader/ek;->w:Landroidx/navigation/fragment/NavHostFragment;

    if-nez p2, :cond_3

    goto :goto_2

    .line 11
    :cond_3
    invoke-virtual {p2}, Landroidx/navigation/fragment/NavHostFragment;->Y1()Landroidx/navigation/NavController;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_2

    .line 12
    :cond_4
    iget-object p2, p0, Lcom/shabakaty/downloader/ek;->u:Lcom/shabakaty/downloader/sx2;

    if-eqz p2, :cond_5

    .line 13
    invoke-static {p0}, Lcom/shabakaty/downloader/cl3;->e(Lcom/shabakaty/downloader/rh2;)Lcom/shabakaty/downloader/ih2;

    move-result-object v2

    new-instance v0, Lcom/shabakaty/downloader/rx2;

    invoke-direct {v0, p1, p2, v1}, Lcom/shabakaty/downloader/rx2;-><init>(Landroidx/navigation/NavController;Lcom/shabakaty/downloader/sx2;Lcom/shabakaty/downloader/ud0;)V

    .line 14
    new-instance v5, Lcom/shabakaty/downloader/jh2;

    invoke-direct {v5, v2, v0, v1}, Lcom/shabakaty/downloader/jh2;-><init>(Lcom/shabakaty/downloader/ih2;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)V

    const/4 v3, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    :goto_2
    return-void

    :cond_5
    const-string p1, "navigationDebugger"

    .line 15
    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v1
.end method
