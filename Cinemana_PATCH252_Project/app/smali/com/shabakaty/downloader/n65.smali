.class public final Lcom/shabakaty/downloader/n65;
.super Landroidx/recyclerview/widget/RecyclerView$r;
.source "WideVerticalVideosView.kt"


# instance fields
.field public final synthetic a:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

# 0: unknown; 1: shown; 2: hidden. Avoid redundant FAB animation requests per frame.
.field private b:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/n65;->a:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$r;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/4 p2, 0x1

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/n65;->a:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;->getOnScrolledToEnd()Lcom/shabakaty/downloader/rm1;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$r;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->K()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->n1(IIZZ)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$m;->Z(Landroid/view/View;)I

    move-result p1

    :goto_0
    if-gez p3, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    const/4 p2, 0x5

    if-le p1, p2, :cond_2

    .line 5
    iget v0, p0, Lcom/shabakaty/downloader/n65;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :goto_1

    iput v1, p0, Lcom/shabakaty/downloader/n65;->b:I

    iget-object p1, p0, Lcom/shabakaty/downloader/n65;->a:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;->getBinding()Lcom/shabakaty/downloader/i65;

    move-result-object p1

    iget-object p1, p1, Lcom/shabakaty/downloader/i65;->M:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->p()V

    goto :goto_1

    .line 6
    :cond_2
    iget v0, p0, Lcom/shabakaty/downloader/n65;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :goto_1

    iput v1, p0, Lcom/shabakaty/downloader/n65;->b:I

    iget-object p1, p0, Lcom/shabakaty/downloader/n65;->a:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;->getBinding()Lcom/shabakaty/downloader/i65;

    move-result-object p1

    iget-object p1, p1, Lcom/shabakaty/downloader/i65;->M:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i()V

    :goto_1
    return-void
.end method
