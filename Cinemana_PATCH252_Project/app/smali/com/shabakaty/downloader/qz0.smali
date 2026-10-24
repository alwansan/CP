.class public final Lcom/shabakaty/downloader/qz0;
.super Lcom/shabakaty/downloader/bp0;
.source "DownloadsFragment.kt"


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/pz0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/pz0;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/qz0;->r:Lcom/shabakaty/downloader/pz0;

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/bp0;-><init>()V

    return-void
.end method


# virtual methods
.method public p0(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qz0;->r:Lcom/shabakaty/downloader/pz0;

    sget v1, Lcom/shabakaty/downloader/pz0;->x:I

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/gj1;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/gj1;->N:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 5
    :cond_0
    iget v2, p1, Lcom/google/android/material/tabs/TabLayout$f;->d:I

    .line 6
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/qz0;->r:Lcom/shabakaty/downloader/pz0;

    .line 8
    iget-object v2, v0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 9
    check-cast v2, Lcom/shabakaty/downloader/gj1;

    iget-object v2, v2, Lcom/shabakaty/downloader/gj1;->M:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v2}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x1

    if-nez p1, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    iget v4, p1, Lcom/google/android/material/tabs/TabLayout$f;->d:I

    if-ne v4, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 11
    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x96

    .line 12
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 13
    new-instance v2, Lcom/shabakaty/downloader/da4;

    invoke-direct {v2, v0, p1}, Lcom/shabakaty/downloader/da4;-><init>(Lcom/shabakaty/downloader/pz0;Lcom/google/android/material/tabs/TabLayout$f;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
