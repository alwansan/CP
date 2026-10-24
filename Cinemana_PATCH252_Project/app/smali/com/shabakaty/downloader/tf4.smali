.class public final Lcom/shabakaty/downloader/tf4;
.super Lcom/shabakaty/downloader/hj;
.source "SubscriptionsFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/wf4;
.implements Lcom/shabakaty/downloader/qf4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/hj<",
        "Lcom/shabakaty/downloader/uk1;",
        "Lcom/shabakaty/downloader/wf4;",
        "Lcom/shabakaty/downloader/yf4;",
        ">;",
        "Lcom/shabakaty/downloader/wf4;",
        "Lcom/shabakaty/downloader/qf4;"
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
        "Lcom/shabakaty/downloader/tf4;",
        "Lcom/shabakaty/downloader/hj;",
        "Lcom/shabakaty/downloader/uk1;",
        "Lcom/shabakaty/downloader/wf4;",
        "Lcom/shabakaty/downloader/yf4;",
        "Lcom/shabakaty/downloader/qf4;",
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

.field public final y:Lcom/shabakaty/downloader/kf2;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0d0084

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/hj;-><init>(I)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/tf4$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/tf4$a;-><init>(Lcom/shabakaty/downloader/tf4;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/tf4;->x:Lcom/shabakaty/downloader/kf2;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/tf4$b;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/tf4$b;-><init>(Lcom/shabakaty/downloader/tf4;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/tf4;->y:Lcom/shabakaty/downloader/kf2;

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

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tf4;->y:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/n;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 3
    check-cast v1, Lcom/shabakaty/downloader/uk1;

    iget-object v1, v1, Lcom/shabakaty/downloader/uk1;->O:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/n;->f(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 5
    check-cast v0, Lcom/shabakaty/downloader/uk1;

    iget-object v0, v0, Lcom/shabakaty/downloader/uk1;->O:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$e;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public d2()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/shabakaty/downloader/yf4;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/shabakaty/downloader/yf4;

    return-object v0
.end method

.method public o()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/yf4;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/yf4;->f:Lcom/shabakaty/downloader/ox4;

    .line 3
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ox4;->b()Lcom/shabakaty/downloader/f74;

    move-result-object v1

    .line 4
    iget-object v2, v0, Lcom/shabakaty/downloader/yf4;->g:Lcom/shabakaty/downloader/mj;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/xk;->c(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/xv2;)Lcom/shabakaty/downloader/mu0;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/hj;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/hj;->f2(ZLjava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 4
    check-cast v0, Lcom/shabakaty/downloader/uk1;

    iget-object v0, v0, Lcom/shabakaty/downloader/uk1;->O:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/shabakaty/downloader/br1;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/br1;-><init>(Lcom/shabakaty/downloader/tf4;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/tf4;->d()V

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/yf4;

    .line 7
    iget-object v0, v0, Lcom/shabakaty/downloader/yf4;->g:Lcom/shabakaty/downloader/mj;

    .line 8
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/tj;

    if-nez v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object p2, v0, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 10
    check-cast p2, Ljava/util/List;

    :goto_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/yf4;

    .line 12
    iget-object p2, p1, Lcom/shabakaty/downloader/yf4;->f:Lcom/shabakaty/downloader/ox4;

    .line 13
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ox4;->b()Lcom/shabakaty/downloader/f74;

    move-result-object p2

    .line 14
    iget-object v0, p1, Lcom/shabakaty/downloader/yf4;->g:Lcom/shabakaty/downloader/mj;

    invoke-virtual {p1, p2, v0}, Lcom/shabakaty/downloader/xk;->c(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/xv2;)Lcom/shabakaty/downloader/mu0;

    :cond_3
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
