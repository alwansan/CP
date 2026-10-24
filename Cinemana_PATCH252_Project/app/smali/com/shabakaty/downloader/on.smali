.class public final Lcom/shabakaty/downloader/on;
.super Lcom/shabakaty/downloader/aj;
.source "BottomSheetList.kt"

# interfaces
.implements Lcom/shabakaty/downloader/vj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/on$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/aj<",
        "Lcom/shabakaty/downloader/yi1;",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/di2;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00012\u00020\u0003:\u0001\u0007B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/shabakaty/downloader/on;",
        "Lcom/shabakaty/downloader/aj;",
        "Lcom/shabakaty/downloader/yi1;",
        "",
        "Lcom/shabakaty/downloader/di2;",
        "<init>",
        "()V",
        "a",
        "app_productionBetaRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public N:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/gn;",
            ">;"
        }
    .end annotation
.end field

.field public O:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0d006e

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/aj;-><init>(I)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/on;->N:Ljava/util/List;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/on;->O:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c2(Landroidx/fragment/app/q;Ljava/lang/String;)V
    .locals 2

    const-string v0, "manager"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/q;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p1, p0, p2, v1}, Landroidx/fragment/app/a;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/a;->d()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/shabakaty/downloader/wt2;->j(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public d2()Lcom/shabakaty/downloader/vj;
    .locals 0

    return-object p0
.end method

.method public g2()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/shabakaty/downloader/di2;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/shabakaty/downloader/di2;

    return-object v0
.end method

.method public o()V
    .locals 1

    const-string v0, "this"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/aj;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/ct0;->C:Landroid/app/Dialog;

    .line 3
    instance-of p2, p1, Lcom/google/android/material/bottomsheet/a;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/google/android/material/bottomsheet/a;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object p2, p0, Lcom/shabakaty/downloader/aj;->K:Landroidx/databinding/ViewDataBinding;

    invoke-static {p2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 5
    check-cast p2, Lcom/shabakaty/downloader/yi1;

    iget-object p2, p2, Lcom/shabakaty/downloader/yi1;->M:Landroid/widget/LinearLayout;

    const-string v0, "binding.bottomListRootLinearLayout"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type android.view.View"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Landroid/view/View;

    invoke-static {p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p2

    .line 7
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 8
    invoke-virtual {p2, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l(I)V

    .line 9
    :goto_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/di2;

    .line 10
    iget-object p1, p1, Lcom/shabakaty/downloader/di2;->f:Lcom/shabakaty/downloader/xv2;

    .line 11
    iget-object p2, p0, Lcom/shabakaty/downloader/on;->N:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/di2;

    .line 13
    iget-object p1, p1, Lcom/shabakaty/downloader/di2;->g:Lcom/shabakaty/downloader/xv2;

    .line 14
    iget-object p2, p0, Lcom/shabakaty/downloader/on;->O:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 15
    iget-object p1, p0, Lcom/shabakaty/downloader/on;->N:Ljava/util/List;

    if-nez p1, :cond_2

    goto :goto_3

    .line 16
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/gn;

    .line 17
    instance-of v0, p2, Lcom/shabakaty/downloader/pl4;

    if-eqz v0, :cond_3

    .line 18
    check-cast p2, Lcom/shabakaty/downloader/pl4;

    .line 19
    iget-object v0, p2, Lcom/shabakaty/downloader/pl4;->c:Lcom/shabakaty/downloader/rm1;

    .line 20
    new-instance v1, Lcom/shabakaty/downloader/pn;

    invoke-direct {v1, p0, v0}, Lcom/shabakaty/downloader/pn;-><init>(Lcom/shabakaty/downloader/on;Lcom/shabakaty/downloader/rm1;)V

    .line 21
    iput-object v1, p2, Lcom/shabakaty/downloader/pl4;->c:Lcom/shabakaty/downloader/rm1;

    goto :goto_2

    .line 22
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/di2;

    .line 23
    iget-object p1, p1, Lcom/shabakaty/downloader/di2;->f:Lcom/shabakaty/downloader/xv2;

    .line 24
    iget-object p2, p0, Lcom/shabakaty/downloader/on;->N:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 25
    new-instance p1, Lcom/shabakaty/downloader/fn;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/di2;

    .line 26
    iget-object p2, p2, Lcom/shabakaty/downloader/di2;->f:Lcom/shabakaty/downloader/xv2;

    .line 27
    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_5

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/fn;-><init>(Ljava/util/List;)V

    .line 28
    iget-object p2, p0, Lcom/shabakaty/downloader/aj;->K:Landroidx/databinding/ViewDataBinding;

    invoke-static {p2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 29
    check-cast p2, Lcom/shabakaty/downloader/yi1;

    iget-object p2, p2, Lcom/shabakaty/downloader/yi1;->N:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

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
