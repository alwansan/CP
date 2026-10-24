.class public Lcom/shabakaty/downloader/ni1;
.super Lcom/shabakaty/downloader/mi1;
.source "FragmentCategoriesBindingImpl.java"


# instance fields
.field public final P:Lcom/shabakaty/cinemana/utils/StatusView;

.field public Q:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 1
    invoke-static {p1, p2, v0, v1, v1}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x2

    .line 2
    aget-object v2, v0, v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v3, v2}, Lcom/shabakaty/downloader/mi1;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView;)V

    const-wide/16 v4, -0x1

    .line 3
    iput-wide v4, p0, Lcom/shabakaty/downloader/ni1;->Q:J

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/mi1;->M:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 5
    aget-object p1, v0, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 7
    aget-object p1, v0, v3

    check-cast p1, Lcom/shabakaty/cinemana/utils/StatusView;

    iput-object p1, p0, Lcom/shabakaty/downloader/ni1;->P:Lcom/shabakaty/cinemana/utils/StatusView;

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const p1, 0x7f0a0128

    .line 9
    invoke-virtual {p2, p1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 10
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ni1;->p()V

    return-void
.end method


# virtual methods
.method public D(ILjava/lang/Object;)Z
    .locals 3

    const/16 v0, 0x26

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/kx;

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/mi1;->N:Lcom/shabakaty/downloader/kx;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/ni1;->Q:J

    const-wide/16 v1, 0x2

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/ni1;->Q:J

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p0, v0}, Landroidx/databinding/a;->f(I)V

    .line 7
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->x()V

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
    const/16 v0, 0x10

    if-ne v0, p1, :cond_1

    .line 9
    check-cast p2, Lcom/shabakaty/downloader/gx;

    .line 10
    iput-object p2, p0, Lcom/shabakaty/downloader/mi1;->O:Lcom/shabakaty/downloader/gx;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_2
    iget-wide p1, p0, Lcom/shabakaty/downloader/ni1;->Q:J

    const-wide/16 v1, 0x4

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/ni1;->Q:J

    .line 13
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    invoke-virtual {p0, v0}, Landroidx/databinding/a;->f(I)V

    .line 15
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->x()V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 16
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public i()V
    .locals 14

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/ni1;->Q:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lcom/shabakaty/downloader/ni1;->Q:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v4, p0, Lcom/shabakaty/downloader/mi1;->N:Lcom/shabakaty/downloader/kx;

    .line 6
    iget-object v5, p0, Lcom/shabakaty/downloader/mi1;->O:Lcom/shabakaty/downloader/gx;

    const-wide/16 v6, 0xb

    and-long v8, v0, v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    cmp-long v12, v8, v2

    if-eqz v12, :cond_7

    if-eqz v4, :cond_0

    .line 7
    iget-object v4, v4, Lcom/shabakaty/downloader/kx;->g:Lcom/shabakaty/downloader/mj;

    goto :goto_0

    :cond_0
    move-object v4, v11

    .line 8
    :goto_0
    invoke-virtual {p0, v10, v4}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v4, :cond_1

    .line 9
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/tj;

    goto :goto_1

    :cond_1
    move-object v4, v11

    :goto_1
    if-eqz v4, :cond_2

    .line 10
    iget-object v8, v4, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 11
    check-cast v8, Ljava/util/List;

    .line 12
    iget-object v4, v4, Lcom/shabakaty/downloader/tj;->a:Lcom/shabakaty/downloader/tj$a;

    goto :goto_2

    :cond_2
    move-object v4, v11

    move-object v8, v4

    .line 13
    :goto_2
    sget-object v9, Lcom/shabakaty/downloader/tj$a;->r:Lcom/shabakaty/downloader/tj$a;

    if-ne v4, v9, :cond_3

    const/4 v9, 0x1

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    if-eqz v12, :cond_5

    if-eqz v9, :cond_4

    const-wide/16 v12, 0x20

    goto :goto_4

    :cond_4
    const-wide/16 v12, 0x10

    :goto_4
    or-long/2addr v0, v12

    :cond_5
    if-eqz v9, :cond_6

    goto :goto_5

    :cond_6
    const/16 v9, 0x8

    const/16 v10, 0x8

    goto :goto_5

    :cond_7
    move-object v4, v11

    move-object v8, v4

    :goto_5
    const-wide/16 v12, 0xc

    and-long/2addr v12, v0

    cmp-long v9, v12, v2

    and-long/2addr v6, v0

    cmp-long v12, v6, v2

    if-eqz v12, :cond_8

    .line 14
    iget-object v6, p0, Lcom/shabakaty/downloader/mi1;->M:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 15
    iget-object v6, p0, Lcom/shabakaty/downloader/mi1;->M:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v6, v8, v11, v11}, Lcom/shabakaty/downloader/fo3;->a(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;Ljava/lang/Integer;Lcom/shabakaty/downloader/tj$a;)V

    .line 16
    iget-object v6, p0, Lcom/shabakaty/downloader/ni1;->P:Lcom/shabakaty/cinemana/utils/StatusView;

    invoke-virtual {v6, v4}, Lcom/shabakaty/cinemana/utils/StatusView;->setStatus(Lcom/shabakaty/downloader/tj$a;)V

    :cond_8
    const-wide/16 v6, 0x8

    and-long/2addr v0, v6

    cmp-long v4, v0, v2

    if-eqz v4, :cond_9

    .line 17
    iget-object v0, p0, Lcom/shabakaty/downloader/mi1;->M:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12028d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/nl6;->q(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p0, Lcom/shabakaty/downloader/mi1;->M:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/fo3;->c(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/Integer;)V

    :cond_9
    if-eqz v9, :cond_a

    .line 19
    iget-object v0, p0, Lcom/shabakaty/downloader/ni1;->P:Lcom/shabakaty/cinemana/utils/StatusView;

    invoke-virtual {v0, v5}, Lcom/shabakaty/cinemana/utils/StatusView;->setNavigator(Lcom/shabakaty/downloader/vj;)V

    :cond_a
    return-void

    :catchall_0
    move-exception v0

    .line 20
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/ni1;->Q:J

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

    const-wide/16 v0, 0x8

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/shabakaty/downloader/ni1;->Q:J

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
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 1
    :cond_0
    check-cast p2, Lcom/shabakaty/downloader/mj;

    if-nez p3, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/ni1;->Q:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/shabakaty/downloader/ni1;->Q:J

    .line 4
    monitor-exit p0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return v0
.end method
