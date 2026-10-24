.class public Lcom/shabakaty/downloader/xs2;
.super Ljava/lang/Object;
.source "MetadataImageReader.java"

# interfaces
.implements Lcom/shabakaty/downloader/gz1;
.implements Lcom/shabakaty/downloader/zh1$a;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Lcom/shabakaty/downloader/ps;

.field public c:Lcom/shabakaty/downloader/gz1$a;

.field public d:Z

.field public final e:Lcom/shabakaty/downloader/gz1;

.field public f:Lcom/shabakaty/downloader/gz1$a;

.field public g:Ljava/util/concurrent/Executor;

.field public final h:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/shabakaty/downloader/xy1;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/shabakaty/downloader/fz1;",
            ">;"
        }
    .end annotation
.end field

.field public j:I

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/fz1;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/fz1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIII)V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/d7;

    .line 2
    invoke-static {p1, p2, p3, p4}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/d7;-><init>(Landroid/media/ImageReader;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/xs2;->a:Ljava/lang/Object;

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/xs2$a;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/xs2$a;-><init>(Lcom/shabakaty/downloader/xs2;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/xs2;->b:Lcom/shabakaty/downloader/ps;

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/ws2;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/ws2;-><init>(Lcom/shabakaty/downloader/xs2;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/xs2;->c:Lcom/shabakaty/downloader/gz1$a;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/shabakaty/downloader/xs2;->d:Z

    .line 8
    new-instance p2, Landroid/util/LongSparseArray;

    invoke-direct {p2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p2, p0, Lcom/shabakaty/downloader/xs2;->h:Landroid/util/LongSparseArray;

    .line 9
    new-instance p2, Landroid/util/LongSparseArray;

    invoke-direct {p2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p2, p0, Lcom/shabakaty/downloader/xs2;->i:Landroid/util/LongSparseArray;

    .line 10
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/shabakaty/downloader/xs2;->l:Ljava/util/List;

    .line 11
    iput-object v0, p0, Lcom/shabakaty/downloader/xs2;->e:Lcom/shabakaty/downloader/gz1;

    .line 12
    iput p1, p0, Lcom/shabakaty/downloader/xs2;->j:I

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/xs2;->f()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/xs2;->k:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Landroid/view/Surface;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xs2;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/xs2;->e:Lcom/shabakaty/downloader/gz1;

    invoke-interface {v1}, Lcom/shabakaty/downloader/gz1;->a()Landroid/view/Surface;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b()Lcom/shabakaty/downloader/fz1;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xs2;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/xs2;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    iget v1, p0, Lcom/shabakaty/downloader/xs2;->j:I

    iget-object v2, p0, Lcom/shabakaty/downloader/xs2;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 6
    :goto_0
    iget-object v3, p0, Lcom/shabakaty/downloader/xs2;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    .line 7
    iget-object v3, p0, Lcom/shabakaty/downloader/xs2;->l:Ljava/util/List;

    iget-object v4, p0, Lcom/shabakaty/downloader/xs2;->k:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 8
    iget-object v3, p0, Lcom/shabakaty/downloader/xs2;->k:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/fz1;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/fz1;

    .line 10
    invoke-interface {v2}, Lcom/shabakaty/downloader/fz1;->close()V

    goto :goto_1

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/shabakaty/downloader/xs2;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/shabakaty/downloader/xs2;->j:I

    .line 12
    iget-object v2, p0, Lcom/shabakaty/downloader/xs2;->k:Ljava/util/List;

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/shabakaty/downloader/xs2;->j:I

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/fz1;

    .line 13
    iget-object v2, p0, Lcom/shabakaty/downloader/xs2;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    monitor-exit v0

    return-object v1

    .line 15
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Maximum image number reached."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xs2;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-object v1, p0, Lcom/shabakaty/downloader/xs2;->f:Lcom/shabakaty/downloader/gz1$a;

    .line 3
    iput-object v1, p0, Lcom/shabakaty/downloader/xs2;->g:Ljava/util/concurrent/Executor;

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xs2;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/shabakaty/downloader/xs2;->d:Z

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/shabakaty/downloader/xs2;->k:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/fz1;

    .line 6
    invoke-interface {v2}, Lcom/shabakaty/downloader/fz1;->close()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/xs2;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/xs2;->e:Lcom/shabakaty/downloader/gz1;

    invoke-interface {v1}, Lcom/shabakaty/downloader/gz1;->close()V

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/shabakaty/downloader/xs2;->d:Z

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d(Lcom/shabakaty/downloader/fz1;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xs2;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/xs2;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v2, p0, Lcom/shabakaty/downloader/xs2;->k:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 4
    iget-object v3, p0, Lcom/shabakaty/downloader/xs2;->k:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5
    iget v3, p0, Lcom/shabakaty/downloader/xs2;->j:I

    if-gt v2, v3, :cond_0

    add-int/lit8 v3, v3, -0x1

    .line 6
    iput v3, p0, Lcom/shabakaty/downloader/xs2;->j:I

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/shabakaty/downloader/xs2;->l:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 8
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public e(Lcom/shabakaty/downloader/gz1$a;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xs2;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/xs2;->f:Lcom/shabakaty/downloader/gz1$a;

    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lcom/shabakaty/downloader/xs2;->g:Ljava/util/concurrent/Executor;

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/xs2;->e:Lcom/shabakaty/downloader/gz1;

    iget-object v1, p0, Lcom/shabakaty/downloader/xs2;->c:Lcom/shabakaty/downloader/gz1$a;

    invoke-interface {p1, v1, p2}, Lcom/shabakaty/downloader/gz1;->e(Lcom/shabakaty/downloader/gz1$a;Ljava/util/concurrent/Executor;)V

    .line 7
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0
.end method

.method public f()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xs2;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/xs2;->e:Lcom/shabakaty/downloader/gz1;

    invoke-interface {v1}, Lcom/shabakaty/downloader/gz1;->f()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public g()Lcom/shabakaty/downloader/fz1;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xs2;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/xs2;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    iget v1, p0, Lcom/shabakaty/downloader/xs2;->j:I

    iget-object v2, p0, Lcom/shabakaty/downloader/xs2;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/xs2;->k:Ljava/util/List;

    iget v2, p0, Lcom/shabakaty/downloader/xs2;->j:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/shabakaty/downloader/xs2;->j:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/fz1;

    .line 6
    iget-object v2, p0, Lcom/shabakaty/downloader/xs2;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    monitor-exit v0

    return-object v1

    .line 8
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Maximum image number reached."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final h(Lcom/shabakaty/downloader/h24;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xs2;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/xs2;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/xs2;->f()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/zh1;->a(Lcom/shabakaty/downloader/zh1$a;)V

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/xs2;->k:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v3, p0, Lcom/shabakaty/downloader/xs2;->f:Lcom/shabakaty/downloader/gz1$a;

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/xs2;->g:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_0
    const-string v1, "TAG"

    const-string v2, "Maximum image number reached."

    .line 7
    invoke-static {v1, v2, v3}, Lcom/shabakaty/downloader/vk2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zh1;->close()V

    move-object p1, v3

    .line 9
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    if-eqz p1, :cond_1

    .line 10
    new-instance v0, Lcom/shabakaty/downloader/or;

    invoke-direct {v0, p0, v3}, Lcom/shabakaty/downloader/or;-><init>(Lcom/shabakaty/downloader/xs2;Lcom/shabakaty/downloader/gz1$a;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-interface {v3, p0}, Lcom/shabakaty/downloader/gz1$a;->a(Lcom/shabakaty/downloader/gz1;)V

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final i()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xs2;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/xs2;->h:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/xs2;->h:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/xy1;

    .line 4
    invoke-interface {v2}, Lcom/shabakaty/downloader/xy1;->getTimestamp()J

    move-result-wide v3

    .line 5
    iget-object v5, p0, Lcom/shabakaty/downloader/xs2;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/fz1;

    if-eqz v5, :cond_0

    .line 6
    iget-object v6, p0, Lcom/shabakaty/downloader/xs2;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v3, v4}, Landroid/util/LongSparseArray;->remove(J)V

    .line 7
    iget-object v3, p0, Lcom/shabakaty/downloader/xs2;->h:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 8
    new-instance v3, Lcom/shabakaty/downloader/h24;

    invoke-direct {v3, v5, v2}, Lcom/shabakaty/downloader/h24;-><init>(Lcom/shabakaty/downloader/fz1;Lcom/shabakaty/downloader/xy1;)V

    invoke-virtual {p0, v3}, Lcom/shabakaty/downloader/xs2;->h(Lcom/shabakaty/downloader/h24;)V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xs2;->j()V

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final j()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xs2;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/xs2;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/shabakaty/downloader/xs2;->h:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/xs2;->i:Landroid/util/LongSparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 4
    iget-object v3, p0, Lcom/shabakaty/downloader/xs2;->h:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 5
    invoke-virtual {v3, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v2}, Lcom/shabakaty/downloader/fl3;->d(Z)V

    .line 6
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-lez v2, :cond_3

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/xs2;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v5

    :goto_0
    if-ltz v1, :cond_5

    .line 8
    iget-object v2, p0, Lcom/shabakaty/downloader/xs2;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-gez v2, :cond_2

    .line 9
    iget-object v2, p0, Lcom/shabakaty/downloader/xs2;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/fz1;

    .line 10
    invoke-interface {v2}, Lcom/shabakaty/downloader/fz1;->close()V

    .line 11
    iget-object v2, p0, Lcom/shabakaty/downloader/xs2;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->removeAt(I)V

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 12
    :cond_3
    iget-object v2, p0, Lcom/shabakaty/downloader/xs2;->h:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v5

    :goto_1
    if-ltz v2, :cond_5

    .line 13
    iget-object v3, p0, Lcom/shabakaty/downloader/xs2;->h:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-gez v7, :cond_4

    .line 14
    iget-object v3, p0, Lcom/shabakaty/downloader/xs2;->h:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->removeAt(I)V

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 15
    :cond_5
    monitor-exit v0

    return-void

    .line 16
    :cond_6
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
