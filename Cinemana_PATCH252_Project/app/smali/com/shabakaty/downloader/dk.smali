.class public final synthetic Lcom/shabakaty/downloader/dk;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/navigation/NavController$b;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ek;

.field public final synthetic s:Landroid/view/View;

.field public final synthetic t:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/ek;Landroid/view/View;Landroidx/appcompat/widget/Toolbar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/dk;->r:Lcom/shabakaty/downloader/ek;

    iput-object p2, p0, Lcom/shabakaty/downloader/dk;->s:Landroid/view/View;

    iput-object p3, p0, Lcom/shabakaty/downloader/dk;->t:Landroidx/appcompat/widget/Toolbar;

    return-void
.end method


# virtual methods
.method public final k(Landroidx/navigation/NavController;Landroidx/navigation/c;Landroid/os/Bundle;)V
    .locals 5

    iget-object p1, p0, Lcom/shabakaty/downloader/dk;->r:Lcom/shabakaty/downloader/ek;

    iget-object p3, p0, Lcom/shabakaty/downloader/dk;->s:Landroid/view/View;

    iget-object v0, p0, Lcom/shabakaty/downloader/dk;->t:Landroidx/appcompat/widget/Toolbar;

    sget v1, Lcom/shabakaty/downloader/ek;->x:I

    const-string v1, "this$0"

    .line 1
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$view"

    invoke-static {p3, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$this_setOnDestinationChanged"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "destination"

    invoke-static {p2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lcom/shabakaty/downloader/ji1;

    move-result-object v1

    instance-of v2, v1, Lcom/shabakaty/downloader/eu1;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lcom/shabakaty/downloader/eu1;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Lcom/shabakaty/downloader/eu1;->J0()V

    .line 3
    :goto_1
    iget-object v1, p1, Lcom/shabakaty/downloader/ek;->v:Lcom/google/android/material/appbar/AppBarLayout;

    const-string v2, "view.findViewWithTag(appBarTag)"

    if-nez v1, :cond_2

    .line 4
    iget-object v1, p1, Lcom/shabakaty/downloader/ek;->t:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v1}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout;

    :cond_2
    const/4 v4, 0x1

    .line 6
    invoke-virtual {v1, v4, v4, v4}, Lcom/google/android/material/appbar/AppBarLayout;->e(ZZZ)V

    .line 7
    iget-object v1, p1, Lcom/shabakaty/downloader/ek;->v:Lcom/google/android/material/appbar/AppBarLayout;

    if-nez v1, :cond_3

    .line 8
    iget-object v1, p1, Lcom/shabakaty/downloader/ek;->t:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v1}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p3

    invoke-static {p3, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p3

    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout;

    .line 10
    :cond_3
    iget p3, p2, Landroidx/navigation/c;->t:I

    const/16 v2, 0xc1d

    if-eq p3, v2, :cond_5

    const/16 v2, 0xc1e

    if-eq p3, v2, :cond_5

    const/16 v2, 0x836

    if-ne p3, v2, :cond_4

    goto :goto_2

    .line 11
    :cond_4
    invoke-static {v1}, Lcom/shabakaty/downloader/s45;->l(Landroid/view/View;)V

    goto :goto_3

    .line 12
    :cond_5
    :goto_2
    invoke-static {v1}, Lcom/shabakaty/downloader/s45;->j(Landroid/view/View;)V

    .line 13
    :goto_3
    iget-object p3, p1, Lcom/shabakaty/downloader/ek;->r:Ljava/util/Set;

    .line 14
    iget p2, p2, Landroidx/navigation/c;->t:I

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 16
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 17
    invoke-virtual {v0, p2, p2}, Landroidx/appcompat/widget/Toolbar;->u(II)V

    .line 18
    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/Toolbar;->setContentInsetStartWithNavigation(I)V

    .line 19
    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/Toolbar;->setTitleMarginStart(I)V

    .line 20
    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/Toolbar;->setTitleMarginEnd(I)V

    goto :goto_4

    :cond_6
    const p2, 0x7f08014f

    .line 21
    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/Toolbar;->setLogo(I)V

    const/16 p2, 0xc

    .line 22
    invoke-static {p2}, Lcom/shabakaty/downloader/kf5;->e(I)I

    move-result p3

    invoke-static {p2}, Lcom/shabakaty/downloader/kf5;->e(I)I

    move-result v1

    invoke-virtual {v0, p3, v1}, Landroidx/appcompat/widget/Toolbar;->u(II)V

    .line 23
    invoke-static {p2}, Lcom/shabakaty/downloader/kf5;->e(I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/Toolbar;->setContentInsetStartWithNavigation(I)V

    const/16 p2, 0x18

    .line 24
    invoke-static {p2}, Lcom/shabakaty/downloader/kf5;->e(I)I

    move-result p3

    invoke-virtual {v0, p3}, Landroidx/appcompat/widget/Toolbar;->setTitleMarginStart(I)V

    .line 25
    invoke-static {p2}, Lcom/shabakaty/downloader/kf5;->e(I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/Toolbar;->setTitleMarginEnd(I)V

    .line 26
    :goto_4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lcom/shabakaty/downloader/ji1;

    move-result-object p2

    if-nez p2, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {p2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    :goto_5
    if-nez v3, :cond_8

    new-instance v3, Landroid/view/View;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    :cond_8
    invoke-static {v3}, Lcom/shabakaty/downloader/wt2;->i(Landroid/view/View;)V

    return-void
.end method
