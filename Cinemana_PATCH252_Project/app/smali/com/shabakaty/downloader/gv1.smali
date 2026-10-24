.class public final Lcom/shabakaty/downloader/gv1;
.super Landroidx/recyclerview/widget/RecyclerView$r;
.source "HorizontalScrollVideosView.kt"


# instance fields
.field public final synthetic a:Lcom/shabakaty/cinemana/ui/home_fragment/HorizontalScrollVideosView;

.field public final synthetic b:Landroidx/recyclerview/widget/LinearLayoutManager;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/ui/home_fragment/HorizontalScrollVideosView;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/gv1;->a:Lcom/shabakaty/cinemana/ui/home_fragment/HorizontalScrollVideosView;

    iput-object p2, p0, Lcom/shabakaty/downloader/gv1;->b:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/gv1;->a:Lcom/shabakaty/cinemana/ui/home_fragment/HorizontalScrollVideosView;

    invoke-static {p1}, Lcom/shabakaty/cinemana/ui/home_fragment/HorizontalScrollVideosView;->t(Lcom/shabakaty/cinemana/ui/home_fragment/HorizontalScrollVideosView;)Lcom/shabakaty/downloader/cv1;

    move-result-object p1

    iget-object p1, p1, Lcom/shabakaty/downloader/cv1;->N:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$e;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$e;->getItemCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 3
    :goto_1
    iget-object p3, p0, Lcom/shabakaty/downloader/gv1;->b:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez p3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->k1()I

    move-result p2

    :goto_2
    if-ne p2, p1, :cond_4

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/gv1;->a:Lcom/shabakaty/cinemana/ui/home_fragment/HorizontalScrollVideosView;

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ui/home_fragment/HorizontalScrollVideosView;->getOnScrolledToEnd()Lcom/shabakaty/downloader/rm1;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {p1}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    :cond_4
    :goto_3
    return-void
.end method
