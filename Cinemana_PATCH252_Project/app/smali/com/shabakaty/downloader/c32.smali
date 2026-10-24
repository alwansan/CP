.class public final Lcom/shabakaty/downloader/c32;
.super Lcom/shabakaty/downloader/hj;
.source "InternalSeasonFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/c41;
.implements Lcom/shabakaty/downloader/rz3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/hj<",
        "Lcom/shabakaty/downloader/tj1;",
        "Lcom/shabakaty/downloader/j15;",
        "Lcom/shabakaty/downloader/u15;",
        ">;",
        "Lcom/shabakaty/downloader/c41;",
        "Lcom/shabakaty/downloader/rz3;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00012\u00020\u00052\u00020\u0006B\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/shabakaty/downloader/c32;",
        "Lcom/shabakaty/downloader/hj;",
        "Lcom/shabakaty/downloader/tj1;",
        "Lcom/shabakaty/downloader/j15;",
        "Lcom/shabakaty/downloader/u15;",
        "Lcom/shabakaty/downloader/c41;",
        "Lcom/shabakaty/downloader/rz3;",
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
.field public static final synthetic B:I


# instance fields
.field public final A:Lcom/shabakaty/downloader/kf2;

.field public x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ">;"
        }
    .end annotation
.end field

.field public y:Ljava/lang/String;

.field public z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const v0, 0x7f0d0079

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/hj;-><init>(I)V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    iput-object v0, p0, Lcom/shabakaty/downloader/c32;->x:Ljava/util/List;

    const-string v1, ""

    .line 3
    iput-object v1, p0, Lcom/shabakaty/downloader/c32;->y:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/c32;->z:Ljava/util/List;

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/c32$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/c32$a;-><init>(Lcom/shabakaty/downloader/c32;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/c32;->A:Lcom/shabakaty/downloader/kf2;

    return-void
.end method


# virtual methods
.method public K(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/views/DownloadButton;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadButton"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/shabakaty/downloader/d15;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/shabakaty/downloader/d15;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/d15;->n2(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/views/DownloadButton;)V

    :goto_1
    return-void
.end method

.method public O0(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/views/DownloadButton;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadButton"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 v0, 0x2

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/shabakaty/downloader/ib3;->a(Landroidx/fragment/app/Fragment;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/tm1;I)V

    return-void
.end method

.method public Q(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/views/DownloadButton;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadButton"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 v0, 0x2

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/shabakaty/downloader/ib3;->a(Landroidx/fragment/app/Fragment;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/tm1;I)V

    return-void
.end method

.method public bridge synthetic Z1()Lcom/shabakaty/downloader/vj;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/c32;->i2()Lcom/shabakaty/downloader/j15;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroid/view/View;)V
    .locals 6

    const-string p2, "videoModel"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/c32;->i2()Lcom/shabakaty/downloader/j15;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/d15;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p2, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d15;->j2()Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    move-result-object v1

    .line 5
    iget-object v1, v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 6
    invoke-static {p2, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/u15;

    .line 8
    iget-object p2, p2, Lcom/shabakaty/downloader/u15;->t:Lcom/shabakaty/downloader/mj;

    .line 9
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 10
    new-instance v2, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 11
    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 12
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "fragment.requireContext()"

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v5, 0x7f06014b

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/wt2;->f(Landroid/content/Context;I)I

    move-result v4

    .line 15
    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 16
    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17
    :goto_0
    new-instance v1, Lcom/shabakaty/downloader/z05;

    invoke-direct {v1, v2, p2, p1}, Lcom/shabakaty/downloader/z05;-><init>(Landroid/app/Dialog;Lcom/shabakaty/downloader/mj;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V

    .line 18
    new-instance v3, Lcom/shabakaty/downloader/a15;

    invoke-direct {v3, p2, v1}, Lcom/shabakaty/downloader/a15;-><init>(Lcom/shabakaty/downloader/mj;Lcom/shabakaty/downloader/z05;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 19
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 20
    invoke-virtual {p2, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Lcom/shabakaty/downloader/rh2;Lcom/shabakaty/downloader/r53;)V

    .line 21
    invoke-virtual {v0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/u15;

    .line 22
    iget-object p2, p2, Lcom/shabakaty/downloader/u15;->t:Lcom/shabakaty/downloader/mj;

    .line 23
    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/tj;

    if-nez p2, :cond_1

    goto :goto_1

    .line 24
    :cond_1
    iput-object p1, p2, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 25
    :goto_1
    iget p2, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->downloadTaskId:I

    if-nez p2, :cond_2

    .line 26
    iget-object p2, v0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 27
    check-cast p2, Lcom/shabakaty/downloader/jl1;

    iget-object p2, p2, Lcom/shabakaty/downloader/jl1;->e0:Lcom/shabakaty/downloader/m15;

    iget-object p2, p2, Lcom/shabakaty/downloader/m15;->S:Lcom/shabakaty/downloader/views/DownloadButton;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/views/DownloadButton;->e()V

    .line 28
    iget-object p2, v0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 29
    check-cast p2, Lcom/shabakaty/downloader/jl1;

    iget-object p2, p2, Lcom/shabakaty/downloader/jl1;->e0:Lcom/shabakaty/downloader/m15;

    iget-object p2, p2, Lcom/shabakaty/downloader/m15;->S:Lcom/shabakaty/downloader/views/DownloadButton;

    .line 30
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 31
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/views/DownloadButton;->setExternalId(Ljava/lang/String;)V

    .line 32
    :cond_2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/u15;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/u15;->q(Z)V

    .line 33
    :cond_3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/c32;->h2()Lcom/shabakaty/downloader/d41;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    return-void
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

.method public final h2()Lcom/shabakaty/downloader/d41;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/c32;->A:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/d41;

    return-object v0
.end method

.method public i2()Lcom/shabakaty/downloader/j15;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/d15;

    return-object v0
.end method

.method public final j2()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->a2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/u15;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/u15;->v:Lcom/shabakaty/downloader/mj;

    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/tj;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 5
    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 8
    iget-object v3, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->season:Ljava/lang/String;

    .line 9
    iget-object v4, p0, Lcom/shabakaty/downloader/c32;->y:Ljava/lang/String;

    .line 10
    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 11
    sget-object v1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    .line 12
    :cond_4
    iput-object v1, p0, Lcom/shabakaty/downloader/c32;->x:Ljava/util/List;

    .line 13
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    add-int/lit8 v3, v2, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 14
    check-cast v4, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 15
    iget-object v4, v4, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 16
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->a2()Lcom/shabakaty/downloader/xk;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/u15;

    .line 17
    iget-object v5, v5, Lcom/shabakaty/downloader/u15;->B:Ljava/lang/String;

    .line 18
    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    move v2, v3

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    .line 19
    :goto_3
    iget-object v0, p0, Lcom/shabakaty/downloader/c32;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 20
    iget-object v3, p0, Lcom/shabakaty/downloader/c32;->x:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_7

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_8

    add-int/lit8 v0, v0, -0x5

    goto :goto_5

    :cond_8
    add-int/lit8 v0, v2, -0x2

    :goto_5
    const/4 v3, 0x5

    if-eqz v2, :cond_b

    const/4 v4, 0x2

    if-gt v2, v4, :cond_9

    goto :goto_7

    :cond_9
    if-gez v0, :cond_a

    goto :goto_6

    :cond_a
    move v1, v0

    .line 21
    :goto_6
    iget-object v0, p0, Lcom/shabakaty/downloader/c32;->x:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/m50;->V(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/shabakaty/downloader/m50;->u0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    goto :goto_8

    .line 22
    :cond_b
    :goto_7
    iget-object v0, p0, Lcom/shabakaty/downloader/c32;->x:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/shabakaty/downloader/m50;->u0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    .line 23
    :goto_8
    iput-object v0, p0, Lcom/shabakaty/downloader/c32;->z:Ljava/util/List;

    return-void
.end method

.method public k()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->a2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/u15;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/u15;->v:Lcom/shabakaty/downloader/mj;

    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/tj;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 5
    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    :goto_0
    move-object v2, v1

    goto :goto_2

    .line 6
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 8
    iget-object v4, v4, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->season:Ljava/lang/String;

    .line 9
    iget-object v5, p0, Lcom/shabakaty/downloader/c32;->y:Ljava/lang/String;

    .line 10
    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    :goto_2
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/shabakaty/downloader/x93;

    const/4 v3, 0x0

    .line 11
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->a2()Lcom/shabakaty/downloader/xk;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/u15;

    .line 12
    iget-object v4, v4, Lcom/shabakaty/downloader/u15;->t:Lcom/shabakaty/downloader/mj;

    .line 13
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/tj;

    if-nez v4, :cond_4

    goto :goto_3

    .line 14
    :cond_4
    iget-object v4, v4, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 15
    check-cast v4, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez v4, :cond_5

    goto :goto_3

    .line 16
    :cond_5
    iget-object v4, v4, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    if-nez v4, :cond_6

    :goto_3
    const-string v4, ""

    .line 17
    :cond_6
    new-instance v5, Lcom/shabakaty/downloader/x93;

    const-string v6, "VideoIDArg"

    invoke-direct {v5, v6, v4}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v3

    .line 18
    invoke-static {v0}, Lcom/shabakaty/downloader/ml3;->a([Lcom/shabakaty/downloader/x93;)Landroid/os/Bundle;

    move-result-object v0

    .line 19
    sput-object v2, Lcom/shabakaty/downloader/ol0;->a:Ljava/util/List;

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    const-string v3, "EpisodeClicked"

    const-string v4, "NavHostFragment.findNavController(this)"

    if-nez v2, :cond_7

    goto :goto_4

    .line 21
    :cond_7
    invoke-static {v2}, Landroidx/navigation/fragment/NavHostFragment;->X1(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v2}, Landroidx/navigation/NavController;->d()Lcom/shabakaty/downloader/vw2;

    move-result-object v2

    if-nez v2, :cond_8

    goto :goto_4

    .line 23
    :cond_8
    invoke-virtual {v2}, Lcom/shabakaty/downloader/vw2;->a()Lcom/shabakaty/downloader/fx3;

    move-result-object v2

    if-nez v2, :cond_9

    goto :goto_4

    .line 24
    :cond_9
    iget-object v5, v2, Lcom/shabakaty/downloader/fx3;->a:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 25
    iget-object v2, v2, Lcom/shabakaty/downloader/fx3;->c:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/fx3$b;

    if-eqz v2, :cond_a

    .line 26
    iput-object v1, v2, Lcom/shabakaty/downloader/fx3$b;->b:Lcom/shabakaty/downloader/fx3;

    .line 27
    :cond_a
    check-cast v5, Lcom/shabakaty/downloader/jt3;

    .line 28
    :goto_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_b

    goto :goto_8

    .line 29
    :cond_b
    invoke-static {v2}, Landroidx/navigation/fragment/NavHostFragment;->X1(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v2}, Landroidx/navigation/NavController;->d()Lcom/shabakaty/downloader/vw2;

    move-result-object v2

    if-nez v2, :cond_c

    goto :goto_5

    :cond_c
    invoke-virtual {v2}, Lcom/shabakaty/downloader/vw2;->a()Lcom/shabakaty/downloader/fx3;

    move-result-object v2

    if-nez v2, :cond_d

    :goto_5
    move-object v5, v1

    goto :goto_7

    .line 31
    :cond_d
    iget-object v5, v2, Lcom/shabakaty/downloader/fx3;->c:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/xv2;

    if-eqz v5, :cond_e

    goto :goto_7

    .line 32
    :cond_e
    iget-object v5, v2, Lcom/shabakaty/downloader/fx3;->a:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 33
    new-instance v5, Lcom/shabakaty/downloader/fx3$b;

    iget-object v6, v2, Lcom/shabakaty/downloader/fx3;->a:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v5, v2, v3, v6}, Lcom/shabakaty/downloader/fx3$b;-><init>(Lcom/shabakaty/downloader/fx3;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 34
    :cond_f
    new-instance v5, Lcom/shabakaty/downloader/fx3$b;

    invoke-direct {v5, v2, v3}, Lcom/shabakaty/downloader/fx3$b;-><init>(Lcom/shabakaty/downloader/fx3;Ljava/lang/String;)V

    .line 35
    :goto_6
    iget-object v2, v2, Lcom/shabakaty/downloader/fx3;->c:Ljava/util/Map;

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    if-nez v5, :cond_10

    goto :goto_8

    .line 36
    :cond_10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lcom/shabakaty/downloader/rh2;

    move-result-object v2

    const-string v3, "viewLifecycleOwner"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/shabakaty/downloader/b32;

    const/4 v6, 0x2

    invoke-direct {v3, p0, v6}, Lcom/shabakaty/downloader/b32;-><init>(Lcom/shabakaty/downloader/c32;I)V

    .line 37
    new-instance v6, Lcom/shabakaty/downloader/xi2;

    invoke-direct {v6, v3, v5}, Lcom/shabakaty/downloader/xi2;-><init>(Lcom/shabakaty/downloader/r53;Landroidx/lifecycle/LiveData;)V

    invoke-virtual {v5, v2, v6}, Landroidx/lifecycle/LiveData;->observe(Lcom/shabakaty/downloader/rh2;Lcom/shabakaty/downloader/r53;)V

    .line 38
    :goto_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_11

    goto :goto_9

    .line 39
    :cond_11
    invoke-static {v2}, Landroidx/navigation/fragment/NavHostFragment;->X1(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x13f2

    .line 40
    invoke-virtual {v2, v3, v0, v1, v1}, Landroidx/navigation/NavController;->i(ILandroid/os/Bundle;Landroidx/navigation/g;Landroidx/navigation/h$a;)V

    .line 41
    :goto_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_a

    .line 42
    :cond_12
    invoke-static {v0}, Landroidx/navigation/fragment/NavHostFragment;->X1(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v1, Lcom/shabakaty/downloader/c32$c;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/c32$c;-><init>(Lcom/shabakaty/downloader/c32;)V

    invoke-virtual {v0, v1}, Landroidx/navigation/NavController;->a(Landroidx/navigation/NavController$b;)V

    :goto_a
    return-void
.end method

.method public n1(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/views/DownloadButton;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadButton"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/c32$b;

    invoke-direct {v0, p2, p0, p1}, Lcom/shabakaty/downloader/c32$b;-><init>(Lcom/shabakaty/downloader/views/DownloadButton;Lcom/shabakaty/downloader/c32;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V

    invoke-static {p0, p1, v0}, Lcom/shabakaty/downloader/iq6;->g(Landroidx/fragment/app/Fragment;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/tm1;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/c32;->h2()Lcom/shabakaty/downloader/d41;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/hj;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "SEASON"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    const-string p2, "<set-?>"

    .line 3
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/c32;->y:Ljava/lang/String;

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/c32;->j2()V

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 7
    check-cast p1, Lcom/shabakaty/downloader/tj1;

    iget-object p2, p0, Lcom/shabakaty/downloader/c32;->z:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/tj1;->G(Ljava/util/List;)V

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 9
    check-cast p1, Lcom/shabakaty/downloader/tj1;

    iget-object p2, p0, Lcom/shabakaty/downloader/c32;->x:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le p2, v0, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/tj1;->I(Ljava/lang/Boolean;)V

    .line 10
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 11
    check-cast p1, Lcom/shabakaty/downloader/tj1;

    iget-object p1, p1, Lcom/shabakaty/downloader/tj1;->N:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/c32;->h2()Lcom/shabakaty/downloader/d41;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 12
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 13
    check-cast p1, Lcom/shabakaty/downloader/tj1;

    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/tj1;->H(Lcom/shabakaty/downloader/rz3;)V

    .line 14
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->a2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/u15;

    .line 15
    iget-object p1, p1, Lcom/shabakaty/downloader/u15;->t:Lcom/shabakaty/downloader/mj;

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lcom/shabakaty/downloader/rh2;

    move-result-object p2

    new-instance v0, Lcom/shabakaty/downloader/b32;

    invoke-direct {v0, p0, v2}, Lcom/shabakaty/downloader/b32;-><init>(Lcom/shabakaty/downloader/c32;I)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Lcom/shabakaty/downloader/rh2;Lcom/shabakaty/downloader/r53;)V

    .line 17
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->a2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/u15;

    .line 18
    iget-object p1, p1, Lcom/shabakaty/downloader/u15;->v:Lcom/shabakaty/downloader/mj;

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lcom/shabakaty/downloader/rh2;

    move-result-object p2

    new-instance v0, Lcom/shabakaty/downloader/b32;

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/b32;-><init>(Lcom/shabakaty/downloader/c32;I)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Lcom/shabakaty/downloader/rh2;Lcom/shabakaty/downloader/r53;)V

    return-void
.end method

.method public y0(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/c32;->i2()Lcom/shabakaty/downloader/j15;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/d15;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/d15;->l2(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V

    return-void
.end method
