.class public Lcom/shabakaty/downloader/fj1;
.super Lcom/shabakaty/downloader/ej1;
.source "FragmentDownloadItemsBindingImpl.java"


# instance fields
.field public final Q:Landroid/widget/TextView;

.field public R:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gl0;Landroid/view/View;)V
    .locals 10

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-static {p1, p2, v0, v1, v1}, Landroidx/databinding/ViewDataBinding;->s(Lcom/shabakaty/downloader/gl0;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x3

    .line 2
    aget-object v2, v0, v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    move-object v8, v2

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x2

    aget-object v2, v0, v2

    move-object v9, v2

    check-cast v9, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v6, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v9}, Lcom/shabakaty/downloader/ej1;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/appcompat/widget/AppCompatImageView;)V

    const-wide/16 v2, -0x1

    .line 3
    iput-wide v2, p0, Lcom/shabakaty/downloader/fj1;->R:J

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/ej1;->M:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/ej1;->N:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/ej1;->O:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 7
    aget-object p1, v0, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x4

    .line 9
    aget-object p1, v0, p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/shabakaty/downloader/fj1;->Q:Landroid/widget/TextView;

    .line 10
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const p1, 0x7f0a0128

    .line 11
    invoke-virtual {p2, p1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 12
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fj1;->p()V

    return-void
.end method


# virtual methods
.method public D(ILjava/lang/Object;)Z
    .locals 3

    const/16 v0, 0x26

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/by0;

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/ej1;->P:Lcom/shabakaty/downloader/by0;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/fj1;->R:J

    const-wide/16 v1, 0x2

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/shabakaty/downloader/fj1;->R:J

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
    iget-wide v0, p0, Lcom/shabakaty/downloader/fj1;->R:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lcom/shabakaty/downloader/fj1;->R:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v4, p0, Lcom/shabakaty/downloader/ej1;->P:Lcom/shabakaty/downloader/by0;

    const-wide/16 v5, 0x7

    and-long v7, v0, v5

    const-wide/16 v9, 0x8

    const/4 v11, 0x0

    const/4 v12, 0x0

    cmp-long v13, v7, v2

    if-eqz v13, :cond_4

    if-eqz v4, :cond_0

    .line 6
    iget-object v4, v4, Lcom/shabakaty/downloader/by0;->h:Lcom/shabakaty/downloader/xv2;

    goto :goto_0

    :cond_0
    move-object v4, v11

    .line 7
    :goto_0
    invoke-virtual {p0, v12, v4}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v4, :cond_1

    .line 8
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    goto :goto_1

    :cond_1
    move-object v4, v11

    :goto_1
    if-eqz v4, :cond_2

    .line 9
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    if-eqz v13, :cond_5

    if-eqz v7, :cond_3

    const-wide/16 v13, 0x10

    or-long/2addr v0, v13

    goto :goto_3

    :cond_3
    or-long/2addr v0, v9

    goto :goto_3

    :cond_4
    move-object v4, v11

    const/4 v7, 0x0

    :cond_5
    :goto_3
    and-long v8, v0, v9

    const/4 v10, 0x1

    cmp-long v13, v8, v2

    if-eqz v13, :cond_6

    if-nez v4, :cond_6

    const/4 v8, 0x1

    goto :goto_4

    :cond_6
    const/4 v8, 0x0

    :goto_4
    and-long v13, v0, v5

    cmp-long v9, v13, v2

    if-eqz v9, :cond_c

    if-eqz v7, :cond_7

    goto :goto_5

    :cond_7
    move v10, v8

    :goto_5
    if-eqz v9, :cond_9

    if-eqz v10, :cond_8

    const-wide/16 v7, 0x40

    or-long/2addr v0, v7

    const-wide/16 v7, 0x100

    goto :goto_6

    :cond_8
    const-wide/16 v7, 0x20

    or-long/2addr v0, v7

    const-wide/16 v7, 0x80

    :goto_6
    or-long/2addr v0, v7

    :cond_9
    const/16 v7, 0x8

    if-eqz v10, :cond_a

    const/4 v8, 0x0

    goto :goto_7

    :cond_a
    const/16 v8, 0x8

    :goto_7
    if-eqz v10, :cond_b

    const/16 v12, 0x8

    :cond_b
    move v7, v12

    move v12, v8

    goto :goto_8

    :cond_c
    const/4 v7, 0x0

    :goto_8
    and-long/2addr v0, v5

    cmp-long v5, v0, v2

    if-eqz v5, :cond_d

    .line 10
    iget-object v0, p0, Lcom/shabakaty/downloader/ej1;->M:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/ej1;->N:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/shabakaty/downloader/ej1;->N:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v4, v11, v11}, Lcom/shabakaty/downloader/fo3;->a(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;Ljava/lang/Integer;Lcom/shabakaty/downloader/tj$a;)V

    .line 13
    iget-object v0, p0, Lcom/shabakaty/downloader/ej1;->O:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/shabakaty/downloader/fj1;->Q:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_d
    return-void

    :catchall_0
    move-exception v0

    .line 15
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/fj1;->R:J

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

    const-wide/16 v0, 0x4

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/shabakaty/downloader/fj1;->R:J

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
    check-cast p2, Lcom/shabakaty/downloader/xv2;

    if-nez p3, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide p1, p0, Lcom/shabakaty/downloader/fj1;->R:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/shabakaty/downloader/fj1;->R:J

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
