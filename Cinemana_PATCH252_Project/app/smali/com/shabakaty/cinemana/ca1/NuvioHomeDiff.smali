.class public final Lcom/shabakaty/cinemana/ca1/NuvioHomeDiff;
.super Ljava/lang/Object;
.source "NuvioHomeDiff.java"

.field private static final a:Ljava/util/concurrent/Executor;

.method static constructor <clinit>()V
    .locals 1
    const/4 v0, 0x2
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;
    move-result-object v0
    sput-object v0, Lcom/shabakaty/cinemana/ca1/NuvioHomeDiff;->a:Ljava/util/concurrent/Executor;
    return-void
.end method

.method public static init(Lcom/shabakaty/downloader/yt1;)V
    .locals 4
    new-instance v0, Lcom/shabakaty/cinemana/ca1/NuvioHomeItemCallback;
    invoke-direct {v0}, Lcom/shabakaty/cinemana/ca1/NuvioHomeItemCallback;-><init>()V
    new-instance v1, Landroidx/recyclerview/widget/c;
    const/4 v3, 0x0
    sget-object v2, Lcom/shabakaty/cinemana/ca1/NuvioHomeDiff;->a:Ljava/util/concurrent/Executor;
    invoke-direct {v1, v3, v2, v0}, Landroidx/recyclerview/widget/c;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroidx/recyclerview/widget/j$e;)V
    new-instance v2, Lcom/shabakaty/cinemana/ca1/NuvioHomeUpdateCallback;
    invoke-direct {v2, p0}, Lcom/shabakaty/cinemana/ca1/NuvioHomeUpdateCallback;-><init>(Lcom/shabakaty/downloader/yt1;)V
    new-instance v3, Landroidx/recyclerview/widget/e;
    invoke-direct {v3, v2, v1}, Landroidx/recyclerview/widget/e;-><init>(Lcom/shabakaty/downloader/ni2;Landroidx/recyclerview/widget/c;)V
    iput-object v3, p0, Lcom/shabakaty/downloader/yt1;->e:Landroidx/recyclerview/widget/e;
    return-void
.end method

# Must be called on the main thread. AndroidX generation guards reject stale
# background results; the list itself is copied to avoid structural mutation.
.method public static submit(Lcom/shabakaty/downloader/yt1;Ljava/util/List;)V
    .locals 14
    if-eqz p1, :done
    iget-object v0, p0, Lcom/shabakaty/downloader/yt1;->e:Landroidx/recyclerview/widget/e;
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
    # Both lists nonempty: existing AndroidX DiffUtil worker + main-thread post.
    # invoke-direct has six total registers; use contiguous range form.
    new-instance v8, Landroidx/recyclerview/widget/d;
    move-object v9, v0
    move-object v10, v2
    move-object v11, v1
    move v12, v3
    const/4 v13, 0x0
    invoke-direct/range {v8 .. v13}, Landroidx/recyclerview/widget/d;-><init>(Landroidx/recyclerview/widget/e;Ljava/util/List;Ljava/util/List;ILjava/lang/Runnable;)V
    iget-object v7, v0, Landroidx/recyclerview/widget/e;->b:Landroidx/recyclerview/widget/c;
    iget-object v7, v7, Landroidx/recyclerview/widget/c;->a:Ljava/util/concurrent/Executor;
    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    return-void
    :instant
    iget-object v6, v0, Landroidx/recyclerview/widget/e;->f:Ljava/util/List;
    iput-object v1, v0, Landroidx/recyclerview/widget/e;->e:Ljava/util/List;
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    move-result-object v1
    iput-object v1, v0, Landroidx/recyclerview/widget/e;->f:Ljava/util/List;
    iput-object v1, p0, Lcom/shabakaty/downloader/yt1;->c:Ljava/util/List;
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
