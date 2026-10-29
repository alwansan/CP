.class public abstract Lcom/shabakaty/downloader/ej;
.super Landroidx/recyclerview/widget/RecyclerView$e;
.source "BaseDataItemsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ej$b;,
        Lcom/shabakaty/downloader/ej$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Landroidx/databinding/ViewDataBinding;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$e<",
        "Lcom/shabakaty/downloader/ej$b<",
        "TB;>;>;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public b:Lcom/shabakaty/downloader/dj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/dj<",
            "TT;>;"
        }
    .end annotation
.end field

.field public c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/shabakaty/downloader/dj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;",
            "Lcom/shabakaty/downloader/dj<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>()V

    .line 2
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->transform(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ej;->a:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/ej;->b:Lcom/shabakaty/downloader/dj;

    return-void
.end method


# virtual methods
.method public e(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->transform(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    # Skip the synchronous DiffUtil calculation when transformed content is unchanged.
    # List equality is linear, whereas the full diff and dispatch can be substantially heavier.
    iget-object v0, p0, Lcom/shabakaty/downloader/ej;->a:Ljava/util/List;

    if-eq v0, p1, :perf_skip_diff

    if-eqz v0, :perf_calculate_diff

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :perf_skip_diff

    :perf_calculate_diff

    invoke-static {}, Lcom/shabakaty/cinemana/local/UiPerfDiag;->begin()J

    move-result-wide v2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ej$c;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/ej$c;-><init>(Lcom/shabakaty/downloader/ej;Ljava/util/List;)V

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/j;->b(Landroidx/recyclerview/widget/j$b;Z)Landroidx/recyclerview/widget/j$d;

    move-result-object v0

    invoke-static {v2, v3}, Lcom/shabakaty/cinemana/local/UiPerfDiag;->diff(J)V

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/ej;->a:Ljava/util/List;

    .line 4
    new-instance p1, Landroidx/recyclerview/widget/b;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/b;-><init>(Landroidx/recyclerview/widget/RecyclerView$e;)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/j$d;->a(Lcom/shabakaty/downloader/ni2;)V

    goto :perf_no_change

    :perf_skip_diff
    invoke-static {}, Lcom/shabakaty/cinemana/local/UiPerfDiag;->skippedDiff()V

    :perf_no_change
    return-void
.end method

.method public f(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public g(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ej;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ej;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/ej;->h(Ljava/lang/Object;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public h(Ljava/lang/Object;I)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)J"
        }
    .end annotation

    .line 1
    invoke-super {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$e;->getItemId(I)J

    move-result-wide p1

    return-wide p1
.end method

.method public abstract i(I)I
.end method

.method public j(Lcom/shabakaty/downloader/ej$b;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ej$b<",
            "TB;>;I)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/ej$b;->a:Landroidx/databinding/ViewDataBinding;

    const/16 v1, 0xb

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/ej;->a:Ljava/util/List;

    invoke-static {v2, p2}, Lcom/shabakaty/downloader/m50;->c0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroidx/databinding/ViewDataBinding;->D(ILjava/lang/Object;)Z

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/ej$b;->a:Landroidx/databinding/ViewDataBinding;

    const/4 p2, 0x3

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/ej;->b:Lcom/shabakaty/downloader/dj;

    invoke-virtual {p1, p2, v0}, Landroidx/databinding/ViewDataBinding;->D(ILjava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/ej$b;

    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/ej;->j(Lcom/shabakaty/downloader/ej$b;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 3

    const-string v0, "parent"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ej$b;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/ej;->c:Landroid/view/LayoutInflater;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 4
    iput-object v1, p0, Lcom/shabakaty/downloader/ej;->c:Landroid/view/LayoutInflater;

    const-string v2, "from(view.context).also \u2026\t\tlayoutInflater = it\n\t\t}"

    .line 5
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/ej;->i(I)I

    move-result p2

    const/4 v2, 0x0

    invoke-static {v1, p2, p1, v2}, Lcom/shabakaty/downloader/hl0;->b(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string p2, "inflate(inflater, getLay\u2026viewType), parent, false)"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/ej$b;-><init>(Landroidx/databinding/ViewDataBinding;)V

    return-object v0
.end method
