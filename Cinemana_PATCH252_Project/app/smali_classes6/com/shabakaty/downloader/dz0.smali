.class public final Lcom/shabakaty/downloader/dz0;
.super Lcom/shabakaty/downloader/ej;
.source "DownloadsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ej<",
        "Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;",
        "Lcom/shabakaty/downloader/n42;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qw0;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    invoke-direct {p0, v0, p1}, Lcom/shabakaty/downloader/ej;-><init>(Ljava/util/List;Lcom/shabakaty/downloader/dj;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    check-cast p2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    const-string v0, "oldItem"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->imgThumbObjUrl:Ljava/lang/String;

    iget-object v1, p2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->imgThumbObjUrl:Ljava/lang/String;

    .line 4
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->imgObjUrl:Ljava/lang/String;

    iget-object v1, p2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->imgObjUrl:Ljava/lang/String;

    .line 6
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->id:Ljava/lang/String;

    iget-object v1, p2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->id:Ljava/lang/String;

    .line 8
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->episodeNumber:Ljava/lang/String;

    iget-object v1, p2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->episodeNumber:Ljava/lang/String;

    .line 10
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    iget v0, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->downloadTaskId:I

    iget v1, p2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->downloadTaskId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->path:Ljava/lang/String;

    iget-object v1, p2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->season:Ljava/lang/String;

    iget-object v1, p2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->season:Ljava/lang/String;

    .line 13
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iget p1, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->collectionID:I

    iget p2, p2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->collectionID:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getItemViewType(I)I
    .locals 0

    const p1, 0x7f0d0095

    return p1
.end method

.method public h(Ljava/lang/Object;I)J
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    const-string v0, "item"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->id:Ljava/lang/String;

    int-to-long v0, p2

    .line 4
    invoke-static {p1, v0, v1}, Lcom/shabakaty/downloader/ry4;->y(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public i(I)I
    .locals 0

    const p1, 0x7f0d0095

    return p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/ej$b;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 4
    iget-object v0, p1, Lcom/shabakaty/downloader/ej$b;->a:Landroidx/databinding/ViewDataBinding;

    .line 5
    check-cast v0, Lcom/shabakaty/downloader/n42;

    iget-object v0, v0, Lcom/shabakaty/downloader/n42;->M:Lcom/shabakaty/downloader/views/DownloadButton;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/ej$b;->a:Landroidx/databinding/ViewDataBinding;

    .line 7
    check-cast p1, Lcom/shabakaty/downloader/n42;

    iget-object v0, p1, Lcom/shabakaty/downloader/n42;->M:Lcom/shabakaty/downloader/views/DownloadButton;

    .line 8
    iget-object p1, p1, Lcom/shabakaty/downloader/n42;->S:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->id:Ljava/lang/String;

    .line 10
    :goto_0
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/views/DownloadButton;->setExternalId(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Native98;->bind(Landroid/view/View;)V

    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/ej$b;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 4
    iget-object v0, p1, Lcom/shabakaty/downloader/ej$b;->a:Landroidx/databinding/ViewDataBinding;

    .line 5
    check-cast v0, Lcom/shabakaty/downloader/n42;

    iget-object v0, v0, Lcom/shabakaty/downloader/n42;->M:Lcom/shabakaty/downloader/views/DownloadButton;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/ej$b;->a:Landroidx/databinding/ViewDataBinding;

    .line 7
    check-cast p1, Lcom/shabakaty/downloader/n42;

    iget-object v0, p1, Lcom/shabakaty/downloader/n42;->M:Lcom/shabakaty/downloader/views/DownloadButton;

    .line 8
    iget-object p1, p1, Lcom/shabakaty/downloader/n42;->S:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;->id:Ljava/lang/String;

    .line 10
    :goto_0
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/views/DownloadButton;->setExternalId(Ljava/lang/String;)V

    return-void
.end method
