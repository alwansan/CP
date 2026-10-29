.class public final Lcom/shabakaty/cinemana/ca1/NuvioPosterDiff;
.super Ljava/lang/Object;
.source "NuvioPosterDiff.java"

# Initialize a poster adapter's AsyncListDiffer with its existing initial list.
# This preserves the existing stable IDs and means a recycled adapter can
# receive a new list without dispatching changes against an empty baseline.
.method public static init(Lcom/shabakaty/downloader/jj;)V
    .locals 7
    new-instance v0, Lcom/shabakaty/cinemana/ca1/NuvioPosterItemCallback;
    invoke-direct {v0, p0}, Lcom/shabakaty/cinemana/ca1/NuvioPosterItemCallback;-><init>(Lcom/shabakaty/downloader/jj;)V

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/NuvioHomeDiff;->executor()Ljava/util/concurrent/Executor;
    move-result-object v1

    new-instance v2, Landroidx/recyclerview/widget/c;
    const/4 v3, 0x0
    invoke-direct {v2, v3, v1, v0}, Landroidx/recyclerview/widget/c;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroidx/recyclerview/widget/j$e;)V

    new-instance v4, Lcom/shabakaty/cinemana/ca1/NuvioPosterUpdateCallback;
    invoke-direct {v4, p0}, Lcom/shabakaty/cinemana/ca1/NuvioPosterUpdateCallback;-><init>(Lcom/shabakaty/downloader/jj;)V

    new-instance v5, Landroidx/recyclerview/widget/e;
    invoke-direct {v5, v4, v2}, Landroidx/recyclerview/widget/e;-><init>(Lcom/shabakaty/downloader/ni2;Landroidx/recyclerview/widget/c;)V
    iput-object v5, p0, Lcom/shabakaty/downloader/jj;->d:Landroidx/recyclerview/widget/e;

    iget-object v0, p0, Lcom/shabakaty/downloader/ej;->a:Ljava/util/List;
    new-instance v1, Ljava/util/ArrayList;
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    iput-object v1, v5, Landroidx/recyclerview/widget/e;->e:Ljava/util/List;
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    move-result-object v6
    iput-object v6, v5, Landroidx/recyclerview/widget/e;->f:Ljava/util/List;
    iput-object v6, p0, Lcom/shabakaty/downloader/ej;->a:Ljava/util/List;
    return-void
.end method

# Called by jj.e on main; collection is copied before worker scheduling.
# Each AsyncListDiffer owns a monotonically increasing generation fence.
.method public static submit(Lcom/shabakaty/downloader/jj;Ljava/util/List;)V
    .locals 14
    if-eqz p1, :done
    iget-object v0, p0, Lcom/shabakaty/downloader/jj;->d:Landroidx/recyclerview/widget/e;
    new-instance v1, Ljava/util/ArrayList;
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, v0, Landroidx/recyclerview/widget/e;->e:Ljava/util/List;
    iget v3, v0, Landroidx/recyclerview/widget/e;->g:I
    add-int/lit8 v3, v3, 0x1
    iput v3, v0, Landroidx/recyclerview/widget/e;->g:I

    invoke-interface {v1}, Ljava/util/List;->size()I
    move-result v4
    const/4 v5, 0x0
    if-eqz v2, :instant
    invoke-interface {v2}, Ljava/util/List;->size()I
    move-result v5
    if-eqz v5, :instant
    if-eqz v4, :instant

    # Six-argument constructor includes receiver; use invoke-direct/range.
    new-instance v8, Landroidx/recyclerview/widget/d;
    move-object v9, v0
    move-object v10, v2
    move-object v11, v1
    move v12, v3
    new-instance v13, Lcom/shabakaty/cinemana/ca1/NuvioPosterCommit;
    invoke-direct {v13, p0}, Lcom/shabakaty/cinemana/ca1/NuvioPosterCommit;-><init>(Lcom/shabakaty/downloader/jj;)V
    invoke-direct/range {v8 .. v13}, Landroidx/recyclerview/widget/d;-><init>(Landroidx/recyclerview/widget/e;Ljava/util/List;Ljava/util/List;ILjava/lang/Runnable;)V
    iget-object v7, v0, Landroidx/recyclerview/widget/e;->b:Landroidx/recyclerview/widget/c;
    iget-object v7, v7, Landroidx/recyclerview/widget/c;->a:Ljava/util/concurrent/Executor;
    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    return-void

    # Immediate initial/empty-list path with matching range notifications.
    :instant
    iget-object v6, v0, Landroidx/recyclerview/widget/e;->f:Ljava/util/List;
    iput-object v1, v0, Landroidx/recyclerview/widget/e;->e:Ljava/util/List;
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    move-result-object v1
    iput-object v1, v0, Landroidx/recyclerview/widget/e;->f:Ljava/util/List;
    iput-object v1, p0, Lcom/shabakaty/downloader/ej;->a:Ljava/util/List;
    const/4 v7, 0x0
    if-eqz v5, :no_remove
    invoke-virtual {p0, v7, v5}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemRangeRemoved(II)V
    :no_remove
    if-eqz v4, :no_insert
    invoke-virtual {p0, v7, v4}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemRangeInserted(II)V
    :no_insert
    const/4 v7, 0x0
    invoke-virtual {v0, v6, v7}, Landroidx/recyclerview/widget/e;->a(Ljava/util/List;Ljava/lang/Runnable;)V

    :done
    return-void
.end method
