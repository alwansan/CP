.class public final Lcom/shabakaty/downloader/d41;
.super Lcom/shabakaty/downloader/ej;
.source "EpisodesAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ej<",
        "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
        "Lcom/shabakaty/downloader/w52;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Lcom/shabakaty/downloader/c41;

.field public e:Ljava/lang/String;

.field public f:Lcom/shabakaty/downloader/se0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/c41;Ljava/lang/String;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedId"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    invoke-direct {p0, v0, p1}, Lcom/shabakaty/downloader/ej;-><init>(Ljava/util/List;Lcom/shabakaty/downloader/dj;)V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/d41;->d:Lcom/shabakaty/downloader/c41;

    iput-object p2, p0, Lcom/shabakaty/downloader/d41;->e:Ljava/lang/String;

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    check-cast p2, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    const-string v0, "oldItem"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    iget-object p2, p2, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 4
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public g(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .line 1
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    check-cast p2, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    const-string v0, "oldItem"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newItem"

    invoke-static {p2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    iget-object v1, p2, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 5
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 6
    iget-object v0, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->status:Lcom/shabakaty/downloader/q25;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/q25;->hashCode()I

    move-result v0

    .line 8
    :goto_0
    iget-object v2, p2, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->status:Lcom/shabakaty/downloader/q25;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v2}, Lcom/shabakaty/downloader/q25;->hashCode()I

    move-result v2

    :goto_1
    if-ne v0, v2, :cond_4

    .line 10
    iget-object v0, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->status:Lcom/shabakaty/downloader/q25;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    move-object v0, v2

    goto :goto_2

    .line 11
    :cond_2
    iget-boolean v0, v0, Lcom/shabakaty/downloader/q25;->s:Z

    .line 12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 13
    :goto_2
    iget-object v3, p2, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->status:Lcom/shabakaty/downloader/q25;

    if-nez v3, :cond_3

    goto :goto_3

    .line 14
    :cond_3
    iget-boolean v2, v3, Lcom/shabakaty/downloader/q25;->s:Z

    .line 15
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_3
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    iget-boolean p1, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->isDownloading:Z

    iget-boolean p2, p2, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->isDownloading:Z

    if-ne p1, p2, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public h(Ljava/lang/Object;I)J
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    const-string v0, "item"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    int-to-long v0, p2

    .line 4
    invoke-static {p1, v0, v1}, Lcom/shabakaty/downloader/ry4;->y(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public i(I)I
    .locals 0

    const p1, 0x7f0d00aa

    return p1
.end method

.method public j(Lcom/shabakaty/downloader/ej$b;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ej$b<",
            "Lcom/shabakaty/downloader/w52;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/ej;->j(Lcom/shabakaty/downloader/ej$b;I)V

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/ej$b;->a:Landroidx/databinding/ViewDataBinding;

    .line 3
    check-cast p1, Lcom/shabakaty/downloader/w52;

    invoke-static {p0, p1, p2}, Lcom/shabakaty/cinemana/ca1/Ui7;->nativeCard(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p2, p0, Lcom/shabakaty/downloader/d41;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/w52;->G(Ljava/lang/String;)V

    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d41;->f:Lcom/shabakaty/downloader/se0;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/hu0;->b:Lcom/shabakaty/downloader/pe0;

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/nh3;->b(Lcom/shabakaty/downloader/me0;)Lcom/shabakaty/downloader/se0;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/d41;->f:Lcom/shabakaty/downloader/se0;

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/ej$b;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/ej;->j(Lcom/shabakaty/downloader/ej$b;I)V

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/ej$b;->a:Landroidx/databinding/ViewDataBinding;

    .line 5
    check-cast p1, Lcom/shabakaty/downloader/w52;

    iget-object p2, p0, Lcom/shabakaty/downloader/d41;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/w52;->G(Ljava/lang/String;)V

    return-void
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d41;->f:Lcom/shabakaty/downloader/se0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/nh3;->e(Lcom/shabakaty/downloader/se0;Ljava/util/concurrent/CancellationException;I)V

    .line 2
    :goto_0
    iput-object v1, p0, Lcom/shabakaty/downloader/d41;->f:Lcom/shabakaty/downloader/se0;

    .line 3
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/ej$b;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p1, Lcom/shabakaty/downloader/ej$b;->a:Landroidx/databinding/ViewDataBinding;

    .line 4
    check-cast v0, Lcom/shabakaty/downloader/w52;

    iget-object v0, v0, Lcom/shabakaty/downloader/w52;->M:Lcom/shabakaty/downloader/views/DownloadButton;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/views/DownloadButton;->e()V

    .line 5
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    return-void
.end method
