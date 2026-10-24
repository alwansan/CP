.class public Lcom/shabakaty/downloader/c42;
.super Lcom/shabakaty/downloader/b42;
.source "ItemAdapterStatusBindingImpl.java"


# instance fields
.field public final N:Lcom/shabakaty/cinemana/utils/StatusView;

.field public O:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-static {p1, p2, v0, v1, v1}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v2}, Lcom/shabakaty/downloader/b42;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    const-wide/16 v3, -0x1

    .line 3
    iput-wide v3, p0, Lcom/shabakaty/downloader/c42;->O:J

    .line 4
    aget-object p1, v0, v2

    check-cast p1, Lcom/shabakaty/cinemana/utils/StatusView;

    iput-object p1, p0, Lcom/shabakaty/downloader/c42;->N:Lcom/shabakaty/cinemana/utils/StatusView;

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const p1, 0x7f0a0128

    .line 6
    invoke-virtual {p2, p1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/c42;->p()V

    return-void
.end method


# virtual methods
.method public D(ILjava/lang/Object;)Z
    .locals 3

    const/16 v0, 0xb

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/tj$a;

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/b42;->M:Lcom/shabakaty/downloader/tj$a;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/c42;->O:J

    const-wide/16 v1, 0x1

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/c42;->O:J

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p0, v0}, Landroidx/databinding/a;->f(I)V

    .line 7
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->x()V

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public i()V
    .locals 15

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/c42;->O:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lcom/shabakaty/downloader/c42;->O:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v4, p0, Lcom/shabakaty/downloader/b42;->M:Lcom/shabakaty/downloader/tj$a;

    const-wide/16 v5, 0x3

    and-long v7, v0, v5

    const-wide/16 v9, 0x4

    const/4 v11, 0x1

    const/4 v12, 0x0

    cmp-long v13, v7, v2

    if-eqz v13, :cond_2

    .line 6
    sget-object v7, Lcom/shabakaty/downloader/tj$a;->r:Lcom/shabakaty/downloader/tj$a;

    if-ne v4, v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v13, :cond_3

    if-eqz v7, :cond_1

    const-wide/16 v13, 0x8

    or-long/2addr v0, v13

    goto :goto_1

    :cond_1
    or-long/2addr v0, v9

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :cond_3
    :goto_1
    and-long v8, v0, v9

    cmp-long v10, v8, v2

    if-eqz v10, :cond_4

    .line 7
    sget-object v8, Lcom/shabakaty/downloader/tj$a;->u:Lcom/shabakaty/downloader/tj$a;

    if-ne v4, v8, :cond_4

    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :goto_2
    and-long v9, v0, v5

    cmp-long v13, v9, v2

    if-eqz v13, :cond_8

    if-eqz v7, :cond_5

    goto :goto_3

    :cond_5
    move v11, v8

    :goto_3
    if-eqz v13, :cond_7

    if-eqz v11, :cond_6

    const-wide/16 v7, 0x20

    goto :goto_4

    :cond_6
    const-wide/16 v7, 0x10

    :goto_4
    or-long/2addr v0, v7

    :cond_7
    if-eqz v11, :cond_8

    const/16 v7, 0x8

    const/16 v12, 0x8

    :cond_8
    and-long/2addr v0, v5

    cmp-long v5, v0, v2

    if-eqz v5, :cond_9

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/c42;->N:Lcom/shabakaty/cinemana/utils/StatusView;

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/c42;->N:Lcom/shabakaty/cinemana/utils/StatusView;

    invoke-virtual {v0, v4}, Lcom/shabakaty/cinemana/utils/StatusView;->setStatus(Lcom/shabakaty/downloader/tj$a;)V

    :cond_9
    return-void

    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public o()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/c42;->O:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 3
    monitor-exit p0

    return v0

    .line 4
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public p()V
    .locals 2

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/shabakaty/downloader/c42;->O:J

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->x()V

    return-void

    :catchall_0
    move-exception v0

    .line 5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public u(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
