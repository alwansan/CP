.class public final Lcom/shabakaty/downloader/hb4;
.super Lcom/shabakaty/downloader/hj;
.source "StaffInfoFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ib4;
.implements Lcom/shabakaty/downloader/lb4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/hj<",
        "Lcom/shabakaty/downloader/nk1;",
        "Lcom/shabakaty/downloader/ib4;",
        "Lcom/shabakaty/downloader/mb4;",
        ">;",
        "Lcom/shabakaty/downloader/ib4;",
        "Lcom/shabakaty/downloader/lb4;"
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
        "Lcom/shabakaty/downloader/hb4;",
        "Lcom/shabakaty/downloader/hj;",
        "Lcom/shabakaty/downloader/nk1;",
        "Lcom/shabakaty/downloader/ib4;",
        "Lcom/shabakaty/downloader/mb4;",
        "Lcom/shabakaty/downloader/lb4;",
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
.field public final x:Lcom/shabakaty/downloader/kf2;

.field public y:Lcom/google/android/material/appbar/AppBarLayout$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0d0083

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/hj;-><init>(I)V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/hb4$a;->r:Lcom/shabakaty/downloader/hb4$a;

    invoke-static {v0}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/hb4;->x:Lcom/shabakaty/downloader/kf2;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/gb4;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/gb4;-><init>(Lcom/shabakaty/downloader/hb4;)V

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/hb4;->y:Lcom/google/android/material/appbar/AppBarLayout$c;

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/nb4;

    invoke-direct {v0}, Lcom/shabakaty/downloader/nb4;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setSharedElementEnterTransition(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setSharedElementReturnTransition(Ljava/lang/Object;)V

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

.method public d2()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/shabakaty/downloader/mb4;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/shabakaty/downloader/mb4;

    return-object v0
.end method

.method public f0()V
    .locals 5

    .line 1
    invoke-virtual {p0, p0}, Lcom/shabakaty/downloader/hj;->b2(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/nk1;

    iget-object v0, v0, Lcom/shabakaty/downloader/nk1;->P:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
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

    const-wide v3, 0x3fd999999999999aL    # 0.4

    mul-double v1, v1, v3

    double-to-int v1, v1

    .line 5
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    const/4 v0, 0x0

    const-string v1, ""

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/hj;->f2(ZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public j0()Lcom/shabakaty/downloader/ob4;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "ACTOR_INFO_ARGUMENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ob4;

    :goto_0
    return-object v0
.end method

.method public o()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/mb4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/mb4;->p()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/nk1;

    iget-object v0, v0, Lcom/shabakaty/downloader/nk1;->P:Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v1, p0, Lcom/shabakaty/downloader/hb4;->y:Lcom/google/android/material/appbar/AppBarLayout$c;

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->d(Lcom/google/android/material/appbar/AppBarLayout$c;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/hb4;->y:Lcom/google/android/material/appbar/AppBarLayout$c;

    .line 4
    invoke-super {p0}, Lcom/shabakaty/downloader/hj;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/mb4;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    const-string v0, "view"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/hj;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hb4;->f0()V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/hb4;->y:Lcom/google/android/material/appbar/AppBarLayout$c;

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/gb4;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/gb4;-><init>(Lcom/shabakaty/downloader/hb4;)V

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/hb4;->y:Lcom/google/android/material/appbar/AppBarLayout$c;

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 7
    check-cast p1, Lcom/shabakaty/downloader/nk1;

    iget-object p1, p1, Lcom/shabakaty/downloader/nk1;->P:Lcom/google/android/material/appbar/AppBarLayout;

    iget-object p2, p0, Lcom/shabakaty/downloader/hb4;->y:Lcom/google/android/material/appbar/AppBarLayout$c;

    invoke-virtual {p1, p2}, Lcom/google/android/material/appbar/AppBarLayout;->a(Lcom/google/android/material/appbar/AppBarLayout$c;)V

    .line 8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/mb4;

    .line 9
    iget-object p1, p1, Lcom/shabakaty/downloader/mb4;->i:Lcom/shabakaty/downloader/mj;

    .line 10
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/tj;

    if-nez p1, :cond_1

    goto :goto_4

    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/mb4;

    .line 11
    iget-object p2, p2, Lcom/shabakaty/downloader/mb4;->j:Lcom/shabakaty/downloader/kf2;

    invoke-interface {p2}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/ob4;

    if-nez p2, :cond_2

    const/4 p2, 0x0

    goto :goto_3

    .line 12
    :cond_2
    new-instance v9, Lcom/shabakaty/cinemana/domain/models/local/staff_info/StaffModel;

    .line 13
    iget-object v1, p2, Lcom/shabakaty/downloader/ob4;->r:Ljava/lang/String;

    .line 14
    iget-object v0, p2, Lcom/shabakaty/downloader/ob4;->w:Ljava/lang/String;

    const-string v2, ""

    if-nez v0, :cond_3

    move-object v3, v2

    goto :goto_0

    :cond_3
    move-object v3, v0

    .line 15
    :goto_0
    iget-object v0, p2, Lcom/shabakaty/downloader/ob4;->u:Ljava/lang/String;

    if-nez v0, :cond_4

    move-object v4, v2

    goto :goto_1

    :cond_4
    move-object v4, v0

    .line 16
    :goto_1
    iget-object v0, p2, Lcom/shabakaty/downloader/ob4;->v:Ljava/lang/String;

    if-nez v0, :cond_5

    move-object v5, v2

    goto :goto_2

    :cond_5
    move-object v5, v0

    :goto_2
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 17
    iget-object p2, p2, Lcom/shabakaty/downloader/ob4;->s:Ljava/lang/String;

    const/16 v8, 0x30

    move-object v0, v9

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, p2

    .line 18
    invoke-direct/range {v0 .. v8}, Lcom/shabakaty/cinemana/domain/models/local/staff_info/StaffModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    move-object p2, v9

    .line 19
    :goto_3
    iput-object p2, p1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 20
    :goto_4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/mb4;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/mb4;->p()V

    .line 21
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 22
    check-cast p1, Lcom/shabakaty/downloader/nk1;

    iget-object p1, p1, Lcom/shabakaty/downloader/nk1;->S:Lcom/shabakaty/downloader/a35;

    iget-object p1, p1, Lcom/shabakaty/downloader/a35;->N:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/shabakaty/downloader/ax;

    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    invoke-direct {p2, v0, p0}, Lcom/shabakaty/downloader/ax;-><init>(Ljava/util/List;Lcom/shabakaty/downloader/lb4;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 23
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 24
    check-cast p1, Lcom/shabakaty/downloader/nk1;

    iget-object p1, p1, Lcom/shabakaty/downloader/nk1;->V:Lcom/shabakaty/downloader/a35;

    iget-object p1, p1, Lcom/shabakaty/downloader/a35;->N:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/shabakaty/downloader/ax;

    invoke-direct {p2, v0, p0}, Lcom/shabakaty/downloader/ax;-><init>(Ljava/util/List;Lcom/shabakaty/downloader/lb4;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 25
    new-instance p1, Lcom/shabakaty/downloader/fb4;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "requireContext()"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/fb4;-><init>(Landroid/content/Context;)V

    .line 26
    iget-object p2, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 27
    check-cast p2, Lcom/shabakaty/downloader/nk1;

    iget-object p2, p2, Lcom/shabakaty/downloader/nk1;->R:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object p2

    check-cast p2, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    .line 28
    new-instance v0, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/PaintDrawable;-><init>()V

    .line 29
    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 30
    iget-object p1, p1, Lcom/shabakaty/downloader/fb4;->b:Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/PaintDrawable;->setShaderFactory(Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;)V

    .line 31
    invoke-virtual {p2, v0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->q(Landroid/graphics/drawable/Drawable;)V

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
    .locals 4
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

    const p1, 0x7f1202a4

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/16 v0, 0x20

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/mb4;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/mb4;->i:Lcom/shabakaty/downloader/mj;

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/mj;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/staff_info/StaffModel;

    if-nez p1, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/cinemana/domain/models/local/staff_info/StaffModel;->a()Ljava/util/List;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    .line 5
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/mb4;

    .line 6
    iget-object v3, v3, Lcom/shabakaty/downloader/mb4;->i:Lcom/shabakaty/downloader/mj;

    .line 7
    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/tj;

    if-nez v3, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    iget-object v3, v3, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 9
    check-cast v3, Lcom/shabakaty/cinemana/domain/models/local/staff_info/StaffModel;

    if-nez v3, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    iget-object v1, v3, Lcom/shabakaty/cinemana/domain/models/local/staff_info/StaffModel;->title:Ljava/lang/String;

    .line 11
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    .line 12
    :cond_4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/mb4;

    .line 13
    iget-object p1, p1, Lcom/shabakaty/downloader/mb4;->i:Lcom/shabakaty/downloader/mj;

    .line 14
    invoke-virtual {p1}, Lcom/shabakaty/downloader/mj;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/staff_info/StaffModel;

    if-nez p1, :cond_5

    move-object p1, v1

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/shabakaty/cinemana/domain/models/local/staff_info/StaffModel;->b()Ljava/util/List;

    move-result-object p1

    :goto_2
    if-nez p1, :cond_6

    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    .line 15
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/mb4;

    .line 16
    iget-object v3, v3, Lcom/shabakaty/downloader/mb4;->i:Lcom/shabakaty/downloader/mj;

    .line 17
    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/tj;

    if-nez v3, :cond_7

    goto :goto_3

    .line 18
    :cond_7
    iget-object v3, v3, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 19
    check-cast v3, Lcom/shabakaty/cinemana/domain/models/local/staff_info/StaffModel;

    if-nez v3, :cond_8

    goto :goto_3

    .line 20
    :cond_8
    iget-object v1, v3, Lcom/shabakaty/cinemana/domain/models/local/staff_info/StaffModel;->title:Ljava/lang/String;

    .line 21
    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_4
    const-string v0, "$this$findNavController"

    .line 22
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-static {p0}, Landroidx/navigation/fragment/NavHostFragment;->X1(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    const-string v1, "NavHostFragment.findNavController(this)"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v1, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Fixed$VideosList;

    invoke-direct {v1, p2, p1}, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$Fixed$VideosList;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 25
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/uo1;->d(Landroidx/navigation/NavController;Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType;)V

    return-void
.end method
