.class public final Lcom/shabakaty/downloader/bx;
.super Lcom/shabakaty/downloader/hj;
.source "CategoriesFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/gx;
.implements Lcom/shabakaty/downloader/cx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/hj<",
        "Lcom/shabakaty/downloader/mi1;",
        "Lcom/shabakaty/downloader/gx;",
        "Lcom/shabakaty/downloader/kx;",
        ">;",
        "Lcom/shabakaty/downloader/gx;",
        "Lcom/shabakaty/downloader/cx;"
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
        "Lcom/shabakaty/downloader/bx;",
        "Lcom/shabakaty/downloader/hj;",
        "Lcom/shabakaty/downloader/mi1;",
        "Lcom/shabakaty/downloader/gx;",
        "Lcom/shabakaty/downloader/kx;",
        "Lcom/shabakaty/downloader/cx;",
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

    const v0, 0x7f0d0068

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/hj;-><init>(I)V

    return-void
.end method


# virtual methods
.method public X0(Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;)V
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/shabakaty/downloader/x93;

    .line 1
    new-instance v1, Lcom/shabakaty/downloader/x93;

    const-string v2, "CATEGORY_ITEM_ARG"

    invoke-direct {v1, v2, p1}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/ml3;->a([Lcom/shabakaty/downloader/x93;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "$this$findNavController"

    .line 3
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p0}, Landroidx/navigation/fragment/NavHostFragment;->X1(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    const-string v1, "NavHostFragment.findNavController(this)"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x836

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, p1, v2, v2}, Landroidx/navigation/NavController;->i(ILandroid/os/Bundle;Landroidx/navigation/g;Landroidx/navigation/h$a;)V

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
            "Lcom/shabakaty/downloader/kx;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/shabakaty/downloader/kx;

    return-object v0
.end method

.method public o()V
    .locals 1

    const-string v0, "this"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/kx;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/kx;->l()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/hj;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 v0, 0x2

    .line 2
    invoke-static {p0, p1, p2, v0, p2}, Lcom/shabakaty/downloader/hj;->g2(Lcom/shabakaty/downloader/hj;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 4
    check-cast p1, Lcom/shabakaty/downloader/mi1;

    iget-object p1, p1, Lcom/shabakaty/downloader/mi1;->M:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/shabakaty/downloader/ax;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/ax;-><init>(Lcom/shabakaty/downloader/bx;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

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
