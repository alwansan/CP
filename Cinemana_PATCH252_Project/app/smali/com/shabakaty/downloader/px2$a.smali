.class public Lcom/shabakaty/downloader/px2$a;
.super Ljava/lang/Object;
.source "NavigationBarView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/px2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/px2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/px2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/px2$a;->r:Lcom/shabakaty/downloader/px2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/e;Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/px2$a;->r:Lcom/shabakaty/downloader/px2;

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/px2;->x:Lcom/shabakaty/downloader/px2$b;

    const/4 v0, 0x1

    const-string v1, "this$0"

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    iget-object v3, p0, Lcom/shabakaty/downloader/px2$a;->r:Lcom/shabakaty/downloader/px2;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/px2;->getSelectedItemId()I

    move-result v3

    if-ne p1, v3, :cond_1

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/px2$a;->r:Lcom/shabakaty/downloader/px2;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/px2;->x:Lcom/shabakaty/downloader/px2$b;

    .line 6
    check-cast p1, Lcom/shabakaty/downloader/gx2;

    iget-object p1, p1, Lcom/shabakaty/downloader/gx2;->a:Lcom/shabakaty/downloader/hx2;

    .line 7
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ji1;->getSupportFragmentManager()Landroidx/fragment/app/q;

    move-result-object p1

    .line 9
    iget-object p1, p1, Landroidx/fragment/app/q;->u:Landroidx/fragment/app/Fragment;

    const-string p2, "null cannot be cast to non-null type com.shabakaty.cinemana.ui.base.BaseRootFragment"

    .line 10
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/ek;

    .line 11
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 12
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Lcom/shabakaty/downloader/ji1;

    move-result-object p2

    const-string v1, "requireActivity()"

    invoke-static {p2, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ek;->Y1()I

    move-result p1

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/kl3;->c(Landroid/app/Activity;I)Landroidx/navigation/NavController;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroidx/navigation/NavController;->g()Landroidx/navigation/d;

    move-result-object p2

    .line 14
    iget p2, p2, Landroidx/navigation/d;->A:I

    .line 15
    invoke-virtual {p1, p2, v2}, Landroidx/navigation/NavController;->m(IZ)Z

    :cond_0
    return v0

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/px2$a;->r:Lcom/shabakaty/downloader/px2;

    .line 17
    iget-object p1, p1, Lcom/shabakaty/downloader/px2;->w:Lcom/shabakaty/downloader/px2$c;

    if-eqz p1, :cond_8

    .line 18
    check-cast p1, Lcom/shabakaty/downloader/gx2;

    iget-object p1, p1, Lcom/shabakaty/downloader/gx2;->a:Lcom/shabakaty/downloader/hx2;

    .line 19
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "item"

    invoke-static {p2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v1, 0x7f0a0306

    if-ne p2, v1, :cond_2

    .line 21
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/hx2;->v0(Z)V

    goto :goto_0

    .line 22
    :cond_2
    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/hx2;->v0(Z)V

    :goto_0
    const v0, 0x7f0a0305

    if-ne p2, v0, :cond_3

    .line 23
    invoke-virtual {p1}, Lcom/shabakaty/downloader/hx2;->k0()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 24
    :cond_3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/hx2;->k0()Ljava/util/Stack;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 25
    invoke-virtual {p1}, Lcom/shabakaty/downloader/hx2;->k0()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p2, :cond_6

    .line 26
    :goto_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/hx2;->k0()Ljava/util/Stack;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 27
    invoke-virtual {p1}, Lcom/shabakaty/downloader/hx2;->k0()Ljava/util/Stack;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 28
    :cond_5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/hx2;->k0()Ljava/util/Stack;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_6
    :goto_2
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/hx2;->q0(I)V

    .line 30
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/hx2;->u0(I)V

    .line 31
    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_7

    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    :cond_7
    invoke-static {p2}, Lcom/shabakaty/downloader/wt2;->i(Landroid/view/View;)V

    :cond_8
    return v2
.end method

.method public b(Landroidx/appcompat/view/menu/e;)V
    .locals 0

    return-void
.end method
