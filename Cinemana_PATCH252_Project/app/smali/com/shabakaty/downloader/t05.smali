.class public Lcom/shabakaty/downloader/t05;
.super Lcom/shabakaty/downloader/s05;
.source "VideoInfoCastAndCrewLayoutBindingImpl.java"


# instance fields
.field public V:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gl0;[Landroid/view/View;)V
    .locals 15

    move-object v11, p0

    move-object/from16 v12, p2

    const/4 v0, 0x7

    const/4 v13, 0x0

    move-object/from16 v1, p1

    .line 1
    invoke-static {v1, v12, v0, v13, v13}, Landroidx/databinding/ViewDataBinding;->t(Lcom/shabakaty/downloader/gl0;[Landroid/view/View;ILandroidx/databinding/ViewDataBinding$e;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    .line 2
    aget-object v3, v12, v2

    const/4 v4, 0x2

    aget-object v4, v0, v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v5, 0x1

    aget-object v5, v0, v5

    check-cast v5, Landroid/widget/TextView;

    aget-object v2, v0, v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    const/4 v2, 0x4

    aget-object v2, v0, v2

    move-object v7, v2

    check-cast v7, Lcom/google/android/flexbox/FlexboxLayout;

    const/4 v2, 0x3

    aget-object v2, v0, v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    const/4 v2, 0x6

    aget-object v2, v0, v2

    move-object v9, v2

    check-cast v9, Lcom/google/android/flexbox/FlexboxLayout;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    const/4 v14, 0x1

    move-object v0, p0

    move-object v2, v3

    move v3, v14

    invoke-direct/range {v0 .. v10}, Lcom/shabakaty/downloader/s05;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/flexbox/FlexboxLayout;Landroid/widget/TextView;Lcom/google/android/flexbox/FlexboxLayout;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v11, Lcom/shabakaty/downloader/t05;->V:J

    .line 4
    iget-object v0, v11, Lcom/shabakaty/downloader/s05;->M:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v11, Lcom/shabakaty/downloader/s05;->N:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v11, Lcom/shabakaty/downloader/s05;->O:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v11, Lcom/shabakaty/downloader/s05;->P:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v0, v11, Lcom/shabakaty/downloader/s05;->Q:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v0, v11, Lcom/shabakaty/downloader/s05;->R:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v0, v11, Lcom/shabakaty/downloader/s05;->S:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0, v12}, Landroidx/databinding/ViewDataBinding;->C([Landroid/view/View;)V

    .line 12
    invoke-virtual {p0}, Lcom/shabakaty/downloader/t05;->p()V

    return-void
.end method


# virtual methods
.method public D(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x10

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/j15;

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/t05;->G(Lcom/shabakaty/downloader/j15;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x26

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lcom/shabakaty/downloader/u15;

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/t05;->H(Lcom/shabakaty/downloader/u15;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public G(Lcom/shabakaty/downloader/j15;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/s05;->U:Lcom/shabakaty/downloader/j15;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/t05;->V:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/t05;->V:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x10

    .line 5
    invoke-virtual {p0, p1}, Landroidx/databinding/a;->f(I)V

    .line 6
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->x()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public H(Lcom/shabakaty/downloader/u15;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/s05;->T:Lcom/shabakaty/downloader/u15;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/t05;->V:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/t05;->V:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x26

    .line 5
    invoke-virtual {p0, p1}, Landroidx/databinding/a;->f(I)V

    .line 6
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->x()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public i()V
    .locals 21

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/shabakaty/downloader/t05;->V:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/shabakaty/downloader/t05;->V:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/shabakaty/downloader/s05;->U:Lcom/shabakaty/downloader/j15;

    .line 6
    iget-object v6, v1, Lcom/shabakaty/downloader/s05;->T:Lcom/shabakaty/downloader/u15;

    const-wide/16 v7, 0xf

    and-long/2addr v7, v2

    const-wide/16 v9, 0xd

    const/4 v12, 0x0

    cmp-long v13, v7, v4

    if-eqz v13, :cond_13

    if-eqz v6, :cond_0

    .line 7
    iget-object v6, v6, Lcom/shabakaty/downloader/u15;->t:Lcom/shabakaty/downloader/mj;

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 8
    :goto_0
    invoke-virtual {v1, v12, v6}, Landroidx/databinding/ViewDataBinding;->E(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v6, :cond_1

    .line 9
    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/tj;

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_2

    .line 10
    iget-object v6, v6, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 11
    check-cast v6, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_3

    .line 12
    iget-object v7, v6, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->writersInfo:Ljava/util/List;

    .line 13
    iget-object v8, v6, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->directorsInfo:Ljava/util/List;

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_3
    and-long v12, v2, v9

    cmp-long v14, v12, v4

    if-eqz v14, :cond_b

    if-eqz v7, :cond_4

    .line 14
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v12

    goto :goto_4

    :cond_4
    const/4 v12, 0x0

    :goto_4
    if-eqz v14, :cond_6

    if-eqz v12, :cond_5

    const-wide/16 v13, 0x20

    goto :goto_5

    :cond_5
    const-wide/16 v13, 0x10

    :goto_5
    or-long/2addr v2, v13

    :cond_6
    if-eqz v8, :cond_7

    .line 15
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    goto :goto_6

    :cond_7
    const/4 v13, 0x0

    :goto_6
    and-long v14, v2, v9

    cmp-long v16, v14, v4

    if-eqz v16, :cond_9

    if-eqz v13, :cond_8

    const-wide/16 v14, 0x800

    or-long/2addr v2, v14

    const-wide/32 v14, 0x8000

    goto :goto_7

    :cond_8
    const-wide/16 v14, 0x400

    or-long/2addr v2, v14

    const-wide/16 v14, 0x4000

    :goto_7
    or-long/2addr v2, v14

    :cond_9
    if-eqz v12, :cond_a

    const/16 v14, 0x8

    goto :goto_8

    :cond_a
    const/4 v14, 0x0

    :goto_8
    if-eqz v13, :cond_c

    const/16 v15, 0x8

    move v15, v14

    move v14, v13

    move v13, v12

    const/16 v12, 0x8

    goto :goto_9

    :cond_b
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :cond_c
    const/4 v15, 0x0

    move v15, v14

    move v14, v13

    move v13, v12

    const/4 v12, 0x0

    :goto_9
    and-long v16, v2, v9

    cmp-long v18, v16, v4

    if-eqz v18, :cond_12

    if-eqz v6, :cond_d

    .line 16
    iget-object v6, v6, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->actorsInfo:Ljava/util/List;

    goto :goto_a

    :cond_d
    const/4 v6, 0x0

    :goto_a
    if-eqz v6, :cond_e

    .line 17
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v16

    goto :goto_b

    :cond_e
    const/16 v16, 0x0

    :goto_b
    if-eqz v18, :cond_10

    if-eqz v16, :cond_f

    const-wide/16 v17, 0x200

    goto :goto_c

    :cond_f
    const-wide/16 v17, 0x100

    :goto_c
    or-long v2, v2, v17

    :cond_10
    if-eqz v16, :cond_11

    const/16 v17, 0x8

    goto :goto_d

    :cond_11
    const/16 v17, 0x0

    :goto_d
    move/from16 v11, v17

    goto :goto_f

    :cond_12
    const/4 v6, 0x0

    goto :goto_e

    :cond_13
    const/4 v6, 0x0

    const/4 v15, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_e
    const/16 v17, 0x0

    const/16 v16, 0x0

    move/from16 v11, v17

    const/4 v6, 0x0

    :goto_f
    and-long v18, v2, v9

    cmp-long v20, v18, v4

    if-eqz v20, :cond_16

    if-eqz v14, :cond_14

    goto :goto_10

    :cond_14
    const/16 v16, 0x0

    :goto_10
    if-eqz v20, :cond_17

    if-eqz v16, :cond_15

    const-wide/16 v18, 0x80

    goto :goto_11

    :cond_15
    const-wide/16 v18, 0x40

    :goto_11
    or-long v2, v2, v18

    goto :goto_12

    :cond_16
    const/16 v16, 0x0

    :cond_17
    :goto_12
    and-long v18, v2, v9

    cmp-long v14, v18, v4

    if-eqz v14, :cond_1b

    if-eqz v16, :cond_18

    goto :goto_13

    :cond_18
    const/4 v13, 0x0

    :goto_13
    if-eqz v14, :cond_1a

    if-eqz v13, :cond_19

    const-wide/16 v18, 0x2000

    goto :goto_14

    :cond_19
    const-wide/16 v18, 0x1000

    :goto_14
    or-long v2, v2, v18

    :cond_1a
    if-eqz v13, :cond_1b

    const/16 v13, 0x8

    goto :goto_15

    :cond_1b
    const/4 v13, 0x0

    :goto_15
    and-long/2addr v9, v2

    cmp-long v14, v9, v4

    if-eqz v14, :cond_1c

    .line 18
    iget-object v9, v1, Lcom/shabakaty/downloader/s05;->M:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 19
    iget-object v9, v1, Lcom/shabakaty/downloader/s05;->M:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v10, 0x0

    invoke-static {v9, v6, v10, v10}, Lcom/shabakaty/downloader/fo3;->a(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;Ljava/lang/Integer;Lcom/shabakaty/downloader/tj$a;)V

    .line 20
    iget-object v6, v1, Lcom/shabakaty/downloader/s05;->N:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    iget-object v6, v1, Lcom/shabakaty/downloader/s05;->O:Landroid/widget/TextView;

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    iget-object v6, v1, Lcom/shabakaty/downloader/s05;->P:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v6, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 23
    iget-object v6, v1, Lcom/shabakaty/downloader/s05;->Q:Landroid/widget/TextView;

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24
    iget-object v6, v1, Lcom/shabakaty/downloader/s05;->R:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v6, v15}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 25
    iget-object v6, v1, Lcom/shabakaty/downloader/s05;->S:Landroid/widget/TextView;

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1c
    const-wide/16 v9, 0x8

    and-long/2addr v9, v2

    cmp-long v6, v9, v4

    if-eqz v6, :cond_1d

    .line 26
    iget-object v6, v1, Lcom/shabakaty/downloader/s05;->N:Landroid/widget/TextView;

    const v9, 0x7f12001b

    invoke-static {v6, v9, v6}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 27
    iget-object v6, v1, Lcom/shabakaty/downloader/s05;->O:Landroid/widget/TextView;

    const v9, 0x7f120051

    invoke-static {v6, v9, v6}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 28
    iget-object v6, v1, Lcom/shabakaty/downloader/s05;->Q:Landroid/widget/TextView;

    const v9, 0x7f1200d3

    invoke-static {v6, v9, v6}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    .line 29
    iget-object v6, v1, Lcom/shabakaty/downloader/s05;->S:Landroid/widget/TextView;

    const v9, 0x7f1202e1

    invoke-static {v6, v9, v6}, Lcom/shabakaty/downloader/d3;->a(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    :cond_1d
    const-wide/16 v9, 0xf

    and-long/2addr v2, v9

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1e

    .line 30
    iget-object v2, v1, Lcom/shabakaty/downloader/s05;->P:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-static {v2, v8, v0}, Lcom/shabakaty/downloader/st2;->a(Lcom/google/android/flexbox/FlexboxLayout;Ljava/util/List;Lcom/shabakaty/downloader/j15;)V

    .line 31
    iget-object v2, v1, Lcom/shabakaty/downloader/s05;->R:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-static {v2, v7, v0}, Lcom/shabakaty/downloader/st2;->a(Lcom/google/android/flexbox/FlexboxLayout;Ljava/util/List;Lcom/shabakaty/downloader/j15;)V

    :cond_1e
    return-void

    :catchall_0
    move-exception v0

    .line 32
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
    iget-wide v0, p0, Lcom/shabakaty/downloader/t05;->V:J

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
    iput-wide v0, p0, Lcom/shabakaty/downloader/t05;->V:J

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
    iget-wide p1, p0, Lcom/shabakaty/downloader/t05;->V:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/shabakaty/downloader/t05;->V:J

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
