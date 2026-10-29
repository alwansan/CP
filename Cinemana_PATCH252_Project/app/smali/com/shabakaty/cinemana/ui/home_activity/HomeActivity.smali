.class public final Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;
.super Lcom/shabakaty/downloader/hx2;
.source "HomeActivity.kt"

# interfaces
.implements Lcom/shabakaty/downloader/eu1;
.implements Lcom/shabakaty/downloader/d43;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/hx2<",
        "Lcom/shabakaty/downloader/y2;",
        "Lcom/shabakaty/downloader/eu1;",
        "Lcom/shabakaty/downloader/zu1;",
        ">;",
        "Lcom/shabakaty/downloader/eu1;",
        "Lcom/shabakaty/downloader/d43;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00012\u00020\u00032\u00020\u0005B\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0010\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;",
        "Lcom/shabakaty/downloader/hx2;",
        "Lcom/shabakaty/downloader/y2;",
        "Lcom/shabakaty/downloader/eu1;",
        "Lcom/shabakaty/downloader/zu1;",
        "Lcom/shabakaty/downloader/d43;",
        "Lcom/shabakaty/downloader/e43;",
        "stateChanges",
        "Lcom/shabakaty/downloader/qv4;",
        "onOSSubscriptionChanged",
        "Lcom/shabakaty/downloader/su0;",
        "event",
        "onDLNADiscoveryEvent",
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
.field public static final synthetic D:I


# instance fields
.field public final B:Lcom/shabakaty/downloader/kf2;

.field public final C:Lcom/shabakaty/downloader/kf2;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0d001e

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/hx2;-><init>(I)V

    .line 2
    new-instance v0, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$a;-><init>(Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;->B:Lcom/shabakaty/downloader/kf2;

    .line 3
    new-instance v0, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$f;

    invoke-direct {v0, p0}, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$f;-><init>(Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;->C:Lcom/shabakaty/downloader/kf2;

    return-void
.end method


# virtual methods
.method public A1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/y2;

    iget-object v0, v0, Lcom/shabakaty/downloader/y2;->P:Landroidx/cardview/widget/CardView;

    const-string v1, "binding.serviceDownBanner"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 5
    check-cast v0, Lcom/shabakaty/downloader/y2;

    iget-object v0, v0, Lcom/shabakaty/downloader/y2;->R:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 7
    check-cast v0, Lcom/shabakaty/downloader/y2;

    iget-object v0, v0, Lcom/shabakaty/downloader/y2;->P:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 9
    check-cast v1, Lcom/shabakaty/downloader/y2;

    iget-object v1, v1, Lcom/shabakaty/downloader/y2;->P:Landroidx/cardview/widget/CardView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 11
    new-instance v1, Lcom/shabakaty/downloader/rr;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/rr;-><init>(Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method

.method public final E1(Landroid/content/Intent;)V
    .locals 12

    const-string v0, "navHost.childFragmentManager.fragments"

    const-string v1, "supportFragmentManager.fragments"

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    move-object v3, v2

    goto/16 :goto_3

    :cond_0
    const-string v3, "VideoModelArg"

    .line 1
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    new-array v6, v5, [Lcom/shabakaty/downloader/x93;

    .line 2
    new-instance v7, Lcom/shabakaty/downloader/x93;

    invoke-direct {v7, v3, v4}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 3
    invoke-static {v6}, Lcom/shabakaty/downloader/ml3;->a([Lcom/shabakaty/downloader/x93;)Landroid/os/Bundle;

    move-result-object v6

    .line 4
    new-instance v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-direct {v7, p0}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;)V

    .line 5
    iget-object v9, v4, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 6
    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setTransitionName(Ljava/lang/String;)V

    new-array v5, v5, [Lcom/shabakaty/downloader/x93;

    .line 7
    iget-object v4, v4, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 8
    new-instance v9, Lcom/shabakaty/downloader/x93;

    invoke-direct {v9, v7, v4}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v5, v8

    .line 9
    invoke-static {v5}, Lcom/shabakaty/downloader/hl3;->a([Lcom/shabakaty/downloader/x93;)Landroidx/navigation/fragment/a$b;

    move-result-object v4

    .line 10
    sget-object v5, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$c;->r:Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$c;

    invoke-static {v5}, Lcom/shabakaty/downloader/ol3;->f(Lcom/shabakaty/downloader/tm1;)Landroidx/navigation/g;

    move-result-object v5

    const/16 v7, 0x13ed

    .line 11
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ji1;->getSupportFragmentManager()Landroidx/fragment/app/q;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/fragment/app/q;->L()Ljava/util/List;

    move-result-object v8

    invoke-static {v8, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/Fragment;

    .line 13
    instance-of v10, v9, Lcom/shabakaty/downloader/ek;

    if-eqz v10, :cond_2

    check-cast v9, Lcom/shabakaty/downloader/ek;

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 14
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/q;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/fragment/app/q;->L()Ljava/util/List;

    move-result-object v9

    invoke-static {v9, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/shabakaty/downloader/m50;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    instance-of v10, v9, Landroidx/navigation/fragment/NavHostFragment;

    if-eqz v10, :cond_3

    check-cast v9, Landroidx/navigation/fragment/NavHostFragment;

    goto :goto_2

    :cond_3
    move-object v9, v2

    :goto_2
    if-nez v9, :cond_4

    goto :goto_1

    .line 15
    :cond_4
    new-instance v10, Lcom/shabakaty/downloader/jx2;

    invoke-direct {v10, v5, v9}, Lcom/shabakaty/downloader/jx2;-><init>(Landroidx/navigation/g;Landroidx/navigation/fragment/NavHostFragment;)V

    invoke-static {v10}, Lcom/shabakaty/downloader/ol3;->f(Lcom/shabakaty/downloader/tm1;)Landroidx/navigation/g;

    move-result-object v10

    const-string v11, "$this$findNavController"

    .line 16
    invoke-static {v9, v11}, Lcom/shabakaty/downloader/j32;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {v9}, Landroidx/navigation/fragment/NavHostFragment;->X1(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v9

    const-string v11, "NavHostFragment.findNavController(this)"

    invoke-static {v9, v11}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v9, v7, v6, v10, v4}, Landroidx/navigation/NavController;->i(ILandroid/os/Bundle;Landroidx/navigation/g;Landroidx/navigation/h$a;)V

    goto :goto_1

    .line 19
    :cond_5
    invoke-virtual {p1, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 20
    sget-object v3, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_3
    if-nez v3, :cond_d

    if-nez p1, :cond_6

    goto/16 :goto_6

    :cond_6
    const-string v3, "ShowMoreDataType"

    .line 21
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType;

    if-nez p1, :cond_7

    goto/16 :goto_6

    .line 22
    :cond_7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ji1;->getSupportFragmentManager()Landroidx/fragment/app/q;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/q;->L()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 24
    instance-of v4, v3, Lcom/shabakaty/downloader/bu3;

    if-eqz v4, :cond_8

    .line 25
    check-cast v3, Lcom/shabakaty/downloader/ek;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/q;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/q;->L()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/shabakaty/downloader/m50;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroidx/navigation/fragment/NavHostFragment;

    if-eqz v4, :cond_9

    check-cast v3, Landroidx/navigation/fragment/NavHostFragment;

    goto :goto_5

    :cond_9
    move-object v3, v2

    :goto_5
    if-nez v3, :cond_a

    goto :goto_4

    .line 26
    :cond_a
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/q;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/q;->L()Ljava/util/List;

    move-result-object v3

    const-string v4, "childFragmentManager.fragments"

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    .line 28
    instance-of v5, v4, Lcom/shabakaty/downloader/vt1;

    if-eqz v5, :cond_b

    .line 29
    check-cast v4, Lcom/shabakaty/downloader/vt1;

    .line 30
    invoke-static {v4}, Lcom/shabakaty/downloader/fl3;->o(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    .line 31
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/uo1;->d(Landroidx/navigation/NavController;Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType;)V

    goto :goto_6

    .line 32
    :cond_c
    new-instance v0, Lcom/shabakaty/downloader/lo3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/lo3;-><init>()V

    .line 33
    new-instance v1, Lcom/shabakaty/downloader/lo3;

    invoke-direct {v1}, Lcom/shabakaty/downloader/lo3;-><init>()V

    .line 34
    new-instance v2, Lcom/shabakaty/downloader/lo3;

    invoke-direct {v2}, Lcom/shabakaty/downloader/lo3;-><init>()V

    .line 35
    new-instance v3, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$d;

    invoke-direct {v3, v2, v0, p1}, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$d;-><init>(Lcom/shabakaty/downloader/lo3;Lcom/shabakaty/downloader/lo3;Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType;)V

    iput-object v3, v2, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    .line 36
    new-instance p1, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$e;

    invoke-direct {p1, v0, v2, v1, p0}, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$e;-><init>(Lcom/shabakaty/downloader/lo3;Lcom/shabakaty/downloader/lo3;Lcom/shabakaty/downloader/lo3;Lcom/shabakaty/downloader/hx2;)V

    iput-object p1, v1, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    .line 37
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ji1;->getSupportFragmentManager()Landroidx/fragment/app/q;

    move-result-object p1

    iget-object v0, v1, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    check-cast v0, Lcom/shabakaty/downloader/ak1;

    .line 38
    iget-object p1, p1, Landroidx/fragment/app/q;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_6
    return-void
.end method

.method public F0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ji1;->getSupportFragmentManager()Landroidx/fragment/app/q;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/q;->L()Ljava/util/List;

    move-result-object v0

    const-string v1, "supportFragmentManager.fragments"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 3
    instance-of v2, v1, Lcom/shabakaty/downloader/bu3;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Lcom/shabakaty/downloader/ek;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/q;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/q;->L()Ljava/util/List;

    move-result-object v1

    const-string v2, "navHost.childFragmentManager.fragments"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shabakaty/downloader/m50;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroidx/navigation/fragment/NavHostFragment;

    if-eqz v2, :cond_1

    check-cast v1, Landroidx/navigation/fragment/NavHostFragment;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/q;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/q;->L()Ljava/util/List;

    move-result-object v1

    const-string v2, "childFragmentManager.fragments"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 7
    instance-of v3, v2, Lcom/shabakaty/downloader/vt1;

    if-eqz v3, :cond_3

    .line 8
    check-cast v2, Lcom/shabakaty/downloader/vt1;

    .line 9
    invoke-virtual {v2}, Lcom/shabakaty/downloader/vt1;->onResume()V

    .line 10
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;->J0()V

    goto :goto_2

    .line 11
    :cond_4
    new-instance v0, Lcom/shabakaty/downloader/lo3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/lo3;-><init>()V

    .line 12
    new-instance v1, Lcom/shabakaty/downloader/lo3;

    invoke-direct {v1}, Lcom/shabakaty/downloader/lo3;-><init>()V

    .line 13
    new-instance v2, Lcom/shabakaty/downloader/lo3;

    invoke-direct {v2}, Lcom/shabakaty/downloader/lo3;-><init>()V

    .line 14
    new-instance v3, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$h;

    invoke-direct {v3, v2, v0, p0}, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$h;-><init>(Lcom/shabakaty/downloader/lo3;Lcom/shabakaty/downloader/lo3;Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;)V

    iput-object v3, v2, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    .line 15
    new-instance v3, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$i;

    invoke-direct {v3, v0, v2, v1, p0}, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$i;-><init>(Lcom/shabakaty/downloader/lo3;Lcom/shabakaty/downloader/lo3;Lcom/shabakaty/downloader/lo3;Lcom/shabakaty/downloader/hx2;)V

    iput-object v3, v1, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    .line 16
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ji1;->getSupportFragmentManager()Landroidx/fragment/app/q;

    move-result-object v0

    iget-object v1, v1, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    check-cast v1, Lcom/shabakaty/downloader/ak1;

    .line 17
    iget-object v0, v0, Landroidx/fragment/app/q;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method

.method public final I1()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ji1;->getSupportFragmentManager()Landroidx/fragment/app/q;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/q;->L()Ljava/util/List;

    move-result-object v0

    const-string v1, "supportFragmentManager.fragments"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 3
    instance-of v2, v1, Lcom/shabakaty/downloader/cu3;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/shabakaty/downloader/ek;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/q;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/q;->L()Ljava/util/List;

    move-result-object v1

    const-string v2, "navHost.childFragmentManager.fragments"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shabakaty/downloader/m50;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroidx/navigation/fragment/NavHostFragment;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v1, Landroidx/navigation/fragment/NavHostFragment;

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    if-nez v1, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    new-instance v2, Lcom/shabakaty/downloader/jx2;

    invoke-direct {v2, v3, v1}, Lcom/shabakaty/downloader/jx2;-><init>(Landroidx/navigation/g;Landroidx/navigation/fragment/NavHostFragment;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/ol3;->f(Lcom/shabakaty/downloader/tm1;)Landroidx/navigation/g;

    move-result-object v2

    const-string v4, "$this$findNavController"

    .line 6
    invoke-static {v1, v4}, Lcom/shabakaty/downloader/j32;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {v1}, Landroidx/navigation/fragment/NavHostFragment;->X1(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v1

    const-string v4, "NavHostFragment.findNavController(this)"

    invoke-static {v1, v4}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x1bbd

    .line 8
    invoke-virtual {v1, v4, v3, v2, v3}, Landroidx/navigation/NavController;->i(ILandroid/os/Bundle;Landroidx/navigation/g;Landroidx/navigation/h$a;)V

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "DownloadsKey"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    return-void
.end method

.method public J0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/y2;

    iget-object v0, v0, Lcom/shabakaty/downloader/y2;->O:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_4

    :cond_1
    invoke-static {v0}, Lcom/shabakaty/downloader/j35;->a(Landroid/view/ViewGroup;)Lcom/shabakaty/downloader/l04;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/j35$a;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/j35$a;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 4
    invoke-virtual {v2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v3, 0x1

    .line 5
    :goto_3
    invoke-virtual {v2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    instance-of v5, v5, Landroid/text/SpannableStringBuilder;

    xor-int/2addr v4, v5

    if-nez v3, :cond_5

    if-eqz v4, :cond_2

    .line 6
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    :goto_4
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/uj2;->c:Lcom/shabakaty/downloader/uj2$b;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/r9;->getResources()Landroid/content/res/Resources;

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

.method public h0()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/shabakaty/downloader/zu1;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/shabakaty/downloader/zu1;

    return-object v0
.end method

.method public final i1(Landroid/content/Intent;)V
    .locals 70

    move-object/from16 v0, p1

    if-nez v0, :cond_0

    :goto_0
    move-object/from16 v7, p0

    goto/16 :goto_3

    :cond_0
    const-string v1, "VideoIDArg"

    .line 1
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    new-instance v15, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-object v2, v15

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v69, v15

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const-wide/16 v57, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, -0x2

    const v68, 0x7fffffff

    invoke-direct/range {v2 .. v68}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/cinemana/domain/models/local/VideoLanguages;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJLjava/lang/String;Ljava/lang/String;ZLcom/shabakaty/downloader/q25;Ljava/util/List;Lcom/shabakaty/cinemana/domain/models/local/Quality;Ljava/lang/String;ZII)V

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/shabakaty/downloader/x93;

    .line 3
    new-instance v4, Lcom/shabakaty/downloader/x93;

    const-string v5, "VideoModelArg"

    move-object/from16 v6, v69

    invoke-direct {v4, v5, v6}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 4
    invoke-static {v3}, Lcom/shabakaty/downloader/ml3;->a([Lcom/shabakaty/downloader/x93;)Landroid/os/Bundle;

    move-result-object v3

    .line 5
    new-instance v4, Lcom/facebook/drawee/view/SimpleDraweeView;

    move-object/from16 v7, p0

    invoke-direct {v4, v7}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;)V

    .line 6
    iget-object v8, v6, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 7
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setTransitionName(Ljava/lang/String;)V

    new-array v2, v2, [Lcom/shabakaty/downloader/x93;

    .line 8
    iget-object v6, v6, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 9
    new-instance v8, Lcom/shabakaty/downloader/x93;

    invoke-direct {v8, v4, v6}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v2, v5

    .line 10
    invoke-static {v2}, Lcom/shabakaty/downloader/hl3;->a([Lcom/shabakaty/downloader/x93;)Landroidx/navigation/fragment/a$b;

    move-result-object v2

    .line 11
    sget-object v4, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$b;->r:Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$b;

    invoke-static {v4}, Lcom/shabakaty/downloader/ol3;->f(Lcom/shabakaty/downloader/tm1;)Landroidx/navigation/g;

    move-result-object v4

    const/16 v5, 0x13ed

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ji1;->getSupportFragmentManager()Landroidx/fragment/app/q;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/fragment/app/q;->L()Ljava/util/List;

    move-result-object v6

    const-string v8, "supportFragmentManager.fragments"

    invoke-static {v6, v8}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/Fragment;

    .line 14
    instance-of v9, v8, Lcom/shabakaty/downloader/ek;

    if-eqz v9, :cond_2

    check-cast v8, Lcom/shabakaty/downloader/ek;

    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 15
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/q;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/fragment/app/q;->L()Ljava/util/List;

    move-result-object v8

    const-string v9, "navHost.childFragmentManager.fragments"

    invoke-static {v8, v9}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/shabakaty/downloader/m50;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Landroidx/navigation/fragment/NavHostFragment;

    if-eqz v9, :cond_3

    check-cast v8, Landroidx/navigation/fragment/NavHostFragment;

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :goto_2
    if-nez v8, :cond_4

    goto :goto_1

    .line 16
    :cond_4
    new-instance v9, Lcom/shabakaty/downloader/jx2;

    invoke-direct {v9, v4, v8}, Lcom/shabakaty/downloader/jx2;-><init>(Landroidx/navigation/g;Landroidx/navigation/fragment/NavHostFragment;)V

    invoke-static {v9}, Lcom/shabakaty/downloader/ol3;->f(Lcom/shabakaty/downloader/tm1;)Landroidx/navigation/g;

    move-result-object v9

    const-string v10, "$this$findNavController"

    .line 17
    invoke-static {v8, v10}, Lcom/shabakaty/downloader/j32;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {v8}, Landroidx/navigation/fragment/NavHostFragment;->X1(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v8

    const-string v10, "NavHostFragment.findNavController(this)"

    invoke-static {v8, v10}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v8, v5, v3, v9, v2}, Landroidx/navigation/NavController;->i(ILandroid/os/Bundle;Landroidx/navigation/g;Landroidx/navigation/h$a;)V

    goto :goto_1

    .line 20
    :cond_5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public m0()Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;->B:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/hx2;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;->i1(Landroid/content/Intent;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;->E1(Landroid/content/Intent;)V

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/vb;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/vb;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x6

    .line 5
    iput v0, p1, Lcom/shabakaty/downloader/vb;->d:I

    const v0, 0x7f12027f

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/shabakaty/downloader/vb;->i:Ljava/lang/String;

    .line 7
    iget-object v0, p1, Lcom/shabakaty/downloader/vb;->a:Landroid/content/Context;

    const v1, 0x7f1202ba

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/shabakaty/downloader/vb;->k:Ljava/lang/String;

    const-string v0, "beta"

    .line 8
    invoke-static {v0, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const v0, 0x7f120295

    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "{\n\t\t\t\t\t\tgetString(R.string.txt_dismiss)\n\t\t\t\t\t}"

    .line 10
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    :goto_0
    iput-object v0, p1, Lcom/shabakaty/downloader/vb;->j:Ljava/lang/String;

    .line 12
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 13
    iput-object v4, p1, Lcom/shabakaty/downloader/vb;->q:Ljava/lang/Boolean;

    const-string v0, "https://updates.shabakaty.cc/api/apps/7"

    .line 14
    iput-object v0, p1, Lcom/shabakaty/downloader/vb;->f:Ljava/lang/String;

    .line 15
    iput-object v1, p1, Lcom/shabakaty/downloader/vb;->l:Ljava/lang/String;

    const v0, 0xc47f

    .line 16
    iput v0, p1, Lcom/shabakaty/downloader/vb;->r:I

    .line 17
    new-instance v0, Lcom/shabakaty/downloader/ez4;

    iget-object v3, p1, Lcom/shabakaty/downloader/vb;->a:Landroid/content/Context;

    iget v5, p1, Lcom/shabakaty/downloader/vb;->d:I

    iget-object v6, p1, Lcom/shabakaty/downloader/vb;->f:Ljava/lang/String;

    new-instance v7, Lcom/shabakaty/downloader/ub;

    invoke-direct {v7, p1}, Lcom/shabakaty/downloader/ub;-><init>(Lcom/shabakaty/downloader/vb;)V

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/downloader/ez4;-><init>(Landroid/content/Context;Ljava/lang/Boolean;ILjava/lang/String;Lcom/shabakaty/downloader/vw1;)V

    const/4 p1, 0x0

    new-array v1, p1, [Ljava/lang/Void;

    .line 18
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 19
    invoke-static {p0}, Lcom/onesignal/q0;->d(Lcom/shabakaty/downloader/d43;)V

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "DownloadsKey"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-ne v0, v1, :cond_2

    const/4 p1, 0x1

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 21
    iget-object p1, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 22
    check-cast p1, Lcom/shabakaty/downloader/y2;

    iget-object p1, p1, Lcom/shabakaty/downloader/y2;->O:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$g;

    invoke-direct {v0, p0}, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$g;-><init>(Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 23
    :cond_3
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;->J0()V

    # Phase 6: API31+ backdrop sample behind the floating navigation.
    invoke-static {p0}, Lcom/shabakaty/cinemana/local/NuvioGlassBackdrop;->install(Landroid/app/Activity;)V

    return-void
.end method

.method public final onDLNADiscoveryEvent(Lcom/shabakaty/downloader/su0;)V
    .locals 2
    .annotation runtime Lcom/shabakaty/downloader/cf4;
        threadMode = .enum Lcom/shabakaty/downloader/bn4;->s:Lcom/shabakaty/downloader/bn4;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Lcom/shabakaty/downloader/su0;->a:Lcom/connectsdk/discovery/DiscoveryManager;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/connectsdk/discovery/DiscoveryManager;->getAllDevices()Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_3

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 3
    check-cast p1, Lcom/shabakaty/downloader/y2;

    iget-object p1, p1, Lcom/shabakaty/downloader/y2;->M:Lcom/shabakaty/cinemana/ui/home_activity/CastButton;

    .line 4
    iget-object v1, p1, Lcom/shabakaty/cinemana/ui/home_activity/CastButton;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->p()V

    .line 5
    iget-object p1, p1, Lcom/shabakaty/cinemana/ui/home_activity/CastButton;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_2

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 7
    check-cast p1, Lcom/shabakaty/downloader/y2;

    iget-object p1, p1, Lcom/shabakaty/downloader/y2;->M:Lcom/shabakaty/cinemana/ui/home_activity/CastButton;

    .line 8
    iget-object v0, p1, Lcom/shabakaty/cinemana/ui/home_activity/CastButton;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i()V

    .line 9
    iget-object p1, p1, Lcom/shabakaty/cinemana/ui/home_activity/CastButton;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :goto_2
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shabakaty/downloader/xi;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/j51;->b()Lcom/shabakaty/downloader/j51;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/j51;->m(Ljava/lang/Object;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/ji1;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;->i1(Landroid/content/Intent;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;->E1(Landroid/content/Intent;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "DownloadsKey"

    .line 4
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 7
    check-cast v0, Lcom/shabakaty/downloader/y2;

    iget-object v0, v0, Lcom/shabakaty/downloader/y2;->O:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/px2;->getSelectedItemId()I

    move-result v0

    const v2, 0x7f0a0306

    if-ne v0, v2, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;->I1()V

    goto :goto_1

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 10
    check-cast v0, Lcom/shabakaty/downloader/y2;

    iget-object v0, v0, Lcom/shabakaty/downloader/y2;->O:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/px2;->setSelectedItemId(I)V

    :cond_3
    :goto_1
    const/4 v0, 0x0

    if-nez p1, :cond_4

    move-object v2, v0

    goto :goto_2

    .line 11
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    :goto_2
    const-string v3, "android.intent.action.SEARCH"

    invoke-static {v3, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "query"

    .line 12
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ji1;->getSupportFragmentManager()Landroidx/fragment/app/q;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/q;->L()Ljava/util/List;

    move-result-object v2

    const-string v3, "supportFragmentManager.fragments"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 15
    instance-of v4, v3, Lcom/shabakaty/downloader/du3;

    if-eqz v4, :cond_5

    .line 16
    check-cast v3, Lcom/shabakaty/downloader/ek;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/q;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/q;->L()Ljava/util/List;

    move-result-object v3

    const-string v4, "navHost.childFragmentManager.fragments"

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/shabakaty/downloader/m50;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroidx/navigation/fragment/NavHostFragment;

    if-eqz v4, :cond_6

    check-cast v3, Landroidx/navigation/fragment/NavHostFragment;

    goto :goto_4

    :cond_6
    move-object v3, v0

    :goto_4
    if-nez v3, :cond_7

    goto :goto_3

    .line 17
    :cond_7
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/q;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/q;->L()Ljava/util/List;

    move-result-object v3

    const-string v4, "childFragmentManager.fragments"

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    .line 19
    instance-of v5, v4, Lcom/shabakaty/downloader/yy3;

    if-eqz v5, :cond_8

    .line 20
    check-cast v4, Lcom/shabakaty/downloader/yy3;

    .line 21
    iget-object v0, v4, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 22
    check-cast v0, Lcom/shabakaty/downloader/fk1;

    iget-object v0, v0, Lcom/shabakaty/downloader/fk1;->Q:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_5

    .line 23
    :cond_9
    new-instance v0, Lcom/shabakaty/downloader/lo3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/lo3;-><init>()V

    .line 24
    new-instance v1, Lcom/shabakaty/downloader/lo3;

    invoke-direct {v1}, Lcom/shabakaty/downloader/lo3;-><init>()V

    .line 25
    new-instance v2, Lcom/shabakaty/downloader/lo3;

    invoke-direct {v2}, Lcom/shabakaty/downloader/lo3;-><init>()V

    .line 26
    new-instance v3, Lcom/shabakaty/downloader/st1;

    invoke-direct {v3, v2, v0, p1}, Lcom/shabakaty/downloader/st1;-><init>(Lcom/shabakaty/downloader/lo3;Lcom/shabakaty/downloader/lo3;Ljava/lang/String;)V

    iput-object v3, v2, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    .line 27
    new-instance p1, Lcom/shabakaty/downloader/tt1;

    invoke-direct {p1, v0, v2, v1, p0}, Lcom/shabakaty/downloader/tt1;-><init>(Lcom/shabakaty/downloader/lo3;Lcom/shabakaty/downloader/lo3;Lcom/shabakaty/downloader/lo3;Lcom/shabakaty/downloader/hx2;)V

    iput-object p1, v1, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    .line 28
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ji1;->getSupportFragmentManager()Landroidx/fragment/app/q;

    move-result-object p1

    iget-object v0, v1, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    check-cast v0, Lcom/shabakaty/downloader/ak1;

    .line 29
    iget-object p1, p1, Landroidx/fragment/app/q;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_5
    return-void
.end method

.method public onOSSubscriptionChanged(Lcom/shabakaty/downloader/e43;)V
    .locals 1

    const-string v0, "stateChanges"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/e43;->a:Lcom/onesignal/OSSubscriptionState;

    .line 2
    invoke-virtual {v0}, Lcom/onesignal/OSSubscriptionState;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p1, Lcom/shabakaty/downloader/e43;->b:Lcom/onesignal/OSSubscriptionState;

    .line 4
    invoke-virtual {v0}, Lcom/onesignal/OSSubscriptionState;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/e43;->b:Lcom/onesignal/OSSubscriptionState;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi;->F()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/zu1;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/zu1;->j:Lcom/shabakaty/usermanagement/UserManagement;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/UserManagement;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi;->F()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/zu1;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/zu1;->j:Lcom/shabakaty/usermanagement/UserManagement;

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/UserManagement;->getSmallPicture()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/shabakaty/downloader/ne4;->D(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi;->F()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/zu1;

    .line 8
    iget-object v0, v0, Lcom/shabakaty/downloader/zu1;->j:Lcom/shabakaty/usermanagement/UserManagement;

    .line 9
    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/UserManagement;->getSmallPicture()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/hx2;->H0(Ljava/lang/String;)V

    .line 10
    :cond_0
    invoke-super {p0}, Lcom/shabakaty/downloader/ji1;->onResume()V

    invoke-static {p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->profileResume(Ljava/lang/Object;)V
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shabakaty/downloader/r9;->onStart()V

    invoke-static {p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->foreground(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/j51;->b()Lcom/shabakaty/downloader/j51;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/j51;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/j51;->b()Lcom/shabakaty/downloader/j51;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/j51;->m(Ljava/lang/Object;)V

    .line 2
    invoke-super {p0}, Lcom/shabakaty/downloader/r9;->onStop()V

    return-void
.end method

.method public p0()Landroidx/fragment/app/FragmentContainerView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;->C:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentContainerView;

    return-object v0
.end method

.method public r()Lcom/shabakaty/downloader/vj;
    .locals 0

    return-object p0
.end method

.method public u0(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;->J0()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "DownloadsKey"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a0306

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;->I1()V

    :cond_0
    return-void
.end method

.method public z()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hx2;->recreate()V

    return-void
.end method
