.class public final Lcom/shabakaty/downloader/gv1;
.super Landroidx/recyclerview/widget/RecyclerView$r;
.source "HorizontalScrollVideosView.kt"


# instance fields
.field public final synthetic a:Lcom/shabakaty/cinemana/ui/home_fragment/HorizontalScrollVideosView;

.field public final synthetic b:Landroidx/recyclerview/widget/LinearLayoutManager;

# Last end-of-list position already delivered to the pagination callback.
.field private c:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/ui/home_fragment/HorizontalScrollVideosView;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 1

    iput-object p1, p0, Lcom/shabakaty/downloader/gv1;->a:Lcom/shabakaty/cinemana/ui/home_fragment/HorizontalScrollVideosView;

    iput-object p2, p0, Lcom/shabakaty/downloader/gv1;->b:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/shabakaty/downloader/gv1;->c:I

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {v0, p2}, Lcom/shabakaty/cinemana/local/UiPerfDiag;->scroll(II)V

    # Avoid allocating boxed integers and firing pagination on every pixel at the edge.
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$e;

    move-result-object v0

    if-eqz v0, :perf_done

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->getItemCount()I

    move-result v0

    if-lez v0, :perf_done

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/shabakaty/downloader/gv1;->b:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :perf_done

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->k1()I

    move-result v1

    if-ne v1, v0, :perf_reset

    iget v1, p0, Lcom/shabakaty/downloader/gv1;->c:I

    if-eq v1, v0, :perf_done

    iget-object v1, p0, Lcom/shabakaty/downloader/gv1;->a:Lcom/shabakaty/cinemana/ui/home_fragment/HorizontalScrollVideosView;

    invoke-virtual {v1}, Lcom/shabakaty/cinemana/ui/home_fragment/HorizontalScrollVideosView;->getOnScrolledToEnd()Lcom/shabakaty/downloader/rm1;

    move-result-object v1

    if-eqz v1, :perf_done

    iput v0, p0, Lcom/shabakaty/downloader/gv1;->c:I

    const-string v0, "pagination"

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/UiPerfDiag;->mark(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    goto :perf_done

    :perf_reset
    const/4 v0, -0x1

    iput v0, p0, Lcom/shabakaty/downloader/gv1;->c:I

    :perf_done
    return-void
.end method
