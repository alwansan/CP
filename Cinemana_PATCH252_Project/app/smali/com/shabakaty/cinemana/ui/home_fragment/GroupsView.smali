.class public final Lcom/shabakaty/cinemana/ui/home_fragment/GroupsView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "GroupsView.kt"

# interfaces
.implements Lcom/shabakaty/downloader/z25;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u00012\u00020\u0002J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R$\u0010\r\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001d\u0010\u0013\u001a\u00020\u000e8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/shabakaty/cinemana/ui/home_fragment/GroupsView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Lcom/shabakaty/downloader/z25;",
        "listener",
        "Lcom/shabakaty/downloader/qv4;",
        "setGroupsListener",
        "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$BottomGroups;",
        "K",
        "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$BottomGroups;",
        "getGroups",
        "()Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$BottomGroups;",
        "setGroups",
        "(Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$BottomGroups;)V",
        "groups",
        "Lcom/shabakaty/downloader/dr1;",
        "binding$delegate",
        "Lcom/shabakaty/downloader/kf2;",
        "getBinding",
        "()Lcom/shabakaty/downloader/dr1;",
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
.field public final J:Lcom/shabakaty/downloader/kf2;

.field public K:Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$BottomGroups;

.field public L:Lcom/shabakaty/downloader/z25;

.field public M:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p2, Lcom/shabakaty/downloader/cr1;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/cr1;-><init>(Lcom/shabakaty/cinemana/ui/home_fragment/GroupsView;)V

    invoke-static {p2}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/cinemana/ui/home_fragment/GroupsView;->J:Lcom/shabakaty/downloader/kf2;

    const/4 p2, 0x5

    .line 4
    iput p2, p0, Lcom/shabakaty/cinemana/ui/home_fragment/GroupsView;->M:I

    .line 5
    invoke-direct {p0}, Lcom/shabakaty/cinemana/ui/home_fragment/GroupsView;->getBinding()Lcom/shabakaty/downloader/dr1;

    move-result-object p2

    iget-object p2, p2, Lcom/shabakaty/downloader/dr1;->N:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/shabakaty/downloader/br1;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/br1;-><init>(Lcom/shabakaty/downloader/z25;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 6
    invoke-direct {p0}, Lcom/shabakaty/cinemana/ui/home_fragment/GroupsView;->getBinding()Lcom/shabakaty/downloader/dr1;

    move-result-object p2

    iget-object p2, p2, Lcom/shabakaty/downloader/dr1;->O:Lcom/google/android/material/button/MaterialButton;

    new-instance v0, Lcom/shabakaty/downloader/ig4;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/ig4;-><init>(Lcom/shabakaty/cinemana/ui/home_fragment/GroupsView;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final getBinding()Lcom/shabakaty/downloader/dr1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_fragment/GroupsView;->J:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/dr1;

    return-object v0
.end method

.method public static t(Lcom/shabakaty/cinemana/ui/home_fragment/GroupsView;Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    const-string p2, "this$0"

    .line 1
    invoke-static {p0, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$context"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget p2, p0, Lcom/shabakaty/cinemana/ui/home_fragment/GroupsView;->M:I

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/shabakaty/cinemana/ui/home_fragment/GroupsView;->getBinding()Lcom/shabakaty/downloader/dr1;

    move-result-object p2

    iget-object p2, p2, Lcom/shabakaty/downloader/dr1;->O:Lcom/google/android/material/button/MaterialButton;

    const v0, 0x7f12024c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/shabakaty/cinemana/ui/home_fragment/GroupsView;->getBinding()Lcom/shabakaty/downloader/dr1;

    move-result-object p2

    iget-object p2, p2, Lcom/shabakaty/downloader/dr1;->O:Lcom/google/android/material/button/MaterialButton;

    const v1, 0x7f12024b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :goto_0
    iput v0, p0, Lcom/shabakaty/cinemana/ui/home_fragment/GroupsView;->M:I

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ui/home_fragment/GroupsView;->u()V

    return-void
.end method


# virtual methods
.method public M0(Lcom/shabakaty/cinemana/domain/models/local/home_page/VideosGroup;)V
    .locals 1

    const-string v0, "group"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_fragment/GroupsView;->L:Lcom/shabakaty/downloader/z25;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/z25;->M0(Lcom/shabakaty/cinemana/domain/models/local/home_page/VideosGroup;)V

    :goto_0
    return-void
.end method

.method public final getGroups()Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$BottomGroups;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_fragment/GroupsView;->K:Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$BottomGroups;

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shabakaty/cinemana/ui/home_fragment/GroupsView;->L:Lcom/shabakaty/downloader/z25;

    return-void
.end method

.method public final setGroups(Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$BottomGroups;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/cinemana/ui/home_fragment/GroupsView;->K:Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$BottomGroups;

    return-void
.end method

.method public final setGroupsListener(Lcom/shabakaty/downloader/z25;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/shabakaty/cinemana/ui/home_fragment/GroupsView;->L:Lcom/shabakaty/downloader/z25;

    return-void
.end method

.method public final u()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_fragment/GroupsView;->K:Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$BottomGroups;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$BottomGroups;->groups:Ljava/util/List;

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 4
    invoke-static {p0}, Lcom/shabakaty/downloader/s45;->l(Landroid/view/View;)V

    .line 5
    invoke-direct {p0}, Lcom/shabakaty/cinemana/ui/home_fragment/GroupsView;->getBinding()Lcom/shabakaty/downloader/dr1;

    move-result-object v0

    iget-object v0, v0, Lcom/shabakaty/downloader/dr1;->N:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "binding.homePageGroupsRecycler"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/shabakaty/cinemana/ui/home_fragment/GroupsView;->K:Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$BottomGroups;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    move-object v1, v2

    goto :goto_2

    .line 6
    :cond_3
    iget-object v1, v1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$BottomGroups;->groups:Ljava/util/List;

    .line 7
    :goto_2
    iget v3, p0, Lcom/shabakaty/cinemana/ui/home_fragment/GroupsView;->M:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v0, v1, v3, v2, v4}, Lcom/shabakaty/downloader/fo3;->b(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;Ljava/lang/Integer;Lcom/shabakaty/downloader/tj$a;I)V

    goto :goto_3

    .line 8
    :cond_4
    invoke-static {p0}, Lcom/shabakaty/downloader/s45;->j(Landroid/view/View;)V

    :goto_3
    return-void
.end method
