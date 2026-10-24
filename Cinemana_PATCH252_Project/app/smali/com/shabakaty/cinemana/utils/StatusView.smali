.class public final Lcom/shabakaty/cinemana/utils/StatusView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "StatusView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/cinemana/utils/StatusView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R$\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R.\u0010\u0013\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00118\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001d\u0010\u001e\u001a\u00020\u00198F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/shabakaty/cinemana/utils/StatusView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "",
        "J",
        "Ljava/lang/String;",
        "getMessage",
        "()Ljava/lang/String;",
        "setMessage",
        "(Ljava/lang/String;)V",
        "message",
        "Lcom/shabakaty/downloader/vj;",
        "navigator",
        "Lcom/shabakaty/downloader/vj;",
        "getNavigator",
        "()Lcom/shabakaty/downloader/vj;",
        "setNavigator",
        "(Lcom/shabakaty/downloader/vj;)V",
        "Lcom/shabakaty/downloader/tj$a;",
        "value",
        "status",
        "Lcom/shabakaty/downloader/tj$a;",
        "getStatus",
        "()Lcom/shabakaty/downloader/tj$a;",
        "setStatus",
        "(Lcom/shabakaty/downloader/tj$a;)V",
        "Lcom/shabakaty/downloader/dd4;",
        "binding$delegate",
        "Lcom/shabakaty/downloader/kf2;",
        "getBinding",
        "()Lcom/shabakaty/downloader/dd4;",
        "binding",
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
.field public static final synthetic N:I


# instance fields
.field public J:Ljava/lang/String;

.field public K:Lcom/shabakaty/downloader/vj;

.field public L:Lcom/shabakaty/downloader/tj$a;

.field public final M:Lcom/shabakaty/downloader/kf2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x2

    .line 3
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setAccessibilityLiveRegion(I)V

    .line 4
    new-instance p2, Lcom/shabakaty/downloader/cd4;

    invoke-direct {p2, p1, p0}, Lcom/shabakaty/downloader/cd4;-><init>(Landroid/content/Context;Lcom/shabakaty/cinemana/utils/StatusView;)V

    invoke-static {p2}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/cinemana/utils/StatusView;->M:Lcom/shabakaty/downloader/kf2;

    return-void
.end method


# virtual methods
.method public final getBinding()Lcom/shabakaty/downloader/dd4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/utils/StatusView;->M:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/dd4;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/utils/StatusView;->J:Ljava/lang/String;

    return-object v0
.end method

.method public final getNavigator()Lcom/shabakaty/downloader/vj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/utils/StatusView;->K:Lcom/shabakaty/downloader/vj;

    return-object v0
.end method

.method public final getStatus()Lcom/shabakaty/downloader/tj$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/utils/StatusView;->L:Lcom/shabakaty/downloader/tj$a;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/cinemana/utils/StatusView;->L:Lcom/shabakaty/downloader/tj$a;

    invoke-virtual {p0, v0}, Lcom/shabakaty/cinemana/utils/StatusView;->setStatus(Lcom/shabakaty/downloader/tj$a;)V

    .line 3
    :try_start_0
    invoke-static {p0}, Lcom/shabakaty/downloader/jl3;->b(Landroid/view/View;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 4
    move-object v1, v0

    check-cast v1, Lcom/shabakaty/downloader/hj;

    .line 5
    instance-of v2, v1, Lcom/shabakaty/downloader/vj;

    if-eqz v2, :cond_0

    .line 6
    check-cast v1, Lcom/shabakaty/downloader/vj;

    invoke-virtual {p0, v1}, Lcom/shabakaty/cinemana/utils/StatusView;->setNavigator(Lcom/shabakaty/downloader/vj;)V

    .line 7
    :cond_0
    check-cast v0, Lcom/shabakaty/downloader/hj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 8
    invoke-static {v0}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    :goto_0
    invoke-static {v0}, Lcom/shabakaty/downloader/dt3;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_4

    :cond_1
    const/4 v0, 0x0

    .line 10
    :try_start_1
    invoke-static {p0}, Lcom/shabakaty/downloader/jl3;->b(Landroid/view/View;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 11
    move-object v2, v1

    check-cast v2, Lcom/shabakaty/downloader/aj;

    .line 12
    instance-of v3, v2, Lcom/shabakaty/downloader/vj;

    if-eqz v3, :cond_2

    .line 13
    check-cast v2, Lcom/shabakaty/downloader/vj;

    invoke-virtual {p0, v2}, Lcom/shabakaty/cinemana/utils/StatusView;->setNavigator(Lcom/shabakaty/downloader/vj;)V

    goto :goto_2

    .line 14
    :cond_2
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    instance-of v3, v3, Lcom/shabakaty/downloader/vj;

    if-eqz v3, :cond_4

    .line 15
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    instance-of v3, v2, Lcom/shabakaty/downloader/vj;

    if-eqz v3, :cond_3

    check-cast v2, Lcom/shabakaty/downloader/vj;

    goto :goto_1

    :cond_3
    move-object v2, v0

    :goto_1
    invoke-virtual {p0, v2}, Lcom/shabakaty/cinemana/utils/StatusView;->setNavigator(Lcom/shabakaty/downloader/vj;)V

    .line 16
    :cond_4
    :goto_2
    check-cast v1, Lcom/shabakaty/downloader/aj;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    .line 17
    invoke-static {v1}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    .line 18
    :goto_3
    invoke-static {v1}, Lcom/shabakaty/downloader/dt3;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_4

    .line 19
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/shabakaty/downloader/vj;

    if-eqz v1, :cond_7

    .line 20
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v2, v1, Lcom/shabakaty/downloader/vj;

    if-eqz v2, :cond_6

    move-object v0, v1

    check-cast v0, Lcom/shabakaty/downloader/vj;

    :cond_6
    invoke-virtual {p0, v0}, Lcom/shabakaty/cinemana/utils/StatusView;->setNavigator(Lcom/shabakaty/downloader/vj;)V

    .line 21
    :cond_7
    :goto_4
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/utils/StatusView;->getBinding()Lcom/shabakaty/downloader/dd4;

    move-result-object v0

    iget-object v0, v0, Lcom/shabakaty/downloader/dd4;->Q:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lcom/shabakaty/downloader/ck;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/ck;-><init>(Lcom/shabakaty/cinemana/utils/StatusView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/shabakaty/cinemana/utils/StatusView;->K:Lcom/shabakaty/downloader/vj;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/cinemana/utils/StatusView;->L:Lcom/shabakaty/downloader/tj$a;

    invoke-virtual {p0, v0}, Lcom/shabakaty/cinemana/utils/StatusView;->setStatus(Lcom/shabakaty/downloader/tj$a;)V

    .line 3
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method public final setMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/cinemana/utils/StatusView;->J:Ljava/lang/String;

    return-void
.end method

.method public final setNavigator(Lcom/shabakaty/downloader/vj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/cinemana/utils/StatusView;->K:Lcom/shabakaty/downloader/vj;

    return-void
.end method

.method public final setStatus(Lcom/shabakaty/downloader/tj$a;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/shabakaty/cinemana/utils/StatusView;->L:Lcom/shabakaty/downloader/tj$a;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/shabakaty/cinemana/utils/StatusView$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    const-string v1, "binding.statusProgressBar"

    const-string v2, "binding.errorImage"

    const-string v3, "binding.statusErrorTextSecondary"

    const-string v4, "binding.statusErrorText"

    const-string v5, "binding.statusRetryButton"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/utils/StatusView;->t()V

    goto/16 :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/utils/StatusView;->t()V

    goto/16 :goto_1

    .line 5
    :cond_2
    invoke-static {p0}, Lcom/shabakaty/downloader/s45;->l(Landroid/view/View;)V

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/utils/StatusView;->getBinding()Lcom/shabakaty/downloader/dd4;

    move-result-object p1

    iget-object p1, p1, Lcom/shabakaty/downloader/dd4;->Q:Lcom/google/android/material/button/MaterialButton;

    invoke-static {p1, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/s45;->j(Landroid/view/View;)V

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/utils/StatusView;->getBinding()Lcom/shabakaty/downloader/dd4;

    move-result-object p1

    iget-object p1, p1, Lcom/shabakaty/downloader/dd4;->N:Landroid/widget/TextView;

    invoke-static {p1, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/s45;->j(Landroid/view/View;)V

    .line 8
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/utils/StatusView;->getBinding()Lcom/shabakaty/downloader/dd4;

    move-result-object p1

    iget-object p1, p1, Lcom/shabakaty/downloader/dd4;->O:Landroid/widget/TextView;

    invoke-static {p1, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/s45;->j(Landroid/view/View;)V

    .line 9
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/utils/StatusView;->getBinding()Lcom/shabakaty/downloader/dd4;

    move-result-object p1

    iget-object p1, p1, Lcom/shabakaty/downloader/dd4;->M:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/s45;->j(Landroid/view/View;)V

    .line 10
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/utils/StatusView;->getBinding()Lcom/shabakaty/downloader/dd4;

    move-result-object p1

    iget-object p1, p1, Lcom/shabakaty/downloader/dd4;->P:Landroid/widget/ProgressBar;

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/s45;->l(Landroid/view/View;)V

    goto :goto_1

    .line 11
    :cond_3
    invoke-static {p0}, Lcom/shabakaty/downloader/s45;->l(Landroid/view/View;)V

    .line 12
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/utils/StatusView;->getBinding()Lcom/shabakaty/downloader/dd4;

    move-result-object p1

    iget-object p1, p1, Lcom/shabakaty/downloader/dd4;->Q:Lcom/google/android/material/button/MaterialButton;

    invoke-static {p1, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/s45;->l(Landroid/view/View;)V

    .line 13
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/utils/StatusView;->getBinding()Lcom/shabakaty/downloader/dd4;

    move-result-object p1

    iget-object p1, p1, Lcom/shabakaty/downloader/dd4;->N:Landroid/widget/TextView;

    invoke-static {p1, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/s45;->l(Landroid/view/View;)V

    .line 14
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/utils/StatusView;->getBinding()Lcom/shabakaty/downloader/dd4;

    move-result-object p1

    iget-object p1, p1, Lcom/shabakaty/downloader/dd4;->O:Landroid/widget/TextView;

    invoke-static {p1, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/s45;->l(Landroid/view/View;)V

    .line 15
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/utils/StatusView;->getBinding()Lcom/shabakaty/downloader/dd4;

    move-result-object p1

    iget-object p1, p1, Lcom/shabakaty/downloader/dd4;->M:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/s45;->l(Landroid/view/View;)V

    .line 16
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/utils/StatusView;->getBinding()Lcom/shabakaty/downloader/dd4;

    move-result-object p1

    iget-object p1, p1, Lcom/shabakaty/downloader/dd4;->P:Landroid/widget/ProgressBar;

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/s45;->j(Landroid/view/View;)V

    .line 17
    iget-object p1, p0, Lcom/shabakaty/cinemana/utils/StatusView;->J:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 18
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/utils/StatusView;->getBinding()Lcom/shabakaty/downloader/dd4;

    move-result-object p1

    iget-object p1, p1, Lcom/shabakaty/downloader/dd4;->N:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/shabakaty/cinemana/utils/StatusView;->J:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/utils/StatusView;->getBinding()Lcom/shabakaty/downloader/dd4;

    move-result-object p1

    iget-object p1, p1, Lcom/shabakaty/downloader/dd4;->O:Landroid/widget/TextView;

    invoke-static {p1, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/s45;->j(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/shabakaty/cinemana/utils/StatusView;->J:Ljava/lang/String;

    goto :goto_1

    .line 21
    :cond_4
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/utils/StatusView;->t()V

    :cond_5
    :goto_1
    return-void
.end method

.method public final t()V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/s45;->j(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/utils/StatusView;->getBinding()Lcom/shabakaty/downloader/dd4;

    move-result-object v0

    iget-object v0, v0, Lcom/shabakaty/downloader/dd4;->Q:Lcom/google/android/material/button/MaterialButton;

    const-string v1, "binding.statusRetryButton"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/s45;->j(Landroid/view/View;)V

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/utils/StatusView;->getBinding()Lcom/shabakaty/downloader/dd4;

    move-result-object v0

    iget-object v0, v0, Lcom/shabakaty/downloader/dd4;->N:Landroid/widget/TextView;

    const-string v1, "binding.statusErrorText"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/s45;->j(Landroid/view/View;)V

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/utils/StatusView;->getBinding()Lcom/shabakaty/downloader/dd4;

    move-result-object v0

    iget-object v0, v0, Lcom/shabakaty/downloader/dd4;->O:Landroid/widget/TextView;

    const-string v1, "binding.statusErrorTextSecondary"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/s45;->j(Landroid/view/View;)V

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/utils/StatusView;->getBinding()Lcom/shabakaty/downloader/dd4;

    move-result-object v0

    iget-object v0, v0, Lcom/shabakaty/downloader/dd4;->M:Lcom/facebook/drawee/view/SimpleDraweeView;

    const-string v1, "binding.errorImage"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/s45;->j(Landroid/view/View;)V

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/utils/StatusView;->getBinding()Lcom/shabakaty/downloader/dd4;

    move-result-object v0

    iget-object v0, v0, Lcom/shabakaty/downloader/dd4;->P:Landroid/widget/ProgressBar;

    const-string v1, "binding.statusProgressBar"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/s45;->j(Landroid/view/View;)V

    return-void
.end method
