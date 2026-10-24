.class public final Lcom/shabakaty/downloader/fo3;
.super Ljava/lang/Object;
.source "RecyclerViewBindingAdapters.kt"


# direct methods
.method public static final a(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;Ljava/lang/Integer;Lcom/shabakaty/downloader/tj$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ljava/util/List<",
            "+TT;>;",
            "Ljava/lang/Integer;",
            "Lcom/shabakaty/downloader/tj$a;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$e;

    move-result-object p0

    .line 2
    instance-of v0, p0, Landroidx/recyclerview/widget/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p3, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    move-object v0, p0

    check-cast v0, Landroidx/recyclerview/widget/g;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/g;->f()Ljava/util/List;

    move-result-object v0

    const-string v2, "adapter as ConcatAdapter).adapters"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/m50;->c0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/shabakaty/downloader/w93;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/shabakaty/downloader/w93;

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    goto :goto_1

    .line 4
    :cond_3
    invoke-static {p3}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 5
    invoke-virtual {v0, p3}, Lcom/shabakaty/downloader/ej;->e(Ljava/util/List;)V

    .line 6
    :goto_1
    check-cast p0, Landroidx/recyclerview/widget/g;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/g;->f()Ljava/util/List;

    move-result-object p0

    const-string p3, "adapter.adapters"

    invoke-static {p0, p3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-static {p0, p3}, Lcom/shabakaty/downloader/m50;->c0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    .line 7
    :cond_4
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$e;

    if-nez p0, :cond_5

    goto :goto_2

    .line 8
    :cond_5
    instance-of p3, p0, Lcom/shabakaty/downloader/ej;

    if-eqz p3, :cond_6

    move-object v1, p0

    check-cast v1, Lcom/shabakaty/downloader/ej;

    :cond_6
    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    if-eqz p2, :cond_8

    .line 9
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-le p0, p3, :cond_8

    .line 10
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lcom/shabakaty/downloader/m50;->u0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    .line 11
    :cond_8
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/ej;->e(Ljava/util/List;)V

    :goto_2
    return-void
.end method

.method public static synthetic b(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;Ljava/lang/Integer;Lcom/shabakaty/downloader/tj$a;I)V
    .locals 0

    and-int/lit8 p3, p4, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_0
    const/4 p3, 0x0

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/shabakaty/downloader/fo3;->a(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;Ljava/lang/Integer;Lcom/shabakaty/downloader/tj$a;)V

    return-void
.end method

.method public static final c(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "recycler"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p0

    instance-of v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/recyclerview/widget/GridLayoutManager;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->P1(I)V

    :goto_2
    return-void
.end method
