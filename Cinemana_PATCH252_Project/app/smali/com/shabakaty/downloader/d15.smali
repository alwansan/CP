.class public final Lcom/shabakaty/downloader/d15;
.super Lcom/shabakaty/downloader/hj;
.source "VideoInfoFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/j15;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/hj<",
        "Lcom/shabakaty/downloader/jl1;",
        "Lcom/shabakaty/downloader/j15;",
        "Lcom/shabakaty/downloader/u15;",
        ">;",
        "Lcom/shabakaty/downloader/j15;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00012\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/shabakaty/downloader/d15;",
        "Lcom/shabakaty/downloader/hj;",
        "Lcom/shabakaty/downloader/jl1;",
        "Lcom/shabakaty/downloader/j15;",
        "Lcom/shabakaty/downloader/u15;",
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
.field public static A:Z


# instance fields
.field public x:Lcom/shabakaty/downloader/p5;

.field public final y:Lcom/shabakaty/downloader/i15;

.field public z:Lcom/shabakaty/downloader/qq3;


# direct methods
.method public constructor <init>()V
    .locals 4

    const v0, 0x7f0d0088

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/hj;-><init>(I)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/i15;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/i15;-><init>(Lcom/shabakaty/downloader/j15;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/d15;->y:Lcom/shabakaty/downloader/i15;

    .line 3
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->g:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 4
    sget v1, Lcom/facebook/drawee/view/DraweeTransition;->v:I

    .line 5
    new-instance v1, Landroid/transition/TransitionSet;

    invoke-direct {v1}, Landroid/transition/TransitionSet;-><init>()V

    .line 6
    new-instance v2, Landroid/transition/ChangeBounds;

    invoke-direct {v2}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-virtual {v1, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 7
    new-instance v2, Lcom/facebook/drawee/view/DraweeTransition;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v0, v3, v3}, Lcom/facebook/drawee/view/DraweeTransition;-><init>(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-virtual {v1, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 8
    new-instance v0, Landroid/transition/ChangeTransform;

    invoke-direct {v0}, Landroid/transition/ChangeTransform;-><init>()V

    invoke-virtual {v1, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/shabakaty/downloader/y91;

    invoke-direct {v1}, Lcom/shabakaty/downloader/y91;-><init>()V

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setSharedElementEnterTransition(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->setSharedElementReturnTransition(Ljava/lang/Object;)V

    return-void
.end method

.method public static final h2(Lcom/shabakaty/downloader/d15;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p2, Lcom/shabakaty/downloader/v05;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/v05;

    iget v1, v0, Lcom/shabakaty/downloader/v05;->y:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/v05;->y:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/v05;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/v05;-><init>(Lcom/shabakaty/downloader/d15;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p2, v0, Lcom/shabakaty/downloader/v05;->w:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 3
    iget v2, v0, Lcom/shabakaty/downloader/v05;->y:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/shabakaty/downloader/v05;->v:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    iget-object p0, v0, Lcom/shabakaty/downloader/v05;->u:Ljava/lang/Object;

    check-cast p0, Lcom/shabakaty/downloader/d15;

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_2
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Lcom/shabakaty/downloader/vy0;->b()Lcom/shabakaty/downloader/az0;

    move-result-object p2

    .line 7
    iget-object v2, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 8
    iput-object p0, v0, Lcom/shabakaty/downloader/v05;->u:Ljava/lang/Object;

    iput-object p1, v0, Lcom/shabakaty/downloader/v05;->v:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/v05;->y:I

    invoke-interface {p2, v2, v0}, Lcom/shabakaty/downloader/az0;->e(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    goto :goto_3

    :cond_3
    :goto_1
    check-cast p2, Lcom/shabakaty/downloader/pw0;

    if-nez p2, :cond_4

    goto :goto_2

    .line 9
    :cond_4
    invoke-static {}, Lcom/shabakaty/downloader/vy0;->c()Lcom/shabakaty/downloader/i44;

    move-result-object v0

    .line 10
    iget p2, p2, Lcom/shabakaty/downloader/pw0;->r:I

    .line 11
    new-instance v1, Lcom/shabakaty/downloader/x05;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/x05;-><init>(Lcom/shabakaty/downloader/d15;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V

    invoke-interface {v0, p2, v1}, Lcom/shabakaty/downloader/i44;->b(ILcom/shabakaty/downloader/tm1;)V

    .line 12
    :goto_2
    sget-object v1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_3
    return-object v1
.end method

.method public static final i2(Lcom/shabakaty/downloader/d15;)Lcom/shabakaty/downloader/jl1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 2
    check-cast p0, Lcom/shabakaty/downloader/jl1;

    return-object p0
.end method


# virtual methods
.method public B0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d15;->j2()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2}, Lcom/shabakaty/downloader/ib3;->a(Landroidx/fragment/app/Fragment;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/tm1;I)V

    return-void
.end method

.method public C0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d15;->o2()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/d15;->x:Lcom/shabakaty/downloader/p5;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d15;->j2()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v1

    .line 4
    iget-object v1, v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/p5;->b(Ljava/lang/String;I)V

    return-void

    :cond_0
    const-string v0, "analytics"

    .line 6
    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public O()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/u15;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/u15;->j:Lcom/shabakaty/usermanagement/UserManagement;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/UserManagement;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/shabakaty/downloader/u15;

    .line 5
    invoke-virtual {v1}, Lcom/shabakaty/downloader/u15;->v()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->kind:Ljava/lang/String;

    :goto_0
    const-string v3, "2"

    .line 7
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/shabakaty/downloader/u15;->v()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->rootSeries:Ljava/lang/String;

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {v1}, Lcom/shabakaty/downloader/u15;->v()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v0

    if-nez v0, :cond_3

    :goto_1
    move-object v0, v2

    goto :goto_2

    .line 10
    :cond_3
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 11
    :goto_2
    iget-object v3, v1, Lcom/shabakaty/downloader/u15;->y:Lcom/shabakaty/downloader/mj;

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/tj;

    if-nez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_3

    .line 12
    :cond_4
    iget-object v3, v3, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 13
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_3
    const-string v4, ""

    if-eqz v3, :cond_7

    .line 14
    iget-object v3, v1, Lcom/shabakaty/downloader/u15;->y:Lcom/shabakaty/downloader/mj;

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/tj;

    if-nez v3, :cond_5

    goto :goto_4

    .line 15
    :cond_5
    iput-object v2, v3, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 16
    :goto_4
    iget-object v2, v1, Lcom/shabakaty/downloader/u15;->i:Lcom/shabakaty/downloader/ox4;

    if-nez v0, :cond_6

    move-object v0, v4

    .line 17
    :cond_6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v3, v2, Lcom/shabakaty/downloader/ox4;->a:Lcom/shabakaty/downloader/k9;

    iget-object v2, v2, Lcom/shabakaty/downloader/ox4;->b:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {v2}, Lcom/shabakaty/usermanagement/UserManagement;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2, v0}, Lcom/shabakaty/downloader/k9;->y(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/shabakaty/downloader/uv3;->f(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object v2

    .line 20
    new-instance v3, Lcom/shabakaty/downloader/b25;

    invoke-direct {v3, v1}, Lcom/shabakaty/downloader/b25;-><init>(Lcom/shabakaty/downloader/u15;)V

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/shabakaty/downloader/xk;->d(Lcom/shabakaty/downloader/xk;Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;ILjava/lang/Object;)Lcom/shabakaty/downloader/mu0;

    goto :goto_5

    .line 21
    :cond_7
    iget-object v3, v1, Lcom/shabakaty/downloader/u15;->y:Lcom/shabakaty/downloader/mj;

    invoke-virtual {v3, v2}, Lcom/shabakaty/downloader/mj;->c(Lcom/shabakaty/downloader/tj;)V

    .line 22
    iget-object v2, v1, Lcom/shabakaty/downloader/u15;->i:Lcom/shabakaty/downloader/ox4;

    if-nez v0, :cond_8

    move-object v0, v4

    .line 23
    :cond_8
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v3, v2, Lcom/shabakaty/downloader/ox4;->a:Lcom/shabakaty/downloader/k9;

    iget-object v2, v2, Lcom/shabakaty/downloader/ox4;->b:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {v2}, Lcom/shabakaty/usermanagement/UserManagement;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2, v0}, Lcom/shabakaty/downloader/k9;->v(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/shabakaty/downloader/uv3;->f(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object v2

    .line 26
    new-instance v3, Lcom/shabakaty/downloader/c25;

    invoke-direct {v3, v1}, Lcom/shabakaty/downloader/c25;-><init>(Lcom/shabakaty/downloader/u15;)V

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/shabakaty/downloader/xk;->d(Lcom/shabakaty/downloader/xk;Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;ILjava/lang/Object;)Lcom/shabakaty/downloader/mu0;

    goto :goto_5

    :cond_9
    const v0, 0x7f12016c

    .line 27
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/d15;->q(I)V

    :goto_5
    return-void
.end method

.method public V()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d15;->j2()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2}, Lcom/shabakaty/downloader/ib3;->a(Landroidx/fragment/app/Fragment;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/tm1;I)V

    return-void
.end method

.method public Y(Lcom/shabakaty/downloader/ob4;Landroid/view/View;)V
    .locals 9

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/shabakaty/downloader/x93;

    .line 1
    new-instance v2, Lcom/shabakaty/downloader/x93;

    const-string v3, "ACTOR_INFO_ARGUMENT"

    invoke-direct {v2, v3, p1}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2
    invoke-static {v1}, Lcom/shabakaty/downloader/ml3;->a([Lcom/shabakaty/downloader/x93;)Landroid/os/Bundle;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/shabakaty/downloader/d15$e;->r:Lcom/shabakaty/downloader/d15$e;

    invoke-static {v2}, Lcom/shabakaty/downloader/ol3;->f(Lcom/shabakaty/downloader/tm1;)Landroidx/navigation/g;

    move-result-object v2

    .line 4
    instance-of v4, p2, Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v5, "_img"

    if-eqz v4, :cond_0

    .line 5
    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v4, 0x7f0a005b

    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v6, "view.findViewById(R.id.actorItemImg)"

    invoke-static {v4, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/facebook/drawee/view/SimpleDraweeView;

    const v6, 0x7f0a005c

    .line 6
    invoke-virtual {p2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v6, "view.findViewById(R.id.actorItemName)"

    invoke-static {p2, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/shabakaty/downloader/x93;

    .line 7
    new-instance v7, Lcom/shabakaty/downloader/x93;

    .line 8
    iget-object v8, p1, Lcom/shabakaty/downloader/ob4;->r:Ljava/lang/String;

    .line 9
    invoke-static {v8, v5}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v4, v5}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v6, v3

    .line 10
    iget-object p1, p1, Lcom/shabakaty/downloader/ob4;->r:Ljava/lang/String;

    const-string v3, "_name"

    .line 11
    invoke-static {p1, v3}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 12
    new-instance v3, Lcom/shabakaty/downloader/x93;

    invoke-direct {v3, p2, p1}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v6, v0

    .line 13
    invoke-static {v6}, Lcom/shabakaty/downloader/hl3;->a([Lcom/shabakaty/downloader/x93;)Landroidx/navigation/fragment/a$b;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v4, "null cannot be cast to non-null type android.widget.TextView"

    .line 14
    invoke-static {p2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Landroid/widget/TextView;

    new-array v0, v0, [Lcom/shabakaty/downloader/x93;

    .line 15
    iget-object p1, p1, Lcom/shabakaty/downloader/ob4;->r:Ljava/lang/String;

    .line 16
    invoke-static {p1, v5}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 17
    new-instance v4, Lcom/shabakaty/downloader/x93;

    invoke-direct {v4, p2, p1}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v3

    .line 18
    invoke-static {v0}, Lcom/shabakaty/downloader/hl3;->a([Lcom/shabakaty/downloader/x93;)Landroidx/navigation/fragment/a$b;

    move-result-object p1

    .line 19
    :goto_0
    invoke-static {p0}, Landroidx/navigation/fragment/NavHostFragment;->X1(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p2

    const-string v0, "NavHostFragment.findNavController(this)"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x13ef

    .line 20
    invoke-virtual {p2, v0, v1, v2, p1}, Landroidx/navigation/NavController;->i(ILandroid/os/Bundle;Landroidx/navigation/g;Landroidx/navigation/h$a;)V

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
            "Lcom/shabakaty/downloader/u15;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/shabakaty/downloader/u15;

    return-object v0
.end method

.method public e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/jl1;

    iget-object v0, v0, Lcom/shabakaty/downloader/jl1;->O:Landroidx/core/widget/NestedScrollView;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 4
    check-cast v1, Lcom/shabakaty/downloader/jl1;

    iget-object v1, v1, Lcom/shabakaty/downloader/jl1;->g0:Lcom/shabakaty/downloader/k15;

    iget-object v1, v1, Lcom/shabakaty/downloader/k15;->M:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 5
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v2

    const/4 v3, 0x0

    rsub-int/lit8 v2, v2, 0x0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v4

    sub-int/2addr v1, v4

    const/16 v4, 0xfa

    invoke-virtual {v0, v2, v1, v4, v3}, Landroidx/core/widget/NestedScrollView;->v(IIIZ)V

    return-void
.end method

.method public final f0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/jl1;

    iget-object v0, v0, Lcom/shabakaty/downloader/jl1;->Q:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Lcom/shabakaty/downloader/ji1;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fe6666666666666L    # 0.7

    mul-double v1, v1, v3

    double-to-int v1, v1

    .line 4
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    return-void
.end method

.method public h1(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V
    .locals 9

    .line 1
    invoke-virtual {p0, p0}, Lcom/shabakaty/downloader/hj;->b2(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d15;->f0()V

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/shabakaty/downloader/hj;->f2(ZLjava/lang/String;)V

    .line 4
    invoke-static {p0}, Lcom/shabakaty/downloader/cl3;->e(Lcom/shabakaty/downloader/rh2;)Lcom/shabakaty/downloader/ih2;

    move-result-object v0

    .line 5
    sget-object v2, Lcom/shabakaty/downloader/hu0;->b:Lcom/shabakaty/downloader/pe0;

    .line 6
    new-instance v3, Lcom/shabakaty/downloader/rd0;

    check-cast v0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 7
    iget-object v0, v0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;->s:Lcom/shabakaty/downloader/me0;

    .line 8
    invoke-interface {v0, v2}, Lcom/shabakaty/downloader/me0;->plus(Lcom/shabakaty/downloader/me0;)Lcom/shabakaty/downloader/me0;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/shabakaty/downloader/rd0;-><init>(Lcom/shabakaty/downloader/me0;)V

    const/4 v4, 0x0

    .line 9
    new-instance v6, Lcom/shabakaty/downloader/d15$g;

    const/4 v0, 0x0

    invoke-direct {v6, p0, p1, v0}, Lcom/shabakaty/downloader/d15$g;-><init>(Lcom/shabakaty/downloader/d15;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/ud0;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v3, "LAUNCH_PLAYER_ARG"

    const/4 v4, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-ne p1, v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 12
    :goto_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d15;->o2()V

    goto :goto_2

    .line 13
    :cond_3
    invoke-static {p0}, Lcom/shabakaty/downloader/cl3;->e(Lcom/shabakaty/downloader/rh2;)Lcom/shabakaty/downloader/ih2;

    move-result-object p1

    .line 14
    new-instance v3, Lcom/shabakaty/downloader/rd0;

    check-cast p1, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 15
    iget-object p1, p1, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;->s:Lcom/shabakaty/downloader/me0;

    .line 16
    invoke-interface {p1, v2}, Lcom/shabakaty/downloader/me0;->plus(Lcom/shabakaty/downloader/me0;)Lcom/shabakaty/downloader/me0;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/shabakaty/downloader/rd0;-><init>(Lcom/shabakaty/downloader/me0;)V

    const/4 v4, 0x0

    .line 17
    new-instance v6, Lcom/shabakaty/downloader/y05;

    invoke-direct {v6, p0, v0}, Lcom/shabakaty/downloader/y05;-><init>(Lcom/shabakaty/downloader/d15;Lcom/shabakaty/downloader/ud0;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    :cond_4
    :goto_2
    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d15;->j2()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v0

    new-instance v1, Lcom/shabakaty/downloader/d15$a;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/d15$a;-><init>(Lcom/shabakaty/downloader/d15;)V

    invoke-static {p0, v0, v1}, Lcom/shabakaty/downloader/iq6;->g(Landroidx/fragment/app/Fragment;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/tm1;)V

    return-void
.end method

.method public final j2()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;
    .locals 68

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/u15;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/u15;->v()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

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

    const/4 v15, 0x0

    const/16 v16, 0x0

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

    const-wide/16 v56, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, -0x1

    const v67, 0x7fffffff

    invoke-direct/range {v1 .. v67}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/cinemana/domain/models/local/VideoLanguages;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJLjava/lang/String;Ljava/lang/String;ZLcom/shabakaty/downloader/q25;Ljava/util/List;Lcom/shabakaty/cinemana/domain/models/local/Quality;Ljava/lang/String;ZII)V

    :cond_0
    return-object v0
.end method

.method public final k2()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VideoModelArg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/u15;

    .line 3
    iget-object v2, v1, Lcom/shabakaty/downloader/u15;->t:Lcom/shabakaty/downloader/mj;

    .line 4
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/tj;

    if-nez v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iput-object v0, v2, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 6
    :goto_0
    iget-object v0, v1, Lcom/shabakaty/downloader/u15;->t:Lcom/shabakaty/downloader/mj;

    .line 7
    invoke-static {v0}, Lcom/shabakaty/downloader/zi2;->f(Lcom/shabakaty/downloader/xv2;)V

    # PATCH297: one LiveData re-emit already follows the model update.
    # The removed second zi2.f() re-emitted the same value with no intervening
    # change, synchronously dispatching the same observers twice.
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    const-string v1, "getInstance(requireContext())"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 13
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d15;->j2()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v1

    .line 14
    iget-object v1, v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    const-string v2, "item_id"

    .line 15
    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v2, v0, Lcom/google/firebase/analytics/FirebaseAnalytics;->a:Lcom/shabakaty/downloader/g66;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v4, "select_content"

    .line 17
    invoke-virtual/range {v2 .. v8}, Lcom/shabakaty/downloader/g66;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;)V

    :goto_1
    return-void
.end method

.method public l2(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V
    .locals 6

    const-string v0, "item"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/u15;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/u15;->t:Lcom/shabakaty/downloader/mj;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/mj;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    :goto_0
    iget-object v1, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 5
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/u15;

    .line 7
    iget-object v0, v0, Lcom/shabakaty/downloader/u15;->t:Lcom/shabakaty/downloader/mj;

    .line 8
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 9
    new-instance v2, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 11
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "fragment.requireContext()"

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v5, 0x7f06014b

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/wt2;->f(Landroid/content/Context;I)I

    move-result v4

    .line 14
    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 15
    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    :goto_1
    new-instance v1, Lcom/shabakaty/downloader/d15$c;

    invoke-direct {v1, v2, v0, p1, p0}, Lcom/shabakaty/downloader/d15$c;-><init>(Landroid/app/Dialog;Lcom/shabakaty/downloader/mj;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/d15;)V

    .line 17
    new-instance v3, Lcom/shabakaty/downloader/d15$d;

    invoke-direct {v3, v0, v1}, Lcom/shabakaty/downloader/d15$d;-><init>(Lcom/shabakaty/downloader/mj;Lcom/shabakaty/downloader/d15$c;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 18
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 19
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Lcom/shabakaty/downloader/rh2;Lcom/shabakaty/downloader/r53;)V

    .line 20
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/u15;

    .line 21
    iget-object v0, v0, Lcom/shabakaty/downloader/u15;->t:Lcom/shabakaty/downloader/mj;

    .line 22
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/tj;

    if-nez v0, :cond_2

    goto :goto_2

    .line 23
    :cond_2
    iput-object p1, v0, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 24
    :goto_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/u15;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/u15;->q(Z)V

    goto :goto_3

    .line 25
    :cond_3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d15;->o2()V

    :goto_3
    return-void
.end method

.method public final m2(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V
    .locals 7

    const-string v0, "item"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/wt2;->e(Lcom/shabakaty/downloader/rh2;)Lcom/shabakaty/downloader/se0;

    move-result-object v1

    new-instance v4, Lcom/shabakaty/downloader/d15$f;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/shabakaty/downloader/d15$f;-><init>(Lcom/shabakaty/downloader/d15;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/ud0;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    return-void
.end method

.method public n()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/shabakaty/downloader/x93;

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d15;->j2()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v1

    .line 2
    iget-object v1, v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/x93;

    const-string v3, "VideoIDArg"

    invoke-direct {v2, v3, v1}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v2, v0, v1

    .line 4
    invoke-static {v0}, Lcom/shabakaty/downloader/ml3;->a([Lcom/shabakaty/downloader/x93;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "$this$findNavController"

    .line 5
    invoke-static {p0, v1}, Lcom/shabakaty/downloader/j32;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p0}, Landroidx/navigation/fragment/NavHostFragment;->X1(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v1

    const-string v2, "NavHostFragment.findNavController(this)"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x13ee

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v1, v2, v0, v3, v3}, Landroidx/navigation/NavController;->i(ILandroid/os/Bundle;Landroidx/navigation/g;Landroidx/navigation/h$a;)V

    return-void
.end method

.method public final n2(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/views/DownloadButton;)V
    .locals 9

    const-string v0, "item"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/u15;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/u15;->t:Lcom/shabakaty/downloader/mj;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/mj;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    :goto_0
    iget-object v1, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 5
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/u15;

    .line 7
    iget-object v0, v0, Lcom/shabakaty/downloader/u15;->t:Lcom/shabakaty/downloader/mj;

    .line 8
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 9
    new-instance v7, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v7, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-virtual {v7, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 11
    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "fragment.requireContext()"

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x7f06014b

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/wt2;->f(Landroid/content/Context;I)I

    move-result v3

    .line 14
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 15
    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    :goto_1
    new-instance v8, Lcom/shabakaty/downloader/d15$h;

    move-object v1, v8

    move-object v2, v7

    move-object v3, v0

    move-object v4, p1

    move-object v5, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/d15$h;-><init>(Landroid/app/Dialog;Lcom/shabakaty/downloader/mj;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/d15;Lcom/shabakaty/downloader/views/DownloadButton;)V

    .line 17
    new-instance p2, Lcom/shabakaty/downloader/d15$i;

    invoke-direct {p2, v0, v8}, Lcom/shabakaty/downloader/d15$i;-><init>(Lcom/shabakaty/downloader/mj;Lcom/shabakaty/downloader/d15$h;)V

    invoke-virtual {v7, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 18
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 19
    invoke-virtual {v0, p0, v8}, Landroidx/lifecycle/LiveData;->observe(Lcom/shabakaty/downloader/rh2;Lcom/shabakaty/downloader/r53;)V

    .line 20
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/u15;

    .line 21
    iget-object p2, p2, Lcom/shabakaty/downloader/u15;->t:Lcom/shabakaty/downloader/mj;

    .line 22
    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/tj;

    if-nez p2, :cond_2

    goto :goto_2

    .line 23
    :cond_2
    iput-object p1, p2, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 24
    :goto_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/u15;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/u15;->q(Z)V

    goto :goto_3

    .line 25
    :cond_3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d15;->j2()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object p1

    new-instance v0, Lcom/shabakaty/downloader/d15$b;

    invoke-direct {v0, p2, p0}, Lcom/shabakaty/downloader/d15$b;-><init>(Lcom/shabakaty/downloader/views/DownloadButton;Lcom/shabakaty/downloader/d15;)V

    invoke-static {p0, p1, v0}, Lcom/shabakaty/downloader/he0;->p(Landroidx/fragment/app/Fragment;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/tm1;)V

    .line 26
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/u15;

    .line 27
    iget-object p1, p1, Lcom/shabakaty/downloader/u15;->v:Lcom/shabakaty/downloader/mj;

    .line 28
    invoke-static {p1}, Lcom/shabakaty/downloader/zi2;->f(Lcom/shabakaty/downloader/xv2;)V

    :goto_3
    return-void
.end method

.method public o()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d15;->k2()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/u15;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/shabakaty/downloader/u15;->r(Lcom/shabakaty/downloader/u15;ZILjava/lang/Object;)V

    return-void
.end method

.method public final o2()V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    sget-boolean v1, Lcom/shabakaty/downloader/d15;->A:Z

    const-string v2, "listBottomSheet"

    const-string v3, "fragmentManager"

    const-string v4, "childFragmentManager"

    const-string v5, "title"

    const-string v6, "getString(R.string.choose_quality)"

    const-string v7, "items"

    const/16 v8, 0xa

    if-eqz v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/d15;->j2()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v1

    .line 2
    iget-object v1, v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->castable:Ljava/lang/String;

    const-string v9, "true"

    .line 3
    invoke-static {v1, v9}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/d15;->j2()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v1

    .line 5
    iget-object v1, v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->qualities:Ljava/util/List;

    .line 6
    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v1, v8}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 8
    check-cast v8, Lcom/shabakaty/cinemana/domain/models/local/Quality;

    .line 9
    iget-object v12, v8, Lcom/shabakaty/cinemana/domain/models/local/Quality;->resolution:Ljava/lang/String;

    .line 10
    new-instance v15, Lcom/shabakaty/downloader/pl4;

    const/4 v11, 0x0

    new-instance v13, Lcom/shabakaty/downloader/g15;

    invoke-direct {v13, v0, v8}, Lcom/shabakaty/downloader/g15;-><init>(Lcom/shabakaty/downloader/d15;Lcom/shabakaty/cinemana/domain/models/local/Quality;)V

    const/4 v14, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x9

    move-object v10, v15

    move-object/from16 v17, v15

    move v15, v8

    invoke-direct/range {v10 .. v16}, Lcom/shabakaty/downloader/pl4;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/shabakaty/downloader/rm1;Ljava/lang/String;ZI)V

    move-object/from16 v8, v17

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_0
    new-instance v1, Lcom/shabakaty/downloader/on;

    invoke-direct {v1}, Lcom/shabakaty/downloader/on;-><init>()V

    .line 12
    invoke-static {v9, v7}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v7, 0x7f120089

    .line 13
    invoke-virtual {v0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {v7, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/q;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {v5, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object v7, v1, Lcom/shabakaty/downloader/on;->O:Ljava/lang/String;

    .line 18
    invoke-static {v9}, Lcom/shabakaty/downloader/m50;->z0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    .line 19
    iput-object v3, v1, Lcom/shabakaty/downloader/on;->N:Ljava/util/List;

    .line 20
    invoke-virtual {v1, v5, v2}, Lcom/shabakaty/downloader/on;->c2(Landroidx/fragment/app/q;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 21
    :cond_1
    sget-boolean v1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->H:Z

    if-eqz v1, :cond_3

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/d15;->j2()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v1

    .line 23
    iget-object v1, v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->qualities:Ljava/util/List;

    .line 24
    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v1, v8}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 26
    check-cast v8, Lcom/shabakaty/cinemana/domain/models/local/Quality;

    .line 27
    iget-object v12, v8, Lcom/shabakaty/cinemana/domain/models/local/Quality;->resolution:Ljava/lang/String;

    .line 28
    new-instance v15, Lcom/shabakaty/downloader/pl4;

    const/4 v11, 0x0

    new-instance v13, Lcom/shabakaty/downloader/h15;

    invoke-direct {v13, v0, v8}, Lcom/shabakaty/downloader/h15;-><init>(Lcom/shabakaty/downloader/d15;Lcom/shabakaty/cinemana/domain/models/local/Quality;)V

    const/4 v14, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x9

    move-object v10, v15

    move-object/from16 v18, v15

    move v15, v8

    invoke-direct/range {v10 .. v16}, Lcom/shabakaty/downloader/pl4;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/shabakaty/downloader/rm1;Ljava/lang/String;ZI)V

    move-object/from16 v8, v18

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 29
    :cond_2
    new-instance v1, Lcom/shabakaty/downloader/on;

    invoke-direct {v1}, Lcom/shabakaty/downloader/on;-><init>()V

    .line 30
    invoke-static {v9, v7}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v7, 0x7f120089

    .line 31
    invoke-virtual {v0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-static {v7, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/q;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {v5, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object v7, v1, Lcom/shabakaty/downloader/on;->O:Ljava/lang/String;

    .line 36
    invoke-static {v9}, Lcom/shabakaty/downloader/m50;->z0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    .line 37
    iput-object v3, v1, Lcom/shabakaty/downloader/on;->N:Ljava/util/List;

    .line 38
    invoke-virtual {v1, v5, v2}, Lcom/shabakaty/downloader/on;->c2(Landroidx/fragment/app/q;Ljava/lang/String;)V

    goto :goto_3

    .line 39
    :cond_3
    sget-boolean v1, Lcom/shabakaty/downloader/d15;->A:Z

    if-eqz v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/d15;->j2()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v1

    .line 40
    iget-object v1, v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->castable:Ljava/lang/String;

    const-string v2, "false"

    .line 41
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f1201d9

    .line 42
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/d15;->q(I)V

    .line 43
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/d15;->j2()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v1

    .line 44
    iget-object v1, v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->kind:Ljava/lang/String;

    const-string v2, "2"

    .line 45
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/u15;

    .line 47
    iget-object v1, v1, Lcom/shabakaty/downloader/u15;->v:Lcom/shabakaty/downloader/mj;

    .line 48
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/tj;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_2

    .line 49
    :cond_5
    iget-object v1, v1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 50
    check-cast v1, Ljava/util/List;

    :goto_2
    if-nez v1, :cond_6

    sget-object v1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    .line 51
    :cond_6
    sput-object v1, Lcom/shabakaty/downloader/ol0;->a:Ljava/util/List;

    .line 52
    :cond_7
    new-instance v1, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/d15;->j2()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v3

    const-string v4, "VideoModelArg"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/d15;->j2()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v3

    .line 55
    iget-object v3, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->kind:Ljava/lang/String;

    .line 56
    invoke-static {v3, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x908

    .line 57
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    .line 58
    :cond_8
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :goto_3
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d15;->j2()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object p2

    .line 3
    iget-object p2, p2, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->kind:Ljava/lang/String;

    const-string p3, "2"

    .line 4
    invoke-static {p2, p3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x908

    if-ne p1, p2, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/u15;

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/u15;->j:Lcom/shabakaty/usermanagement/UserManagement;

    .line 7
    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/UserManagement;->isLoggedIn()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/u15;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/u15;->w()V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->release(Ljava/lang/Object;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/jl1;

    iget-object v0, v0, Lcom/shabakaty/downloader/jl1;->Q:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/u15;

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/u15;->o:Lcom/google/android/material/appbar/AppBarLayout$c;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->d(Lcom/google/android/material/appbar/AppBarLayout$c;)V

    .line 5
    const-string v0, "detail_destroy_view"

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/UiPerfDiag;->mark(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/shabakaty/downloader/hj;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 7

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const-string v0, "detail_visible"

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/UiPerfDiag;->mark(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/u15;

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/u15;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xk;->e()Lcom/shabakaty/downloader/se0;

    move-result-object v1

    new-instance v4, Lcom/shabakaty/downloader/v15;

    const/4 v2, 0x0

    invoke-direct {v4, v0, v2}, Lcom/shabakaty/downloader/v15;-><init>(Lcom/shabakaty/downloader/u15;Lcom/shabakaty/downloader/ud0;)V

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string v0, "detail_inflate_begin"

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/UiPerfDiag;->mark(Ljava/lang/String;)V

    invoke-static {}, Lcom/shabakaty/cinemana/local/UiPerfDiag;->begin()J

    move-result-wide v0

    invoke-super {p0, p1, p2, p3}, Lcom/shabakaty/downloader/hj;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    const/4 p1, 0x2

    invoke-static {p1, v0, v1}, Lcom/shabakaty/cinemana/local/UiPerfDiag;->inflate(IJ)V

    return-object v2
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/hj;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string v0, "detail_view_created"

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/UiPerfDiag;->mark(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->install(Ljava/lang/Object;Landroid/view/View;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d15;->f0()V

    .line 3
    new-instance p1, Landroid/animation/FloatEvaluator;

    invoke-direct {p1}, Landroid/animation/FloatEvaluator;-><init>()V

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/u15;

    .line 5
    iget p2, p2, Lcom/shabakaty/downloader/u15;->p:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 6
    iget-object p2, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 7
    check-cast p2, Lcom/shabakaty/downloader/jl1;

    iget-object p2, p2, Lcom/shabakaty/downloader/jl1;->Q:Lcom/google/android/material/appbar/AppBarLayout;

    .line 8
    invoke-virtual {p2, v1, v0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->e(ZZZ)V

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/u15;

    .line 10
    iget-object p2, p2, Lcom/shabakaty/downloader/u15;->o:Lcom/google/android/material/appbar/AppBarLayout$c;

    if-eqz p2, :cond_1

    .line 11
    iget-object p2, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 12
    check-cast p2, Lcom/shabakaty/downloader/jl1;

    iget-object p2, p2, Lcom/shabakaty/downloader/jl1;->Q:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/u15;

    .line 13
    iget-object v2, v2, Lcom/shabakaty/downloader/u15;->o:Lcom/google/android/material/appbar/AppBarLayout$c;

    .line 14
    invoke-virtual {p2, v2}, Lcom/google/android/material/appbar/AppBarLayout;->d(Lcom/google/android/material/appbar/AppBarLayout$c;)V

    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/u15;

    new-instance v2, Lcom/shabakaty/downloader/u05;

    invoke-direct {v2, p0, p1}, Lcom/shabakaty/downloader/u05;-><init>(Lcom/shabakaty/downloader/d15;Landroid/animation/FloatEvaluator;)V

    .line 16
    iput-object v2, p2, Lcom/shabakaty/downloader/u15;->o:Lcom/google/android/material/appbar/AppBarLayout$c;

    .line 17
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 18
    check-cast p1, Lcom/shabakaty/downloader/jl1;

    iget-object p1, p1, Lcom/shabakaty/downloader/jl1;->Q:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/u15;

    .line 19
    iget-object p2, p2, Lcom/shabakaty/downloader/u15;->o:Lcom/google/android/material/appbar/AppBarLayout$c;

    .line 20
    invoke-virtual {p1, p2}, Lcom/google/android/material/appbar/AppBarLayout;->a(Lcom/google/android/material/appbar/AppBarLayout$c;)V

    .line 21
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/u15;

    .line 22
    iget-object p1, p1, Lcom/shabakaty/downloader/u15;->t:Lcom/shabakaty/downloader/mj;

    .line 23
    invoke-static {p1}, Lcom/shabakaty/downloader/zi2;->c(Lcom/shabakaty/downloader/xv2;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 24
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d15;->k2()V

    .line 25
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/u15;

    invoke-static {p1, v1, v0, p2}, Lcom/shabakaty/downloader/u15;->r(Lcom/shabakaty/downloader/u15;ZILjava/lang/Object;)V

    .line 26
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 27
    check-cast p1, Lcom/shabakaty/downloader/jl1;

    iget-object p1, p1, Lcom/shabakaty/downloader/jl1;->P:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i()V

    .line 28
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d15;->j2()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object p1

    .line 29
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->kind:Ljava/lang/String;

    const-string v0, "2"

    .line 30
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 31
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 32
    check-cast p1, Lcom/shabakaty/downloader/jl1;

    iget-object p1, p1, Lcom/shabakaty/downloader/jl1;->O:Landroidx/core/widget/NestedScrollView;

    new-instance v0, Lcom/shabakaty/downloader/l91;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/l91;-><init>(Lcom/shabakaty/downloader/d15;)V

    invoke-virtual {p1, v0}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$b;)V

    .line 33
    :cond_3
    new-instance p1, Lcom/shabakaty/downloader/ne3;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "requireContext()"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/ne3;-><init>(Landroid/content/Context;)V

    .line 34
    iget-object v0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 35
    check-cast v0, Lcom/shabakaty/downloader/jl1;

    iget-object v0, v0, Lcom/shabakaty/downloader/jl1;->X:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    .line 36
    new-instance v2, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/PaintDrawable;-><init>()V

    .line 37
    new-instance v3, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v3}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/PaintDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 38
    iget-object p1, p1, Lcom/shabakaty/downloader/ne3;->b:Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/PaintDrawable;->setShaderFactory(Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;)V

    .line 39
    invoke-virtual {v0, v2}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->q(Landroid/graphics/drawable/Drawable;)V

    .line 40
    new-instance p1, Lcom/shabakaty/downloader/g4;

    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    iget-object v2, p0, Lcom/shabakaty/downloader/d15;->y:Lcom/shabakaty/downloader/i15;

    .line 41
    iget-object v2, v2, Lcom/shabakaty/downloader/i15;->a:Lcom/shabakaty/downloader/f4;

    .line 42
    invoke-direct {p1, v0, v2}, Lcom/shabakaty/downloader/g4;-><init>(Ljava/util/List;Lcom/shabakaty/downloader/f4;)V

    .line 43
    iget-object v0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 44
    check-cast v0, Lcom/shabakaty/downloader/jl1;

    iget-object v0, v0, Lcom/shabakaty/downloader/jl1;->R:Lcom/shabakaty/downloader/s05;

    iget-object v0, v0, Lcom/shabakaty/downloader/s05;->M:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 45
    new-instance p1, Lcom/shabakaty/downloader/qq3;

    iget-object v0, p0, Lcom/shabakaty/downloader/d15;->y:Lcom/shabakaty/downloader/i15;

    .line 46
    iget-object v0, v0, Lcom/shabakaty/downloader/i15;->b:Lcom/shabakaty/downloader/pq3;

    .line 47
    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/qq3;-><init>(Lcom/shabakaty/downloader/pq3;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/d15;->z:Lcom/shabakaty/downloader/qq3;

    .line 48
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 49
    check-cast p1, Lcom/shabakaty/downloader/jl1;

    iget-object p1, p1, Lcom/shabakaty/downloader/jl1;->Z:Lcom/shabakaty/downloader/a35;

    iget-object p1, p1, Lcom/shabakaty/downloader/a35;->N:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/shabakaty/downloader/d15;->z:Lcom/shabakaty/downloader/qq3;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 50
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d15;->j2()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/shabakaty/downloader/hj;->f2(ZLjava/lang/String;)V

    # PATCH297: one bounded lifecycle marker after synchronous detail setup.
    # Paired with existing detail_view_created to distinguish binding from
    # later layout/render/transition delay without logging content.
    const-string v0, "detail_ui_ready"
    invoke-static {v0}, Lcom/shabakaty/cinemana/local/UiPerfDiag;->mark(Ljava/lang/String;)V

    return-void

    :cond_4
    const-string p1, "relatedAdapter"

    .line 51
    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw p2
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

.method public r1()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p0}, Lcom/shabakaty/downloader/d15;->j2()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v2

    .line 2
    iget-object v2, v2, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->trailer:Ljava/lang/String;

    .line 3
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {v0}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    :goto_0
    invoke-static {v0}, Lcom/shabakaty/downloader/dt3;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public s0(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
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

    const-string v0, "$this$findNavController"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Landroidx/navigation/fragment/NavHostFragment;->X1(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    const-string v1, "NavHostFragment.findNavController(this)"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    .line 4
    :cond_1
    new-instance v1, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Fixed$VideosList;

    invoke-direct {v1, p2, p1}, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Fixed$VideosList;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 5
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/uo1;->d(Landroidx/navigation/NavController;Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType;)V

    return-void
.end method

.method public t()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/u15;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/u15;->v()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->imdbUrlRef:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-static {v0}, Lcom/shabakaty/downloader/ne4;->D(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    goto :goto_1

    .line 4
    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 6
    sget-object v1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_1
    if-nez v1, :cond_4

    const v0, 0x7f12014e

    .line 7
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.imdb_not_available_txt)"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "this"

    .line 8
    invoke-static {p0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "string"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {p0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/vj$a;->b(Lcom/shabakaty/downloader/vj;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public u(Lcom/shabakaty/downloader/views/DownloadButton;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d15;->j2()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v0

    new-instance v1, Lcom/shabakaty/downloader/d15$b;

    invoke-direct {v1, p1, p0}, Lcom/shabakaty/downloader/d15$b;-><init>(Lcom/shabakaty/downloader/views/DownloadButton;Lcom/shabakaty/downloader/d15;)V

    invoke-static {p0, v0, v1}, Lcom/shabakaty/downloader/he0;->p(Landroidx/fragment/app/Fragment;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/tm1;)V

    return-void
.end method

.method public u1(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d15;->x:Lcom/shabakaty/downloader/p5;

    const/4 v7, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    const-string v2, "videoId"

    .line 3
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x18

    const-string v2, "8"

    .line 4
    invoke-static/range {v0 .. v6}, Lcom/shabakaty/downloader/p5;->d(Lcom/shabakaty/downloader/p5;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;I)V

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "VideoThumb"

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/facebook/drawee/view/SimpleDraweeView;

    if-nez p2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p0}, Landroidx/navigation/fragment/NavHostFragment;->X1(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    const-string v1, "NavHostFragment.findNavController(this)"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 7
    invoke-static {v0, p2, p1, v7, v1}, Lcom/shabakaty/downloader/uo1;->f(Landroidx/navigation/NavController;Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroid/os/Bundle;I)V

    :goto_0
    return-void

    :cond_2
    const-string p1, "analytics"

    .line 8
    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v7
.end method

.method public z0(Ljava/lang/String;)V
    .locals 2

    const-string v0, "this"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "string"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/vj$a;->b(Lcom/shabakaty/downloader/vj;Ljava/lang/String;)V

    return-void
.end method
