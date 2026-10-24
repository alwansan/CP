.class public final Lcom/shabakaty/downloader/f91;
.super Lcom/shabakaty/downloader/aj;
.source "ExternalSeasonFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/k91;
.implements Lcom/shabakaty/downloader/c41;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/aj<",
        "Lcom/shabakaty/downloader/kj1;",
        "Lcom/shabakaty/downloader/k91;",
        "Lcom/shabakaty/downloader/m91;",
        ">;",
        "Lcom/shabakaty/downloader/k91;",
        "Lcom/shabakaty/downloader/c41;"
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
        "Lcom/shabakaty/downloader/f91;",
        "Lcom/shabakaty/downloader/aj;",
        "Lcom/shabakaty/downloader/kj1;",
        "Lcom/shabakaty/downloader/k91;",
        "Lcom/shabakaty/downloader/m91;",
        "Lcom/shabakaty/downloader/c41;",
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
.field public static final synthetic P:I


# instance fields
.field public N:Lcom/shabakaty/downloader/views/DownloadButton;

.field public final O:Lcom/shabakaty/downloader/kf2;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0d0074

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/aj;-><init>(I)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/f91$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/f91$a;-><init>(Lcom/shabakaty/downloader/f91;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/f91;->O:Lcom/shabakaty/downloader/kf2;

    return-void
.end method


# virtual methods
.method public K(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/views/DownloadButton;)V
    .locals 9

    const-string v0, "item"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadButton"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/m91;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/m91;->i:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    :goto_0
    iget-object v2, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 4
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/shabakaty/downloader/f91;->N:Lcom/shabakaty/downloader/views/DownloadButton;

    invoke-static {v0, p2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/m91;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/m91;->i:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->qualities:Ljava/util/List;

    :goto_1
    if-eqz v0, :cond_3

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_4

    goto :goto_4

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/m91;

    .line 9
    iget-object p1, p1, Lcom/shabakaty/downloader/m91;->i:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 10
    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    new-instance v0, Lcom/shabakaty/downloader/f91$f;

    invoke-direct {v0, p2}, Lcom/shabakaty/downloader/f91$f;-><init>(Lcom/shabakaty/downloader/views/DownloadButton;)V

    invoke-static {p0, p1, v0}, Lcom/shabakaty/downloader/he0;->p(Landroidx/fragment/app/Fragment;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/tm1;)V

    goto/16 :goto_8

    .line 11
    :cond_5
    :goto_4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/m91;

    .line 12
    iput-object v1, v0, Lcom/shabakaty/downloader/m91;->i:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 13
    iput-object v1, p0, Lcom/shabakaty/downloader/f91;->N:Lcom/shabakaty/downloader/views/DownloadButton;

    .line 14
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/m91;

    .line 15
    iget-object v0, v0, Lcom/shabakaty/downloader/m91;->h:Lcom/shabakaty/downloader/mj;

    .line 16
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance v7, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v7, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-virtual {v7, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 19
    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_5

    .line 20
    :cond_6
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "fragment.requireContext()"

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x7f06014b

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/wt2;->f(Landroid/content/Context;I)I

    move-result v3

    .line 22
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 23
    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    :goto_5
    new-instance v8, Lcom/shabakaty/downloader/f91$c;

    move-object v1, v8

    move-object v2, v7

    move-object v3, v0

    move-object v4, p1

    move-object v5, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/f91$c;-><init>(Landroid/app/Dialog;Lcom/shabakaty/downloader/mj;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/f91;Lcom/shabakaty/downloader/views/DownloadButton;)V

    .line 25
    new-instance p2, Lcom/shabakaty/downloader/f91$d;

    invoke-direct {p2, v0, v8}, Lcom/shabakaty/downloader/f91$d;-><init>(Lcom/shabakaty/downloader/mj;Lcom/shabakaty/downloader/f91$c;)V

    invoke-virtual {v7, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 26
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 27
    invoke-virtual {v0, p0, v8}, Landroidx/lifecycle/LiveData;->observe(Lcom/shabakaty/downloader/rh2;Lcom/shabakaty/downloader/r53;)V

    .line 28
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/m91;

    .line 29
    iget-object p2, p2, Lcom/shabakaty/downloader/m91;->h:Lcom/shabakaty/downloader/mj;

    .line 30
    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/tj;

    if-nez p2, :cond_7

    goto :goto_6

    .line 31
    :cond_7
    iput-object p1, p2, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 32
    :goto_6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/m91;

    .line 33
    iget-object p2, p1, Lcom/shabakaty/downloader/m91;->h:Lcom/shabakaty/downloader/mj;

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/tj;

    if-nez p2, :cond_8

    goto :goto_7

    .line 34
    :cond_8
    iget-object p2, p2, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 35
    check-cast p2, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez p2, :cond_9

    goto :goto_7

    .line 36
    :cond_9
    iget-object p2, p2, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    if-nez p2, :cond_a

    :goto_7
    const-string p2, "0"

    .line 37
    :cond_a
    iput-object p2, p1, Lcom/shabakaty/downloader/m91;->k:Ljava/lang/String;

    .line 38
    iget-object v0, p1, Lcom/shabakaty/downloader/m91;->g:Lcom/shabakaty/downloader/q15;

    invoke-virtual {v0, p2}, Lcom/shabakaty/downloader/q15;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object p2

    .line 39
    iget-object v0, p1, Lcom/shabakaty/downloader/m91;->g:Lcom/shabakaty/downloader/q15;

    iget-object v1, p1, Lcom/shabakaty/downloader/m91;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/q15;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    iget-object v1, p1, Lcom/shabakaty/downloader/m91;->l:Lcom/shabakaty/downloader/wl;

    invoke-virtual {p2, v0, v1}, Lcom/shabakaty/downloader/f74;->p(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/wl;)Lcom/shabakaty/downloader/f74;

    move-result-object p2

    .line 40
    iget-object v0, p1, Lcom/shabakaty/downloader/m91;->h:Lcom/shabakaty/downloader/mj;

    invoke-virtual {p1, p2, v0}, Lcom/shabakaty/downloader/xk;->c(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/xv2;)Lcom/shabakaty/downloader/mu0;

    :goto_8
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

.method public a(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroid/view/View;)V
    .locals 1

    const-string p2, "videoModel"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p2, Lcom/shabakaty/downloader/jt3;

    const/4 v0, 0x1

    invoke-direct {p2, v0, p1}, Lcom/shabakaty/downloader/jt3;-><init>(ILcom/shabakaty/cinemana/domain/models/local/VideoModel;)V

    const-string p1, "EpisodeClicked"

    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/uo1;->g(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/b;->X1()V

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
            "Lcom/shabakaty/downloader/m91;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/shabakaty/downloader/m91;

    return-object v0
.end method

.method public final h2()Lcom/shabakaty/downloader/d41;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/f91;->O:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/d41;

    return-object v0
.end method

.method public n1(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/views/DownloadButton;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadButton"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/f91$b;

    invoke-direct {v0, p2, p0, p1}, Lcom/shabakaty/downloader/f91$b;-><init>(Lcom/shabakaty/downloader/views/DownloadButton;Lcom/shabakaty/downloader/f91;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V

    invoke-static {p0, p1, v0}, Lcom/shabakaty/downloader/iq6;->g(Landroidx/fragment/app/Fragment;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/tm1;)V

    return-void
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

.method public onDestroyView()V
    .locals 0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->release(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/shabakaty/downloader/aj;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/f91;->h2()Lcom/shabakaty/downloader/d41;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/aj;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->season(Ljava/lang/Object;Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/ct0;->C:Landroid/app/Dialog;

    .line 3
    instance-of p2, p1, Lcom/google/android/material/bottomsheet/a;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    check-cast p1, Lcom/google/android/material/bottomsheet/a;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object p2, p0, Lcom/shabakaty/downloader/aj;->K:Landroidx/databinding/ViewDataBinding;

    invoke-static {p2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 5
    check-cast p2, Lcom/shabakaty/downloader/kj1;

    iget-object p2, p2, Lcom/shabakaty/downloader/kj1;->M:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "binding.rootConstraint"

    invoke-static {p2, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/s45;->e(Lcom/google/android/material/bottomsheet/a;Landroid/view/View;)Lcom/google/android/material/bottomsheet/a;

    .line 6
    :goto_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/m91;

    .line 7
    iget-object p1, p1, Lcom/shabakaty/downloader/m91;->j:Lcom/shabakaty/downloader/xv2;

    .line 8
    sget-object p2, Lcom/shabakaty/downloader/ol0;->a:Ljava/util/List;

    .line 9
    sput-object v0, Lcom/shabakaty/downloader/ol0;->a:Ljava/util/List;

    .line 10
    instance-of v1, p2, Ljava/util/List;

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move-object p2, v0

    :goto_2
    if-nez p2, :cond_3

    move-object p2, v0

    goto :goto_3

    .line 11
    :cond_3
    invoke-static {p2}, Lcom/shabakaty/downloader/m50;->z0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    :goto_3
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const p2, 0x7f1202af

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/m91;

    .line 13
    iget-object p2, p2, Lcom/shabakaty/downloader/m91;->j:Lcom/shabakaty/downloader/xv2;

    .line 14
    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {p2}, Lcom/shabakaty/downloader/m50;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez p2, :cond_5

    :goto_4
    move-object p2, v0

    goto :goto_5

    .line 15
    :cond_5
    iget-object p2, p2, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->season:Ljava/lang/String;

    .line 16
    :goto_5
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17
    iget-object p2, p0, Lcom/shabakaty/downloader/aj;->K:Landroidx/databinding/ViewDataBinding;

    invoke-static {p2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 18
    check-cast p2, Lcom/shabakaty/downloader/kj1;

    iget-object p2, p2, Lcom/shabakaty/downloader/kj1;->N:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object p1, p0, Lcom/shabakaty/downloader/aj;->K:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 20
    check-cast p1, Lcom/shabakaty/downloader/kj1;

    iget-object p1, p1, Lcom/shabakaty/downloader/kj1;->O:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/f91;->h2()Lcom/shabakaty/downloader/d41;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 21
    invoke-virtual {p0}, Lcom/shabakaty/downloader/f91;->h2()Lcom/shabakaty/downloader/d41;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_6

    goto :goto_6

    :cond_6
    const-string v1, "VideoIDArg"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_7

    :goto_6
    const-string p2, ""

    :cond_7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iput-object p2, p1, Lcom/shabakaty/downloader/d41;->e:Ljava/lang/String;

    .line 23
    invoke-virtual {p0, p0}, Lcom/shabakaty/downloader/aj;->e2(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 24
    invoke-static {p0}, Lcom/shabakaty/downloader/cl3;->e(Lcom/shabakaty/downloader/rh2;)Lcom/shabakaty/downloader/ih2;

    move-result-object v1

    .line 25
    sget-object v2, Lcom/shabakaty/downloader/hu0;->b:Lcom/shabakaty/downloader/pe0;

    .line 26
    new-instance v4, Lcom/shabakaty/downloader/j91;

    invoke-direct {v4, p0, v0}, Lcom/shabakaty/downloader/j91;-><init>(Lcom/shabakaty/downloader/f91;Lcom/shabakaty/downloader/ud0;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    :cond_8
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

.method public y0(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/jt3;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/jt3;-><init>(ILcom/shabakaty/cinemana/domain/models/local/VideoModel;)V

    const-string p1, "EpisodeClicked"

    invoke-static {p0, p1, v0}, Lcom/shabakaty/downloader/uo1;->g(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/b;->X1()V

    return-void
.end method
