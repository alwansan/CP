.class public final Lcom/shabakaty/downloader/ez0;
.super Lcom/shabakaty/downloader/ej;
.source "DownloadsCollectionAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ej<",
        "Lcom/shabakaty/downloader/gz0;",
        "Lcom/shabakaty/downloader/p42;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Lcom/shabakaty/downloader/ew0;

.field public final e:Lcom/shabakaty/downloader/jz0;

.field public f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ew0;Lcom/shabakaty/downloader/jz0;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/shabakaty/downloader/ej;-><init>(Ljava/util/List;Lcom/shabakaty/downloader/dj;)V

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/ez0;->d:Lcom/shabakaty/downloader/ew0;

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/ez0;->e:Lcom/shabakaty/downloader/jz0;

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ez0;->f:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/gz0;

    check-cast p2, Lcom/shabakaty/downloader/gz0;

    const-string v0, "oldItem"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p1, Lcom/shabakaty/downloader/gz0;->s:Ljava/lang/String;

    iget-object v1, p2, Lcom/shabakaty/downloader/gz0;->s:Ljava/lang/String;

    .line 4
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/gz0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/shabakaty/downloader/gz0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p1, Lcom/shabakaty/downloader/gz0;->t:Ljava/lang/String;

    iget-object v1, p2, Lcom/shabakaty/downloader/gz0;->t:Ljava/lang/String;

    .line 7
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object p1, p1, Lcom/shabakaty/downloader/gz0;->u:Ljava/util/List;

    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 10
    iget-object p2, p2, Lcom/shabakaty/downloader/gz0;->u:Ljava/util/List;

    .line 11
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public g(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/gz0;

    check-cast p2, Lcom/shabakaty/downloader/gz0;

    const-string v0, "oldItem"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget v0, p1, Lcom/shabakaty/downloader/gz0;->r:I

    iget v1, p2, Lcom/shabakaty/downloader/gz0;->r:I

    if-ne v0, v1, :cond_0

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/gz0;->s:Ljava/lang/String;

    iget-object p2, p2, Lcom/shabakaty/downloader/gz0;->s:Ljava/lang/String;

    .line 5
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getItemId(I)J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ez0;->e:Lcom/shabakaty/downloader/jz0;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/jz0;->g:Landroidx/lifecycle/LiveData;

    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/gz0;

    if-nez p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget p1, p1, Lcom/shabakaty/downloader/gz0;->r:I

    int-to-long v1, p1

    :goto_0
    return-wide v1
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public i(I)I
    .locals 0

    const p1, 0x7f0d0096

    return p1
.end method

.method public j(Lcom/shabakaty/downloader/ej$b;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ej$b<",
            "Lcom/shabakaty/downloader/p42;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/ej;->j(Lcom/shabakaty/downloader/ej$b;I)V

    .line 2
    iget-object v0, p1, Lcom/shabakaty/downloader/ej$b;->a:Landroidx/databinding/ViewDataBinding;

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/p42;

    iget-object v0, v0, Lcom/shabakaty/downloader/p42;->O:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$e;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p1, Lcom/shabakaty/downloader/ej$b;->a:Landroidx/databinding/ViewDataBinding;

    .line 5
    check-cast v0, Lcom/shabakaty/downloader/p42;

    iget-object v0, v0, Lcom/shabakaty/downloader/p42;->O:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/shabakaty/downloader/zv0;

    new-instance v2, Lcom/shabakaty/downloader/ez0$a;

    invoke-direct {v2, p0, p1}, Lcom/shabakaty/downloader/ez0$a;-><init>(Lcom/shabakaty/downloader/ez0;Lcom/shabakaty/downloader/ej$b;)V

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/zv0;-><init>(Lcom/shabakaty/downloader/rm1;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p1, Lcom/shabakaty/downloader/ej$b;->a:Landroidx/databinding/ViewDataBinding;

    .line 7
    check-cast v0, Lcom/shabakaty/downloader/p42;

    iget-object v0, v0, Lcom/shabakaty/downloader/p42;->O:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$e;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ez0;->e:Lcom/shabakaty/downloader/jz0;

    .line 9
    iget-object v0, v0, Lcom/shabakaty/downloader/jz0;->g:Landroidx/lifecycle/LiveData;

    .line 10
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v0, p2}, Lcom/shabakaty/downloader/m50;->c0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/gz0;

    if-nez v0, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    iget-object v0, v0, Lcom/shabakaty/downloader/gz0;->u:Ljava/util/List;

    if-nez v0, :cond_4

    goto :goto_1

    .line 12
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v0, 0x0

    .line 13
    :goto_2
    iget-object v3, p0, Lcom/shabakaty/downloader/ez0;->e:Lcom/shabakaty/downloader/jz0;

    .line 14
    iget-object v3, v3, Lcom/shabakaty/downloader/jz0;->g:Landroidx/lifecycle/LiveData;

    .line 15
    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_6

    goto :goto_6

    :cond_6
    invoke-static {v3, p2}, Lcom/shabakaty/downloader/m50;->c0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/gz0;

    if-nez v3, :cond_7

    goto :goto_6

    .line 16
    :cond_7
    iget-object v3, v3, Lcom/shabakaty/downloader/gz0;->u:Ljava/util/List;

    if-nez v3, :cond_8

    goto :goto_6

    .line 17
    :cond_8
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_4

    .line 18
    :cond_9
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    .line 19
    iget-object v4, v4, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->title:Ljava/lang/String;

    .line 20
    iget-object v5, p0, Lcom/shabakaty/downloader/ez0;->e:Lcom/shabakaty/downloader/jz0;

    .line 21
    iget-object v5, v5, Lcom/shabakaty/downloader/jz0;->g:Landroidx/lifecycle/LiveData;

    .line 22
    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v6, 0x0

    if-nez v5, :cond_b

    goto :goto_3

    :cond_b
    invoke-static {v5, p2}, Lcom/shabakaty/downloader/m50;->c0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/gz0;

    if-nez v5, :cond_c

    goto :goto_3

    .line 23
    :cond_c
    iget-object v5, v5, Lcom/shabakaty/downloader/gz0;->u:Ljava/util/List;

    if-nez v5, :cond_d

    goto :goto_3

    .line 24
    :cond_d
    invoke-static {v5}, Lcom/shabakaty/downloader/m50;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    if-nez v5, :cond_e

    goto :goto_3

    .line 25
    :cond_e
    iget-object v6, v5, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->title:Ljava/lang/String;

    .line 26
    :goto_3
    invoke-static {v4, v6}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const/4 v3, 0x0

    goto :goto_5

    :cond_f
    :goto_4
    const/4 v3, 0x1

    :goto_5
    if-ne v3, v2, :cond_10

    const/4 v3, 0x1

    goto :goto_7

    :cond_10
    :goto_6
    const/4 v3, 0x0

    :goto_7
    if-nez v0, :cond_12

    if-eqz v3, :cond_11

    goto :goto_8

    :cond_11
    const/4 v0, 0x2

    goto :goto_9

    :cond_12
    :goto_8
    const/4 v0, 0x1

    .line 27
    :goto_9
    iget-object v3, p0, Lcom/shabakaty/downloader/ez0;->f:Ljava/util/HashMap;

    if-nez v3, :cond_13

    goto :goto_a

    :cond_13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_14

    goto :goto_a

    :cond_14
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v0, v3, :cond_15

    const/4 v1, 0x1

    :cond_15
    :goto_a
    if-nez v1, :cond_17

    .line 28
    new-instance v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-direct {v1, v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    .line 29
    iget-object p1, p1, Lcom/shabakaty/downloader/ej$b;->a:Landroidx/databinding/ViewDataBinding;

    .line 30
    check-cast p1, Lcom/shabakaty/downloader/p42;

    iget-object p1, p1, Lcom/shabakaty/downloader/p42;->O:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 31
    iget-object p1, p0, Lcom/shabakaty/downloader/ez0;->f:Ljava/util/HashMap;

    if-nez p1, :cond_16

    goto :goto_b

    :cond_16
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    :goto_b
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/ej$b;

    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/ez0;->j(Lcom/shabakaty/downloader/ej$b;I)V

    return-void
.end method
